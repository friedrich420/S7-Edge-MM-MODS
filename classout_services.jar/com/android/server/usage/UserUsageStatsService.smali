.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mStatsChanged:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, sDateFormat:Ljava/text/SimpleDateFormat;

    .line 236
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 253
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "usageStatsDir"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, mStatsChanged:Z

    .line 74
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 76
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    iput-object v0, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 78
    iput-object p4, p0, mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mLogPrefix:Ljava/lang/String;

    .line 80
    iput p2, p0, mUserId:I

    .line 81
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "eventType"    # I

    .prologue
    .line 651
    packed-switch p0, :pswitch_data_1e

    .line 669
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 653
    :pswitch_6
    const-string v0, "NONE"

    goto :goto_5

    .line 655
    :pswitch_9
    const-string v0, "MOVE_TO_BACKGROUND"

    goto :goto_5

    .line 657
    :pswitch_c
    const-string v0, "MOVE_TO_FOREGROUND"

    goto :goto_5

    .line 659
    :pswitch_f
    const-string v0, "END_OF_DAY"

    goto :goto_5

    .line 661
    :pswitch_12
    const-string v0, "CONTINUE_PREVIOUS_DAY"

    goto :goto_5

    .line 663
    :pswitch_15
    const-string v0, "CONFIGURATION_CHANGE"

    goto :goto_5

    .line 665
    :pswitch_18
    const-string v0, "SYSTEM_INTERACTION"

    goto :goto_5

    .line 667
    :pswitch_1b
    const-string v0, "USER_INTERACTION"

    goto :goto_5

    .line 651
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_9
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method private formatDateTime(JZ)Ljava/lang/String;
    .registers 7
    .param p1, "dateTime"    # J
    .param p3, "pretty"    # Z

    .prologue
    .line 558
    if-eqz p3, :cond_25

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x20015

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    :goto_24
    return-object v0

    :cond_25
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .registers 9
    .param p1, "elapsedTime"    # J
    .param p3, "pretty"    # Z

    .prologue
    .line 565
    if-eqz p3, :cond_24

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    :goto_23
    return-object v0

    :cond_24
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method private initializeDefaultsForApps(JJZ)V
    .registers 23
    .param p1, "currentTimeMillis"    # J
    .param p3, "deviceUsageTime"    # J
    .param p5, "firstUpdate"    # Z

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 152
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, mUserId:I

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v8

    .line 153
    .local v8, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 154
    .local v6, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v6, :cond_5a

    .line 155
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 156
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 157
    .local v7, "packageName":Ljava/lang/String;
    iget-object v12, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_57

    if-nez p5, :cond_2e

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v12

    if-eqz v12, :cond_57

    :cond_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getBeginIdleTime(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_57

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v2, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_40
    if-ge v4, v5, :cond_57

    aget-object v11, v2, v4

    .line 160
    .local v11, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v12, 0x6

    move-wide/from16 v0, p1

    invoke-virtual {v11, v7, v0, v1, v12}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 161
    move-wide/from16 v0, p3

    invoke-virtual {v11, v7, v0, v1}, Lcom/android/server/usage/IntervalStats;->updateBeginIdleTime(Ljava/lang/String;J)V

    .line 162
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, mStatsChanged:Z

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 154
    .end local v2    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v11    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 167
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    :cond_5a
    invoke-virtual/range {p0 .. p0}, persistActiveStats()V

    .line 168
    return-void
.end method

.method private static intervalToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "interval"    # I

    .prologue
    .line 636
    packed-switch p0, :pswitch_data_16

    .line 646
    const-string v0, "?"

    :goto_5
    return-object v0

    .line 638
    :pswitch_6
    const-string/jumbo v0, "daily"

    goto :goto_5

    .line 640
    :pswitch_a
    const-string/jumbo v0, "weekly"

    goto :goto_5

    .line 642
    :pswitch_e
    const-string/jumbo v0, "monthly"

    goto :goto_5

    .line 644
    :pswitch_12
    const-string/jumbo v0, "yearly"

    goto :goto_5

    .line 636
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method private loadActiveStats(JZZ)V
    .registers 18
    .param p1, "currentTimeMillis"    # J
    .param p3, "force"    # Z
    .param p4, "resetBeginIdleTime"    # Z

    .prologue
    .line 482
    iget-object v4, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 483
    .local v4, "tempCal":Lcom/android/server/usage/UnixCalendar;
    const/4 v1, 0x0

    .local v1, "intervalType":I
    :goto_3
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v6, v6

    if-ge v1, v6, :cond_85

    .line 484
    invoke-virtual {v4, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 485
    invoke-static {v4, v1}, Lcom/android/server/usage/UnixCalendar;->truncateTo(Lcom/android/server/usage/UnixCalendar;I)V

    .line 487
    if-nez p3, :cond_27

    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    if-eqz v6, :cond_27

    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    iget-wide v6, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_27

    .line 483
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 494
    :cond_27
    iget-object v6, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v6, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStatsBeginTime(I)J

    move-result-wide v2

    .line 495
    .local v2, "lastBeginTime":J
    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_7f

    .line 501
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    iget-object v7, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v7, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    aput-object v7, v6, v1

    .line 506
    :goto_3f
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    if-nez v6, :cond_5e

    .line 513
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v7, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v7}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v7, v6, v1

    .line 514
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 515
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    iput-wide p1, v6, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 518
    :cond_5e
    if-eqz p4, :cond_24

    .line 519
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 520
    .local v5, "usageStats":Landroid/app/usage/UsageStats;
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    goto :goto_6e

    .line 503
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_7f
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v7, 0x0

    aput-object v7, v6, v1

    goto :goto_3f

    .line 524
    .end local v2    # "lastBeginTime":J
    :cond_85
    const/4 v6, 0x0

    iput-boolean v6, p0, mStatsChanged:Z

    .line 525
    iget-object v6, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 526
    iget-object v6, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 527
    iget-object v6, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v6}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    .line 528
    const-string v6, "UsageStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Rollover scheduled @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void
