.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SQLiteLog"
.end annotation


# static fields
.field private static final COL_ACTION_COUNT:Ljava/lang/String; = "action_count"

.field private static final COL_AIRTIME_EXPANDED_MS:Ljava/lang/String; = "expansion_airtime_ms"

.field private static final COL_AIRTIME_MS:Ljava/lang/String; = "airtime_ms"

.field private static final COL_CATEGORY:Ljava/lang/String; = "category"

.field private static final COL_DEFAULTS:Ljava/lang/String; = "defaults"

.field private static final COL_EVENT_TIME:Ljava/lang/String; = "event_time_ms"

.field private static final COL_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field private static final COL_EVENT_USER_ID:Ljava/lang/String; = "event_user_id"

.field private static final COL_EXPAND_COUNT:Ljava/lang/String; = "expansion_count"

.field private static final COL_FIRST_EXPANSIONTIME_MS:Ljava/lang/String; = "first_expansion_time_ms"

.field private static final COL_FLAGS:Ljava/lang/String; = "flags"

.field private static final COL_KEY:Ljava/lang/String; = "key"

.field private static final COL_NOTIFICATION_ID:Ljava/lang/String; = "nid"

.field private static final COL_PKG:Ljava/lang/String; = "pkg"

.field private static final COL_POSTTIME_MS:Ljava/lang/String; = "posttime_ms"

.field private static final COL_PRIORITY:Ljava/lang/String; = "priority"

.field private static final COL_TAG:Ljava/lang/String; = "tag"

.field private static final COL_WHEN_MS:Ljava/lang/String; = "when_ms"

.field private static final DAY_MS:J = 0x5265c00L

.field private static final DB_NAME:Ljava/lang/String; = "notification_log.db"

.field private static final DB_VERSION:I = 0x4

.field private static final EVENT_TYPE_CLICK:I = 0x2

.field private static final EVENT_TYPE_DISMISS:I = 0x4

.field private static final EVENT_TYPE_POST:I = 0x1

.field private static final EVENT_TYPE_REMOVE:I = 0x3

.field private static final HORIZON_MS:J = 0x240c8400L

.field private static final MSG_CLICK:I = 0x2

.field private static final MSG_DISMISS:I = 0x4

.field private static final MSG_POST:I = 0x1

.field private static final MSG_REMOVE:I = 0x3

.field private static final PRUNE_MIN_DELAY_MS:J = 0x1499700L

.field private static final PRUNE_MIN_WRITES:J = 0x400L

.field private static final TAB_LOG:Ljava/lang/String; = "log"

.field private static final TAG:Ljava/lang/String; = "NotificationSQLiteLog"

.field private static sLastPruneMs:J

.field private static sNumWrites:J


