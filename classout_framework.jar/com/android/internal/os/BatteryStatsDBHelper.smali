.class public Lcom/android/internal/os/BatteryStatsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;,
        Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;,
        Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    }
.end annotation


# static fields
.field public static final ACTION_BATTERY_ABUSE:Ljava/lang/String; = "sec.intent.action.BATTERY_ABUSE"

.field public static final ALL:I = 0x2

.field public static final ALL_ONLY_APP:I = 0x8

.field public static final ALL_ONLY_APP_CONSUMER_LIST:I = 0x80

.field public static final ALL_ONLY_APP_TOTAL:I = 0x20

.field static final BATTERY_DELTA:Ljava/lang/String; = "Battery_Delta"

.field private static final BATTERY_DELTA_QUERY_STRING:Ljava/lang/String; = "SELECT batterydelta,lcd_condition FROM Battery_Delta"

.field public static final BATTERY_PERCENTAGE:I = 0x40

.field private static final COLLECTION_QUERY_STRING:Ljava/lang/String; = "SELECT lcd_condition,time,power FROM"

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DATABASE_NAME:Ljava/lang/String; = "powerManager"

.field private static final DATABASE_VERSION:I = 0x7

.field private static final DEBUG_LOG:Z = false

.field private static final DELETE_QUERY_STRING:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\'"

.field private static final KEY_ABUSIVE_TYPE:Ljava/lang/String; = "abusive_type"

.field private static final KEY_BATTERY_DELTA:Ljava/lang/String; = "batterydelta"

.field private static final KEY_BATTERY_PERC:Ljava/lang/String; = "batterypercent"

.field private static final KEY_LCD:Ljava/lang/String; = "lcd_condition"

.field private static final KEY_METADATA:Ljava/lang/String; = "meta_data"

.field private static final KEY_NETWORK_USAGE:Ljava/lang/String; = "network_usage"

.field private static final KEY_NOTIFIED_TIME:Ljava/lang/String; = "notified_time"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_PERCENTAGE:Ljava/lang/String; = "percentage"

.field private static final KEY_POWER:Ljava/lang/String; = "power"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_TOTALPOWER:Ljava/lang/String; = "totalpower"

.field private static final KEY_USAGE_TIME:Ljava/lang/String; = "usage_time"

.field private static final KEY_WAKEUP:Ljava/lang/String; = "wakeup_count"

.field private static final LAST_ENTRY_QUERY_STRING:Ljava/lang/String; = "SELECT time,totalpower,network_usage FROM"

.field private static final LAST_TOTAL_ENTRY_QUERY_STRING:Ljava/lang/String; = "SELECT time,totalpower,batterypercent FROM [all]"

.field public static final LCD_OFF:I = 0x4

.field public static final LCD_OFF_ONLY_APP:I = 0x10

.field private static final MAX_TIME_DIFF:J = 0x5265c00L

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_HOUR:J = 0x36ee80L

.field static final NAME_END:Ljava/lang/String; = "]"

.field static final NAME_START:Ljava/lang/String; = "["

.field private static final NETWORK_USAGE:I = 0x20

.field private static final ONE_HR_BATTERY_THRESHOLD:Ljava/lang/String; = "one_hr_battery_threshold"

.field private static final ONE_HR_HEALING_CAMP_THRESHOLD:Ljava/lang/String; = "one_hr_healingcamp_threshold"

.field static final PACKAGE_QUERY_STRING:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

.field private static final PERC_QUERY_STRING:Ljava/lang/String; = "SELECT lcd_condition,time,batterypercent FROM Battery_Delta"

.field static final POWER_CONSUMING_PACKAGES:Ljava/lang/String; = "power_consuming_packages"

.field private static final RATE_QUERY_STRING:Ljava/lang/String; = "SELECT usage_time,power FROM"

.field private static final SCREEN_OFF:I = 0x8

.field private static final SCREEN_ON:I = 0x4

.field private static final SETTING_KEY:Ljava/lang/String; = "key"

.field private static final SETTING_VALUE:Ljava/lang/String; = "value"

.field private static final SIGNATURE_END:Ljava/lang/String; = ")"

.field private static final SIGNATURE_START:Ljava/lang/String; = "("

.field private static final SYSTEM_APP:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BatteryStatsDBHelper"

.field private static final TIME_DIFF_THRESHOLD:J = 0x7d0L

.field private static final TOTAL_POWER:Ljava/lang/String; = "all"

.field private static final TYPE_BLE:Ljava/lang/String; = "ble"

.field private static final TYPE_GPS:Ljava/lang/String; = "gps"

.field private static final TYPE_WAKELOCK:Ljava/lang/String; = "wakelock"

.field private static mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

.field private static mContext:Landroid/content/Context;

.field private static notifiedPowerDrainingApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static sBatteryCapacity:D

.field private static sRealTimeSnapshot:J

.field private static sSystemTimeSnapshot:J

.field private static unNotifiedAbuserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ONE_HOUR_THRESHOLD:D

.field private ONE_HOUR_THRESHOLD_HEALING_CAMP:D

