.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.super Ljava/lang/Object;
.source "KnoxVpnPacProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DOWNLOAD_STATUS_FAILURE:I = 0x1

.field private static final DOWNLOAD_STATUS_RETRY:I = 0x2

.field private static final DOWNLOAD_STATUS_SUCCESS:I = 0x0

.field private static final FINAL_RETRY_ATTEMPT:I = 0xa

.field private static final INITIAL_RETRY_ATTEMPT:I = 0x0

.field private static final INVALID_FD:I = -0x1

.field private static final INVALID_PORT:I = -0x1

.field private static final PAC_IDENTIFIER:Ljava/lang/String; = "function"

.field private static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field private static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field private static final TAG:Ljava/lang/String; = "KnoxVpnPacProcessor"

.field private static mBindAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mDownloadStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mDownloadUrlThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation
.end field

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mProxyService:Lcom/android/net/IProxyService;

.field private static mRetryAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 82
    sput-object v2, mContext:Landroid/content/Context;

    .line 83
    sput-object v2, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, mDownloadStatus:Ljava/util/HashMap;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, mRetryAttempt:Ljava/util/HashMap;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, mDownloadUrlThread:Ljava/util/HashMap;

    .line 88
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_22

    const/4 v0, 0x0

    :cond_22
    sput-boolean v0, DBG:Z

    .line 90
    sput-object v2, mProxyService:Lcom/android/net/IProxyService;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mBindAction:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 100
    sput-object p1, mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method static synthetic access$000()Lcom/android/net/IProxyService;
    .registers 1

    .prologue
    .line 70
    sget-object v0, mProxyService:Lcom/android/net/IProxyService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .registers 1
    .param p0, "x0"    # Lcom/android/net/IProxyService;

    .prologue
    .line 70
    sput-object p0, mProxyService:Lcom/android/net/IProxyService;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .prologue
    .line 70
    sget-object v0, mBindAction:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 70
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private checkIfRetryNeeded(Ljava/lang/String;)V
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 517
    :try_start_2
    invoke-direct {p0}, getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 518
    .local v1, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_ea

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v2

    if-lez v2, :cond_ea

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ea

    .line 519
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 520
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v4, :cond_7c

    .line 521
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading the pac url failed, going to retry for the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0, v1}, startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    .line 542
    .end local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_7b
    :goto_7b
    return-void

    .line 524
    .restart local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_7c
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_7b

    .line 525
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading the pac url failed even after the final retry attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0, p1}, removeDownloadThreadDetails(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a7} :catch_a8

    goto :goto_7b

    .line 539
    .end local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_a8
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while retry attempt to download pac file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_c2
    :try_start_c2
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading the pac url failed for the first time, start the retry process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-direct {p0, v1}, startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    goto :goto_7b

    .line 534
    :cond_ea
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vpn profile is in unknown state, resetting the retry-Status to default value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 536
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_114} :catch_a8

    goto/16 :goto_7b
.end method