# instance fields
.field private final mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mWriteHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v0, "notification-sqlite-log"

    const/16 v1, 0xa

    invoke-direct {v6, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 779
    .local v6, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 780
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V

    iput-object v0, p0, mWriteHandler:Landroid/os/Handler;

    .line 804
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;

    const-string/jumbo v3, "notification_log.db"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 839
    return-void
.end method

.method private JsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 16
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 858
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 859
    .local v4, "frequencies":Lorg/json/JSONArray;
    iget-object v11, p0, mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 860
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0}, getMidnightMs()J

    move-result-wide v6

    .line 861
    .local v6, "midnight":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT event_user_id, pkg, CAST((("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "event_time_ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/32 v12, 0x5265c00

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") AS int) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "AS day, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "COUNT(*) AS cnt "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "FROM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "log"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "WHERE "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "event_type"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "event_time_ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " GROUP BY "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "event_user_id"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", day, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "pkg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 873
    .local v8, "q":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v3, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 875
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_b1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_b4
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_ff

    .line 876
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 877
    .local v10, "userId":I
    const/4 v11, 0x1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 878
    .local v5, "pkg":Ljava/lang/String;
    if-eqz p1, :cond_d5

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d5

    .line 875
    :goto_cc
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_cf
    .catchall {:try_start_b1 .. :try_end_cf} :catchall_d0

    goto :goto_b4

    .line 889
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v10    # "userId":I
    :catchall_d0
    move-exception v11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v11

    .line 879
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v10    # "userId":I
    :cond_d5
    const/4 v11, 0x2

    :try_start_d6
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 880
    .local v2, "day":I
    const/4 v11, 0x3

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 881
    .local v0, "count":I
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 882
    .local v9, "row":Lorg/json/JSONObject;
    const-string/jumbo v11, "user_id"

    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 883
    const-string/jumbo v11, "package"

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 884
    const-string/jumbo v11, "day"

    invoke-virtual {v9, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 885
    const-string v11, "count"

    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 886
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_fe
    .catchall {:try_start_d6 .. :try_end_fe} :catchall_d0

    goto :goto_cc

    .line 889
    .end local v0    # "count":I
    .end local v2    # "day":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v9    # "row":Lorg/json/JSONObject;
    .end local v10    # "userId":I
    :cond_ff
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 891
    return-object v4
.end method

.method static synthetic access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 722
    invoke-direct {p0, p1, p2, p3, p4}, writeEvent(JILcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method private getMidnightMs()J
    .registers 8

    .prologue
    const/16 v5, 0x3b

    .line 925
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 926
    .local v0, "midnight":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0x17

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 928
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 953
    .local v4, "nowMs":J
    sget-wide v6, sNumWrites:J

    const-wide/16 v8, 0x400

    cmp-long v1, v6, v8

    if-gtz v1, :cond_17

    sget-wide v6, sLastPruneMs:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x1499700

    cmp-long v1, v6, v8

    if-lez v1, :cond_4e

    .line 955
    :cond_17
    const-wide/16 v6, 0x0

    sput-wide v6, sNumWrites:J

    .line 956
    sput-wide v4, sLastPruneMs:J

    .line 957
    const-wide/32 v6, 0x240c8400

    sub-long v2, v4, v6

    .line 958
    .local v2, "horizonStartMs":J
    const-string/jumbo v1, "log"

    const-string/jumbo v6, "event_time_ms < ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 960
    .local v0, "deletedRows":I
    const-string v1, "NotificationSQLiteLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pruned event entries: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    .end local v0    # "deletedRows":I
    .end local v2    # "horizonStartMs":J
    :cond_4e
    return-void
.end method

.method private static putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 6
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    .prologue
    .line 970
    const-string/jumbo v0, "nid"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 972
    const-string/jumbo v0, "tag"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_24
    const-string/jumbo v0, "when_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 975
    const-string/jumbo v0, "flags"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    const-string/jumbo v0, "priority"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 978
    const-string v0, "category"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_67
    const-string v1, "action_count"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    :goto_78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    return-void

    .line 980
    :cond_80
    const/4 v0, 0x0

    goto :goto_78
.end method

.method private static putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 4
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    .prologue
    .line 965
    const-string/jumbo v0, "key"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string/jumbo v0, "pkg"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    return-void
.end method

.method private static putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 6
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    .prologue
    .line 985
    const-string/jumbo v0, "posttime_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentPosttimeMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 986
    const-string v0, "airtime_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 987
    const-string/jumbo v0, "expansion_count"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v2, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 988
    const-string/jumbo v0, "expansion_airtime_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeExpandedMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 989
    const-string/jumbo v0, "first_expansion_time_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v2, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 990
    return-void
.end method

.method private writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    .registers 12
    .param p1, "eventTimeMs"    # J
    .param p3, "eventType"    # I
    .param p4, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 932
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 933
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "event_user_id"

    iget-object v3, p4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    const-string/jumbo v2, "event_time_ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 935
    const-string/jumbo v2, "event_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 936
    invoke-static {p4, v0}, putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 937
    const/4 v2, 0x1

    if-ne p3, v2, :cond_6d

    .line 938
    invoke-static {p4, v0}, putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 942
    :goto_36
    iget-object v2, p0, mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 943
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "log"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_62

    .line 944
    const-string v2, "NotificationSQLiteLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while trying to insert values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_62
    sget-wide v2, sNumWrites:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, sNumWrites:J

    .line 947
    invoke-direct {p0, v1}, pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 948
    return-void

    .line 940
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_6d
    invoke-static {p4, v0}, putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    goto :goto_36
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 993
    invoke-virtual {p0, p1, p2, p3}, printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 994
    return-void
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 997
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 999
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "post_frequency"

    invoke-direct {p0, p1}, JsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_10

    .line 1003
    :goto_f
    return-object v0

    .line 1000
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public logClicked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 846
    iget-object v0, p0, mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 847
    return-void
.end method

.method public logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 854
    iget-object v0, p0, mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 855
    return-void
.end method

.method public logPosted(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 842
    iget-object v0, p0, mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 843
    return-void
.end method

.method public logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 850
    iget-object v0, p0, mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 851
    return-void
.end method

.method public printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 895
    iget-object v9, p0, mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 896
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0}, getMidnightMs()J

    move-result-wide v4

    .line 897
    .local v4, "midnight":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT event_user_id, pkg, CAST((("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "event_time_ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/32 v10, 0x5265c00

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") AS int) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "AS day, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "COUNT(*) AS cnt "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "FROM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "log"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "event_type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "GROUP BY "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "event_user_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", day, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 908
    .local v7, "q":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 910
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_99
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_9c
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_108

    .line 911
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 912
    .local v8, "userId":I
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 913
    .local v6, "pkg":Ljava/lang/String;
    if-eqz p3, :cond_bd

    invoke-virtual {p3, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bd

    .line 910
    :goto_b4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b7
    .catchall {:try_start_99 .. :try_end_b7} :catchall_b8

    goto :goto_9c

    .line 920
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v8    # "userId":I
    :catchall_b8
    move-exception v9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v9

    .line 914
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v8    # "userId":I
    :cond_bd
    const/4 v9, 0x2

    :try_start_be
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 915
    .local v2, "day":I
    const/4 v9, 0x3

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 916
    .local v0, "count":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "post_frequency{user_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",pkg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",day="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_be .. :try_end_107} :catchall_b8

    goto :goto_b4

    .line 920
    .end local v0    # "count":I
    .end local v2    # "day":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v8    # "userId":I
    :cond_108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 922
    return-void
.end method