.end method

.method private notifyStatsChanged()V
    .registers 2

    .prologue
    .line 471
    iget-boolean v0, p0, mStatsChanged:Z

    if-nez v0, :cond_c

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, mStatsChanged:Z

    .line 473
    iget-object v0, p0, mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    .line 475
    :cond_c
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 19
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    const/4 v10, 0x0

    .line 277
    const/4 v2, 0x4

    if-ne p1, v2, :cond_f

    .line 278
    iget-object v2, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v0, p4

    invoke-virtual {v2, p2, p3, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result p1

    .line 279
    if-gez p1, :cond_f

    .line 282
    const/4 p1, 0x0

    .line 286
    :cond_f
    if-ltz p1, :cond_16

    iget-object v2, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-lt p1, v2, :cond_17

    .line 338
    :cond_16
    :goto_16
    return-object v10

    .line 293
    :cond_17
    iget-object v2, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v9, v2, p1

    .line 300
    .local v9, "currentStats":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_16

    .line 312
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-wide/from16 v0, p4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 315
    .local v6, "truncatedEndTime":J
    iget-object v2, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move v3, p1

    move-wide v4, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v10

    .line 324
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_16

    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v2, p4, v2

    if-lez v2, :cond_16

    .line 329
    if-nez v10, :cond_46

    .line 330
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_46
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v9, v2, v10}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    goto :goto_16
.end method

