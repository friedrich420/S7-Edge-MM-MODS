.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread$PingCallable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PingCallable"
.end annotation


# instance fields
.field private mPingAddr:Ljava/net/InetAddress;

.field private mPort:I

.field final synthetic this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;Ljava/net/InetAddress;)V
    .registers 4
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 1391
    iput-object p1, p0, this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    iput-object p2, p0, mPingAddr:Ljava/net/InetAddress;

    .line 1393
    const/4 v0, 0x7

    iput v0, p0, mPort:I

    .line 1394
    return-void
.end method

.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;Ljava/net/InetAddress;I)V
    .registers 4
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 1386
    iput-object p1, p0, this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1387
    iput-object p2, p0, mPingAddr:Ljava/net/InetAddress;

    .line 1388
    iput p3, p0, mPort:I

    .line 1389
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1398
    const/4 v1, 0x0

    .line 1400
    .local v1, "ret":Z
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ping thread started for addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPingAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v2, p0, this$1:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;

    iget-object v2, v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v3, p0, mPingAddr:Ljava/net/InetAddress;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isPingable(Ljava/net/InetAddress;)Z
    invoke-static {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/net/InetAddress;)Z

    move-result v1

    .line 1412
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 1413
    .local v0, "result":Ljava/lang/Boolean;
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InetAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPingAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reachable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1414
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-virtual {p0}, call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
