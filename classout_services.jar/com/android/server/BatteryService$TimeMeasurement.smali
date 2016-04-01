.class public final Lcom/android/server/BatteryService$TimeMeasurement;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeMeasurement"
.end annotation


# instance fields
.field mIsPrinted:Z

.field mLapTime:J

.field mStartTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 2262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mLapTime:J

    iput-wide v0, p0, mStartTime:J

    .line 2264
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsPrinted:Z

    .line 2265
    return-void
.end method


# virtual methods
.method public printLapTime(Ljava/lang/String;J)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitTime"    # J

    .prologue
    .line 2280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, mLapTime:J

    sub-long v0, v2, v4

    .line 2281
    .local v0, "executionTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLapTime:J

    .line 2283
    cmp-long v2, v0, p2

    if-ltz v2, :cond_3d

    .line 2284
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excessive delay in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_3d
    return-void
.end method

.method public printTotalTime(Ljava/lang/String;J)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitTime"    # J

    .prologue
    .line 2268
    iget-boolean v2, p0, mIsPrinted:Z

    if-nez v2, :cond_3e

    .line 2269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, mStartTime:J

    sub-long v0, v2, v4

    .line 2271
    .local v0, "executionTime":J
    cmp-long v2, v0, p2

    if-ltz v2, :cond_3b

    .line 2272
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excessive delay in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_3b
    const/4 v2, 0x1

    iput-boolean v2, p0, mIsPrinted:Z

    .line 2277
    .end local v0    # "executionTime":J
    :cond_3e
    return-void
.end method

.method public resetTime()V
    .registers 3

    .prologue
    .line 2290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mLapTime:J

    iput-wide v0, p0, mStartTime:J

    .line 2291
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsPrinted:Z

    .line 2292
    return-void
.end method