.method private rolloverStats(J)V
    .registers 32
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 426
    .local v18, "startTime":J
    const-string v21, "UsageStatsService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mLogPrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Rolling over usage stats"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    aget-object v21, v21, v24

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    .line 432
    .local v17, "previousConfig":Landroid/content/res/Configuration;
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 433
    .local v10, "continuePreviousDay":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v6, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_41
    if-ge v12, v13, :cond_cb

    aget-object v20, v6, v12

    .line 434
    .local v20, "stat":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 435
    .local v15, "pkgCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_50
    if-ge v11, v15, :cond_ae

    .line 436
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/usage/UsageStats;

    .line 437
    .local v16, "pkgStats":Landroid/app/usage/UsageStats;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    move/from16 v21, v0

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_7c

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    move/from16 v21, v0

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_ab

    .line 439
    :cond_7c
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 440
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    const/16 v26, 0x3

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 442
    invoke-direct/range {p0 .. p0}, notifyStatsChanged()V

    .line 435
    :cond_ab
    add-int/lit8 v11, v11, 0x1

    goto :goto_50

    .line 446
    .end local v16    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_ae
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 433
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_41

    .line 449
    .end local v11    # "i":I
    .end local v15    # "pkgCount":I
    .end local v20    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_cb
    invoke-virtual/range {p0 .. p0}, persistActiveStats()V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 451
    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v21

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, loadActiveStats(JZZ)V

    .line 453
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 454
    .local v7, "continueCount":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_ef
    if-ge v11, v7, :cond_128

    .line 455
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 456
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    aget-object v21, v21, v24

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 457
    .local v8, "beginTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v13, v6

    const/4 v12, 0x0

    :goto_10b
    if-ge v12, v13, :cond_125

    aget-object v20, v6, v12

    .line 458
    .restart local v20    # "stat":Lcom/android/server/usage/IntervalStats;
    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v14, v8, v9, v1}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 459
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 460
    invoke-direct/range {p0 .. p0}, notifyStatsChanged()V

    .line 457
    add-int/lit8 v12, v12, 0x1

    goto :goto_10b

    .line 454
    .end local v20    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_125
    add-int/lit8 v11, v11, 0x1

    goto :goto_ef

    .line 463
    .end local v8    # "beginTime":J
    .end local v14    # "name":Ljava/lang/String;
    :cond_128
    invoke-virtual/range {p0 .. p0}, persistActiveStats()V

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v22, v24, v18

    .line 466
    .local v22, "totalTime":J
    const-string v21, "UsageStatsService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mLogPrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Rolling over usage stats complete. Took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " milliseconds"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method


# virtual methods
.method checkin(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "screenOnTime"    # J

    .prologue
    .line 538
    iget-object v0, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;J)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    .line 545
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .registers 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "screenOnTime"    # J

    .prologue
    .line 549
    const/4 v0, 0x0

    .local v0, "interval":I
    :goto_1
    iget-object v1, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 550
    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 551
    invoke-static {v0}, intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 552
    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v1, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;JZ)V

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    :cond_25
    return-void
.end method

.method getBeginIdleTime(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v2, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x3

    aget-object v1, v2, v3

    .line 393
    .local v1, "yearly":Lcom/android/server/usage/IntervalStats;
    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .local v0, "packageUsage":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_12

    .line 394
    const-wide/16 v2, -0x1

    .line 396
    :goto_11
    return-wide v2

    :cond_12
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getBeginIdleTime()J

    move-result-wide v2

    goto :goto_11
.end method

.method getSystemLastUsedTime(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v2, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x3

    aget-object v1, v2, v3

    .line 403
    .local v1, "yearly":Lcom/android/server/usage/IntervalStats;
    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .local v0, "packageUsage":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_12

    .line 404
    const-wide/16 v2, -0x1

    .line 406
    :goto_11
    return-wide v2

    :cond_12
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getLastTimeSystemUsed()J

    move-result-wide v2

    goto :goto_11
.end method

.method init(JJ)V
    .registers 24
    .param p1, "currentTimeMillis"    # J
    .param p3, "deviceUsageTime"    # J

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v5, v0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 86
    const/4 v14, 0x0

    .line 87
    .local v14, "nullCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v5, v5

    if-ge v11, v5, :cond_2d

    .line 88
    move-object/from16 v0, p0

    iget-object v5, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-object/from16 v0, p0

    iget-object v6, v0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v6, v11}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    aput-object v6, v5, v11

    .line 89
    move-object/from16 v0, p0

    iget-object v5, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v5, v5, v11

    if-nez v5, :cond_2a

    .line 92
    add-int/lit8 v14, v14, 0x1

    .line 87
    :cond_2a
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 96
    :cond_2d
    if-lez v14, :cond_9c

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v5, v5

    if-eq v14, v5, :cond_52

    .line 100
    const-string v5, "UsageStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Some stats have no latest available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_52
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v5, v6}, loadActiveStats(JZZ)V

    .line 122
    :goto_5b
    move-object/from16 v0, p0

    iget-object v4, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v4, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_61
    if-ge v12, v13, :cond_115

    aget-object v17, v4, v12

    .line 123
    .local v17, "stat":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 124
    .local v15, "pkgCount":I
    const/4 v11, 0x0

    :goto_6e
    if-ge v11, v15, :cond_107

    .line 125
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/usage/UsageStats;

    .line 126
    .local v16, "pkgStats":Landroid/app/usage/UsageStats;
    move-object/from16 v0, v16

    iget v5, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_88

    move-object/from16 v0, v16

    iget v5, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_99

    .line 128
    :cond_88
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    const/4 v8, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 130
    invoke-direct/range {p0 .. p0}, notifyStatsChanged()V

    .line 124
    :cond_99
    add-int/lit8 v11, v11, 0x1

    goto :goto_6e

    .line 112
    .end local v4    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "pkgCount":I
    .end local v16    # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v17    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_9c
    move-object/from16 v0, p0

    iget-object v5, v0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v0, p0

    iget-object v6, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-wide v6, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v5, v6, v7}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 114
    move-object/from16 v0, p0

    iget-object v5, v0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v5}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    .line 116
    const-string v5, "UsageStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Rollover scheduled @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, sDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v8, v0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v8}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v7}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 134
    .restart local v4    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v15    # "pkgCount":I
    .restart local v17    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_107
    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 122
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_61

    .line 137
    .end local v15    # "pkgCount":I
    .end local v17    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_115
    move-object/from16 v0, p0

    iget-object v5, v0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result v5

    if-eqz v5, :cond_130

    .line 138
    move-object/from16 v0, p0

    iget-object v5, v0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5}, Lcom/android/server/usage/UsageStatsDatabase;->isFirstUpdate()Z

    move-result v10

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v10}, initializeDefaultsForApps(JJZ)V

    .line 141
    :cond_130
    return-void