.method private closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    .registers 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "in"    # Ljava/io/BufferedReader;
    .param p3, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 501
    if-eqz p1, :cond_5

    .line 502
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 504
    :cond_5
    if-eqz p3, :cond_a

    .line 505
    invoke-virtual {p3}, Ljava/io/PrintStream;->close()V

    .line 507
    :cond_a
    if-eqz p2, :cond_f

    .line 508
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_10

    .line 513
    :cond_f
    :goto_f
    return-void

    .line 510
    :catch_10
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "IOException occured while trying to close the socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 38
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 356
    monitor-enter p1

    .line 357
    :try_start_1
    invoke-direct/range {p0 .. p1}, getPacUrlDownloadStatus(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1b3

    .line 497
    :goto_8
    return-void

    .line 358
    :cond_9
    const/4 v15, 0x0

    .line 359
    .local v15, "out":Ljava/io/PrintStream;
    const/4 v10, 0x0

    .line 360
    .local v10, "in":Ljava/io/BufferedReader;
    const/16 v23, 0x0

    .line 361
    .local v23, "socket":Ljava/net/Socket;
    const/16 v21, 0x0

    .line 364
    .local v21, "resolvedHostName":Ljava/lang/String;
    :try_start_f
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, getMarkForInterface(Ljava/lang/String;)I

    move-result v12

    .line 365
    .local v12, "isKnoxNetId":I
    if-eqz p5, :cond_94

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v12, v0, :cond_94

    .line 366
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_3f

    const-string v29, "KnoxVpnPacProcessor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The host name to resolve is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_3f
    new-instance v8, Landroid/system/StructAddrinfo;

    invoke-direct {v8}, Landroid/system/StructAddrinfo;-><init>()V

    .line 368
    .local v8, "hints":Landroid/system/StructAddrinfo;
    sget v29, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    move/from16 v0, v29

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 369
    sget v29, Landroid/system/OsConstants;->AF_UNSPEC:I

    move/from16 v0, v29

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_family:I

    .line 370
    sget v29, Landroid/system/OsConstants;->SOCK_STREAM:I

    move/from16 v0, v29

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 371
    sget-object v29, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v8, v12}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v25

    .line 372
    .local v25, "socketAddresses":[Ljava/net/InetAddress;
    if-eqz v25, :cond_94

    .line 373
    move-object/from16 v5, v25

    .local v5, "arr$":[Ljava/net/InetAddress;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_66
    if-ge v9, v13, :cond_94

    aget-object v4, v5, v9

    .line 374
    .local v4, "add":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v29, v0

    if-eqz v29, :cond_178

    .line 375
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    .line 376
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_94

    const-string v29, "KnoxVpnPacProcessor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The resolved host address is a ipv4 address "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v4    # "add":Ljava/net/InetAddress;
    .end local v5    # "arr$":[Ljava/net/InetAddress;
    .end local v8    # "hints":Landroid/system/StructAddrinfo;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v25    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_94
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v17, "pacBuilder":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/net/Socket;

    invoke-direct/range {v24 .. v24}, Ljava/net/Socket;-><init>()V
    :try_end_9e
    .catch Ljava/net/ConnectException; {:try_start_f .. :try_end_9e} :catch_4a0
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_9e} :catch_496
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f .. :try_end_9e} :catch_487
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_9e} :catch_339
    .catch Landroid/system/GaiException; {:try_start_f .. :try_end_9e} :catch_367
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_9e} :catch_3ca
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_9e} :catch_3f5
    .catchall {:try_start_f .. :try_end_9e} :catchall_420

    .line 385
    .end local v23    # "socket":Ljava/net/Socket;
    .local v24, "socket":Ljava/net/Socket;
    const/16 v29, 0x0

    :try_start_a0
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 386
    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v26

    .line 387
    .local v26, "socketFd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_17c

    .line 388
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, bindSocketToInterfaceWrapper(ILjava/lang/String;)V

    .line 393
    const/16 v29, 0x2710

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 395
    if-eqz v21, :cond_1b6

    .line 396
    new-instance v29, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v30, 0x2710

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 400
    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    .line 401
    .local v20, "readFromServer":Ljava/io/InputStream;
    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    .line 402
    .local v28, "writeToServer":Ljava/io/OutputStream;
    new-instance v16, Ljava/io/PrintStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f6
    .catch Ljava/net/ConnectException; {:try_start_a0 .. :try_end_f6} :catch_182
    .catch Ljava/net/SocketException; {:try_start_a0 .. :try_end_f6} :catch_1bc
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a0 .. :try_end_f6} :catch_48a
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_f6} :catch_473
    .catch Landroid/system/GaiException; {:try_start_a0 .. :try_end_f6} :catch_45f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a0 .. :try_end_f6} :catch_44b
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_f6} :catch_43a
    .catchall {:try_start_a0 .. :try_end_f6} :catchall_429

    .line 403
    .end local v15    # "out":Ljava/io/PrintStream;
    .local v16, "out":Ljava/io/PrintStream;
    :try_start_f6
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v29, Ljava/io/InputStreamReader;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_106
    .catch Ljava/net/ConnectException; {:try_start_f6 .. :try_end_106} :catch_4a3
    .catch Ljava/net/SocketException; {:try_start_f6 .. :try_end_106} :catch_499
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f6 .. :try_end_106} :catch_48f
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_106} :catch_478
    .catch Landroid/system/GaiException; {:try_start_f6 .. :try_end_106} :catch_464
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f6 .. :try_end_106} :catch_450
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_106} :catch_43e
    .catchall {:try_start_f6 .. :try_end_106} :catchall_42d

    .line 405
    .end local v10    # "in":Ljava/io/BufferedReader;
    .local v11, "in":Ljava/io/BufferedReader;
    :try_start_106
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "GET "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " HTTP/1.1\r"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Host: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\r"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    const-string v29, "Connection: close\r"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    const-string v29, "\r"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintStream;->flush()V

    .line 410
    const/16 v27, 0x0

    .line 411
    .local v27, "startReading":Z
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 412
    .local v14, "line":Ljava/lang/String;
    :goto_169
    if-eqz v14, :cond_225

    .line 413
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_1eb

    .line 414
    const/16 v27, 0x1

    .line 415
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_176
    .catch Ljava/net/ConnectException; {:try_start_106 .. :try_end_176} :catch_2c5
    .catch Ljava/net/SocketException; {:try_start_106 .. :try_end_176} :catch_2ed
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_106 .. :try_end_176} :catch_309
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_176} :catch_47f
    .catch Landroid/system/GaiException; {:try_start_106 .. :try_end_176} :catch_46b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_106 .. :try_end_176} :catch_457
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_176} :catch_444
    .catchall {:try_start_106 .. :try_end_176} :catchall_433

    move-result-object v14

    .line 416
    goto :goto_169

    .line 373
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v24    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v27    # "startReading":Z
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v4    # "add":Ljava/net/InetAddress;
    .restart local v5    # "arr$":[Ljava/net/InetAddress;
    .restart local v8    # "hints":Landroid/system/StructAddrinfo;
    .restart local v9    # "i$":I
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "len$":I
    .restart local v15    # "out":Ljava/io/PrintStream;
    .restart local v23    # "socket":Ljava/net/Socket;
    .restart local v25    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_178
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_66

    .line 390
    .end local v4    # "add":Ljava/net/InetAddress;
    .end local v5    # "arr$":[Ljava/net/InetAddress;
    .end local v8    # "hints":Landroid/system/StructAddrinfo;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v25    # "socketAddresses":[Ljava/net/InetAddress;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    :cond_17c
    :try_start_17c
    new-instance v29, Ljava/net/SocketException;

    invoke-direct/range {v29 .. v29}, Ljava/net/SocketException;-><init>()V

    throw v29
    :try_end_182
    .catch Ljava/net/ConnectException; {:try_start_17c .. :try_end_182} :catch_182
    .catch Ljava/net/SocketException; {:try_start_17c .. :try_end_182} :catch_1bc
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_17c .. :try_end_182} :catch_48a
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_182} :catch_473
    .catch Landroid/system/GaiException; {:try_start_17c .. :try_end_182} :catch_45f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17c .. :try_end_182} :catch_44b
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_182} :catch_43a
    .catchall {:try_start_17c .. :try_end_182} :catchall_429

    .line 453
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    :catch_182
    move-exception v6

    move-object/from16 v23, v24

    .line 454
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v24    # "socket":Ljava/net/Socket;
    .local v6, "e":Ljava/net/ConnectException;
    .restart local v23    # "socket":Ljava/net/Socket;
    :goto_185
    :try_start_185
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "ConnectException occured while trying to download the pac url"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 456
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-direct/range {p0 .. p1}, checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_1a9
    .catchall {:try_start_185 .. :try_end_1a9} :catchall_420

    .line 494
    :try_start_1a9
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 496
    .end local v6    # "e":Ljava/net/ConnectException;
    :goto_1b0
    monitor-exit p1

    goto/16 :goto_8

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v21    # "resolvedHostName":Ljava/lang/String;
    .end local v23    # "socket":Ljava/net/Socket;
    :catchall_1b3
    move-exception v29

    monitor-exit p1
    :try_end_1b5
    .catchall {:try_start_1a9 .. :try_end_1b5} :catchall_1b3

    throw v29

    .line 398
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "isKnoxNetId":I
    .restart local v15    # "out":Ljava/io/PrintStream;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "resolvedHostName":Ljava/lang/String;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    :cond_1b6
    :try_start_1b6
    new-instance v29, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v29
    :try_end_1bc
    .catch Ljava/net/ConnectException; {:try_start_1b6 .. :try_end_1bc} :catch_182
    .catch Ljava/net/SocketException; {:try_start_1b6 .. :try_end_1bc} :catch_1bc
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1b6 .. :try_end_1bc} :catch_48a
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1bc} :catch_473
    .catch Landroid/system/GaiException; {:try_start_1b6 .. :try_end_1bc} :catch_45f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b6 .. :try_end_1bc} :catch_44b
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1bc} :catch_43a
    .catchall {:try_start_1b6 .. :try_end_1bc} :catchall_429

    .line 458
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    :catch_1bc
    move-exception v6

    move-object/from16 v23, v24

    .line 459
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v24    # "socket":Ljava/net/Socket;
    .local v6, "e":Ljava/net/SocketException;
    .restart local v23    # "socket":Ljava/net/Socket;
    :goto_1bf
    :try_start_1bf
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "SocketException occured while trying to download the pac url"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 461
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-direct/range {p0 .. p1}, checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_1e3
    .catchall {:try_start_1bf .. :try_end_1e3} :catchall_420

    .line 494
    :try_start_1e3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_1ea
    .catchall {:try_start_1e3 .. :try_end_1ea} :catchall_1b3

    goto :goto_1b0

    .line 418
    .end local v6    # "e":Ljava/net/SocketException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "isKnoxNetId":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v27    # "startReading":Z
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :cond_1eb
    if-eqz v27, :cond_21f

    .line 419
    :try_start_1ed
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_20b

    const-string v29, "KnoxVpnPacProcessor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The pac line printed is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_20b
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v29, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_21f
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_169

    .line 426
    :cond_225
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "(?:/\\*(?:[^*]|(?:\\*+[^*/]))*\\*+/)|(?://.*)"

    const-string v31, ""

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "(?m)^[ \t]*\r?\n"

    const-string v31, ""

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 427
    .local v18, "pacContent":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    .line 428
    .local v19, "pacContentLength":I
    if-eqz v18, :cond_2f5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I
    :try_end_242
    .catch Ljava/net/ConnectException; {:try_start_1ed .. :try_end_242} :catch_2c5
    .catch Ljava/net/SocketException; {:try_start_1ed .. :try_end_242} :catch_2ed
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1ed .. :try_end_242} :catch_309
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_242} :catch_47f
    .catch Landroid/system/GaiException; {:try_start_1ed .. :try_end_242} :catch_46b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ed .. :try_end_242} :catch_457
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_242} :catch_444
    .catchall {:try_start_1ed .. :try_end_242} :catchall_433

    move-result v29

    if-lez v29, :cond_2f5

    .line 429
    const/16 v22, 0x0

    .line 431
    .local v22, "savePacScript":Z
    :try_start_247
    invoke-direct/range {p0 .. p0}, getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/net/IProxyService;->setPacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_254
    .catch Ljava/lang/NullPointerException; {:try_start_247 .. :try_end_254} :catch_29d
    .catch Ljava/net/ConnectException; {:try_start_247 .. :try_end_254} :catch_2c5
    .catch Ljava/net/SocketException; {:try_start_247 .. :try_end_254} :catch_2ed
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_247 .. :try_end_254} :catch_309
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_254} :catch_47f
    .catch Landroid/system/GaiException; {:try_start_247 .. :try_end_254} :catch_46b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_247 .. :try_end_254} :catch_457
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_254} :catch_444
    .catchall {:try_start_247 .. :try_end_254} :catchall_433

    move-result v22

    .line 438
    :goto_255
    if-eqz v22, :cond_2cd

    .line 439
    :try_start_257
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_28a

    .line 441
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "The pac file has been downloaded successfully,cancelling further retry attempts"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_28a
    invoke-direct/range {p0 .. p1}, removeDownloadThreadDetails(Ljava/lang/String;)V
    :try_end_28d
    .catch Ljava/net/ConnectException; {:try_start_257 .. :try_end_28d} :catch_2c5
    .catch Ljava/net/SocketException; {:try_start_257 .. :try_end_28d} :catch_2ed
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_257 .. :try_end_28d} :catch_309
    .catch Ljava/io/IOException; {:try_start_257 .. :try_end_28d} :catch_47f
    .catch Landroid/system/GaiException; {:try_start_257 .. :try_end_28d} :catch_46b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_257 .. :try_end_28d} :catch_457
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_28d} :catch_444
    .catchall {:try_start_257 .. :try_end_28d} :catchall_433

    .line 494
    .end local v22    # "savePacScript":Z
    :goto_28d
    :try_start_28d
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v11, v2}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_296
    .catchall {:try_start_28d .. :try_end_296} :catchall_1b3

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .line 495
    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_1b0

    .line 432
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v22    # "savePacScript":Z
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_29d
    move-exception v6

    .line 433
    .local v6, "e":Ljava/lang/NullPointerException;
    :try_start_29e
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "Exception occured due to the pac service not intialized"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v11, v2}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 435
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-direct/range {p0 .. p1}, checkIfRetryNeeded(Ljava/lang/String;)V

    goto :goto_255

    .line 453
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "pacContent":Ljava/lang/String;
    .end local v19    # "pacContentLength":I
    .end local v22    # "savePacScript":Z
    .end local v27    # "startReading":Z
    :catch_2c5
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_185

    .line 446
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v18    # "pacContent":Ljava/lang/String;
    .restart local v19    # "pacContentLength":I
    .restart local v22    # "savePacScript":Z
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v27    # "startReading":Z
    :cond_2cd
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v11, v2}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 447
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-direct/range {p0 .. p1}, checkIfRetryNeeded(Ljava/lang/String;)V

    goto :goto_28d

    .line 458
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "pacContent":Ljava/lang/String;
    .end local v19    # "pacContentLength":I
    .end local v22    # "savePacScript":Z
    .end local v27    # "startReading":Z
    :catch_2ed
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_1bf

    .line 451
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v18    # "pacContent":Ljava/lang/String;
    .restart local v19    # "pacContentLength":I
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v27    # "startReading":Z
    :cond_2f5
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_308
    .catch Ljava/net/ConnectException; {:try_start_29e .. :try_end_308} :catch_2c5
    .catch Ljava/net/SocketException; {:try_start_29e .. :try_end_308} :catch_2ed
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_29e .. :try_end_308} :catch_309
    .catch Ljava/io/IOException; {:try_start_29e .. :try_end_308} :catch_47f
    .catch Landroid/system/GaiException; {:try_start_29e .. :try_end_308} :catch_46b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29e .. :try_end_308} :catch_457
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_308} :catch_444
    .catchall {:try_start_29e .. :try_end_308} :catchall_433

    goto :goto_28d

    .line 463
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "pacContent":Ljava/lang/String;
    .end local v19    # "pacContentLength":I
    .end local v27    # "startReading":Z
    :catch_309
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .line 464
    .end local v12    # "isKnoxNetId":I
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .local v6, "e":Ljava/nio/channels/ClosedByInterruptException;
    .restart local v15    # "out":Ljava/io/PrintStream;
    :goto_30f
    :try_start_30f
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "Downloading the pac url failed due to Interruption, close the existing connections"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 466
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_330
    .catchall {:try_start_30f .. :try_end_330} :catchall_420

    .line 494
    :try_start_330
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_337
    .catchall {:try_start_330 .. :try_end_337} :catchall_1b3

    goto/16 :goto_1b0

    .line 467
    .end local v6    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catch_339
    move-exception v6

    .line 468
    .local v6, "e":Ljava/io/IOException;
    :goto_33a
    :try_start_33a
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "IOException occured while trying to download the pac url "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 470
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-direct/range {p0 .. p1}, checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_35e
    .catchall {:try_start_33a .. :try_end_35e} :catchall_420

    .line 494
    :try_start_35e
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_365
    .catchall {:try_start_35e .. :try_end_365} :catchall_1b3

    goto/16 :goto_1b0

    .line 472
    .end local v6    # "e":Ljava/io/IOException;
    :catch_367
    move-exception v6

    .line 473
    .local v6, "e":Landroid/system/GaiException;
    :goto_368
    :try_start_368
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "GaiException occured while trying to download the pac url "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36f
    .catchall {:try_start_368 .. :try_end_36f} :catchall_420

    .line 475
    const-wide/16 v30, 0x1388

    :try_start_371
    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_378
    .catch Ljava/lang/InterruptedException; {:try_start_371 .. :try_end_378} :catch_39e
    .catchall {:try_start_371 .. :try_end_378} :catchall_420

    .line 482
    :try_start_378
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 483
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-direct/range {p0 .. p1}, checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_395
    .catchall {:try_start_378 .. :try_end_395} :catchall_420

    .line 494
    :try_start_395
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_39c
    .catchall {:try_start_395 .. :try_end_39c} :catchall_1b3

    goto/16 :goto_1b0

    .line 476
    :catch_39e
    move-exception v7

    .line 477
    .local v7, "e1":Ljava/lang/InterruptedException;
    :try_start_39f
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "Got Interruption while trying to resolve the domain name "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 479
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c0
    .catchall {:try_start_39f .. :try_end_3c0} :catchall_420

    .line 494
    :try_start_3c0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    monitor-exit p1
    :try_end_3c8
    .catchall {:try_start_3c0 .. :try_end_3c8} :catchall_1b3

    goto/16 :goto_8

    .line 485
    .end local v6    # "e":Landroid/system/GaiException;
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    :catch_3ca
    move-exception v6

    .line 486
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :goto_3cb
    :try_start_3cb
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "cannot find the dns server to resolve the pac url"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 488
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3ec
    .catchall {:try_start_3cb .. :try_end_3ec} :catchall_420

    .line 494
    :try_start_3ec
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_3f3
    .catchall {:try_start_3ec .. :try_end_3f3} :catchall_1b3

    goto/16 :goto_1b0

    .line 489
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3f5
    move-exception v6

    .line 490
    .local v6, "e":Ljava/lang/Exception;
    :goto_3f6
    :try_start_3f6
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "Exception occured while trying to pac url "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 492
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_417
    .catchall {:try_start_3f6 .. :try_end_417} :catchall_420

    .line 494
    :try_start_417
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    goto/16 :goto_1b0

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_420
    move-exception v29

    :goto_421
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    throw v29
    :try_end_429
    .catchall {:try_start_417 .. :try_end_429} :catchall_1b3

    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v12    # "isKnoxNetId":I
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catchall_429
    move-exception v29

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto :goto_421

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catchall_42d
    move-exception v29

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto :goto_421

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catchall_433
    move-exception v29

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto :goto_421

    .line 489
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_43a
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto :goto_3f6

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_43e
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto :goto_3f6

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_444
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto :goto_3f6

    .line 485
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_44b
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto/16 :goto_3cb

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_450
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_3cb

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_457
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_3cb

    .line 472
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_45f
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto/16 :goto_368

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_464
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_368

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_46b
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_368

    .line 467
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_473
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto/16 :goto_33a

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_478
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_33a

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_47f
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_33a

    .line 463
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_487
    move-exception v6

    goto/16 :goto_30f

    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v12    # "isKnoxNetId":I
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_48a
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto/16 :goto_30f

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_48f
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_30f

    .line 458
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_496
    move-exception v6

    goto/16 :goto_1bf

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v12    # "isKnoxNetId":I
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_499
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_1bf

    .line 453
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_4a0
    move-exception v6

    goto/16 :goto_185

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v12    # "isKnoxNetId":I
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_4a3
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_185
.end method