.field private mFakeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, unNotifiedAbuserMap:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, notifiedPowerDrainingApps:Ljava/util/HashMap;

    .line 161
    const-string v0, "content://com.samsung.android.sm/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const-string/jumbo v0, "powerManager"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 142
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, ONE_HOUR_THRESHOLD:D

    .line 145
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    .line 212
    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsDBHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsDBHelper;)V

    iput-object v0, p0, mFakeReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    sput-object p1, mContext:Landroid/content/Context;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, sSystemTimeSnapshot:J

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, sRealTimeSnapshot:J

    .line 172
    invoke-direct {p0}, registerReceiver()V

    .line 173
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0, p1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .prologue
    .line 56
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized addBatteryDelta(ZJIILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 13
    .param p1, "writeForScreenChange"    # Z
    .param p2, "time"    # J
    .param p4, "batteryDelta"    # I
    .param p5, "currentBatteryPercent"    # I
    .param p6, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 288
    monitor-enter p0

    if-eqz p1, :cond_42

    :try_start_3
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-nez v3, :cond_40

    const/4 v1, 0x1

    .line 290
    .local v1, "screenCondition":Z
    :goto_8
    if-eqz v1, :cond_45

    const/4 v0, 0x4

    .line 292
    .local v0, "lcdCondition":I
    :goto_b
    invoke-direct {p0, p6, p2, p3}, maintainDayData(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 294
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "lcd_condition"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string/jumbo v3, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    const-string v3, "batterydelta"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v3, "batterypercent"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v3, "Battery_Delta"

    const/4 v4, 0x0

    invoke-virtual {p6, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_48

    .line 300
    monitor-exit p0

    return-void

    .line 288
    .end local v0    # "lcdCondition":I
    .end local v1    # "screenCondition":Z
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_40
    const/4 v1, 0x0

    goto :goto_8

    :cond_42
    :try_start_42
    sget-boolean v1, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_48

    goto :goto_8

    .line 290
    .restart local v1    # "screenCondition":Z
    :cond_45
    const/16 v0, 0x8

    goto :goto_b

    .line 288
    .end local v1    # "screenCondition":Z
    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .registers 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "abusiveType"    # Ljava/lang/String;
    .param p6, "metadata"    # Ljava/lang/String;
    .param p7, "percentage"    # D

    .prologue
    .line 791
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "packageName"

    aput-object v2, v3, v1

    .line 792
    .local v3, "columns":[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 793
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 794
    const-string/jumbo v1, "packageName"

    invoke-virtual {v10, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string/jumbo v1, "percentage"

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 796
    const-string v1, "abusive_type"

    move-object/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string/jumbo v1, "meta_data"

    move-object/from16 v0, p6

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string/jumbo v2, "power_consuming_packages"

    const-string/jumbo v4, "packageName = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 801
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_53

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_76

    .line 802
    :cond_53
    const-string/jumbo v1, "power_consuming_packages"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 803
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted abuse of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :goto_72
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 810
    return-void

    .line 805
    :cond_76
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v2, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    invoke-virtual {p1, v1, v10, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 807
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated abuse of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72
.end method

.method private addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V
    .registers 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p4, "abuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "packageName"

    aput-object v2, v3, v1

    .line 763
    .local v3, "columns":[Ljava/lang/String;
    const-string v9, "battery"

    .line 765
    .local v9, "abusiveType":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 766
    .local v14, "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 767
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 769
    .local v13, "packageName":Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 770
    .local v15, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "time"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 771
    const-string/jumbo v1, "packageName"

    invoke-virtual {v15, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string/jumbo v2, "percentage"

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 773
    const-string v1, "abusive_type"

    invoke-virtual {v15, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string/jumbo v2, "power_consuming_packages"

    const-string/jumbo v4, "packageName = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v13, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 777
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_68

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_8d

    .line 778
    :cond_68
    const-string/jumbo v1, "power_consuming_packages"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 779
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted abuse of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :goto_89
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_13

    .line 781
    :cond_8d
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v2, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated abuse of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 788
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_b7
    return-void
.end method

.method private calculateTimeChange()J
    .registers 15

    .prologue
    .line 1515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1516
    .local v2, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1517
    .local v0, "actualRealtime":J
    sget-wide v10, sRealTimeSnapshot:J

    sub-long v10, v0, v10

    sget-wide v12, sSystemTimeSnapshot:J

    add-long v4, v10, v12

    .line 1519
    .local v4, "expectedSystemTime":J
    sub-long v8, v2, v4

    .line 1520
    .local v8, "timeDiff":J
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 1521
    .local v6, "time":J
    sput-wide v0, sRealTimeSnapshot:J

    .line 1522
    sput-wide v2, sSystemTimeSnapshot:J

    .line 1524
    const-wide/16 v10, 0x7d0

    cmp-long v10, v6, v10

    if-lez v10, :cond_21

    .line 1529
    .end local v8    # "timeDiff":J
    :goto_20
    return-wide v8

    .restart local v8    # "timeDiff":J
    :cond_21
    const-wide/16 v8, 0x0

    goto :goto_20
.end method

.method private checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;JD)V
    .registers 48
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .param p4, "power"    # D

    .prologue
    .line 505
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForPowerThreshold called : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 508
    .local v17, "c":Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_34

    .line 509
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 510
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "checkForPowerThreshold:: no tables found, closing cursor"

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_33
    :goto_33
    return-void

    .line 513
    :cond_34
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v16, "appSippersForLastHour":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v15, "appSippersFor24Hours":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, maintainNotifiedAppList(J)V

    .line 518
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->mIsOnBattery:Z

    if-nez v6, :cond_4d

    .line 519
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 523
    :cond_4d
    invoke-direct/range {p0 .. p3}, collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v40

    .line 524
    .local v40, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v40 .. v40}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmpl-double v6, v6, v10

    if-gtz v6, :cond_5f

    .line 525
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 529
    :cond_5f
    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "time"

    aput-object v7, v8, v6

    const/4 v6, 0x1

    const-string v7, "lcd_condition"

    aput-object v7, v8, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "power"

    aput-object v7, v8, v6

    .line 530
    .local v8, "requestingColumn":[Ljava/lang/String;
    :goto_73
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1c1

    .line 531
    const-string/jumbo v6, "name"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 532
    .local v31, "packageName":Ljava/lang/String;
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In checkForPowerThreshold, Package name = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 538
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-nez v6, :cond_f6

    .line 540
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE IF EXISTS ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 541
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 542
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_73

    .line 546
    :cond_f6
    const-string v6, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 547
    .local v25, "lcdColumn":I
    const-string/jumbo v6, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 548
    .local v37, "timeColumn":I
    const-string/jumbo v6, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 549
    .local v34, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_12a

    const/16 v24, 0x1

    .line 551
    .local v24, "isSystemUid":Z
    :goto_120
    if-eqz v24, :cond_12d

    .line 552
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 553
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_73

    .line 549
    .end local v24    # "isSystemUid":Z
    :cond_12a
    const/16 v24, 0x0

    goto :goto_120

    .line 558
    .restart local v24    # "isSystemUid":Z
    :cond_12d
    const/4 v14, 0x0

    .line 559
    .local v14, "appSipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v28, 0x0

    .line 560
    .local v28, "lcdOffPowerInLastHour":D
    :goto_130
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_166

    .line 561
    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 562
    .local v38, "thisTime":J
    sub-long v6, p2, v38

    const-wide/32 v10, 0x36ee80

    cmp-long v6, v6, v10

    if-gez v6, :cond_166

    .line 563
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 564
    .local v18, "curPower":D
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_163

    .end local v18    # "curPower":D
    :goto_15d
    add-double v28, v28, v18

    .line 569
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_130

    .line 564
    .restart local v18    # "curPower":D
    :cond_163
    const-wide/16 v18, 0x0

    goto :goto_15d

    .line 571
    .end local v18    # "curPower":D
    .end local v38    # "thisTime":J
    :cond_166
    const-wide/16 v6, 0x0

    cmpl-double v6, v28, v6

    if-lez v6, :cond_17d

    .line 572
    new-instance v14, Lcom/android/internal/os/UidSipper;

    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 573
    .restart local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-wide/from16 v0, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 574
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_17d
    move-wide/from16 v26, v28

    .line 579
    .local v26, "lcdOffPowerIn24Hours":D
    :goto_17f
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_1a4

    .line 580
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 581
    .restart local v18    # "curPower":D
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1a1

    .end local v18    # "curPower":D
    :goto_19b
    add-double v26, v26, v18

    .line 583
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_17f

    .line 581
    .restart local v18    # "curPower":D
    :cond_1a1
    const-wide/16 v18, 0x0

    goto :goto_19b

    .line 585
    .end local v18    # "curPower":D
    :cond_1a4
    const-wide/16 v6, 0x0

    cmpl-double v6, v26, v6

    if-lez v6, :cond_1b9

    .line 586
    new-instance v14, Lcom/android/internal/os/UidSipper;

    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 587
    .restart local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-wide/from16 v0, v26

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 588
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_1b9
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 591
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_73

    .line 593
    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v24    # "isSystemUid":Z
    .end local v25    # "lcdColumn":I
    .end local v26    # "lcdOffPowerIn24Hours":D
    .end local v28    # "lcdOffPowerInLastHour":D
    .end local v31    # "packageName":Ljava/lang/String;
    .end local v34    # "powerColumn":I
    .end local v37    # "timeColumn":I
    :cond_1c1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 595
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1d0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    .line 599
    :cond_1d0
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 600
    .local v20, "currentAbuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_2a0

    sget-object v6, unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2a0

    const/16 v35, 0x1

    .line 602
    .local v35, "sendBroadcast":Z
    :goto_1e3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_1e7
    :goto_1e7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/internal/os/UidSipper;

    .line 603
    .local v36, "sipper":Lcom/android/internal/os/UidSipper;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {v40 .. v40}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v30

    .line 604
    .local v30, "oneHourTotalDelta":I
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v6

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v40 .. v40}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v10

    div-double/2addr v6, v10

    move/from16 v0, v30

    int-to-double v10, v0

    mul-double v32, v6, v10

    .line 606
    .local v32, "percentage":D
    move/from16 v0, v30

    int-to-double v6, v0

    cmpl-double v6, v32, v6

    if-lez v6, :cond_218

    .line 607
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Strange!!. Percentage is greater than battery delta"

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v32, v0

    .line 611
    :cond_218
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    iget-object v9, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " has consumed "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v32

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p0

    iget-wide v6, v0, ONE_HOUR_THRESHOLD:D

    cmpl-double v6, v32, v6

    if-lez v6, :cond_1e7

    .line 613
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    iget-object v9, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " has consumed more than "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v10, v0, ONE_HOUR_THRESHOLD:D

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "% battery in last 1 hour when LCD was off"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v6, notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e7

    .line 619
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_2a4

    .line 620
    or-int/lit8 v35, v35, 0x1

    .line 624
    :goto_291
    sget-object v6, unNotifiedAbuserMap:Ljava/util/HashMap;

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1e7

    .line 600
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v30    # "oneHourTotalDelta":I
    .end local v32    # "percentage":D
    .end local v35    # "sendBroadcast":Z
    .end local v36    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_2a0
    const/16 v35, 0x0

    goto/16 :goto_1e3

    .line 622
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v30    # "oneHourTotalDelta":I
    .restart local v32    # "percentage":D
    .restart local v35    # "sendBroadcast":Z
    .restart local v36    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_2a4
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    iget-object v9, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " will be broadcasted abusive in screen on"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_291

    .line 628
    .end local v30    # "oneHourTotalDelta":I
    .end local v32    # "percentage":D
    .end local v36    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_2c1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V

    .line 630
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_2e0

    .line 631
    sget-object v6, unNotifiedAbuserMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v6}, markAsNotified(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V

    .line 632
    sget-object v6, unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 635
    :cond_2e0
    if-eqz v35, :cond_2fa

    .line 636
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Sending Battery abuse broadcast"

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v6, "sec.intent.action.BATTERY_ABUSE"

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v22, "i":Landroid/content/Intent;
    sget-object v6, mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 641
    .end local v22    # "i":Landroid/content/Intent;
    :cond_2fa
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "checkForPowerThreshold finished"

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method private collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .registers 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J

    .prologue
    .line 660
    const-string v1, "[all]"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v7, "time"

    aput-object v7, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v7, "power"

    aput-object v7, v2, v0

    const/4 v0, 0x2

    const-string v7, "batterydelta"

    aput-object v7, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 663
    .local v9, "cursor":Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 664
    .local v1, "oneHourPower":D
    const-wide/16 v4, 0x0

    .line 665
    .local v4, "oneDayPower":D
    const/4 v3, 0x0

    .line 666
    .local v3, "oneHourBatteryDelta":I
    const/4 v6, 0x0

    .line 668
    .local v6, "oneDayBatteryDelta":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 669
    const-string/jumbo v0, "time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 670
    .local v11, "timeColumn":I
    const-string/jumbo v0, "power"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 671
    .local v10, "powerColumn":I
    const-string v0, "batterydelta"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 672
    .local v8, "batteryColumn":I
    :goto_41
    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_62

    .line 673
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 674
    .local v12, "time":J
    sub-long v14, p2, v12

    const-wide/32 v16, 0x36ee80

    cmp-long v0, v14, v16

    if-gez v0, :cond_62

    .line 675
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v1, v14

    .line 676
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 680
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_41

    .line 683
    .end local v12    # "time":J
    :cond_62
    move-wide v4, v1

    .line 684
    move v6, v3

    .line 685
    :goto_64
    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_78

    .line 686
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v4, v14

    .line 687
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v6, v0

    .line 688
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_64

    .line 691
    .end local v8    # "batteryColumn":I
    .end local v10    # "powerColumn":I
    .end local v11    # "timeColumn":I
    :cond_78
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 692
    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;-><init>(DIDILcom/android/internal/os/BatteryStatsDBHelper$1;)V

    return-object v0
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "TABLE_PROCESS"    # Ljava/lang/String;

    .prologue
    .line 249
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lcd_condition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DOUBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "totalpower"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DOUBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "network_usage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "usage_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "wakeup_count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "CREATE_POWER_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a6
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_a6} :catch_a8

    .line 259
    const/4 v2, 0x1

    .end local v0    # "CREATE_POWER_TABLE":Ljava/lang/String;
    :goto_a7
    return v2

    .line 255
    :catch_a8
    move-exception v1

    .line 256
    .local v1, "e":Landroid/database/SQLException;
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table not created for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x0

    goto :goto_a7
.end method

.method public static deleteDatabase()Z
    .registers 3

    .prologue
    .line 1533
    sget-object v1, mContext:Landroid/content/Context;

    const-string/jumbo v2, "powerManager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    .line 1534
    .local v0, "ret":Z
    if-eqz v0, :cond_17

    .line 1535
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database has been deleted"

    invoke-static {v1, v2}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :goto_16
    return v0

    .line 1537
    :cond_17
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database was not deleted"

    invoke-static {v1, v2}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private deleteExceptDayData(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .param p4, "tableName"    # Ljava/lang/String;

    .prologue
    .line 698
    const-wide/16 v6, 0x7d0

    add-long v0, p2, v6

    .line 699
    .local v0, "maxTime":J
    const-wide/32 v6, 0x5265c00

    sub-long v2, p2, v6

    .line 701
    .local v2, "minTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_11

    const-wide/16 v2, 0x0

    .line 703
    :cond_11
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 704
    .local v4, "requestingColumn":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "time > ? OR time <= ?"

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 706
    return-void
.end method

.method private deleteRecordsExceptLatest(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName_"    # Ljava/lang/String;
    .param p3, "maxNumOfItems"    # I

    .prologue
    .line 1789
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1790
    .local v5, "tableName":Ljava/lang/String;
    invoke-static {p1, v5}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 1793
    .local v0, "numOfItems":J
    int-to-long v6, p3

    sub-long v2, v0, v6

    .line 1794
    .local v2, "numOfRemoval":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_56

    .line 1795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE time IN (SELECT time FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIMIT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1798
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1800
    .end local v4    # "query":Ljava/lang/String;
    :cond_56
    return-void
.end method

.method private getAppUsageStats()Ljava/util/Set;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 185
    .local v9, "launchedPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, mContext:Landroid/content/Context;

    const-string/jumbo v2, "usagestats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 188
    .local v0, "mUsageStatsManager":Landroid/app/usage/UsageStatsManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 189
    .local v6, "cal":Ljava/util/Calendar;
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 191
    const/4 v1, 0x4

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v11

    .line 193
    .local v11, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v11, :cond_29

    .line 203
    :cond_28
    return-object v9

    .line 197
    :cond_29
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 198
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e
    if-ge v8, v7, :cond_28

    .line 199
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "pkgName":Ljava/lang/String;
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LaunchedPackageSet contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e
.end method

.method private declared-synchronized getBatteryPercentageList()[B
    .registers 23

    .prologue
    .line 1291
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 1292
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v18, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1293
    .local v18, "result":Lcom/android/internal/os/UidSipperImpl;
    new-instance v2, Lcom/android/internal/os/UidSipper;

    const-string v8, "Battery"

    invoke-direct {v2, v8}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v2, "sipper":Lcom/android/internal/os/UidSipper;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1297
    .local v12, "curTime":J
    const-string v8, "SELECT lcd_condition,time,batterypercent FROM Battery_Delta"

    const/4 v9, 0x0

    invoke-virtual {v15, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1298
    .local v11, "cursor":Landroid/database/Cursor;
    const-string v8, "lcd_condition"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1299
    .local v16, "lcdColumn":I
    const-string/jumbo v8, "time"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1300
    .local v19, "timeColumn":I
    const-string v8, "batterypercent"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1305
    .local v10, "batteryPercColumn":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_70

    .line 1307
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1308
    .local v3, "time":J
    sub-long v8, v12, v3

    const-wide/32 v20, 0x5265c00

    cmp-long v8, v8, v20

    if-ltz v8, :cond_47

    .line 1309
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1311
    :cond_47
    :goto_47
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_70

    .line 1312
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6e

    const/4 v5, 0x1

    .line 1313
    .local v5, "lcdOn":Z
    :goto_57
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1314
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-double v6, v8

    .line 1315
    .local v6, "batteryPerc":D
    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1316
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_6b

    goto :goto_47

    .line 1291
    .end local v2    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v3    # "time":J
    .end local v5    # "lcdOn":Z
    .end local v6    # "batteryPerc":D
    .end local v10    # "batteryPercColumn":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "curTime":J
    .end local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "lcdColumn":I
    .end local v18    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v19    # "timeColumn":I
    :catchall_6b
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1312
    .restart local v2    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v3    # "time":J
    .restart local v10    # "batteryPercColumn":I
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "curTime":J
    .restart local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16    # "lcdColumn":I
    .restart local v18    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v19    # "timeColumn":I
    :cond_6e
    const/4 v5, 0x0

    goto :goto_57

    .line 1319
    .end local v3    # "time":J
    :cond_70
    :try_start_70
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1322
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    .line 1325
    .local v17, "out":Landroid/os/Parcel;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1326
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->marshall()[B

    move-result-object v14

    .line 1327
    .local v14, "data":[B
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V
    :try_end_8a
    .catchall {:try_start_70 .. :try_end_8a} :catchall_6b

    .line 1328
    monitor-exit p0

    return-object v14
.end method

.method private declared-synchronized getConsumerListOnlyApp()[B
    .registers 35

    .prologue
    .line 1332
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    .line 1333
    .local v18, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v26, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1335
    .local v26, "result":Lcom/android/internal/os/UidSipperImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1337
    .local v14, "curTime":J
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1338
    .local v11, "c":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 1339
    .local v12, "allUidTotalPower":D
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_156

    .line 1340
    invoke-direct/range {p0 .. p0}, getAppUsageStats()Ljava/util/Set;

    move-result-object v20

    .line 1341
    .local v20, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_23
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_149

    .line 1342
    const-string/jumbo v8, "name"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1344
    .local v29, "val":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT lcd_condition,time,power FROM["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1345
    .local v27, "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1346
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1348
    const-string v8, "lcd_condition"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1349
    .local v21, "lcdColumn":I
    const-string/jumbo v8, "time"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1350
    .local v28, "timeColumn":I
    const-string/jumbo v8, "power"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1352
    .local v25, "powerColumn":I
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1353
    .local v22, "lcdNtype":I
    and-int/lit8 v8, v22, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_94

    .line 1354
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "System app"

    invoke-static {v8, v9}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1356
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_90
    .catchall {:try_start_1 .. :try_end_90} :catchall_91

    goto :goto_23

    .line 1332
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "allUidTotalPower":D
    .end local v14    # "curTime":J
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v18    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "lcdColumn":I
    .end local v22    # "lcdNtype":I
    .end local v25    # "powerColumn":I
    .end local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v27    # "selectQuery":Ljava/lang/String;
    .end local v28    # "timeColumn":I
    .end local v29    # "val":Ljava/lang/String;
    :catchall_91
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1361
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "allUidTotalPower":D
    .restart local v14    # "curTime":J
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "lcdColumn":I
    .restart local v22    # "lcdNtype":I
    .restart local v25    # "powerColumn":I
    .restart local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v27    # "selectQuery":Ljava/lang/String;
    .restart local v28    # "timeColumn":I
    .restart local v29    # "val":Ljava/lang/String;
    :cond_94
    :try_start_94
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1362
    .local v3, "time":J
    sub-long v8, v14, v3

    const-wide/32 v32, 0x5265c00

    cmp-long v8, v8, v32

    if-ltz v8, :cond_a8

    .line 1363
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 1366
    :cond_a8
    new-instance v2, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1368
    .local v2, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v30, 0x0

    .local v30, "totalPower":D
    const-wide/16 v6, 0x0

    .line 1369
    .local v6, "power":D
    const/16 v19, 0x0

    .line 1370
    .local v19, "isUsingNetwork":Z
    :goto_b5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_f1

    .line 1371
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1372
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1373
    and-int/lit8 v8, v22, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_ed

    const/4 v5, 0x1

    .line 1374
    .local v5, "lcdOn":Z
    :goto_d1
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 1375
    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1376
    add-double v30, v30, v6

    .line 1377
    and-int/lit8 v8, v22, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_ef

    const/4 v8, 0x1

    :goto_e7
    or-int v19, v19, v8

    .line 1378
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_b5

    .line 1373
    .end local v5    # "lcdOn":Z
    :cond_ed
    const/4 v5, 0x0

    goto :goto_d1

    .line 1377
    .restart local v5    # "lcdOn":Z
    :cond_ef
    const/4 v8, 0x0

    goto :goto_e7

    .line 1380
    .end local v5    # "lcdOn":Z
    :cond_f1
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v32, " power:"

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v30

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v8, v2, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13b

    .line 1383
    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1384
    add-double v12, v12, v30

    .line 1385
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_143

    .line 1386
    invoke-virtual {v2}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1390
    :cond_12f
    :goto_12f
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1391
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "added"

    invoke-static {v8, v9}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    :cond_13b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1395
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_23

    .line 1387
    :cond_143
    if-eqz v19, :cond_12f

    .line 1388
    invoke-virtual {v2}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_12f

    .line 1398
    .end local v2    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v3    # "time":J
    .end local v6    # "power":D
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v19    # "isUsingNetwork":Z
    .end local v21    # "lcdColumn":I
    .end local v22    # "lcdNtype":I
    .end local v25    # "powerColumn":I
    .end local v27    # "selectQuery":Ljava/lang/String;
    .end local v28    # "timeColumn":I
    .end local v29    # "val":Ljava/lang/String;
    .end local v30    # "totalPower":D
    :cond_149
    const-wide/16 v8, 0x0

    cmpg-double v8, v12, v8

    if-gtz v8, :cond_151

    .line 1399
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 1400
    :cond_151
    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1402
    .end local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_156
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1405
    const-string v27, "SELECT  * FROM power_consuming_packages"

    .line 1406
    .restart local v27    # "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1408
    .restart local v16    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v8, "time"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1409
    .restart local v28    # "timeColumn":I
    const-string/jumbo v8, "packageName"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1411
    .local v10, "abuserNameColumn":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;->initializeConsumerList()V

    .line 1414
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1b6

    .line 1416
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1417
    .restart local v3    # "time":J
    sub-long v8, v14, v3

    const-wide/32 v32, 0x5265c00

    cmp-long v8, v8, v32

    if-ltz v8, :cond_193

    .line 1418
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 1421
    :cond_193
    :goto_193
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_1b6

    .line 1422
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1423
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1424
    .local v23, "names":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/os/UidSipperImpl;->addConsumerPackages(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_193

    .line 1428
    .end local v3    # "time":J
    .end local v23    # "names":Ljava/lang/String;
    :cond_1b6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v24

    .line 1432
    .local v24, "out":Landroid/os/Parcel;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1433
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->marshall()[B

    move-result-object v17

    .line 1434
    .local v17, "data":[B
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V
    :try_end_1cb
    .catchall {:try_start_94 .. :try_end_1cb} :catchall_91

    .line 1435
    monitor-exit p0

    return-object v17
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const-class v1, Lcom/android/internal/os/BatteryStatsDBHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-nez v0, :cond_e

    .line 177
    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    .line 179
    :cond_e
    sget-object v0, mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 176
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT time,totalpower,network_usage FROM["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 828
    .local v9, "selectQuery":Ljava/lang/String;
    invoke-virtual {p1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 829
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 830
    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 831
    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    const-string/jumbo v2, "time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "totalpower"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const-string/jumbo v6, "network_usage"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;-><init>(JDJLcom/android/internal/os/BatteryStatsDBHelper$1;)V

    .line 835
    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    :cond_4b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 836
    return-object v1
.end method

.method private getLastTotalEntry(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 862
    const-string v2, "SELECT time,totalpower,batterypercent FROM [all]"

    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 863
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 864
    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 865
    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    const-string/jumbo v2, "totalpower"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-string v4, "batterypercent"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;-><init>(DILcom/android/internal/os/BatteryStatsDBHelper$1;)V

    .line 869
    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    :cond_28
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 870
    return-object v1
.end method

.method private declared-synchronized getScreenOffUsageList(Z)[B
    .registers 41
    .param p1, "needOffList"    # Z

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .line 1075
    .local v25, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v33, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v33 .. v33}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1077
    .local v33, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1078
    .local v20, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 1079
    .local v18, "allUidTotalPower":D
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_184

    .line 1080
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1081
    .local v22, "curTime":J
    invoke-direct/range {p0 .. p0}, getAppUsageStats()Ljava/util/Set;

    move-result-object v28

    .line 1082
    .local v28, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_23
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_175

    .line 1083
    const-string/jumbo v10, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1085
    .local v38, "val":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT lcd_condition,time,power FROM["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 1086
    .local v34, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1087
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1089
    const-string v10, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1090
    .local v29, "lcdColumn":I
    const-string/jumbo v10, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 1091
    .local v35, "timeColumn":I
    const-string/jumbo v10, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 1094
    .local v32, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1095
    .local v5, "time":J
    sub-long v10, v22, v5

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_8d

    .line 1096
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 1099
    :cond_8d
    new-instance v4, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v38

    invoke-direct {v4, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v36, 0x0

    .local v36, "totalPower":D
    const-wide/16 v8, 0x0

    .line 1102
    .local v8, "power":D
    const/16 v30, 0x0

    .line 1103
    .local v30, "lcdNtype":I
    const/16 v27, 0x0

    .line 1104
    .local v27, "isUsingNetwork":Z
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_e9

    const/16 v26, 0x1

    .line 1105
    .local v26, "isSystemApp":Z
    :goto_ac
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_11d

    .line 1106
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1107
    if-nez p1, :cond_f0

    .line 1108
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1109
    and-int/lit8 v10, v30, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_ec

    const/4 v7, 0x1

    .line 1110
    .local v7, "lcdOn":Z
    :goto_ca
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1111
    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1112
    add-double v36, v36, v8

    .line 1113
    and-int/lit8 v10, v30, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_ee

    const/4 v10, 0x1

    :goto_e0
    or-int v27, v27, v10

    .line 1121
    .end local v7    # "lcdOn":Z
    :cond_e2
    :goto_e2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e5
    .catchall {:try_start_1 .. :try_end_e5} :catchall_e6

    goto :goto_ac

    .line 1074
    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v8    # "power":D
    .end local v18    # "allUidTotalPower":D
    .end local v20    # "c":Landroid/database/Cursor;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "curTime":J
    .end local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v26    # "isSystemApp":Z
    .end local v27    # "isUsingNetwork":Z
    .end local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v29    # "lcdColumn":I
    .end local v30    # "lcdNtype":I
    .end local v32    # "powerColumn":I
    .end local v33    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v34    # "selectQuery":Ljava/lang/String;
    .end local v35    # "timeColumn":I
    .end local v36    # "totalPower":D
    .end local v38    # "val":Ljava/lang/String;
    :catchall_e6
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1104
    .restart local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v5    # "time":J
    .restart local v8    # "power":D
    .restart local v18    # "allUidTotalPower":D
    .restart local v20    # "c":Landroid/database/Cursor;
    .restart local v21    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "curTime":J
    .restart local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "isUsingNetwork":Z
    .restart local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v29    # "lcdColumn":I
    .restart local v30    # "lcdNtype":I
    .restart local v32    # "powerColumn":I
    .restart local v33    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v34    # "selectQuery":Ljava/lang/String;
    .restart local v35    # "timeColumn":I
    .restart local v36    # "totalPower":D
    .restart local v38    # "val":Ljava/lang/String;
    :cond_e9
    const/16 v26, 0x0

    goto :goto_ac

    .line 1109
    .restart local v26    # "isSystemApp":Z
    :cond_ec
    const/4 v7, 0x0

    goto :goto_ca

    .line 1113
    .restart local v7    # "lcdOn":Z
    :cond_ee
    const/4 v10, 0x0

    goto :goto_e0

    .line 1114
    .end local v7    # "lcdOn":Z
    :cond_f0
    and-int/lit8 v10, v30, 0x8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_e2

    .line 1115
    :try_start_f6
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1116
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1117
    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v4

    move-wide v11, v5

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1118
    add-double v36, v36, v8

    .line 1119
    and-int/lit8 v10, v30, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_11b

    const/4 v10, 0x1

    :goto_118
    or-int v27, v27, v10

    goto :goto_e2

    :cond_11b
    const/4 v10, 0x0

    goto :goto_118

    .line 1123
    :cond_11d
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object v10, v4, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_165

    .line 1126
    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1127
    add-double v18, v18, v36

    .line 1128
    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16d

    .line 1129
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1133
    :cond_159
    :goto_159
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1134
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :cond_165
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1138
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_23

    .line 1130
    :cond_16d
    if-eqz v27, :cond_159

    if-nez v26, :cond_159

    .line 1131
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_159

    .line 1140
    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v8    # "power":D
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v26    # "isSystemApp":Z
    .end local v27    # "isUsingNetwork":Z
    .end local v29    # "lcdColumn":I
    .end local v30    # "lcdNtype":I
    .end local v32    # "powerColumn":I
    .end local v34    # "selectQuery":Ljava/lang/String;
    .end local v35    # "timeColumn":I
    .end local v36    # "totalPower":D
    .end local v38    # "val":Ljava/lang/String;
    :cond_175
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_17d

    .line 1141
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 1142
    :cond_17d
    move-object/from16 v0, v33

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1144
    .end local v22    # "curTime":J
    .end local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_184
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v31

    .line 1147
    .local v31, "out":Landroid/os/Parcel;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1148
    invoke-virtual/range {v31 .. v31}, Landroid/os/Parcel;->marshall()[B

    move-result-object v24

    .line 1149
    .local v24, "data":[B
    invoke-virtual/range {v31 .. v31}, Landroid/os/Parcel;->recycle()V
    :try_end_199
    .catchall {:try_start_f6 .. :try_end_199} :catchall_e6

    .line 1150
    monitor-exit p0

    return-object v24
.end method

.method private declared-synchronized getScreenOffUsageListOnlyApp(Z)[B
    .registers 40
    .param p1, "needOffList"    # Z

    .prologue
    .line 1154
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .line 1155
    .local v25, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v32, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v32 .. v32}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1157
    .local v32, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1158
    .local v20, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 1159
    .local v18, "allUidTotalPower":D
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_189

    .line 1160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1161
    .local v22, "curTime":J
    invoke-direct/range {p0 .. p0}, getAppUsageStats()Ljava/util/Set;

    move-result-object v27

    .line 1162
    .local v27, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_23
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_17a

    .line 1163
    const-string/jumbo v10, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1165
    .local v35, "val":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT lcd_condition,time,power FROM["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1166
    .local v33, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1167
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1169
    const-string v10, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1170
    .local v28, "lcdColumn":I
    const-string/jumbo v10, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 1171
    .local v34, "timeColumn":I
    const-string/jumbo v10, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1173
    .local v31, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1174
    .local v29, "lcdNtype":I
    and-int/lit8 v10, v29, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_98

    .line 1175
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "System app"

    invoke-static {v10, v11}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1177
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_95

    goto :goto_23

    .line 1154
    .end local v18    # "allUidTotalPower":D
    .end local v20    # "c":Landroid/database/Cursor;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "curTime":J
    .end local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28    # "lcdColumn":I
    .end local v29    # "lcdNtype":I
    .end local v31    # "powerColumn":I
    .end local v32    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v33    # "selectQuery":Ljava/lang/String;
    .end local v34    # "timeColumn":I
    .end local v35    # "val":Ljava/lang/String;
    :catchall_95
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1182
    .restart local v18    # "allUidTotalPower":D
    .restart local v20    # "c":Landroid/database/Cursor;
    .restart local v21    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "curTime":J
    .restart local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v28    # "lcdColumn":I
    .restart local v29    # "lcdNtype":I
    .restart local v31    # "powerColumn":I
    .restart local v32    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v33    # "selectQuery":Ljava/lang/String;
    .restart local v34    # "timeColumn":I
    .restart local v35    # "val":Ljava/lang/String;
    :cond_98
    :try_start_98
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1183
    .local v5, "time":J
    sub-long v10, v22, v5

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_ac

    .line 1184
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 1187
    :cond_ac
    new-instance v4, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v36, 0x0

    .local v36, "totalPower":D
    const-wide/16 v8, 0x0

    .line 1190
    .local v8, "power":D
    const/16 v26, 0x0

    .line 1191
    .local v26, "isUsingNetwork":Z
    :goto_b9
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_124

    .line 1192
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1193
    if-nez p1, :cond_f7

    .line 1194
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1195
    and-int/lit8 v10, v29, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_f3

    const/4 v7, 0x1

    .line 1196
    .local v7, "lcdOn":Z
    :goto_d7
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1197
    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1198
    add-double v36, v36, v8

    .line 1199
    and-int/lit8 v10, v29, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_f5

    const/4 v10, 0x1

    :goto_ed
    or-int v26, v26, v10

    .line 1207
    .end local v7    # "lcdOn":Z
    :cond_ef
    :goto_ef
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_b9

    .line 1195
    :cond_f3
    const/4 v7, 0x0

    goto :goto_d7

    .line 1199
    .restart local v7    # "lcdOn":Z
    :cond_f5
    const/4 v10, 0x0

    goto :goto_ed

    .line 1200
    .end local v7    # "lcdOn":Z
    :cond_f7
    const/16 v10, 0x8

    move/from16 v0, v29

    if-ne v0, v10, :cond_ef

    .line 1201
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1202
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1203
    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v4

    move-wide v11, v5

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1204
    add-double v36, v36, v8

    .line 1205
    and-int/lit8 v10, v29, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_122

    const/4 v10, 0x1

    :goto_11f
    or-int v26, v26, v10

    goto :goto_ef

    :cond_122
    const/4 v10, 0x0

    goto :goto_11f

    .line 1209
    :cond_124
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v10, v4, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_16c

    .line 1212
    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1213
    add-double v18, v18, v36

    .line 1214
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_174

    .line 1215
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1219
    :cond_160
    :goto_160
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1220
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :cond_16c
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1224
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_23

    .line 1216
    :cond_174
    if-eqz v26, :cond_160

    .line 1217
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_160

    .line 1227
    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v8    # "power":D
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v26    # "isUsingNetwork":Z
    .end local v28    # "lcdColumn":I
    .end local v29    # "lcdNtype":I
    .end local v31    # "powerColumn":I
    .end local v33    # "selectQuery":Ljava/lang/String;
    .end local v34    # "timeColumn":I
    .end local v35    # "val":Ljava/lang/String;
    .end local v36    # "totalPower":D
    :cond_17a
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_182

    .line 1228
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 1229
    :cond_182
    move-object/from16 v0, v32

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1232
    .end local v22    # "curTime":J
    .end local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_189
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v30

    .line 1235
    .local v30, "out":Landroid/os/Parcel;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1236
    invoke-virtual/range {v30 .. v30}, Landroid/os/Parcel;->marshall()[B

    move-result-object v24

    .line 1237
    .local v24, "data":[B
    invoke-virtual/range {v30 .. v30}, Landroid/os/Parcel;->recycle()V
    :try_end_19e
    .catchall {:try_start_98 .. :try_end_19e} :catchall_95

    .line 1238
    monitor-exit p0

    return-object v24
.end method

.method private declared-synchronized getTotalUsageList()[B
    .registers 29

    .prologue
    .line 1242
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .line 1243
    .local v16, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1245
    .local v21, "result":Lcom/android/internal/os/UidSipperImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1247
    .local v12, "curTime":J
    const-string v22, "SELECT lcd_condition,time,power FROM[all]"

    .line 1248
    .local v22, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1250
    .local v14, "cursor":Landroid/database/Cursor;
    const-string v10, "lcd_condition"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1251
    .local v17, "lcdColumn":I
    const-string/jumbo v10, "time"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1252
    .local v23, "timeColumn":I
    const-string/jumbo v10, "power"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1254
    .local v20, "powerColumn":I
    new-instance v4, Lcom/android/internal/os/UidSipper;

    const-string v10, "all"

    invoke-direct {v4, v10}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1255
    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v24, 0x0

    .local v24, "totalPower":D
    const-wide/16 v8, 0x0

    .line 1258
    .local v8, "power":D
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 1260
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1261
    .local v5, "time":J
    sub-long v10, v12, v5

    const-wide/32 v26, 0x5265c00

    cmp-long v10, v10, v26

    if-ltz v10, :cond_50

    .line 1262
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 1265
    :cond_50
    :goto_50
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7e

    .line 1266
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1267
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1268
    .local v18, "lcdNtype":I
    const/4 v10, 0x4

    move/from16 v0, v18

    if-ne v0, v10, :cond_7c

    const/4 v7, 0x1

    .line 1269
    .local v7, "lcdOn":Z
    :goto_68
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1270
    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1271
    add-double v24, v24, v8

    .line 1272
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_79

    goto :goto_50

    .line 1242
    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v7    # "lcdOn":Z
    .end local v8    # "power":D
    .end local v12    # "curTime":J
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "lcdColumn":I
    .end local v18    # "lcdNtype":I
    .end local v20    # "powerColumn":I
    .end local v21    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v22    # "selectQuery":Ljava/lang/String;
    .end local v23    # "timeColumn":I
    .end local v24    # "totalPower":D
    :catchall_79
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1268
    .restart local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v5    # "time":J
    .restart local v8    # "power":D
    .restart local v12    # "curTime":J
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "lcdColumn":I
    .restart local v18    # "lcdNtype":I
    .restart local v20    # "powerColumn":I
    .restart local v21    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v22    # "selectQuery":Ljava/lang/String;
    .restart local v23    # "timeColumn":I
    .restart local v24    # "totalPower":D
    :cond_7c
    const/4 v7, 0x0

    goto :goto_68

    .line 1275
    .end local v5    # "time":J
    .end local v18    # "lcdNtype":I
    :cond_7e
    :try_start_7e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1278
    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1279
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1280
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1281
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Final set to all = "

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v19

    .line 1284
    .local v19, "out":Landroid/os/Parcel;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1285
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->marshall()[B

    move-result-object v15

    .line 1286
    .local v15, "data":[B
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->recycle()V
    :try_end_c0
    .catchall {:try_start_7e .. :try_end_c0} :catchall_79

    .line 1287
    monitor-exit p0

    return-object v15
.end method

.method private maintainDayData(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J

    .prologue
    .line 710
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking for old data before adding this new one at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v4, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    .line 716
    .local v0, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v1, 0x0

    .line 718
    .local v1, "c":Landroid/database/Cursor;
    :try_start_20
    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 719
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 720
    :goto_2d
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_6f

    .line 721
    const-string/jumbo v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, "tableName":Ljava/lang/String;
    if-eqz v5, :cond_49

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_49

    .line 723
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_49
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4c} :catch_4d
    .catchall {:try_start_20 .. :try_end_4c} :catchall_75

    goto :goto_2d

    .line 728
    .end local v5    # "tableName":Ljava/lang/String;
    :catch_4d
    move-exception v2

    .line 729
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_75

    .line 731
    if-eqz v1, :cond_56

    .line 732
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 737
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_56
    :goto_56
    :try_start_56
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 738
    .restart local v5    # "tableName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3, v5}, deleteExceptDayData(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_69} :catch_6a

    goto :goto_5a

    .line 740
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "tableName":Ljava/lang/String;
    :catch_6a
    move-exception v2

    .line 741
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 744
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6e
    return-void

    .line 731
    :cond_6f
    if-eqz v1, :cond_56

    .line 732
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_56

    .line 731
    :catchall_75
    move-exception v6

    if-eqz v1, :cond_7b

    .line 732
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v6
.end method

.method private maintainNotifiedAppList(J)V
    .registers 14
    .param p1, "curTime"    # J

    .prologue
    .line 747
    const-string v3, "BatteryStatsDBHelper"

    const-string v6, " maintainNotifiedAppList called "

    invoke-static {v3, v6}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    sget-object v3, notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 749
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 750
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 751
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 752
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 753
    .local v4, "thisTime":J
    sub-long v6, p1, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v3, v6, v8

    if-ltz v3, :cond_11

    .line 754
    const-string v3, "BatteryStatsDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing package name from notified list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 758
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "thisTime":J
    :cond_52
    return-void
.end method

.method public static makemAh(D)Ljava/lang/String;
    .registers 8
    .param p0, "power"    # D

    .prologue
    .line 1543
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-nez v1, :cond_9

    const-string v1, "0"

    .line 1557
    :goto_8
    return-object v1

    .line 1546
    :cond_9
    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, p0, v2

    if-gez v1, :cond_25

    const-string v0, "%.8f"

    .line 1557
    .local v0, "format":Ljava/lang/String;
    :goto_14
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1547
    .end local v0    # "format":Ljava/lang/String;
    :cond_25
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, p0, v2

    if-gez v1, :cond_31

    const-string v0, "%.7f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 1548
    .end local v0    # "format":Ljava/lang/String;
    :cond_31
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p0, v2

    if-gez v1, :cond_3d

    const-string v0, "%.6f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 1549
    .end local v0    # "format":Ljava/lang/String;
    :cond_3d
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, p0, v2

    if-gez v1, :cond_49

    const-string v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 1550
    .end local v0    # "format":Ljava/lang/String;
    :cond_49
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, p0, v2

    if-gez v1, :cond_55

    const-string v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 1551
    .end local v0    # "format":Ljava/lang/String;
    :cond_55
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_5e

    const-string v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 1552
    .end local v0    # "format":Ljava/lang/String;
    :cond_5e
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_67

    const-string v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 1553
    .end local v0    # "format":Ljava/lang/String;
    :cond_67
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_70

    const-string v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14

    .line 1554
    .end local v0    # "format":Ljava/lang/String;
    :cond_70
    const-string v0, "%.0f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_14
.end method

.method private markAsNotified(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p4, "abuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 815
    .local v1, "notiValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "notified_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 817
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 818
    .local v3, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 819
    .local v2, "packageName":Ljava/lang/String;
    sget-object v4, notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string/jumbo v4, "power_consuming_packages"

    const-string/jumbo v5, "packageName = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 822
    const-string v4, "BatteryStatsDBHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated abuse notification time for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 824
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_54
    return-void
.end method

.method private static printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .prologue
    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "send.battery.drain.broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, mContext:Landroid/content/Context;

    iget-object v2, p0, mFakeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    return-void
.end method


# virtual methods
.method public declared-synchronized abusiveDetectionFromHCamp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "metaData"    # Ljava/lang/String;

    .prologue
    .line 429
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 430
    .local v6, "time":J
    invoke-virtual {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 432
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, v6, v7}, collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v2

    .line 433
    .local v2, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmpl-double v0, v4, v10

    if-gtz v0, :cond_20

    .line 434
    const-string v0, "BatteryStatsDBHelper"

    const-string v3, "abusiveDetectionFromHCamp:: no total power"

    invoke-static {v0, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_35
    .catchall {:try_start_1 .. :try_end_1e} :catchall_53

    .line 444
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v6    # "time":J
    :goto_1e
    monitor-exit p0

    return-void

    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .restart local v6    # "time":J
    :cond_20
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 437
    :try_start_24
    invoke-virtual/range {v0 .. v7}, checkPowerAbuseLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 439
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "sec.intent.action.BATTERY_ABUSE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v9, "i":Landroid/content/Intent;
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_35
    .catchall {:try_start_24 .. :try_end_34} :catchall_53

    goto :goto_1e

    .line 441
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v6    # "time":J
    .end local v9    # "i":Landroid/content/Intent;
    :catch_35
    move-exception v8

    .line 442
    .local v8, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v0, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abusiveDetectionFromHCamp exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_53

    goto :goto_1e

    .line 429
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abusiveDetectionFromHCamp(Ljava/util/List;Ljava/lang/String;)V
    .registers 21
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 404
    .local v8, "time":J
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 406
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9}, collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v4

    .line 407
    .local v4, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v2, v14, v16

    if-gtz v2, :cond_22

    .line 408
    const-string v2, "BatteryStatsDBHelper"

    const-string v6, "abusiveDetectionFromHCamp:: no total power"

    invoke-static {v2, v6}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_75
    .catchall {:try_start_1 .. :try_end_20} :catchall_93

    .line 425
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v8    # "time":J
    :goto_20
    monitor-exit p0

    return-void

    .line 411
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .restart local v8    # "time":J
    :cond_22
    :try_start_22
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 412
    .local v12, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_27
    if-ge v11, v12, :cond_67

    .line 413
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 414
    .local v7, "meta":Ljava/lang/String;
    const/4 v5, 0x0

    .line 415
    .local v5, "packageName":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v5, v2, v6

    .line 416
    const-string v2, "BatteryStatsDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "abusiveDetectionFromHCamp:: packageName:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " meta:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    .line 417
    invoke-virtual/range {v2 .. v9}, checkPowerAbuseLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 412
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    .line 420
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "meta":Ljava/lang/String;
    :cond_67
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "i":I
    const-string/jumbo v2, "sec.intent.action.BATTERY_ABUSE"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v11, "i":Landroid/content/Intent;
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_74} :catch_75
    .catchall {:try_start_22 .. :try_end_74} :catchall_93

    goto :goto_20

    .line 422
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .end local v8    # "time":J
    .end local v11    # "i":Landroid/content/Intent;
    .end local v12    # "size":I
    :catch_75
    move-exception v10

    .line 423
    .local v10, "e":Ljava/lang/Exception;
    :try_start_76
    const-string v2, "BatteryStatsDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "abusiveDetectionFromHCamp exception : "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_76 .. :try_end_92} :catchall_93

    goto :goto_20

    .line 403
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_93
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized addStatsToDB(ZZJLjava/util/ArrayList;IIDI)V
    .registers 48
    .param p1, "writeForScreenChange"    # Z
    .param p2, "screenOn"    # Z
    .param p3, "time"    # J
    .param p6, "batteryDelta"    # I
    .param p7, "currentBatteryPercent"    # I
    .param p8, "curTotalPower"    # D
    .param p10, "dischargeLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsDumper$PowerObject;",
            ">;IIDI)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p5, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    monitor-enter p0

    if-eqz p1, :cond_171

    if-nez p2, :cond_16d

    const/16 v25, 0x1

    .line 306
    .local v25, "screenCondition":Z
    :goto_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 307
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1a0

    .line 309
    if-eqz v25, :cond_175

    const/16 v21, 0x4

    .line 313
    .local v21, "lcdCondition":I
    :goto_12
    :try_start_12
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    .line 314
    .local v17, "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 317
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->powerUid:D

    move-wide/from16 v32, v0

    .line 319
    .local v32, "totalPower":D
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->networkUsage:J

    move-wide/from16 v26, v0

    .line 320
    .local v26, "networkUsage":J
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->usageTime:J

    move-wide/from16 v34, v0

    .line 321
    .local v34, "uidUsageTime":J
    move/from16 v18, v21

    .line 323
    .local v18, "finalLcdCondition":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    move-result-object v20

    .line 324
    .local v20, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    if-eqz v20, :cond_1a3

    .line 325
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->totalPower:D
    invoke-static/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$200(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D

    move-result-wide v22

    .line 326
    .local v22, "lastPower":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : lastpower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sub-double v14, v32, v22

    .line 328
    .local v14, "diff":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-ltz v2, :cond_17d

    .line 329
    move-wide/from16 v30, v14

    .line 330
    .local v30, "power":D
    const-string v3, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[diff] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v25, :cond_179

    const-string v2, " on"

    :goto_a9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_b4
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->networkUsage:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$300(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)J

    move-result-wide v2

    sub-long v28, v26, v2

    .line 337
    .local v28, "networkUseDiff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v28, v2

    if-eqz v2, :cond_c2

    .line 338
    or-int/lit8 v18, v18, 0x20

    .line 348
    .end local v14    # "diff":D
    .end local v22    # "lastPower":D
    .end local v28    # "networkUseDiff":J
    :cond_c2
    :goto_c2
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->isSystem:Z

    if-eqz v2, :cond_ca

    .line 349
    or-int/lit8 v18, v18, 0x10

    .line 352
    :cond_ca
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 353
    .local v36, "values":Landroid/content/ContentValues;
    const-string v2, "lcd_condition"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string/jumbo v2, "time"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 355
    const-string/jumbo v2, "power"

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 356
    const-string/jumbo v2, "totalpower"

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 357
    const-string/jumbo v2, "network_usage"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    const-string/jumbo v2, "usage_time"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    const-string/jumbo v2, "wakeup_count"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wakeUpCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v8, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_149
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_149} :catch_14b
    .catchall {:try_start_12 .. :try_end_149} :catchall_19b

    goto/16 :goto_16

    .line 392
    .end local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v18    # "finalLcdCondition":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v26    # "networkUsage":J
    .end local v30    # "power":D
    .end local v32    # "totalPower":D
    .end local v34    # "uidUsageTime":J
    .end local v36    # "values":Landroid/content/ContentValues;
    :catch_14b
    move-exception v16

    .line 393
    .local v16, "e":Ljava/lang/IllegalStateException;
    :try_start_14c
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStatsToDB IllegalStateException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_168
    .catchall {:try_start_14c .. :try_end_168} :catchall_19b

    .line 396
    :try_start_168
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_1a0

    .line 398
    .end local v16    # "e":Ljava/lang/IllegalStateException;
    :goto_16b
    monitor-exit p0

    return-void

    .line 305
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v21    # "lcdCondition":I
    .end local v25    # "screenCondition":Z
    :cond_16d
    const/16 v25, 0x0

    goto/16 :goto_7

    :cond_171
    move/from16 v25, p2

    goto/16 :goto_7

    .line 309
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v25    # "screenCondition":Z
    :cond_175
    const/16 v21, 0x8

    goto/16 :goto_12

    .line 330
    .restart local v14    # "diff":D
    .restart local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v18    # "finalLcdCondition":I
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v21    # "lcdCondition":I
    .restart local v22    # "lastPower":D
    .restart local v26    # "networkUsage":J
    .restart local v30    # "power":D
    .restart local v32    # "totalPower":D
    .restart local v34    # "uidUsageTime":J
    :cond_179
    :try_start_179
    const-string v2, " off"

    goto/16 :goto_a9

    .line 333
    .end local v30    # "power":D
    :cond_17d
    const-wide/16 v30, 0x0

    .line 334
    .restart local v30    # "power":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[strange] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_199
    .catch Ljava/lang/IllegalStateException; {:try_start_179 .. :try_end_199} :catch_14b
    .catchall {:try_start_179 .. :try_end_199} :catchall_19b

    goto/16 :goto_b4

    .line 396
    .end local v14    # "diff":D
    .end local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v18    # "finalLcdCondition":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v22    # "lastPower":D
    .end local v26    # "networkUsage":J
    .end local v30    # "power":D
    .end local v32    # "totalPower":D
    .end local v34    # "uidUsageTime":J
    :catchall_19b
    move-exception v2

    :try_start_19c
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_1a0
    .catchall {:try_start_19c .. :try_end_1a0} :catchall_1a0

    .line 305
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v21    # "lcdCondition":I
    :catchall_1a0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 341
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v18    # "finalLcdCondition":I
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v21    # "lcdCondition":I
    .restart local v26    # "networkUsage":J
    .restart local v32    # "totalPower":D
    .restart local v34    # "uidUsageTime":J
    :cond_1a3
    const-wide/16 v30, 0x0

    .line 342
    .restart local v30    # "power":D
    const-wide/16 v2, 0x0

    cmp-long v2, v26, v2

    if-eqz v2, :cond_1ad

    .line 343
    or-int/lit8 v18, v18, 0x20

    .line 345
    :cond_1ad
    :try_start_1ad
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[noLastSipper] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    .line 363
    .end local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v18    # "finalLcdCondition":I
    .end local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v26    # "networkUsage":J
    .end local v30    # "power":D
    .end local v32    # "totalPower":D
    .end local v34    # "uidUsageTime":J
    :cond_1c9
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "Writing for db : Total = all"

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, getLastTotalEntry(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    move-result-object v24

    .line 365
    .local v24, "mLastEntry":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    const-wide/16 v30, 0x0

    .line 366
    .restart local v30    # "power":D
    const/4 v13, 0x0

    .line 367
    .local v13, "delta":I
    if-eqz v24, :cond_1f2

    .line 368
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->totalPower:D
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->access$400(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)D

    move-result-wide v2

    sub-double v30, p8, v2

    .line 369
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->batteryLevel:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->access$500(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)I

    move-result v2

    sub-int v13, p10, v2

    .line 371
    const-wide/16 v2, 0x0

    cmpg-double v2, v30, v2

    if-gez v2, :cond_1ef

    .line 372
    const-wide/16 v30, 0x0

    .line 374
    :cond_1ef
    if-gez v13, :cond_1f2

    .line 375
    const/4 v13, 0x0

    .line 378
    :cond_1f2
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 379
    .restart local v36    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "time"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 380
    const-string/jumbo v2, "power"

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 381
    const-string/jumbo v2, "totalpower"

    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 382
    const-string v2, "batterydelta"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const-string v2, "batterypercent"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v2, "[all]"

    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v8, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 385
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    .line 387
    invoke-direct/range {v2 .. v8}, addBatteryDelta(ZJIILandroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v7, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p8

    .line 388
    invoke-direct/range {v7 .. v12}, checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;JD)V

    .line 390
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26c
    .catch Ljava/lang/IllegalStateException; {:try_start_1ad .. :try_end_26c} :catch_14b
    .catchall {:try_start_1ad .. :try_end_26c} :catchall_19b

    .line 396
    :try_start_26c
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_26f
    .catchall {:try_start_26c .. :try_end_26f} :catchall_1a0

    goto/16 :goto_16b
.end method

.method checkPowerAbuseLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 30
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "totalTableDataSet"    # Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "metaData"    # Ljava/lang/String;
    .param p6, "curTime"    # J

    .prologue
    .line 449
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPowerAbuse called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :try_start_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "time"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "lcd_condition"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "power"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 456
    .local v11, "cursor":Landroid/database/Cursor;
    const-string v2, "lcd_condition"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 457
    .local v15, "lcdColumn":I
    const-string/jumbo v2, "time"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 458
    .local v19, "timeColumn":I
    const-string/jumbo v2, "power"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 460
    .local v18, "powerColumn":I
    const-wide/16 v16, 0x0

    .line 461
    .local v16, "lcdOffPowerInLastHour":D
    :goto_6a
    invoke-interface {v11}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_bd

    .line 462
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 463
    .local v20, "thisTime":J
    sub-long v2, p6, v20

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_bd

    .line 464
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 465
    .local v12, "curPower":D
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_ba

    .end local v12    # "curPower":D
    :goto_8f
    add-double v16, v16, v12

    .line 470
    invoke-interface {v11}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_94} :catch_95

    goto :goto_6a

    .line 498
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "lcdColumn":I
    .end local v16    # "lcdOffPowerInLastHour":D
    .end local v18    # "powerColumn":I
    .end local v19    # "timeColumn":I
    .end local v20    # "thisTime":J
    :catch_95
    move-exception v14

    .line 499
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPowerAbuse SQLiteException exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_b2
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "checkPowerAbuse finished"

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :goto_b9
    return-void

    .line 465
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "curPower":D
    .restart local v15    # "lcdColumn":I
    .restart local v16    # "lcdOffPowerInLastHour":D
    .restart local v18    # "powerColumn":I
    .restart local v19    # "timeColumn":I
    .restart local v20    # "thisTime":J
    :cond_ba
    const-wide/16 v12, 0x0

    goto :goto_8f

    .line 473
    .end local v12    # "curPower":D
    .end local v20    # "thisTime":J
    :cond_bd
    :try_start_bd
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 475
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v2

    div-double v2, v16, v2

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v4

    int-to-double v4, v4

    mul-double v9, v2, v4

    .line 477
    .local v9, "percentage":D
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v9, v2

    if-lez v2, :cond_e2

    .line 478
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "Strange!!. Percentage is greater than battery delta"

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v2

    int-to-double v9, v2

    .line 482
    :cond_e2
    const-string/jumbo v2, "wakelock"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f7

    const-string v2, "gps"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 483
    :cond_f7
    move-object/from16 v0, p0

    iget-wide v2, v0, ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    cmpg-double v2, v9, v2

    if-gez v2, :cond_14d

    .line 484
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "percentage i.e. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is less than ONE_HOUR_THRESHOLD for healing camp i.e. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    .line 487
    :cond_127
    const-string v2, "ble"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 488
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting percentage to 1 as type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 492
    :cond_14d
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has consumed more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% battery in last 1 hour when LCD was off and found abusive by Hcamp type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " meta:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "total power in lastonehour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "percentage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p6

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 497
    invoke-direct/range {v2 .. v10}, addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_1ae} :catch_95

    goto/16 :goto_b2
.end method

.method public declared-synchronized deleteRecordsExceptLatest(I)V
    .registers 11
    .param p1, "maxNumOfItems"    # I

    .prologue
    .line 1732
    monitor-enter p0

    if-nez p1, :cond_27

    .line 1733
    :try_start_3
    invoke-virtual {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1734
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    .line 1736
    const/4 v7, 0x7

    const/4 v8, 0x7

    :try_start_c
    invoke-virtual {p0, v2, v7, v8}, onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1737
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_17
    .catchall {:try_start_c .. :try_end_12} :catchall_22

    .line 1741
    :try_start_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f

    .line 1786
    :goto_15
    monitor-exit p0

    return-void

    .line 1738
    :catch_17
    move-exception v3

    .line 1739
    .local v3, "e":Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_22

    .line 1741
    :try_start_1b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_15

    .line 1732
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1f
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1741
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_22
    move-exception v7

    :try_start_23
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1746
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_27
    invoke-virtual {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1747
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1749
    .local v5, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_1f

    .line 1751
    .local v0, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1753
    .local v1, "c":Landroid/database/Cursor;
    :try_start_33
    const-string v7, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1754
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 1755
    :goto_40
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_8c

    .line 1756
    const-string/jumbo v7, "name"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1757
    .local v6, "tableName":Ljava/lang/String;
    if-eqz v6, :cond_5c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5c

    .line 1758
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    :cond_5c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5f} :catch_60
    .catchall {:try_start_33 .. :try_end_5f} :catchall_92

    goto :goto_40

    .line 1763
    .end local v6    # "tableName":Ljava/lang/String;
    :catch_60
    move-exception v3

    .line 1764
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_61
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_92

    .line 1766
    if-eqz v1, :cond_69

    .line 1767
    :try_start_66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1772
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_69
    :goto_69
    invoke-virtual {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1773
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_1f

    .line 1775
    :try_start_70
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_99

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1776
    .restart local v6    # "tableName":Ljava/lang/String;
    invoke-direct {p0, v2, v6, p1}, deleteRecordsExceptLatest(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_83} :catch_84
    .catchall {:try_start_70 .. :try_end_83} :catchall_a1

    goto :goto_74

    .line 1780
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "tableName":Ljava/lang/String;
    :catch_84
    move-exception v3

    .line 1781
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_85
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_a1

    .line 1784
    :try_start_88
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_15

    .line 1766
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8c
    if-eqz v1, :cond_69

    .line 1767
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_69

    .line 1766
    :catchall_92
    move-exception v7

    if-eqz v1, :cond_98

    .line 1767
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_98
    throw v7
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_1f

    .line 1778
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_99
    :try_start_99
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_84
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a1

    .line 1784
    :try_start_9c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_15

    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_a1
    move-exception v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
    :try_end_a6
    .catchall {:try_start_9c .. :try_end_a6} :catchall_1f
.end method

.method declared-synchronized deleteTableForApp(Ljava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 937
    monitor-enter p0

    :try_start_1
    const-string v1, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting table for application:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-virtual {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 939
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "packageName"

    aput-object v3, v2, v1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_a1

    .local v2, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 940
    .local v10, "requestingColumn":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 942
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 943
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v3, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 945
    if-eqz v8, :cond_76

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_76

    .line 946
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v11, v1
    :try_end_65
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_65} :catch_7e
    .catchall {:try_start_28 .. :try_end_65} :catchall_a4

    .line 947
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .local v11, "requestingColumn":[Ljava/lang/String;
    :try_start_65
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v3, "packageName = ?"

    invoke-virtual {v0, v1, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catch Landroid/database/SQLException; {:try_start_65 .. :try_end_6e} :catch_ae
    .catchall {:try_start_65 .. :try_end_6e} :catchall_ab

    move-object v10, v11

    .line 954
    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    :goto_6f
    if-eqz v8, :cond_74

    .line 955
    :try_start_71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_a1

    .line 959
    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    .line 949
    :cond_76
    :try_start_76
    const-string v1, "BatteryStatsDBHelper"

    const-string v3, "Package not found in the table power_consuming_packages"

    invoke-static {v1, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Landroid/database/SQLException; {:try_start_76 .. :try_end_7d} :catch_7e
    .catchall {:try_start_76 .. :try_end_7d} :catchall_a4

    goto :goto_6f

    .line 951
    :catch_7e
    move-exception v9

    .line 952
    .local v9, "e":Landroid/database/SQLException;
    :goto_7f
    :try_start_7f
    const-string v1, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " deleteTableForApp SQLException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_7f .. :try_end_9b} :catchall_a4

    .line 954
    if-eqz v8, :cond_74

    .line 955
    :try_start_9d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_74

    .line 937
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    :catchall_a1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 954
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    :catchall_a4
    move-exception v1

    :goto_a5
    if-eqz v8, :cond_aa

    .line 955
    :try_start_a7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_aa
    throw v1
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_a1

    .line 954
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .restart local v11    # "requestingColumn":[Ljava/lang/String;
    :catchall_ab
    move-exception v1

    move-object v10, v11

    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    goto :goto_a5

    .line 951
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .restart local v11    # "requestingColumn":[Ljava/lang/String;
    :catch_ae
    move-exception v9

    move-object v10, v11

    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    goto :goto_7f
.end method

.method public declared-synchronized dumpConsumingAppDetails(Ljava/io/PrintWriter;)V
    .registers 28
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1637
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1638
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1639
    .local v21, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v5, "power_consuming_packages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1641
    .local v13, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    new-array v12, v5, [Ljava/lang/String;

    .line 1642
    .local v12, "abuserList":[Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 1643
    const-string/jumbo v5, "time"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1644
    .local v24, "timeColumn":I
    const-string/jumbo v5, "packageName"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1645
    .local v17, "packageColumn":I
    const-string/jumbo v5, "percentage"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1646
    .local v18, "percentageColumn":I
    const-string/jumbo v5, "notified_time"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1648
    .local v16, "notifiedTimeColumn":I
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v12, v5, [Ljava/lang/String;

    .line 1649
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1650
    .local v20, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 1652
    .local v14, "index":I
    const-string v5, "Abusive app list:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v15, v14

    .line 1653
    .end local v14    # "index":I
    .local v15, "index":I
    :goto_55
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_d1

    .line 1654
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1655
    const-string v5, "Package name: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1657
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    const-string v5, " consumed "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1660
    const-string v5, " was found abusive at: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    const-string v5, " and last notified at: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 1666
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    aput-object v19, v12, v15

    move v15, v14

    .line 1667
    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_55

    .line 1669
    .end local v15    # "index":I
    .end local v16    # "notifiedTimeColumn":I
    .end local v17    # "packageColumn":I
    .end local v18    # "percentageColumn":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v24    # "timeColumn":I
    :cond_d1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1670
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1673
    .local v22, "time":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v4, v1, v2}, collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v25

    .line 1674
    .local v25, "totalData":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oneHourPower: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAh, oneDayPower: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneDay:D
    invoke-static/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$1100(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAh, oneHourBatteryDelta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%, oneDayBatteryDelta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneDay:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$1200(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "One Hour Threshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, ONE_HOUR_THRESHOLD:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "One Hour Threshold for Healing Camp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1685
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, dumpConsumingAppDetails(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_175
    .catchall {:try_start_1 .. :try_end_175} :catchall_177

    .line 1686
    monitor-exit p0

    return-void

    .line 1637
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "abuserList":[Ljava/lang/String;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v21    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v22    # "time":J
    .end local v25    # "totalData":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    :catchall_177
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized dumpConsumingAppDetails(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 40
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "abuserList"    # [Ljava/lang/String;

    .prologue
    .line 1689
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1690
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v24, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v10, p2

    .local v10, "arr$":[Ljava/lang/String;
    array-length v15, v10

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_13
    if-ge v12, v15, :cond_11e

    aget-object v16, v10, v12

    .line 1692
    .local v16, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1694
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 1695
    const-string v3, "lcd_condition"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1696
    .local v13, "lcdColumn":I
    const-string/jumbo v3, "time"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1697
    .local v28, "timeColumn":I
    const-string/jumbo v3, "power"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1698
    .local v22, "powerColumn":I
    const-string/jumbo v3, "totalpower"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1699
    .local v29, "totalPowerColumn":I
    const-string/jumbo v3, "network_usage"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1700
    .local v17, "networkColumn":I
    const-string/jumbo v3, "usage_time"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 1701
    .local v32, "usageColumn":I
    const-string/jumbo v3, "wakeup_count"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 1703
    .local v33, "wakeUpColumn":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    const-string v3, "lcd |        time        |    power    |   totalpower |    network    |    usage_time |    wakeUpCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    :goto_93
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_114

    .line 1707
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1708
    .local v14, "lcdCondition":I
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 1709
    .local v20, "power":D
    and-int/lit8 v3, v14, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_111

    const-string v25, "OFF"

    .line 1710
    .local v25, "strLcdCond":Ljava/lang/String;
    :goto_ab
    move/from16 v0, v28

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1711
    .local v26, "time":J
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 1712
    .local v23, "resultTime":Ljava/lang/String;
    move/from16 v0, v29

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v30

    .line 1713
    .local v30, "totalPower":D
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1714
    .local v18, "networkUsage":J
    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 1715
    .local v34, "usageTime":J
    move/from16 v0, v33

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1717
    .local v36, "wakeUpCount":I
    const-string v3, "%s | %s | %11.5f | %11.5f | %13d | %13d | %10d"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v25, v4, v5

    const/4 v5, 0x1

    aput-object v23, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_10d
    .catchall {:try_start_1 .. :try_end_10d} :catchall_10e

    goto :goto_93

    .line 1689
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "i$":I
    .end local v13    # "lcdColumn":I
    .end local v14    # "lcdCondition":I
    .end local v15    # "len$":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "networkColumn":I
    .end local v18    # "networkUsage":J
    .end local v20    # "power":D
    .end local v22    # "powerColumn":I
    .end local v23    # "resultTime":Ljava/lang/String;
    .end local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v25    # "strLcdCond":Ljava/lang/String;
    .end local v26    # "time":J
    .end local v28    # "timeColumn":I
    .end local v29    # "totalPowerColumn":I
    .end local v30    # "totalPower":D
    .end local v32    # "usageColumn":I
    .end local v33    # "wakeUpColumn":I
    .end local v34    # "usageTime":J
    .end local v36    # "wakeUpCount":I
    :catchall_10e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1709
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "i$":I
    .restart local v13    # "lcdColumn":I
    .restart local v14    # "lcdCondition":I
    .restart local v15    # "len$":I
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "networkColumn":I
    .restart local v20    # "power":D
    .restart local v22    # "powerColumn":I
    .restart local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "timeColumn":I
    .restart local v29    # "totalPowerColumn":I
    .restart local v32    # "usageColumn":I
    .restart local v33    # "wakeUpColumn":I
    :cond_111
    :try_start_111
    const-string v25, "ON"

    goto :goto_ab

    .line 1723
    .end local v13    # "lcdColumn":I
    .end local v14    # "lcdCondition":I
    .end local v17    # "networkColumn":I
    .end local v20    # "power":D
    .end local v22    # "powerColumn":I
    .end local v28    # "timeColumn":I
    .end local v29    # "totalPowerColumn":I
    .end local v32    # "usageColumn":I
    .end local v33    # "wakeUpColumn":I
    :cond_114
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1724
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_10e

    .line 1691
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_13

    .line 1727
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v16    # "name":Ljava/lang/String;
    :cond_11e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dumpUsageList(JZLjava/io/PrintWriter;)V
    .registers 32
    .param p1, "duration"    # J
    .param p3, "needOffList"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1562
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1564
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v22, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1565
    .local v4, "c":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 1566
    .local v2, "allUidTotalPower":D
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_122

    .line 1567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1568
    .local v6, "curTime":J
    invoke-direct/range {p0 .. p0}, getAppUsageStats()Ljava/util/Set;

    move-result-object v9

    .line 1569
    .local v9, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_21
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v22

    if-nez v22, :cond_fe

    .line 1570
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1572
    .local v19, "val":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SELECT lcd_condition,time,power FROM["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1573
    .local v15, "selectQuery":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v8, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1574
    .local v5, "cursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1576
    const-string v22, "lcd_condition"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1577
    .local v10, "lcdColumn":I
    const-string/jumbo v22, "time"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1578
    .local v18, "timeColumn":I
    const-string/jumbo v22, "power"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1581
    .local v14, "powerColumn":I
    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1582
    .local v16, "time":J
    const-wide/16 v20, 0x0

    .local v20, "totalPower":D
    const-wide/16 v12, 0x0

    .line 1583
    .local v12, "power":D
    const/4 v11, 0x0

    .line 1584
    .local v11, "lcdNtype":I
    sub-long v22, v6, v16

    const-wide/32 v24, 0x5265c00

    cmp-long v22, v22, v24

    if-ltz v22, :cond_8f

    .line 1585
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 1588
    :cond_8f
    :goto_8f
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v22

    if-nez v22, :cond_c5

    .line 1589
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1590
    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1591
    sub-long v22, v6, v16

    cmp-long v22, v22, p1

    if-gez v22, :cond_ad

    .line 1592
    if-nez p3, :cond_b4

    .line 1593
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 1594
    add-double v20, v20, v12

    .line 1601
    :cond_ad
    :goto_ad
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b0
    .catchall {:try_start_1 .. :try_end_b0} :catchall_b1

    goto :goto_8f

    .line 1562
    .end local v2    # "allUidTotalPower":D
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v6    # "curTime":J
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "lcdColumn":I
    .end local v11    # "lcdNtype":I
    .end local v12    # "power":D
    .end local v14    # "powerColumn":I
    .end local v15    # "selectQuery":Ljava/lang/String;
    .end local v16    # "time":J
    .end local v18    # "timeColumn":I
    .end local v19    # "val":Ljava/lang/String;
    .end local v20    # "totalPower":D
    :catchall_b1
    move-exception v22

    monitor-exit p0

    throw v22

    .line 1596
    .restart local v2    # "allUidTotalPower":D
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "curTime":J
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "lcdColumn":I
    .restart local v11    # "lcdNtype":I
    .restart local v12    # "power":D
    .restart local v14    # "powerColumn":I
    .restart local v15    # "selectQuery":Ljava/lang/String;
    .restart local v16    # "time":J
    .restart local v18    # "timeColumn":I
    .restart local v19    # "val":Ljava/lang/String;
    .restart local v20    # "totalPower":D
    :cond_b4
    and-int/lit8 v22, v11, 0x8

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_ad

    .line 1597
    :try_start_be
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 1598
    add-double v20, v20, v12

    goto :goto_ad

    .line 1604
    :cond_c5
    const-wide v22, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v22, v20, v22

    if-lez v22, :cond_f4

    .line 1605
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v20 .. v21}, makemAh(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    :cond_f4
    add-double v2, v2, v20

    .line 1609
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1610
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_21

    .line 1612
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v10    # "lcdColumn":I
    .end local v11    # "lcdNtype":I
    .end local v12    # "power":D
    .end local v14    # "powerColumn":I
    .end local v15    # "selectQuery":Ljava/lang/String;
    .end local v16    # "time":J
    .end local v18    # "timeColumn":I
    .end local v19    # "val":Ljava/lang/String;
    .end local v20    # "totalPower":D
    :cond_fe
    const-wide/16 v22, 0x0

    cmpg-double v22, v2, v22

    if-gtz v22, :cond_106

    .line 1613
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1615
    :cond_106
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Total power: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    .end local v6    # "curTime":J
    .end local v9    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_122
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_125
    .catchall {:try_start_be .. :try_end_125} :catchall_b1

    .line 1619
    monitor-exit p0

    return-void
.end method

.method public dumpUsageList(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x1

    .line 1623
    const-string v0, "3 Hours batterystats in screen off:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    const-wide/32 v0, 0xa4cb80

    invoke-virtual {p0, v0, v1, v2, p1}, dumpUsageList(JZLjava/io/PrintWriter;)V

    .line 1627
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1629
    const-string v0, "24 Hours batterystats in screen off:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1, v2, p1}, dumpUsageList(JZLjava/io/PrintWriter;)V

    .line 1632
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1634
    return-void
.end method

.method public declared-synchronized getAbusiveAppList()[Ljava/lang/String;
    .registers 15

    .prologue
    .line 1439
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1440
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "power_consuming_packages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "packageName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "percentage"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1443
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_71

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1444
    const-string/jumbo v1, "packageName"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1445
    .local v12, "packageColumn":I
    const-string/jumbo v1, "percentage"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1446
    .local v13, "percentageColumn":I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .line 1447
    .local v8, "abuserList":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "index":I
    move v11, v10

    .line 1448
    .end local v10    # "index":I
    .local v11, "index":I
    :goto_3e
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 1449
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v11

    .line 1451
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move v11, v10

    .end local v10    # "index":I
    .restart local v11    # "index":I
    goto :goto_3e

    .line 1453
    :cond_6c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_78

    .line 1457
    .end local v8    # "abuserList":[Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "packageColumn":I
    .end local v13    # "percentageColumn":I
    :goto_6f
    monitor-exit p0

    return-object v8

    .line 1456
    :cond_71
    :try_start_71
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1457
    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/String;
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_78

    goto :goto_6f

    .line 1439
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_78
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getAverageLevelDropPerHour(Ljava/lang/String;)D
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 881
    monitor-enter p0

    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SELECT usage_time,power FROM["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 883
    .local v16, "selectQuery":Ljava/lang/String;
    const-string v20, "BatteryStatsDBHelper"

    const-string v21, "getAverageLevelDropPerHour:: start"

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour:: for package:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 887
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 888
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v20, "usage_time"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 889
    .local v17, "usageTimeColumn":I
    const-string/jumbo v20, "power"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 891
    .local v11, "powerColumn":I
    const-wide/16 v6, 0x0

    .line 892
    .local v6, "appUsageTime":J
    const-wide/16 v14, 0x0

    .line 893
    .local v14, "power":D
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v20

    if-eqz v20, :cond_156

    .line 894
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 895
    .local v4, "appTotalTime":J
    move-wide v6, v4

    .line 896
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour:: start loop appTotalTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    .line 898
    :goto_90
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v20

    if-eqz v20, :cond_156

    .line 899
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 900
    .local v18, "tempTime":J
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop tempTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop before appTotalTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop before appUsageTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    cmp-long v20, v18, v4

    if-lez v20, :cond_f2

    .line 907
    add-long v6, v6, v18

    .line 909
    :cond_f2
    move-wide/from16 v4, v18

    .line 910
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop after appUsageTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop after appTotalTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    add-double v14, v14, v20

    .line 915
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop after power:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_148} :catch_14a
    .catchall {:try_start_1 .. :try_end_148} :catchall_1f8

    goto/16 :goto_90

    .line 930
    .end local v4    # "appTotalTime":J
    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "powerColumn":I
    .end local v14    # "power":D
    .end local v16    # "selectQuery":Ljava/lang/String;
    .end local v17    # "usageTimeColumn":I
    .end local v18    # "tempTime":J
    :catch_14a
    move-exception v10

    .line 931
    .local v10, "e":Ljava/lang/Exception;
    :try_start_14b
    const-string v20, "BatteryStatsDBHelper"

    const-string v21, "getAverageLevelDropPerHour::  Exception"

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_152
    .catchall {:try_start_14b .. :try_end_152} :catchall_1f8

    .line 932
    const-wide/16 v12, 0x0

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_154
    monitor-exit p0

    return-wide v12

    .line 918
    .restart local v6    # "appUsageTime":J
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "powerColumn":I
    .restart local v14    # "power":D
    .restart local v16    # "selectQuery":Ljava/lang/String;
    .restart local v17    # "usageTimeColumn":I
    :cond_156
    :try_start_156
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 920
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AverageLevelDropCalculation : Package = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Power = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Usage Time = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_19b

    .line 923
    const-wide/16 v6, 0x1

    .line 925
    :cond_19b
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " getAverageLevelDropPerHour sBatteryCapacity : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-wide v22, sBatteryCapacity:D

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "appUsageTime : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v14

    const-wide v22, 0x40ac200000000000L    # 3600.0

    mul-double v20, v20, v22

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    long-to-double v0, v6

    move-wide/from16 v22, v0

    sget-wide v24, sBatteryCapacity:D

    mul-double v22, v22, v24

    div-double v12, v20, v22

    .line 928
    .local v12, "i":D
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  returning i:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_1f6} :catch_14a
    .catchall {:try_start_156 .. :try_end_1f6} :catchall_1f8

    goto/16 :goto_154

    .line 881
    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "powerColumn":I
    .end local v12    # "i":D
    .end local v14    # "power":D
    .end local v16    # "selectQuery":Ljava/lang/String;
    .end local v17    # "usageTimeColumn":I
    :catchall_1f8
    move-exception v20

    monitor-exit p0

    throw v20
.end method

.method public declared-synchronized getBatteryTotalDelta(I)I
    .registers 9
    .param p1, "screenCondition"    # I

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1023
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT batterydelta,lcd_condition FROM Battery_Delta"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1025
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v5, "batterydelta"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1026
    .local v0, "batteryDeltaColumn":I
    const-string v5, "lcd_condition"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1028
    .local v3, "lcdColumn":I
    const/4 v4, 0x0

    .line 1030
    .local v4, "totalDelta":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1032
    :cond_1f
    const/4 v5, 0x2

    if-ne p1, v5, :cond_32

    .line 1033
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1037
    :cond_27
    :goto_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1039
    :cond_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_40

    .line 1041
    monitor-exit p0

    return v4

    .line 1034
    :cond_32
    :try_start_32
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_27

    .line 1035
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_40

    move-result v5

    add-int/2addr v4, v5

    goto :goto_27

    .line 1022
    .end local v0    # "batteryDeltaColumn":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "lcdColumn":I
    .end local v4    # "totalDelta":I
    :catchall_40
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getUsageList(I)[B
    .registers 6
    .param p1, "screenCondition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1045
    sparse-switch p1, :sswitch_data_62

    .line 1068
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong screen condition. Please check BatteryStatsDBHandler.java"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :sswitch_d
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0, v2}, getScreenOffUsageList(Z)[B

    move-result-object v0

    .line 1066
    :goto_18
    return-object v0

    .line 1050
    :sswitch_19
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-direct {p0, v3}, getScreenOffUsageList(Z)[B

    move-result-object v0

    goto :goto_18

    .line 1053
    :sswitch_25
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app)"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-direct {p0, v2}, getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_18

    .line 1056
    :sswitch_31
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data(only app)"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-direct {p0, v3}, getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_18

    .line 1059
    :sswitch_3d
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting summation of lcd all data(only app)"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-direct {p0}, getTotalUsageList()[B

    move-result-object v0

    goto :goto_18

    .line 1062
    :sswitch_49
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting battery percentage data"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-direct {p0}, getBatteryPercentageList()[B

    move-result-object v0

    goto :goto_18

    .line 1065
    :sswitch_55
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app) with power consumer list"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0}, getConsumerListOnlyApp()[B

    move-result-object v0

    goto :goto_18

    .line 1045
    nop

    :sswitch_data_62
    .sparse-switch
        0x2 -> :sswitch_d
        0x4 -> :sswitch_19
        0x8 -> :sswitch_25
        0x10 -> :sswitch_31
        0x20 -> :sswitch_3d
        0x40 -> :sswitch_49
        0x80 -> :sswitch_55
    .end sparse-switch
.end method

.method public declared-synchronized handleTimeChange()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 1461
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, calculateTimeChange()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_45

    move-result-wide v2

    .line 1462
    .local v2, "delta":J
    cmp-long v8, v2, v10

    if-nez v8, :cond_d

    .line 1512
    :goto_b
    monitor-exit p0

    return-void

    .line 1466
    :cond_d
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v2, v8

    if-ltz v8, :cond_55

    .line 1468
    :try_start_14
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time delta is too big "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " init db"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1470
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_45

    .line 1472
    const/4 v8, 0x7

    const/4 v9, 0x7

    :try_start_3b
    invoke-virtual {p0, v0, v8, v9}, onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1473
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_48
    .catchall {:try_start_3b .. :try_end_41} :catchall_50

    .line 1477
    :try_start_41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_b

    .line 1461
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "delta":J
    :catchall_45
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1474
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "delta":J
    :catch_48
    move-exception v4

    .line 1475
    .local v4, "e":Ljava/lang/Exception;
    :try_start_49
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_50

    .line 1477
    :try_start_4c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_b

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_50
    move-exception v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 1482
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_55
    cmp-long v8, v2, v10

    if-lez v8, :cond_e3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, "deltaStr":Ljava/lang/String;
    :goto_6c
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time diff = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-virtual {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1485
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8b
    .catchall {:try_start_4c .. :try_end_8b} :catchall_45

    .line 1487
    :try_start_8b
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\'"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1488
    .local v5, "listCursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_e8

    .line 1489
    :goto_98
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_e8

    .line 1490
    const-string/jumbo v8, "name"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1491
    .local v6, "packageName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1493
    .local v7, "updateString":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1494
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_d2} :catch_d3
    .catchall {:try_start_8b .. :try_end_d2} :catchall_128

    goto :goto_98

    .line 1505
    .end local v5    # "listCursor":Landroid/database/Cursor;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "updateString":Ljava/lang/String;
    :catch_d3
    move-exception v4

    .line 1506
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_d4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_128

    .line 1509
    :try_start_d7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1511
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_da
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "Updated db with new timestamps"

    invoke-static {v8, v9}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1482
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "deltaStr":Ljava/lang/String;
    :cond_e3
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_e6
    .catchall {:try_start_d7 .. :try_end_e6} :catchall_45

    move-result-object v1

    goto :goto_6c

    .line 1497
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "deltaStr":Ljava/lang/String;
    .restart local v5    # "listCursor":Landroid/database/Cursor;
    :cond_e8
    :try_start_e8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE Battery_Delta SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1499
    .restart local v7    # "updateString":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1500
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE power_consuming_packages SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notified_time=notified_time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1502
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_124} :catch_d3
    .catchall {:try_start_e8 .. :try_end_124} :catchall_128

    .line 1509
    :try_start_124
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_da

    .end local v5    # "listCursor":Landroid/database/Cursor;
    .end local v7    # "updateString":Ljava/lang/String;
    :catchall_128
    move-exception v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
    :try_end_12d
    .catchall {:try_start_124 .. :try_end_12d} :catchall_45
.end method

.method declared-synchronized modifyHealingCampThresholdIfNecessary()V
    .registers 9

    .prologue
    .line 992
    monitor-enter p0

    :try_start_1
    const-string v0, "BatteryStatsDBHelper"

    const-string/jumbo v1, "modifyHealingCampThresholdIfNecessary called "

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4f

    .line 994
    :try_start_9
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 997
    .local v6, "cThreshold":Landroid/database/Cursor;
    if-nez v6, :cond_31

    .line 998
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor null in modifyHealingCampThresholdIfNecessary"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_42
    .catchall {:try_start_9 .. :try_end_2f} :catchall_4f

    .line 1019
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :goto_2f
    monitor-exit p0

    return-void

    .line 1002
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_31
    :try_start_31
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_52

    .line 1003
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor empty in modifyHealingCampThresholdIfNecessary"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42
    .catchall {:try_start_31 .. :try_end_41} :catchall_4f

    goto :goto_2f

    .line 1015
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :catch_42
    move-exception v7

    .line 1016
    .local v7, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v0, "BatteryStatsDBHelper"

    const-string/jumbo v1, "modifyHealingCampThresholdIfNecessary remote exception "

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4f

    goto :goto_2f

    .line 992
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1008
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_52
    :goto_52
    :try_start_52
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_75

    .line 1009
    const-string/jumbo v0, "one_hr_healingcamp_threshold"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1010
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, ONE_HOUR_THRESHOLD_HEALING_CAMP:D

    .line 1012
    :cond_71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_52

    .line 1014
    :cond_75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_78} :catch_42
    .catchall {:try_start_52 .. :try_end_78} :catchall_4f

    goto :goto_2f
.end method

.method declared-synchronized modifyThresholdIfNecessary()V
    .registers 9

    .prologue
    .line 962
    monitor-enter p0

    :try_start_1
    const-string v0, "BatteryStatsDBHelper"

    const-string/jumbo v1, "modifyThresholdIfNecessary called "

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4f

    .line 964
    :try_start_9
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 967
    .local v6, "cThreshold":Landroid/database/Cursor;
    if-nez v6, :cond_31

    .line 968
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor null in modifyThresholdIfNecessary"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_42
    .catchall {:try_start_9 .. :try_end_2f} :catchall_4f

    .line 989
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :goto_2f
    monitor-exit p0

    return-void

    .line 972
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_31
    :try_start_31
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_52

    .line 973
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor empty in modifyThresholdIfNecessary"

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42
    .catchall {:try_start_31 .. :try_end_41} :catchall_4f

    goto :goto_2f

    .line 985
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :catch_42
    move-exception v7

    .line 986
    .local v7, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v0, "BatteryStatsDBHelper"

    const-string/jumbo v1, "modifyThresholdIfNecessary remote exception "

    invoke-static {v0, v1}, printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4f

    goto :goto_2f

    .line 962
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 978
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_52
    :goto_52
    :try_start_52
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_75

    .line 979
    const-string/jumbo v0, "one_hr_battery_threshold"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 980
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, ONE_HOUR_THRESHOLD:D

    .line 982
    :cond_71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_52

    .line 984
    :cond_75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_78} :catch_42
    .catchall {:try_start_52 .. :try_end_78} :catchall_4f

    goto :goto_2f
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 226
    const-string v0, "CREATE TABLE Battery_Delta(lcd_condition INTEGER,time LONG,batterydelta INTEGER,batterypercent INTEGER)"

    .line 230
    .local v0, "CREATE_BATTERY_DELTA_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    const-string v2, "CREATE TABLE power_consuming_packages(time LONG,packageName TEXT,percentage DOUBLE,notified_time LONG,abusive_type TEXT,meta_data TEXT)"

    .line 237
    .local v2, "createPowerConsumingPackageTable":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    const-string v1, "CREATE TABLE [all](time LONG,power DOUBLE,totalpower DOUBLE,batterydelta INTEGER,batterypercent INTEGER)"

    .line 243
    .local v1, "createAllPowerTable":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v3, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "SELECT * FROM sqlite_master WHERE type=\'table\';"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 268
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    :goto_f
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_32

    .line 270
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "tableName":Ljava/lang/String;
    const-string v4, "android_metadata"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string/jumbo v4, "sqlite_sequence"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 272
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_2e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_f

    .line 276
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 278
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 279
    .restart local v2    # "tableName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_39

    .line 283
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_62
    invoke-virtual {p0, p1}, onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 284
    return-void
.end method
