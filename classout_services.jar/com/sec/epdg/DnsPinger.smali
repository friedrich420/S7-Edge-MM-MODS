.class public final Lcom/sec/epdg/DnsPinger;
.super Landroid/os/Handler;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/DnsPinger$1;,
        Lcom/sec/epdg/DnsPinger$DnsArg;,
        Lcom/sec/epdg/DnsPinger$ActivePing;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x50003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x50002

.field private static final ACTION_PING_DNS:I = 0x50001

.field private static final BASE:I = 0x50000

.field private static final DBG:Z = true

.field public static final DNS_PING_RESULT:I = 0x50000

.field private static final DNS_PORT:I = 0x35

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static final mDnsQuery:[B

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/epdg/DnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEventCounter:I

.field private final mTarget:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, sRandom:Ljava/util/Random;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 286
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, mDnsQuery:[B

    return-void

    :array_18
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x77t
        0x77t
        0x77t
        0x6t
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x3t
        0x63t
        0x6ft
        0x6dt
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "TAG"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "target"    # Landroid/os/Handler;

    .prologue
    .line 123
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActivePings:Ljava/util/List;

    .line 124
    iput-object p2, p0, TAG:Ljava/lang/String;

    .line 125
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 126
    iput-object p4, p0, mTarget:Landroid/os/Handler;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, mEventCounter:I

    .line 128
    return-void
.end method

.method private getCurrentLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 281
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 283
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method private sendResponse(III)V
    .registers 6
    .param p1, "internalId"    # I
    .param p2, "externalId"    # I
    .param p3, "responseVal"    # I

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, mTarget:Landroid/os/Handler;

    const/high16 v1, 0x50000

    invoke-virtual {p0, v1, p1, p3}, obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    return-void
.end method


# virtual methods
.method public cancelPings()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 268
    const v0, 0x50003

    invoke-virtual {p0, v0}, obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 269
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_352

    .line 245
    const-string v17, "Invalid Message received"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V

    .line 249
    :cond_12
    :goto_12
    return-void

    .line 134
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/sec/epdg/DnsPinger$DnsArg;

    .line 135
    .local v8, "dnsArg":Lcom/sec/epdg/DnsPinger$DnsArg;
    iget v0, v8, Lcom/sec/epdg/DnsPinger$DnsArg;->seq:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 139
    :try_start_2d
    new-instance v13, Lcom/sec/epdg/DnsPinger$ActivePing;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Lcom/sec/epdg/DnsPinger$ActivePing;-><init>(Lcom/sec/epdg/DnsPinger;Lcom/sec/epdg/DnsPinger$1;)V

    .line 140
    .local v13, "newActivePing":Lcom/sec/epdg/DnsPinger$ActivePing;
    iget-object v7, v8, Lcom/sec/epdg/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 141
    .local v7, "dnsAddress":Ljava/net/InetAddress;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->internalId:I

    .line 142
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->timeout:I

    .line 143
    new-instance v17, Ljava/net/DatagramSocket;

    invoke-direct/range {v17 .. v17}, Ljava/net/DatagramSocket;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 145
    iget-object v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_60} :catch_169

    .line 152
    :try_start_60
    iget-object v0, v8, Lcom/sec/epdg/DnsPinger$DnsArg;->network:Landroid/net/Network;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, getCurrentLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v12

    .line 153
    .local v12, "lp":Landroid/net/LinkProperties;
    if-eqz v12, :cond_181

    iget-object v0, v8, Lcom/sec/epdg/DnsPinger$DnsArg;->network:Landroid/net/Network;

    move-object/from16 v17, v0

    if-eqz v17, :cond_181

    .line 154
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "intfName: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V

    .line 155
    iget-object v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/net/DatagramSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_a2} :catch_18c
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_a2} :catch_169

    .line 164
    .end local v12    # "lp":Landroid/net/LinkProperties;
    :goto_a2
    :try_start_a2
    sget-object v17, sRandom:Ljava/util/Random;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextInt()I

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-short v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->packetId:S

    .line 165
    sget-object v17, mDnsQuery:[B

    invoke-virtual/range {v17 .. v17}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 166
    .local v5, "buf":[B
    const/16 v17, 0x0

    iget-short v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->packetId:S

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v5, v17

    .line 167
    const/16 v17, 0x1

    iget-short v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->packetId:S

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v5, v17

    .line 170
    new-instance v14, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x35

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v5, v0, v7, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 173
    .local v14, "packet":Ljava/net/DatagramPacket;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Sending a ping "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->internalId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " with packetId "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-short v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->packetId:S

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V

    .line 178
    iget-object v0, v13, Lcom/sec/epdg/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, mActivePings:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, mEventCounter:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mEventCounter:I

    .line 181
    const v17, 0x50002

    move-object/from16 v0, p0

    iget v0, v0, mEventCounter:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_167} :catch_169

    goto/16 :goto_12

    .line 183
    .end local v5    # "buf":[B
    .end local v7    # "dnsAddress":Ljava/net/InetAddress;
    .end local v13    # "newActivePing":Lcom/sec/epdg/DnsPinger$ActivePing;
    .end local v14    # "packet":Ljava/net/DatagramPacket;
    :catch_169
    move-exception v9

    .line 184
    .local v9, "e":Ljava/io/IOException;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, -0x270f

    const/16 v19, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, sendResponse(III)V

    goto/16 :goto_12

    .line 158
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v7    # "dnsAddress":Ljava/net/InetAddress;
    .restart local v12    # "lp":Landroid/net/LinkProperties;
    .restart local v13    # "newActivePing":Lcom/sec/epdg/DnsPinger$ActivePing;
    :cond_181
    :try_start_181
    const-string v17, "Link properties or Network is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18a} :catch_18c
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_18a} :catch_169

    goto/16 :goto_a2

    .line 160
    .end local v12    # "lp":Landroid/net/LinkProperties;
    :catch_18c
    move-exception v9

    .line 161
    .local v9, "e":Ljava/lang/Exception;
    :try_start_18d
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sendDnsPing::Error binding to socket "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_1aa} :catch_169

    goto/16 :goto_a2

    .line 188
    .end local v7    # "dnsAddress":Ljava/net/InetAddress;
    .end local v8    # "dnsArg":Lcom/sec/epdg/DnsPinger$DnsArg;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "newActivePing":Lcom/sec/epdg/DnsPinger$ActivePing;
    :pswitch_1ac
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mEventCounter:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, mActivePings:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1c8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_280

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/epdg/DnsPinger$ActivePing;

    .line 194
    .local v6, "curPing":Lcom/sec/epdg/DnsPinger$ActivePing;
    const/16 v17, 0x2

    :try_start_1d6
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 195
    .local v16, "responseBuf":[B
    new-instance v15, Ljava/net/DatagramPacket;

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 196
    .local v15, "replyPacket":Ljava/net/DatagramPacket;
    iget-object v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 198
    const/16 v17, 0x0

    aget-byte v17, v16, v17

    iget-short v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->packetId:S

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24b

    const/16 v17, 0x1

    aget-byte v17, v16, v17

    iget-short v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->packetId:S

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24b

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    iget-wide v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->start:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->result:Ljava/lang/Integer;
    :try_end_22b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d6 .. :try_end_22b} :catch_22c
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_22b} :catch_257

    goto :goto_1c8

    .line 207
    .end local v15    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v16    # "responseBuf":[B
    :catch_22c
    move-exception v9

    .line 210
    .local v9, "e":Ljava/net/SocketTimeoutException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DnsPinger.pingDns got socket timeout exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_1c8

    .line 204
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    .restart local v15    # "replyPacket":Ljava/net/DatagramPacket;
    .restart local v16    # "responseBuf":[B
    :cond_24b
    :try_start_24b
    const-string/jumbo v17, "response ID didn\'t match, ignoring packet"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V
    :try_end_255
    .catch Ljava/net/SocketTimeoutException; {:try_start_24b .. :try_end_255} :catch_22c
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_255} :catch_257

    goto/16 :goto_1c8

    .line 212
    .end local v15    # "replyPacket":Ljava/net/DatagramPacket;
    .end local v16    # "responseBuf":[B
    :catch_257
    move-exception v9

    .line 214
    .local v9, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DnsPinger.pingDns got socket exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V

    .line 216
    const/16 v17, -0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto/16 :goto_1c8

    .line 219
    .end local v6    # "curPing":Lcom/sec/epdg/DnsPinger$ActivePing;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_280
    move-object/from16 v0, p0

    iget-object v0, v0, mActivePings:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 220
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/DnsPinger$ActivePing;>;"
    :cond_28a
    :goto_28a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2f9

    .line 221
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/epdg/DnsPinger$ActivePing;

    .line 222
    .restart local v6    # "curPing":Lcom/sec/epdg/DnsPinger$ActivePing;
    iget-object v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2c2

    .line 223
    iget v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->internalId:I

    move/from16 v17, v0

    iget-short v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->packetId:S

    move/from16 v18, v0

    iget-object v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, sendResponse(III)V

    .line 224
    iget-object v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/DatagramSocket;->close()V

    .line 225
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_28a

    .line 226
    :cond_2c2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    iget-wide v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->start:J

    move-wide/from16 v20, v0

    iget v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->timeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    cmp-long v17, v18, v20

    if-lez v17, :cond_28a

    .line 228
    iget v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->internalId:I

    move/from16 v17, v0

    iget-short v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->packetId:S

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, sendResponse(III)V

    .line 229
    iget-object v0, v6, Lcom/sec/epdg/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/DatagramSocket;->close()V

    .line 230
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_28a

    .line 233
    .end local v6    # "curPing":Lcom/sec/epdg/DnsPinger$ActivePing;
    :cond_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, mActivePings:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_12

    .line 234
    const v17, 0x50002

    move-object/from16 v0, p0

    iget v0, v0, mEventCounter:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_12

    .line 239
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/DnsPinger$ActivePing;>;"
    :pswitch_329
    move-object/from16 v0, p0

    iget-object v0, v0, mActivePings:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_333
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_347

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/DnsPinger$ActivePing;

    .line 240
    .local v4, "activePing":Lcom/sec/epdg/DnsPinger$ActivePing;
    iget-object v0, v4, Lcom/sec/epdg/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/DatagramSocket;->close()V

    goto :goto_333

    .line 241
    .end local v4    # "activePing":Lcom/sec/epdg/DnsPinger$ActivePing;
    :cond_347
    move-object/from16 v0, p0

    iget-object v0, v0, mActivePings:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    goto/16 :goto_12

    .line 132
    :pswitch_data_352
    .packed-switch 0x50001
        :pswitch_13
        :pswitch_1ac
        :pswitch_329
    .end packed-switch
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;Landroid/net/Network;II)I
    .registers 9
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "timeout"    # I
    .param p4, "delay"    # I

    .prologue
    .line 260
    sget-object v1, sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 261
    .local v0, "id":I
    const v1, 0x50001

    new-instance v2, Lcom/sec/epdg/DnsPinger$DnsArg;

    iget-object v3, p0, mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/sec/epdg/DnsPinger$DnsArg;-><init>(Lcom/sec/epdg/DnsPinger;Ljava/net/InetAddress;Landroid/net/Network;I)V

    invoke-virtual {p0, v1, v0, p3, v2}, obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {p0, v1, v2, v3}, sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    return v0
.end method