.method private extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacUrl"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 297
    const/4 v8, 0x0

    .line 298
    .local v8, "protocol":Ljava/lang/String;
    const/4 v5, -0x1

    .line 301
    .local v5, "port":I
    :try_start_3
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    .local v9, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "hostname":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 305
    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v5

    .line 306
    const/4 v1, -0x1

    if-ne v5, v1, :cond_1f

    .line 307
    invoke-direct {p0, v8}, getPortFromProtocol(Ljava/lang/String;)I

    move-result v5

    .line 310
    :cond_1f
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 311
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The current status of the download thread of the profile "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 313
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->interrupt()V

    .line 315
    :cond_77
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_7e
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    .local v0, "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->start()V

    .line 319
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_90
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_90} :catch_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_90} :catch_a6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_90} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_90} :catch_d0

    .line 334
    .end local v0    # "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    .end local v3    # "hostname":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v9    # "urlToDownload":Ljava/net/URL;
    :goto_90
    return-void

    .line 321
    :catch_91
    move-exception v7

    .line 322
    .local v7, "e":Ljava/net/MalformedURLException;
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to download the pac file due to unknow url format, remove and create the profile again"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 324
    .end local v7    # "e":Ljava/net/MalformedURLException;
    :catch_a6
    move-exception v7

    .line 325
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to download the pac file due to unknown port number"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 327
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_bb
    move-exception v7

    .line 328
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to download the pac file due to some values being not intialized successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 330
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_d0
    move-exception v7

    .line 331
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to download the pac file after the vpn connection is established"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90
.end method

