.class Lcom/android/server/usage/UsageStatsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final KEY_IDLE_DURATION:Ljava/lang/String; = "idle_duration"

.field private static final KEY_PAROLE_DURATION:Ljava/lang/String; = "parole_duration"

.field private static final KEY_PAROLE_INTERVAL:Ljava/lang/String; = "parole_interval"

.field private static final KEY_WALLCLOCK_THRESHOLD:Ljava/lang/String; = "wallclock_threshold"


# instance fields
.field private final mParser:Landroid/util/KeyValueListParser;

.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Handler;)V
    .registers 5
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1136
    iput-object p1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1137
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1134
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, mParser:Landroid/util/KeyValueListParser;

    .line 1138
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 1147
    invoke-virtual {p0}, updateSettings()V

    .line 1148
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->postCheckIdleStates(I)V

    .line 1149
    return-void
.end method

.method registerObserver()V
    .registers 4

    .prologue
    .line 1141
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_idle_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1143
    return-void
.end method

.method updateSettings()V
    .registers 9

    .prologue
    .line 1152
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$400(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1156
    :try_start_7
    iget-object v1, p0, mParser:Landroid/util/KeyValueListParser;

    iget-object v3, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "app_idle_constants"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1c} :catch_70
    .catchall {:try_start_7 .. :try_end_1c} :catchall_8e

    .line 1164
    :goto_1c
    :try_start_1c
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "idle_duration"

    const-wide/32 v6, 0x2932e00

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    .line 1167
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "wallclock_threshold"

    const-wide/32 v6, 0xa4cb800

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    .line 1170
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-wide v4, v3, Lcom/android/server/usage/UsageStatsService;->mAppIdleDurationMillis:J

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    const-wide/32 v6, 0x1b77400

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    .line 1174
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "parole_interval"

    const-wide/32 v6, 0x5265c00

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    .line 1177
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "parole_duration"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    .line 1179
    monitor-exit v2

    .line 1180
    return-void

    .line 1158
    :catch_70
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad value for app idle settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1179
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_8e
    move-exception v1

    monitor-exit v2
    :try_end_90
    .catchall {:try_start_1c .. :try_end_90} :catchall_8e

    throw v1
.end method