.end method

.method onTimeChanged(JJZ)V
    .registers 11
    .param p1, "oldTime"    # J
    .param p3, "newTime"    # J
    .param p5, "resetBeginIdleTime"    # Z

    .prologue
    .line 171
    invoke-virtual {p0}, persistActiveStats()V

    .line 172
    iget-object v0, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v2, p3, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 173
    const/4 v0, 0x1

    invoke-direct {p0, p3, p4, v0, p5}, loadActiveStats(JZZ)V

    .line 174
    return-void
.end method

.method persistActiveStats()V
    .registers 6

    .prologue
    .line 411
    iget-boolean v2, p0, mStatsChanged:Z

    if-eqz v2, :cond_33

    .line 412
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Flushing usage stats to disk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    :try_start_1f
    iget-object v2, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v1, v2, :cond_30

    .line 415
    iget-object v2, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v3, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 417
    :cond_30
    const/4 v2, 0x0

    iput-boolean v2, p0, mStatsChanged:Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_34

    .line 422
    .end local v1    # "i":I
    :cond_33
    :goto_33
    return-void

    .line 418
    .restart local v1    # "i":I
    :catch_34
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Failed to persist active stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;JZ)V
    .registers 27
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "screenOnTime"    # J
    .param p5, "prettyDates"    # Z

    .prologue
    .line 573
    if-eqz p5, :cond_c4

    .line 574
    const-string/jumbo v18, "timeRange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v8, 0x20015

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 582
    const-string/jumbo v3, "packages"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 584
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    .line 585
    .local v16, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 586
    .local v15, "pkgCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_56
    if-ge v14, v15, :cond_e5

    .line 587
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStats;

    .line 588
    .local v17, "usageStats":Landroid/app/usage/UsageStats;
    const-string/jumbo v3, "package"

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    const-string/jumbo v3, "totalTime"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    const-string/jumbo v3, "lastTime"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    const-string/jumbo v3, "lastTimeSystem"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    const-string/jumbo v3, "inactiveTime"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    sub-long v4, p3, v4

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 586
    add-int/lit8 v14, v14, 0x1

    goto :goto_56

    .line 577
    .end local v14    # "i":I
    .end local v15    # "pkgCount":I
    .end local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v17    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_c4
    const-string v3, "beginTime"

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 578
    const-string/jumbo v3, "endTime"

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3a

    .line 598
    .restart local v14    # "i":I
    .restart local v15    # "pkgCount":I
    .restart local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :cond_e5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 600
    const-string v3, "configurations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 602
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 603
    .local v10, "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 604
    .local v9, "configCount":I
    const/4 v14, 0x0

    :goto_fb
    if-ge v14, v9, :cond_147

    .line 605
    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/ConfigurationStats;

    .line 606
    .local v2, "config":Landroid/app/usage/ConfigurationStats;
    const-string v3, "config"

    iget-object v4, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    const-string/jumbo v3, "totalTime"

    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 608
    const-string/jumbo v3, "lastTime"

    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    const-string v3, "count"

    iget v4, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 604
    add-int/lit8 v14, v14, 0x1

    goto :goto_fb

    .line 612
    .end local v2    # "config":Landroid/app/usage/ConfigurationStats;
    :cond_147
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 614
    const-string/jumbo v3, "events"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 616
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 617
    .local v13, "events":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v13, :cond_1b6

    invoke-virtual {v13}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v12

    .line 618
    .local v12, "eventCount":I
    :goto_15f
    const/4 v14, 0x0

    :goto_160
    if-ge v14, v12, :cond_1b8

    .line 619
    invoke-virtual {v13, v14}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageEvents$Event;

    .line 620
    .local v11, "event":Landroid/app/usage/UsageEvents$Event;
    const-string/jumbo v3, "time"

    iget-wide v4, v11, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    const-string/jumbo v3, "type"

    iget v4, v11, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {v4}, eventToString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    const-string/jumbo v3, "package"

    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v3, :cond_19f

    .line 624
    const-string v3, "class"

    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 626
    :cond_19f
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_1b0

    .line 627
    const-string v3, "config"

    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    :cond_1b0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 618
    add-int/lit8 v14, v14, 0x1

    goto :goto_160

    .line 617
    .end local v11    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v12    # "eventCount":I
    :cond_1b6
    const/4 v12, 0x0

    goto :goto_15f

    .line 631
    .restart local v12    # "eventCount":I
    :cond_1b8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 632
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 633
    return-void
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .registers 14
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    sget-object v6, sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .registers 22
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 350
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 351
    .local v6, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLandroid/util/ArraySet;)V

    move-object/from16 v8, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v7

    .line 381
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v7, :cond_24

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 382
    :cond_24
    const/4 v0, 0x0

    .line 387
    :goto_25
    return-object v0

    .line 385
    :cond_26
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .line 386
    .local v15, "table":[Ljava/lang/String;
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 387
    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0, v7, v15}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_25
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .registers 14
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    sget-object v6, sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;J)V
    .registers 16
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "deviceUsageTime"    # J

    .prologue
    const/4 v10, 0x5

    .line 183
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v8, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v8}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_12

    .line 185
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {p0, v6, v7}, rolloverStats(J)V

    .line 188
    :cond_12
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v7, 0x0

    aget-object v1, v6, v7

    .line 190
    .local v1, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 191
    .local v4, "newFullConfig":Landroid/content/res/Configuration;
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v6, v10, :cond_29

    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v6, :cond_29

    .line 194
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v6, v4}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v6

    iput-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 199
    :cond_29
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-nez v6, :cond_34

    .line 200
    new-instance v6, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v6}, Landroid/app/usage/TimeSparseArray;-><init>()V

    iput-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 202
    :cond_34
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_40

    .line 203
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v8, v9, p1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 206
    :cond_40
    iget-object v0, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v0, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_44
    if-ge v2, v3, :cond_63

    aget-object v5, v0, v2

    .line 207
    .local v5, "stats":Lcom/android/server/usage/IntervalStats;
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v6, v10, :cond_54

    .line 208
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 206
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 210
    :cond_54
    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v5, v6, v8, v9, v7}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 211
    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/server/usage/IntervalStats;->updateBeginIdleTime(Ljava/lang/String;J)V

    goto :goto_51

    .line 215
    .end local v5    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_63
    invoke-direct {p0}, notifyStatsChanged()V

    .line 216
    return-void
.end method

.method setBeginIdleTime(Ljava/lang/String;J)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "beginIdleTime"    # J

    .prologue
    .line 223
    iget-object v0, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v0, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 224
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/usage/IntervalStats;->updateBeginIdleTime(Ljava/lang/String;J)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 226
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_e
    invoke-direct {p0}, notifyStatsChanged()V

    .line 227
    return-void
.end method

.method setSystemLastUsedTime(Ljava/lang/String;J)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastUsedTime"    # J

    .prologue
    .line 230
    iget-object v0, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v0, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 231
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/usage/IntervalStats;->updateSystemLastUsedTime(Ljava/lang/String;J)V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 233
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_e
    invoke-direct {p0}, notifyStatsChanged()V

    .line 234
    return-void
.end method