.method private static declared-synchronized getCurrentRetryStatus()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_3
    sget-object v0, mRetryAttempt:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mRetryAttempt:Ljava/util/HashMap;

    .line 170
    :cond_e
    sget-object v0, mRetryAttempt:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDownloadStatus()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_3
    sget-object v0, mDownloadStatus:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mDownloadStatus:Ljava/util/HashMap;

    .line 163
    :cond_e
    sget-object v0, mDownloadStatus:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDownloadThread()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_3
    sget-object v0, mDownloadUrlThread:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mDownloadUrlThread:Ljava/util/HashMap;

    .line 177
    :cond_e
    sget-object v0, mDownloadUrlThread:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_3
    sget-object v0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_e

    .line 154
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 156
    :cond_e
    sget-object v0, mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 153
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMarkForInterface(Ljava/lang/String;)I
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 594
    const/4 v0, -0x1

    .line 595
    .local v0, "knoxNetworkMark":I
    const-string/jumbo v1, "ipsec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 596
    const/16 v0, 0x64

    .line 600
    :cond_c
    :goto_c
    return v0

    .line 597
    :cond_d
    const-string/jumbo v1, "tun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 598
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x65

    goto :goto_c
.end method

.method private declared-synchronized getPacBinder()Lcom/android/net/IProxyService;
    .registers 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    sget-object v0, mProxyService:Lcom/android/net/IProxyService;

    if-eqz v0, :cond_9

    .line 145
    sget-object v0, mProxyService:Lcom/android/net/IProxyService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    .line 148
    :goto_7
    monitor-exit p0

    return-object v0

    .line 147
    :cond_9
    :try_start_9
    invoke-virtual {p0}, bindPacService()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 148
    const/4 v0, 0x0

    goto :goto_7

    .line 144
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPacUrlDownloadStatus(Ljava/lang/String;)Z
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, "isScriptDownloaded":Z
    :try_start_1
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    .line 279
    sget-object v2, mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 280
    sget-object v2, mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_40

    move-result v2

    packed-switch v2, :pswitch_data_4a

    .line 292
    :cond_1b
    :goto_1b
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check to see if the pac url has been downloaded successfully "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v1

    .line 282
    :pswitch_34
    const/4 v1, 0x1

    goto :goto_1b

    .line 287
    :catch_36
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to get download status pac file due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 289
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_40
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, " error occured while trying to get download status pac file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 280
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_34
    .end packed-switch
