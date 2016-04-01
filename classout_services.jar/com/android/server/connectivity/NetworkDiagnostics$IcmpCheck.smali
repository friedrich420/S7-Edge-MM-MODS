.class Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;
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
    name = "IcmpCheck"
.end annotation


# static fields
.field private static final ICMPV4_ECHO_REQUEST:I = 0x8

.field private static final ICMPV6_ECHO_REQUEST:I = 0x80

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final TIMEOUT_RECV:I = 0x12c

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mIcmpType:I

.field private final mProtocol:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .registers 5
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 406
    return-void
.end method

.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .registers 8
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    .line 388
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 389
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 391
    iget v0, p0, mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_44

    .line 392
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iput v0, p0, mProtocol:I

    .line 393
    const/16 v0, 0x80

    iput v0, p0, mIcmpType:I

    .line 394
    iget-object v0, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string v1, "ICMPv6"

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 401
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dst{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mTarget:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 402
    return-void

    .line 396
    :cond_44
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    iput v0, p0, mProtocol:I

    .line 397
    const/16 v0, 0x8

    iput v0, p0, mIcmpType:I

    .line 398
    iget-object v0, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string v1, "ICMPv4"

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    goto :goto_19
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 411
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_14

    .line 414
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 458
    :goto_13
    return-void

    .line 419
    :cond_14
    :try_start_14
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v3, p0, mProtocol:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, setupSocket(IIJJI)V
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_21} :catch_e2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_100

    .line 424
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

    .line 427
    const/16 v1, 0x8

    new-array v10, v1, [B

    const/4 v1, 0x0

    iget v2, p0, mIcmpType:I

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 431
    .local v10, "icmpPacket":[B
    const/4 v0, 0x0

    .line 432
    .local v0, "count":I
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    # invokes: Lcom/android/server/connectivity/NetworkDiagnostics;->now()J
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 433
    :goto_78
    # invokes: Lcom/android/server/connectivity/NetworkDiagnostics;->now()J
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v2

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$500(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    move-result-wide v4

    const-wide/16 v6, 0x190

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_bb

    .line 434
    add-int/lit8 v0, v0, 0x1

    .line 435
    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, v10, v1

    .line 437
    :try_start_91
    iget-object v1, p0, mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    array-length v3, v10

    invoke-static {v1, v10, v2, v3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_98
    .catch Landroid/system/ErrnoException; {:try_start_91 .. :try_end_98} :catch_ee
    .catch Ljava/io/InterruptedIOException; {:try_start_91 .. :try_end_98} :catch_fe

    .line 444
    const/16 v1, 0x200

    :try_start_9a
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 445
    .local v11, "reply":Ljava/nio/ByteBuffer;
    iget-object v1, p0, mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    .line 447
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_bb
    .catch Landroid/system/ErrnoException; {:try_start_9a .. :try_end_bb} :catch_f9
    .catch Ljava/io/InterruptedIOException; {:try_start_9a .. :try_end_bb} :catch_fc

    .line 453
    .end local v11    # "reply":Ljava/nio/ByteBuffer;
    :cond_bb
    :goto_bb
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_dd

    .line 454
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

    .line 457
    :cond_dd
    invoke-virtual {p0}, close()V

    goto/16 :goto_13

    .line 420
    .end local v0    # "count":I
    .end local v10    # "icmpPacket":[B
    :catch_e2
    move-exception v9

    .line 421
    .local v9, "e":Ljava/lang/Exception;
    :goto_e3
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 438
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v10    # "icmpPacket":[B
    :catch_ee
    move-exception v9

    .line 439
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_ef
    iget-object v1, p0, mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    goto :goto_bb

    .line 449
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_f9
    move-exception v9

    .line 450
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_fa
    goto/16 :goto_78

    .line 449
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_fc
    move-exception v9

    goto :goto_fa

    .line 438
    :catch_fe
    move-exception v9

    goto :goto_ef

    .line 420
    .end local v0    # "count":I
    .end local v10    # "icmpPacket":[B
    :catch_100
    move-exception v9

    goto :goto_e3
.end method
