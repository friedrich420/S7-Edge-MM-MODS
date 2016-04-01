.class Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;
.super Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsUdpCheck"
.end annotation


# static fields
.field private static final DNS_SERVER_PORT:I = 0x35

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final RR_TYPE_A:I = 0x1

.field private static final RR_TYPE_AAAA:I = 0x1c

.field private static final TIMEOUT_RECV:I = 0x1f4

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mQueryType:I

.field private final mRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .registers 7
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    .line 483
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 484
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 470
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, mRandom:Ljava/util/Random;

    .line 487
    iget v0, p0, mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_3b

    .line 488
    const/16 v0, 0x1c

    iput v0, p0, mQueryType:I

    .line 493
    :goto_16
    iget-object v0, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS UDP dst{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mTarget:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 494
    return-void

    .line 490
    :cond_3b
    const/4 v0, 0x1

    iput v0, p0, mQueryType:I

    goto :goto_16
.end method

.method private getDnsQueryPacket(Ljava/lang/String;)[B
    .registers 11
    .param p1, "sixRandomDigits"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x63

    const/16 v7, 0x2d

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 556
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 557
    .local v0, "rnd":[B
    const/16 v1, 0x36

    new-array v1, v1, [B

    iget-object v2, p0, mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget-object v2, p0, mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    const/4 v2, 0x2

    aput-byte v5, v1, v2

    aput-byte v4, v1, v6

    const/4 v2, 0x4

    aput-byte v4, v1, v2

    const/4 v2, 0x5

    aput-byte v5, v1, v2

    const/4 v2, 0x6

    aput-byte v4, v1, v2

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    const/16 v2, 0x8

    aput-byte v4, v1, v2

    const/16 v2, 0x9

    aput-byte v4, v1, v2

    const/16 v2, 0xa

    aput-byte v4, v1, v2

    const/16 v2, 0xb

    aput-byte v4, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x11

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    aget-byte v3, v0, v4

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    aget-byte v3, v0, v5

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    aget-byte v3, v0, v6

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x13

    aput-byte v7, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0x64

    aput-byte v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    const/16 v2, 0x19

    const/16 v3, 0x69

    aput-byte v3, v1, v2

    const/16 v2, 0x1a

    const/16 v3, 0x64

    aput-byte v3, v1, v2

    const/16 v2, 0x1b

    aput-byte v7, v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0x64

    aput-byte v3, v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    const/16 v2, 0x1e

    const/4 v3, 0x6

    aput-byte v3, v1, v2

    const/16 v2, 0x1f

    const/16 v3, 0x6d

    aput-byte v3, v1, v2

    const/16 v2, 0x20

    const/16 v3, 0x65

    aput-byte v3, v1, v2

    const/16 v2, 0x21

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    const/16 v2, 0x22

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    const/16 v2, 0x23

    const/16 v3, 0x69

    aput-byte v3, v1, v2

    const/16 v2, 0x24

    aput-byte v8, v1, v2

    const/16 v2, 0x25

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    const/16 v2, 0x26

    const/16 v3, 0x67

    aput-byte v3, v1, v2

    const/16 v2, 0x27

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    const/16 v2, 0x28

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    const/16 v2, 0x29

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    const/16 v2, 0x2a

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    const/16 v2, 0x2b

    const/16 v3, 0x69

    aput-byte v3, v1, v2

    const/16 v2, 0x2c

    aput-byte v8, v1, v2

    aput-byte v6, v1, v7

    const/16 v2, 0x2e

    aput-byte v8, v1, v2

    const/16 v2, 0x2f

    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    const/16 v2, 0x30

    const/16 v3, 0x6d

    aput-byte v3, v1, v2

    const/16 v2, 0x31

    aput-byte v4, v1, v2

    const/16 v2, 0x32

    aput-byte v4, v1, v2

    const/16 v2, 0x33

    iget v3, p0, mQueryType:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x34

    aput-byte v4, v1, v2

    const/16 v2, 0x35

    aput-byte v5, v1, v2

    return-object v1
.end method

.method private responseCodeStr(I)Ljava/lang/String;
    .registers 4
    .param p1, "rcode"    # I

    .prologue
    .line 475
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->values()[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 477
    :goto_a
    return-object v1

    .line 476
    :catch_b
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 499
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_14

    .line 502
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 553
    :goto_13
    return-void

    .line 507
    :cond_14
    :try_start_14
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x35

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, setupSocket(IIJJI)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_22} :catch_12f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_150

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " src{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getSocketAddressString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 515
    iget-object v1, p0, mRandom:Ljava/util/Random;

    const v2, 0xdbba0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 517
    .local v13, "sixRandomDigits":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " qtype{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, mQueryType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " qname{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-android-ds.metric.gstatic.com}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 521
    invoke-direct {p0, v13}, getDnsQueryPacket(Ljava/lang/String;)[B

    move-result-object v9

    .line 523
    .local v9, "dnsPacket":[B
    const/4 v0, 0x0

    .line 524
    .local v0, "count":I
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    # invokes: Lcom/android/server/connectivity/NetworkDiagnostics;->now()J
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 525
    :goto_a2
    # invokes: Lcom/android/server/connectivity/NetworkDiagnostics;->now()J
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v2

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$500(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_108

    .line 526
    add-int/lit8 v0, v0, 0x1

    .line 528
    :try_start_b5
    iget-object v1, p0, mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v1, v9, v2, v3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_bc
    .catch Landroid/system/ErrnoException; {:try_start_b5 .. :try_end_bc} :catch_13b
    .catch Ljava/io/InterruptedIOException; {:try_start_b5 .. :try_end_bc} :catch_14e

    .line 535
    const/16 v1, 0x200

    :try_start_be
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 536
    .local v12, "reply":Ljava/nio/ByteBuffer;
    iget-object v1, p0, mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v12}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    .line 539
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_146

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0xf

    invoke-direct {p0, v2}, responseCodeStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 542
    .local v11, "rcodeStr":Ljava/lang/String;
    :goto_ec
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_108
    .catch Landroid/system/ErrnoException; {:try_start_be .. :try_end_108} :catch_149
    .catch Ljava/io/InterruptedIOException; {:try_start_be .. :try_end_108} :catch_14c

    .line 548
    .end local v11    # "rcodeStr":Ljava/lang/String;
    .end local v12    # "reply":Ljava/nio/ByteBuffer;
    :cond_108
    :goto_108
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_12a

    .line 549
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 552
    :cond_12a
    invoke-virtual {p0}, close()V

    goto/16 :goto_13

    .line 508
    .end local v0    # "count":I
    .end local v9    # "dnsPacket":[B
    .end local v13    # "sixRandomDigits":Ljava/lang/String;
    :catch_12f
    move-exception v10

    .line 509
    .local v10, "e":Ljava/lang/Exception;
    :goto_130
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 529
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v9    # "dnsPacket":[B
    .restart local v13    # "sixRandomDigits":Ljava/lang/String;
    :catch_13b
    move-exception v10

    .line 530
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_13c
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    goto :goto_108

    .line 539
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "reply":Ljava/nio/ByteBuffer;
    :cond_146
    :try_start_146
    const-string v11, ""
    :try_end_148
    .catch Landroid/system/ErrnoException; {:try_start_146 .. :try_end_148} :catch_149
    .catch Ljava/io/InterruptedIOException; {:try_start_146 .. :try_end_148} :catch_14c

    goto :goto_ec

    .line 544
    .end local v12    # "reply":Ljava/nio/ByteBuffer;
    :catch_149
    move-exception v10

    .line 545
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_14a
    goto/16 :goto_a2

    .line 544
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_14c
    move-exception v10

    goto :goto_14a

    .line 529
    :catch_14e
    move-exception v10

    goto :goto_13c

    .line 508
    .end local v0    # "count":I
    .end local v9    # "dnsPacket":[B
    .end local v13    # "sixRandomDigits":Ljava/lang/String;
    :catch_150
    move-exception v10

    goto :goto_130
.end method