.end method

.method private getPortFromProtocol(Ljava/lang/String;)I
    .registers 6
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "port":I
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_54

    :cond_9
    :goto_9
    packed-switch v1, :pswitch_data_62

    .line 349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 338
    :sswitch_12
    const-string/jumbo v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :sswitch_1d
    const-string/jumbo v2, "ftp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :sswitch_28
    const-string/jumbo v2, "https"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x2

    goto :goto_9

    .line 340
    :pswitch_33
    const/16 v0, 0x50

    .line 351
    :goto_35
    const-string v1, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The pac file is going to be downloaded from the remote port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v0

    .line 343
    :pswitch_4e
    const/16 v0, 0x15

    .line 344
    goto :goto_35

    .line 346
    :pswitch_51
    const/16 v0, 0x1bb

    .line 347
    goto :goto_35

    .line 338
    :sswitch_data_54
    .sparse-switch
        0x18d62 -> :sswitch_1d
        0x310888 -> :sswitch_12
        0x5f008eb -> :sswitch_28
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_33
        :pswitch_4e
        :pswitch_51
    .end packed-switch
.end method

.method private declared-synchronized getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v0, :cond_b

    .line 182
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 184
    :cond_b
    iget-object v0, p0, mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeDownloadThreadDetails(Ljava/lang/String;)V
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 546
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_11
    return-void
