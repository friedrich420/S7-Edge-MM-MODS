.class public Lcom/android/server/notification/NotificationIntrusivenessExtractor;
.super Ljava/lang/Object;
.source "NotificationIntrusivenessExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z

.field private static final HANG_TIME_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "IntrusivenessExtractor"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    const-string v0, "IntrusivenessExtractor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .prologue
    .line 37
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "IntrusivenessExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_2a
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 8
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 41
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_16

    .line 42
    :cond_8
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_14

    const-string v1, "IntrusivenessExtractor"

    const-string/jumbo v2, "skipping empty notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_14
    const/4 v1, 0x0

    .line 55
    :goto_15
    return-object v1

    .line 46
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 47
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_32

    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    if-nez v1, :cond_32

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_32

    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v1, :cond_32

    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_36

    .line 52
    :cond_32
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    .line 55
    :cond_36
    new-instance v1, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;-><init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V

    goto :goto_15
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .prologue
    .line 71
    return-void
.end method
