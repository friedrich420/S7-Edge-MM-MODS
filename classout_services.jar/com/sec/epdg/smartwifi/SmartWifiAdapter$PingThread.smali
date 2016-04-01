.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PingThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread$PingCallable;
    }
.end annotation


# static fields
.field private static final ALWAYS_ON_PUBLIC_IP:Ljava/lang/String; = "8.8.8.8"

.field private static final TIMEOUT:I = 0xea60


# instance fields
.field private mPingAddr:Ljava/net/InetAddress;

.field private mPort:I

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .registers 5

    .prologue
    .line 1359
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1361
    :try_start_5
    const-string v1, "8.8.8.8"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, mPingAddr:Ljava/net/InetAddress;

    .line 1362
    const/16 v1, 0x35

    iput v1, p0, mPort:I
    :try_end_11
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_11} :catch_12

    .line 1367
    :goto_11
    return-void

    .line 1363
    :catch_12
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v1, "[SMARTWIFI]"

    const-string v2, "UnknownHostException PingThread"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_11
.end method

.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/net/InetAddress;)V
    .registers 4
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 1369
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1370
    iput-object p2, p0, mPingAddr:Ljava/net/InetAddress;

    .line 1371
    const/16 v0, 0x50

    iput v0, p0, mPort:I

    .line 1372
    return-void
.end method


# virtual methods
.method public run()Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1375
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1376
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread$PingCallable;

    iget-object v3, p0, mPingAddr:Ljava/net/InetAddress;

    iget v4, p0, mPort:I

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread$PingCallable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;Ljava/net/InetAddress;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1378
    .local v1, "ret":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1379
    return-object v1
.end method
