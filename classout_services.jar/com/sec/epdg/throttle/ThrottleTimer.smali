.class public final Lcom/sec/epdg/throttle/ThrottleTimer;
.super Ljava/lang/Object;
.source "ThrottleTimer.java"


# static fields
.field private static final DBG:Z = true

.field private static final MAX_COUNTER_FOR_TIMER_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[THROTTLETIMER]"


# instance fields
.field private mCount:I

.field private mEndTime:J

.field private mRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mStartTime:J

.field private mTimerType:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, mCount:I

    .line 28
    iput-wide v2, p0, mStartTime:J

    .line 32
    iput-wide v2, p0, mEndTime:J

    .line 49
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v0, p0, mRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 50
    const/4 v0, 0x1

    iput v0, p0, mTimerType:I

    .line 51
    iget-object v0, p0, mRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string/jumbo v1, "max_retries=infinite,0,0,0,60000:15000,120000,480000,900000"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 52
    const-string v0, "[THROTTLETIMER]"

    const-string v1, "Error in ThrottleTime config: max_retries=infinite,0,0,0,60000:15000,120000,480000,900000"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error in ThrottleTimer config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_30
    const-string v0, "[THROTTLETIMER]"

    const-string v1, "Epdg throttle Timer configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "timerType"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, mCount:I

    .line 28
    iput-wide v2, p0, mStartTime:J

    .line 32
    iput-wide v2, p0, mEndTime:J

    .line 40
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v0, p0, mRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 41
    iput p2, p0, mTimerType:I

    .line 42
    iget-object v0, p0, mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 43
    const-string v0, "[THROTTLETIMER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in ThrottleTime config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error in ThrottleTimer config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_3d
    return-void
.end method


# virtual methods
.method public getThrottleCount()I
    .registers 4

    .prologue
    .line 91
    const-string v0, "[THROTTLETIMER]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter getThrottleCount. returning mCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget v0, p0, mCount:I

    return v0
.end method

.method public getTimeLeft()J
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    .line 132
    iget-wide v4, p0, mStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    iget-wide v4, p0, mEndTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    .line 133
    :cond_e
    const-wide/16 v4, 0x0

    .line 137
    :goto_10
    return-wide v4

    .line 135
    :cond_11
    iget-wide v4, p0, mEndTime:J

    iget-wide v6, p0, mStartTime:J

    sub-long v0, v4, v6

    .line 136
    .local v0, "throttleInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, mStartTime:J

    sub-long v2, v4, v6

    .line 137
    .local v2, "timeLapsed":J
    sub-long v4, v0, v2

    goto :goto_10
.end method

.method public getTimerType()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, mTimerType:I

    return v0
.end method

.method public isRetryThrottled()Z
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    .line 70
    iget-wide v6, p0, mStartTime:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f

    iget-wide v6, p0, mEndTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_10

    .line 87
    :cond_f
    :goto_f
    return v4

    .line 73
    :cond_10
    iget-wide v6, p0, mEndTime:J

    iget-wide v8, p0, mStartTime:J

    sub-long v0, v6, v8

    .line 74
    .local v0, "throttleInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, mStartTime:J

    sub-long v2, v6, v8

    .line 76
    .local v2, "timeLapsed":J
    cmp-long v5, v2, v0

    if-ltz v5, :cond_3d

    .line 78
    const-string v5, "[THROTTLETIMER]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New request received after timer has expired for count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 84
    :cond_3d
    const-string v4, "[THROTTLETIMER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request throttled. Time left in counter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "[THROTTLETIMER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v4, 0x1

    goto :goto_f
.end method

.method public resetThrottlingTimer()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 124
    iput-wide v0, p0, mStartTime:J

    .line 125
    iput-wide v0, p0, mEndTime:J

    .line 126
    const/4 v0, 0x0

    iput v0, p0, mCount:I

    .line 127
    iget-object v0, p0, mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 128
    const-string v0, "[THROTTLETIMER]"

    const-string v1, "Reset throttle counter."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public startTimerOrIncrementCounter()J
    .registers 8

    .prologue
    .line 97
    iget-object v4, p0, mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 98
    iget v4, p0, mCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mCount:I

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 100
    .local v2, "timerExpirationTime":J
    const-string v4, "[THROTTLETIMER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Counter incremented to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget v4, p0, mTimerType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_38

    .line 102
    iget-object v4, p0, mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_38

    .line 117
    .end local v2    # "timerExpirationTime":J
    :goto_37
    return-wide v2

    .line 110
    .restart local v2    # "timerExpirationTime":J
    :cond_38
    iget-object v4, p0, mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v4

    int-to-long v0, v4

    .line 112
    .local v0, "throttleInterval":J
    const-string v4, "[THROTTLETIMER]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start timer for Counter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Throttle Interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-wide v2, p0, mStartTime:J

    .line 115
    iget-wide v4, p0, mStartTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, mEndTime:J

    .line 117
    iget-wide v4, p0, mStartTime:J

    add-long v2, v4, v0

    goto :goto_37
.end method
