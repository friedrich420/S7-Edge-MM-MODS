.class Landroid/net/dhcp/DhcpClient$ReceiveThread;
.super Ljava/lang/Thread;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private stopped:Z

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3

    .prologue
    .line 345
    iput-object p1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 347
    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, mPacket:[B

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, stopped:Z

    return-void
.end method


# virtual methods
.method public halt()V
    .registers 2

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, stopped:Z

    .line 352
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->closeSockets()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$000(Landroid/net/dhcp/DhcpClient;)V

    .line 353
    return-void
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 357
    iget-object v3, p0, this$0:Landroid/net/dhcp/DhcpClient;

    const-string v4, "Receive thread started"

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 358
    :cond_8
    :goto_8
    iget-boolean v3, p0, stopped:Z

    if-nez v3, :cond_7c

    .line 359
    const/4 v1, 0x0

    .line 361
    .local v1, "length":I
    :try_start_d
    iget-object v3, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;
    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->access$200(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p0, mPacket:[B

    const/4 v5, 0x0

    iget-object v6, p0, mPacket:[B

    array-length v6, v6

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "packet":Landroid/net/dhcp/DhcpPacket;
    iget-object v3, p0, mPacket:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v2

    .line 364
    iget-object v3, p0, this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, this$0:Landroid/net/dhcp/DhcpClient;

    const v4, 0x30066

    invoke-virtual {v3, v4, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(ILjava/lang/Object;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_45} :catch_46
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_45} :catch_84
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_d .. :try_end_45} :catch_53

    goto :goto_8

    .line 366
    .end local v2    # "packet":Landroid/net/dhcp/DhcpPacket;
    :catch_46
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    :goto_47
    iget-boolean v3, p0, stopped:Z

    if-nez v3, :cond_8

    .line 368
    const-string v3, "DhcpClient"

    const-string v4, "Read error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_53
    move-exception v0

    .line 371
    .local v0, "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    const-string v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t parse packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpPacket$ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v3, "DhcpClient"

    iget-object v4, p0, mPacket:[B

    invoke-static {v4, v7, v1}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 377
    .end local v0    # "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    .end local v1    # "length":I
    :cond_7c
    iget-object v3, p0, this$0:Landroid/net/dhcp/DhcpClient;

    const-string v4, "Receive thread stopped"

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 378
    return-void

    .line 366
    .restart local v1    # "length":I
    :catch_84
    move-exception v0

    goto :goto_47
.end method
