.class Lcom/android/server/SecSCService$1;
.super Ljava/lang/Object;
.source "SecSCService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecSCService;->SecSC_handleConnectivityStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecSCService;


# direct methods
.method constructor <init>(Lcom/android/server/SecSCService;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, this$0:Lcom/android/server/SecSCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x3e8

    .line 206
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 207
    .local v0, "client":Landroid/net/SntpClient;
    const-string/jumbo v1, "pool.ntp.org"

    const/16 v8, 0x1388

    invoke-virtual {v0, v1, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 208
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v8

    div-long v2, v8, v10

    .line 209
    .local v2, "networktime":J
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v8

    div-long v4, v8, v10

    .line 211
    .local v4, "recvElapsedTime":J
    iget-object v1, p0, this$0:Lcom/android/server/SecSCService;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/SecSCService;->SecSC_onNetworkStateChanged(JJ)V

    .line 218
    .end local v2    # "networktime":J
    .end local v4    # "recvElapsedTime":J
    :goto_23
    return-void

    .line 214
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long v6, v8, v10

    .line 216
    .local v6, "systime":J
    const-string v1, "SecSCService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
