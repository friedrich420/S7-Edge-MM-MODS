.class Lcom/android/server/NetworkTimeUpdateService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 276
    iget-object v1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J
    invoke-static {v1, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$102(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 281
    :cond_15
    :goto_15
    iget-object v1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z
    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->access$300(Lcom/android/server/NetworkTimeUpdateService;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 283
    iget-object v1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;
    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->access$400(Lcom/android/server/NetworkTimeUpdateService;)Landroid/util/TrustedTime;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5d

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 285
    .local v2, "currentTime":J
    iget-object v1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;
    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->access$400(Lcom/android/server/NetworkTimeUpdateService;)Landroid/util/TrustedTime;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v4

    .line 288
    .local v4, "ntp":J
    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-object v1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I
    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->access$500(Lcom/android/server/NetworkTimeUpdateService;)I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-lez v1, :cond_79

    .line 290
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v1, v6, v8

    if-gez v1, :cond_70

    .line 291
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 301
    .end local v2    # "currentTime":J
    .end local v4    # "ntp":J
    :cond_5d
    :goto_5d
    return-void

    .line 277
    :cond_5e
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 278
    iget-object v1, p0, this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J
    invoke-static {v1, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$202(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_15

    .line 293
    .restart local v2    # "currentTime":J
    .restart local v4    # "ntp":J
    :cond_70
    const-string v1, "NetworkTimeUpdateService"

    const-string/jumbo v6, "ntp time overflow not set"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 296
    :cond_79
    const-string v1, "NetworkTimeUpdateService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ntp time is close enough = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method
