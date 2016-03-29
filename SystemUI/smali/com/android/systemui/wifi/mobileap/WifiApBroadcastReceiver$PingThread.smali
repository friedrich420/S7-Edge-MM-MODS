.class Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;
.super Ljava/lang/Thread;
.source "WifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingThread"
.end annotation


# instance fields
.field private delayMsec:I

.field private isPlay:Z

.field private mIpStr:Ljava/lang/String;

.field private mMacStr:Ljava/lang/String;

.field mt_s:J

.field result:Z

.field final synthetic this$0:Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "aIP"    # Ljava/lang/String;
    .param p3, "aMac"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->this$0:Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    .line 386
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    .line 387
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mMacStr:Ljava/lang/String;

    .line 388
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->delayMsec:I

    .line 393
    iput-object p2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    .line 394
    iput-object p3, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mMacStr:Ljava/lang/String;

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    .line 396
    const-string v0, "SystemUI_WifiApBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MHSPing PingThread()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mMacStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 405
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 406
    const-string v2, "SystemUI_WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHSPing thread run:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    if-eqz v2, :cond_0

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 410
    .local v1, "target":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mt_s:J

    .line 411
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->result:Z

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mt_s:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mt_s:J

    .line 413
    const-string v2, "SystemUI_WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHSPing ip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->result:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mt_s:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v1    # "target":Ljava/net/InetAddress;
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    if-nez v2, :cond_1

    .line 425
    :cond_0
    const-string v2, "SystemUI_WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHSPing thread end. tid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemUI_WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->delayMsec:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 421
    :catch_1
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public stopPing()V
    .locals 4

    .prologue
    .line 400
    const-string v0, "SystemUI_WifiApBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MHSPing stop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    .line 402
    return-void
.end method
