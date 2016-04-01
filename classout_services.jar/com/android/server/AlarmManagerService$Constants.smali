.class final Lcom/android/server/AlarmManagerService$Constants;
.super Landroid/database/ContentObserver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOW_WHILE_IDLE_LONG_TIME:J = 0x83d60L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_SHORT_TIME:J = 0x3e8L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_WHITELIST_DURATION:J = 0x2710L

.field private static final DEFAULT_MIN_FUTURITY:J = 0x3e8L

.field private static final DEFAULT_MIN_INTERVAL:J = 0xea60L

.field private static final KEY_ALLOW_WHILE_IDLE_LONG_TIME:Ljava/lang/String; = "allow_while_idle_long_time"

.field private static final KEY_ALLOW_WHILE_IDLE_SHORT_TIME:Ljava/lang/String; = "allow_while_idle_short_time"

.field private static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"

.field private static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"

.field private static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final POWER_OFF_ALARM_THRESHOLD:J = 0x1d4c0L


# instance fields
.field public ALLOW_WHILE_IDLE_LONG_TIME:J

.field public ALLOW_WHILE_IDLE_SHORT_TIME:J

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field private mLastAllowWhileIdleWhitelistDuration:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V
    .registers 7
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 268
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    .line 269
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 249
    iput-wide v2, p0, MIN_FUTURITY:J

    .line 252
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, MIN_INTERVAL:J

    .line 255
    iput-wide v2, p0, ALLOW_WHILE_IDLE_SHORT_TIME:J

    .line 258
    const-wide/32 v0, 0x83d60

    iput-wide v0, p0, ALLOW_WHILE_IDLE_LONG_TIME:J

    .line 261
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 265
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, mParser:Landroid/util/KeyValueListParser;

    .line 266
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mLastAllowWhileIdleWhitelistDuration:J

    .line 270
    invoke-virtual {p0}, updateAllowWhileIdleMinTimeLocked()V

    .line 271
    invoke-virtual {p0}, updateAllowWhileIdleWhitelistDurationLocked()V

    .line 272
    return-void
.end method

.method private updateConstants()V
    .registers 7

    .prologue
    .line 301
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_5
    iget-object v1, p0, mParser:Landroid/util/KeyValueListParser;

    iget-object v3, p0, mResolver:Landroid/content/ContentResolver;

    const-string v4, "alarm_manager_constants"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_5a
    .catchall {:try_start_5 .. :try_end_12} :catchall_63

    .line 311
    :goto_12
    :try_start_12
    iget-object v1, p0, mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "min_futurity"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, MIN_FUTURITY:J

    .line 312
    iget-object v1, p0, mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "min_interval"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, MIN_INTERVAL:J

    .line 313
    iget-object v1, p0, mParser:Landroid/util/KeyValueListParser;

    const-string v3, "allow_while_idle_short_time"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, ALLOW_WHILE_IDLE_SHORT_TIME:J

    .line 315
    iget-object v1, p0, mParser:Landroid/util/KeyValueListParser;

    const-string v3, "allow_while_idle_long_time"

    const-wide/32 v4, 0x83d60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, ALLOW_WHILE_IDLE_LONG_TIME:J

    .line 317
    iget-object v1, p0, mParser:Landroid/util/KeyValueListParser;

    const-string v3, "allow_while_idle_whitelist_duration"

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 321
    invoke-virtual {p0}, updateAllowWhileIdleMinTimeLocked()V

    .line 322
    invoke-virtual {p0}, updateAllowWhileIdleWhitelistDurationLocked()V

    .line 323
    monitor-exit v2

    .line 324
    return-void

    .line 305
    :catch_5a
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "AlarmManager"

    const-string v3, "Bad device idle settings"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 323
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_63
    move-exception v1

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_12 .. :try_end_65} :catchall_63

    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 327
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_futurity"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-wide v0, p0, MIN_FUTURITY:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 331
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 333
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    iget-wide v0, p0, MIN_INTERVAL:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 335
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 337
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allow_while_idle_short_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-wide v0, p0, ALLOW_WHILE_IDLE_SHORT_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 339
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 341
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allow_while_idle_long_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget-wide v0, p0, ALLOW_WHILE_IDLE_LONG_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 343
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 345
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allow_while_idle_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-wide v0, p0, ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 347
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 348
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 297
    invoke-direct {p0}, updateConstants()V

    .line 298
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 275
    iput-object p1, p0, mResolver:Landroid/content/ContentResolver;

    .line 276
    iget-object v0, p0, mResolver:Landroid/content/ContentResolver;

    const-string v1, "alarm_manager_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    invoke-direct {p0}, updateConstants()V

    .line 279
    return-void
.end method

.method public updateAllowWhileIdleMinTimeLocked()V
    .registers 4

    .prologue
    .line 282
    iget-object v2, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_d

    iget-wide v0, p0, ALLOW_WHILE_IDLE_LONG_TIME:J

    :goto_a
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    .line 284
    return-void

    .line 282
    :cond_d
    iget-wide v0, p0, ALLOW_WHILE_IDLE_SHORT_TIME:J

    goto :goto_a
.end method

.method public updateAllowWhileIdleWhitelistDurationLocked()V
    .registers 7

    .prologue
    .line 287
    iget-wide v2, p0, mLastAllowWhileIdleWhitelistDuration:J

    iget-wide v4, p0, ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1d

    .line 288
    iget-wide v2, p0, ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    iput-wide v2, p0, mLastAllowWhileIdleWhitelistDuration:J

    .line 289
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 290
    .local v0, "opts":Landroid/app/BroadcastOptions;
    iget-wide v2, p0, ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 291
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    .line 293
    .end local v0    # "opts":Landroid/app/BroadcastOptions;
    :cond_1d
    return-void
.end method