.end method

.method private startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .registers 14
    .param p1, "vpnEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    const/4 v11, 0x1

    .line 551
    const/4 v1, 0x0

    .line 553
    .local v1, "profileName":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, "interfaceName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v7

    .line 556
    .local v7, "pacUrl":Ljava/lang/String;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 557
    .local v9, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "hostname":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 560
    .local v8, "protocol":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 561
    .local v4, "port":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_2a

    .line 562
    invoke-direct {p0, v8}, getPortFromProtocol(Ljava/lang/String;)I

    move-result v4

    .line 564
    :cond_2a
    if-eqz v1, :cond_45

    if-eqz v5, :cond_45

    if-eqz v7, :cond_45

    .line 565
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_45

    move-object v0, p0

    .line 566
    invoke-direct/range {v0 .. v5}, downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_45} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_45} :catch_5b
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_45} :catch_70
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_85

    .line 582
    .end local v2    # "hostname":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "interfaceName":Ljava/lang/String;
    .end local v7    # "pacUrl":Ljava/lang/String;
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v9    # "urlToDownload":Ljava/net/URL;
    :cond_45
    :goto_45
    return-void

    .line 569
    :catch_46
    move-exception v6

    .line 570
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: Some profile values are not intialized when trying to download the pac url"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 572
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_5b
    move-exception v6

    .line 573
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: Invalid port value is defined when trying to download the pac url"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 575
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_70
    move-exception v6

    .line 576
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: error occured while trying to download the pac file due to unknow url format"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 578
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catch_85
    move-exception v6

    .line 579
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: error occured while trying to download the pac file"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method


