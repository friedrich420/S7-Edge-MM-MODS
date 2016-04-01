.class public Lcom/android/server/notification/NotificationUsageStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;,
        Lcom/android/server/notification/NotificationUsageStats$Aggregate;,
        Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;,
        Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE_GLOBAL_STATS:Ljava/lang/String; = "__global"

.field private static final EMIT_PERIOD:J = 0xdbba00L

.field private static final EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field private static final ENABLE_AGGREGATED_IN_MEMORY_STATS:Z = true

.field private static final ENABLE_SQLITE_LOG:Z = true

.field public static final FOUR_HOURS:I = 0xdbba00

.field private static final MSG_EMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationUsageStats"

.field public static final TEN_SECONDS:I = 0x2710


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEmitTime:J

.field private final mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<[",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    sput-object v0, EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mStats:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, mStatsArrays:Ljava/util/ArrayDeque;

    .line 80
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mLastEmitTime:J

    .line 82
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    .line 83
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$1;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationUsageStats$1;-><init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 96
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xdbba00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    return-void
.end method

.method private getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 203
    iget-object v1, p0, mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 204
    .local v0, "array":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_d

    .line 205
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 207
    :cond_d
    const/4 v1, 0x0

    const-string v2, "__global"

    invoke-direct {p0, v2}, getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    aput-object v2, v0, v1

    .line 208
    return-object v0
.end method

.method private getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v1, p0, mStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 222
    .local v0, "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_16

    .line 223
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .end local v0    # "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    .restart local v0    # "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget-object v1, p0, mStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_16
    return-object v0
.end method

.method private releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    .registers 4
    .param p1, "array"    # [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .prologue
    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_a

    .line 214
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_a
    iget-object v1, p0, mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, mStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 257
    .local v0, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p3, :cond_21

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 259
    :cond_21
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_25

    goto :goto_b

    .line 256
    .end local v0    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2

    .line 261
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_28
    :try_start_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mStatsArrays.size(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_25

    .line 266
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 8
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_49

    .line 233
    .local v2, "dump":Lorg/json/JSONObject;
    :try_start_6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 234
    .local v0, "aggregatedStats":Lorg/json/JSONArray;
    iget-object v4, p0, mStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 235
    .local v1, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p1, :cond_2b

    iget-object v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 237
    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dumpJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_32} :catch_33
    .catchall {:try_start_6 .. :try_end_32} :catchall_49

    goto :goto_15

    .line 240
    .end local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .end local v1    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_33
    move-exception v4

    .line 246
    :goto_34
    :try_start_34
    const-string/jumbo v4, "historical"

    iget-object v5, p0, mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_40} :catch_4c
    .catchall {:try_start_34 .. :try_end_40} :catchall_49

    .line 251
    :goto_40
    monitor-exit p0

    return-object v2

    .line 239
    .restart local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_42
    :try_start_42
    const-string/jumbo v4, "current"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_48} :catch_33
    .catchall {:try_start_42 .. :try_end_48} :catchall_49

    goto :goto_34

    .line 230
    .end local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .end local v2    # "dump":Lorg/json/JSONObject;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_49
    move-exception v4

    monitor-exit p0

    throw v4

    .line 247
    .restart local v2    # "dump":Lorg/json/JSONObject;
    :catch_4c
    move-exception v4

    goto :goto_40
.end method

.method public declared-synchronized emit()V
    .registers 7

    .prologue
    .line 270
    monitor-enter p0

    :try_start_1
    const-string v1, "__global"

    invoke-direct {p0, v1}, getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 271
    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->emit()V

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, mLastEmitTime:J

    .line 273
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/32 v4, 0xdbba00

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 275
    monitor-exit p0

    return-void

    .line 270
    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 190
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_15

    aget-object v4, v1, v2

    .line 191
    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 193
    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_15
    invoke-direct {p0, v0}, releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 194
    monitor-exit p0

    return-void

    .line 189
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_1a
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_click_longevity"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 163
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onClick()V

    .line 165
    iget-object v0, p0, mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logClicked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 167
    monitor-exit p0

    return-void

    .line 161
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_dismiss_longevity"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 151
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onDismiss()V

    .line 153
    iget-object v0, p0, mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 155
    monitor-exit p0

    return-void

    .line 149
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V
    .registers 11
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "valid"    # Z
    .param p3, "starred"    # Z
    .param p4, "cached"    # Z

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 172
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_31

    aget-object v4, v1, v2

    .line 173
    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p2, :cond_14

    .line 174
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 176
    :cond_14
    if-eqz p3, :cond_1c

    .line 177
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 179
    :cond_1c
    if-eqz p4, :cond_27

    .line 180
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 172
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 182
    :cond_27
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2e

    goto :goto_24

    .line 171
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_2e
    move-exception v5

    monitor-exit p0

    throw v5

    .line 185
    .restart local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .restart local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_31
    :try_start_31
    invoke-direct {p0, v0}, releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2e

    .line 186
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .registers 10
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    new-instance v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-direct {v5}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;-><init>()V

    iput-object v5, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 104
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 106
    invoke-direct {p0, p1}, getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 107
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_17
    if-ge v2, v3, :cond_27

    aget-object v4, v1, v2

    .line 108
    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 109
    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 111
    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_27
    invoke-direct {p0, v0}, releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 113
    iget-object v5, p0, mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 115
    monitor-exit p0

    return-void

    .line 103
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_31
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onRemoved()V

    .line 135
    invoke-direct {p0, p1}, getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 136
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_d
    if-ge v2, v3, :cond_1a

    aget-object v4, v1, v2

    .line 137
    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 139
    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_1a
    invoke-direct {p0, v0}, releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 141
    iget-object v5, p0, mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 143
    monitor-exit p0

    return-void

    .line 134
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_24
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 9
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 121
    iget-object v5, p2, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput-object v5, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 122
    invoke-direct {p0, p1}, getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 123
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    move-object v1, v0

    .local v1, "arr$":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v3, :cond_1b

    aget-object v4, v1, v2

    .line 124
    .local v4, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 125
    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 127
    .end local v4    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_1b
    invoke-direct {p0, v0}, releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 128
    return-void
.end method
