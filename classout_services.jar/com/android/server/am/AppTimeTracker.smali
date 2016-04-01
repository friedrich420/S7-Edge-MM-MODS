.class public Lcom/android/server/am/AppTimeTracker;
.super Ljava/lang/Object;
.source "AppTimeTracker.java"


# instance fields
.field private final mPackageTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/MutableLong;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/app/PendingIntent;

.field private mStartedPackage:Ljava/lang/String;

.field private mStartedPackageTime:Landroid/util/MutableLong;

.field private mStartedTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPackageTimes:Landroid/util/ArrayMap;

    .line 45
    iput-object p1, p0, mReceiver:Landroid/app/PendingIntent;

    .line 46
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-virtual {p0}, stop()V

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "android.activity.usage_time"

    iget-wide v6, p0, mTotalTime:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 84
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v3, "pkgs":Landroid/os/Bundle;
    iget-object v4, p0, mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1c
    if-ltz v2, :cond_36

    .line 86
    iget-object v4, p0, mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v6, v5, Landroid/util/MutableLong;->value:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 88
    :cond_36
    const-string v4, "android.usage_time_packages"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, "fillinIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    :try_start_43
    iget-object v4, p0, mReceiver:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_49
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_43 .. :try_end_49} :catch_4a

    .line 95
    :goto_49
    return-void

    .line 93
    :catch_4a
    move-exception v4

    goto :goto_49
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "details"    # Z

    .prologue
    .line 105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mReceiver="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, mReceiver:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTotalTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget-wide v2, p0, mTotalTime:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 108
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    iget-object v1, p0, mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPackageTime:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v2, v1, Landroid/util/MutableLong;->value:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 113
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 115
    :cond_54
    if-eqz p3, :cond_81

    iget-wide v2, p0, mStartedTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_81

    .line 116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartedTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, mStartedTime:J

    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 118
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 119
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartedPackage="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    :cond_81
    return-void
.end method

.method public dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "details"    # Z

    .prologue
    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "AppTimeTracker #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 50
    .local v2, "now":J
    iget-wide v4, p0, mStartedTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_e

    .line 51
    iput-wide v2, p0, mStartedTime:J

    .line 53
    :cond_e
    iget-object v4, p0, mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 54
    iget-object v4, p0, mStartedPackageTime:Landroid/util/MutableLong;

    if-eqz v4, :cond_2a

    .line 55
    iget-wide v4, p0, mStartedTime:J

    sub-long v0, v2, v4

    .line 56
    .local v0, "elapsedTime":J
    iget-object v4, p0, mStartedPackageTime:Landroid/util/MutableLong;

    iget-wide v6, v4, Landroid/util/MutableLong;->value:J

    add-long/2addr v6, v0

    iput-wide v6, v4, Landroid/util/MutableLong;->value:J

    .line 57
    iget-wide v4, p0, mTotalTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, mTotalTime:J

    .line 59
    .end local v0    # "elapsedTime":J
    :cond_2a
    iput-object p1, p0, mStartedPackage:Ljava/lang/String;

    .line 60
    iget-object v4, p0, mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/MutableLong;

    iput-object v4, p0, mStartedPackageTime:Landroid/util/MutableLong;

    .line 61
    iget-object v4, p0, mStartedPackageTime:Landroid/util/MutableLong;

    if-nez v4, :cond_48

    .line 62
    new-instance v4, Landroid/util/MutableLong;

    invoke-direct {v4, v8, v9}, Landroid/util/MutableLong;-><init>(J)V

    iput-object v4, p0, mStartedPackageTime:Landroid/util/MutableLong;

    .line 63
    iget-object v4, p0, mPackageTimes:Landroid/util/ArrayMap;

    iget-object v5, p0, mStartedPackageTime:Landroid/util/MutableLong;

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_48
    return-void
.end method

.method public stop()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 69
    iget-wide v2, p0, mStartedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_25

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, mStartedTime:J

    sub-long v0, v2, v4

    .line 71
    .local v0, "elapsedTime":J
    iget-wide v2, p0, mTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, mTotalTime:J

    .line 72
    iget-object v2, p0, mStartedPackageTime:Landroid/util/MutableLong;

    if-eqz v2, :cond_21

    .line 73
    iget-object v2, p0, mStartedPackageTime:Landroid/util/MutableLong;

    iget-wide v4, v2, Landroid/util/MutableLong;->value:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Landroid/util/MutableLong;->value:J

    .line 75
    :cond_21
    iput-object v6, p0, mStartedPackage:Ljava/lang/String;

    .line 76
    iput-object v6, p0, mStartedPackageTime:Landroid/util/MutableLong;

    .line 78
    .end local v0    # "elapsedTime":J
    :cond_25
    return-void
.end method