# virtual methods
.method protected declared-synchronized bindPacService()V
    .registers 5

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    sget-object v2, mContext:Landroid/content/Context;

    if-nez v2, :cond_e

    .line 130
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "No context for binding"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1a

    .line 141
    :goto_c
    monitor-exit p0

    return-void

    .line 133
    :cond_e
    :try_start_e
    sget-object v2, mProxyService:Lcom/android/net/IProxyService;

    if-eqz v2, :cond_1d

    .line 134
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "Already binded to pac service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1a

    goto :goto_c

    .line 129
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 137
    :cond_1d
    :try_start_1d
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)V

    .line 138
    .local v1, "pacConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.pacprocessor"

    const-string v3, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    sget-object v2, mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_1a

    goto :goto_c
.end method

.method protected bindSocketToInterfaceWrapper(ILjava/lang/String;)V
    .registers 8
    .param p1, "fd"    # I
    .param p2, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 586
    :try_start_0
    invoke-virtual {p0, p1, p2}, jnibindSocketToInterface(ILjava/lang/String;)I

    move-result v0

    .line 587
    .local v0, "bindResult":I
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindResult value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 591
    .end local v0    # "bindResult":I
    :goto_1c
    return-void

    .line 588
    :catch_1d
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "Exception occured while trying to bind the socket to the interface "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public native jnibindSocketToInterface(ILjava/lang/String;)I
.end method

.method protected makeProxyRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v5, 0x0

    .line 257
    .local v5, "proxyAddress":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_c
    if-ge v3, v4, :cond_33

    aget-char v1, v0, v3

    .line 259
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_30

    const/16 v6, 0x2e

    if-eq v1, v6, :cond_30

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_30

    .line 260
    new-instance v6, Landroid/os/RemoteException;

    const-string v7, "Invalid host was passed"

    invoke-direct {v6, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_26} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_7c

    .line 265
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_26
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v6, "KnoxVpnPacProcessor"

    const-string/jumbo v7, "error occured while trying to retrieve the proxy config due to some values being not intialized successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_2f
    :goto_2f
    return-object v5

    .line 258
    .restart local v0    # "arr$":[C
    .restart local v1    # "c":C
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 263
    .end local v1    # "c":C
    :cond_33
    :try_start_33
    invoke-direct {p0}, getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/android/net/IProxyService;->resolvePacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_2f

    const-string v6, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The given url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is going to go through the proxy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_61} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_61} :catch_62
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_61} :catch_7c

    goto :goto_2f

    .line 267
    .end local v0    # "arr$":[C
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_62
    move-exception v2

    .line 268
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid host was passed for pac resolution "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 269
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_7c
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error occured while trying to to retrieve the proxy config for the profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method protected setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacurl"    # Ljava/lang/String;

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    .line 228
    sget-object v1, mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 229
    sget-object v1, mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_60

    .line 252
    :goto_1a
    :pswitch_1a
    return-void

    .line 235
    :pswitch_1b
    const-string v1, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to download the pac url for the profile after the interface is up for the profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 237
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_44
    invoke-direct {p0, p1, p2, p3}, extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_47} :catch_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_56

    goto :goto_1a

    .line 247
    :catch_48
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to get current status pac file due to some values being not intialized successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 245
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_52
    :try_start_52
    invoke-direct {p0, p1, p2, p3}, extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_52 .. :try_end_55} :catch_48
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_1a

    .line 249
    :catch_56
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, " error occured while trying to get current status pac file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 229
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method protected startPacSupport(Ljava/lang/String;)V
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 189
    :try_start_0
    invoke-direct {p0}, getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 190
    .local v1, "startPacSupport":Z
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPacSupport return value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_21} :catch_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_31

    .line 197
    .end local v1    # "startPacSupport":Z
    :goto_21
    return-void

    .line 191
    :catch_22
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to start the pac support due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v2, mBindAction:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 194
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_31
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error occured while trying to start the pac script for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method protected stopPacSupport(Ljava/lang/String;)V
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->stopPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 202
    .local v1, "removePacSupport":Z
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check to see if the pac support is removed for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, getDownloadStatus()Ljava/util/HashMap;

    .line 204
    sget-object v2, mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 205
    sget-object v2, mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_30
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    .line 209
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 210
    invoke-static {}, getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_44
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    .line 214
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 215
    invoke-static {}, getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_58} :catch_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_63

    .line 223
    .end local v1    # "removePacSupport":Z
    :cond_58
    :goto_58
    return-void

    .line 218
    :catch_59
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to remove the pac support due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 220
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_63
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error occured while trying to remove the pac script for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method
