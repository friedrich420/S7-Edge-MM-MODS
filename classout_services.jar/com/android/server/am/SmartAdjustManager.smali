.class public Lcom/android/server/am/SmartAdjustManager;
.super Ljava/lang/Object;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    }
.end annotation


# static fields
.field static final BG_COUNT_CACHED:I = 0x1

.field static final BG_COUNT_CACHED_HIDDEN:I = 0x3

.field static final BG_COUNT_EMPTY:I = 0x2

.field static final BG_COUNT_NON_CACHED:I = 0x4

.field static DB_CONN_KILL_SKIP:Z = false

.field static final HOTNESS_ACTIVITY:I = 0x0

.field static final HOTNESS_EMPTY:I = 0x1

.field static SAMP_DEBUG:Z = false

.field static SAMP_DEBUG_TRACE:Z = false

.field static SAMP_ENABLE:Z = false

.field static SAMP_HOTNESS_ENABLE:Z = false

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static SMART_DHA_CACHED_APP_MAX:I = 0x0

.field static final SMART_DHA_HOTNESS_PROTECT_TIME:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "SAMP"

.field static final TAG_HOTNESS:Ljava/lang/String; = "SAMP_Hotness"

.field static final TAG_SDHA:Ljava/lang/String; = "SAMP_SDHA"

.field static final TAG_TEST:Ljava/lang/String; = "_test"

.field static strPrevAppForActivityHotness:Ljava/lang/String;

.field static strPrevAppForEmptyHotness:Ljava/lang/String;


# instance fields
.field private SAMP_HOTNESS_MAX_VALUE:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mHotnessAdjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SmartAdjustManager$HotnessValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastKillTimeMap:Ljava/util/HashMap;
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

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mProcessList:Lcom/android/server/am/ProcessList;

.field mProcessStats:Lcom/android/server/am/ProcessStatsService;

.field private mProcessesExtraCache:J

.field numCached:I

.field numEmpty:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-boolean v0, SAMP_ENABLE:Z

    .line 40
    sput-boolean v0, SAMP_HOTNESS_ENABLE:Z

    .line 41
    sput-boolean v0, SAMP_DEBUG_TRACE:Z

    .line 42
    sput-boolean v0, SAMP_DEBUG:Z

    .line 43
    sput-boolean v0, DB_CONN_KILL_SKIP:Z

    .line 54
    const-string/jumbo v0, "ro.config.sdha_apps_bg_max"

    const-string v1, "40"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, SMART_DHA_BG_APPS_MAX:I

    .line 55
    const/4 v0, 0x6

    sput v0, SMART_DHA_CACHED_APP_MAX:I

    .line 59
    const-string/jumbo v0, "unknown"

    sput-object v0, strPrevAppForActivityHotness:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "unknown"

    sput-object v0, strPrevAppForEmptyHotness:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessStatsService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "processStats"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, numCached:I

    .line 49
    iput v0, p0, numEmpty:I

    .line 50
    iput v0, p0, mNumCachedHiddenProcs:I

    .line 51
    iput v0, p0, mNumNonCachedProcs:I

    .line 56
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, mProcessesExtraCache:J

    .line 58
    const v0, 0xf4240

    iput v0, p0, SAMP_HOTNESS_MAX_VALUE:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mHotnessAdjMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mLastKillTimeMap:Ljava/util/HashMap;

    .line 68
    iput-object p1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    .line 69
    iput-object p2, p0, mProcessList:Lcom/android/server/am/ProcessList;

    .line 70
    iput-object p3, p0, mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 71
    return-void
.end method

.method private final computeHotnessAdjLocked(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "cchListExcludeService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_6
    if-ltz v4, :cond_b7

    .line 85
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 88
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "provi":I
    :goto_16
    if-ltz v6, :cond_89

    .line 89
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 90
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "j":I
    :goto_28
    if-ltz v5, :cond_86

    .line 91
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .line 92
    .local v2, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v1, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 93
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v1, v0, :cond_39

    .line 90
    :cond_36
    :goto_36
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    .line 94
    :cond_39
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v7, v8, :cond_36

    .line 95
    sget-boolean v7, SAMP_DEBUG:Z

    if-eqz v7, :cond_81

    .line 96
    const-string v7, "SAMP_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content provider process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", client process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_81
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iput v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_36

    .line 88
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_86
    add-int/lit8 v6, v6, -0x1

    goto :goto_16

    .line 105
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v5    # "j":I
    :cond_89
    sget-boolean v7, SAMP_DEBUG:Z

    if-eqz v7, :cond_b3

    .line 106
    const-string v7, "SAMP_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_b3
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_6

    .line 108
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "provi":I
    :cond_b7
    return-void
.end method


# virtual methods
.method final decreaseHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    .line 149
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 172
    :cond_6
    :goto_6
    return-void

    .line 152
    :cond_7
    sget-object v1, strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 155
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v1, strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 156
    const-string/jumbo v1, "unknown"

    sput-object v1, strPrevAppForActivityHotness:Ljava/lang/String;

    .line 157
    sget-boolean v1, SAMP_DEBUG:Z

    if-eqz v1, :cond_39

    const-string v1, "SAMP_Hotness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "decreaseHotnessAdj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_39
    iget-object v2, p0, mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 160
    :try_start_3c
    iget-object v1, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 161
    iget-object v1, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 163
    .local v0, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    sget-boolean v1, SAMP_DEBUG:Z

    if-eqz v1, :cond_7d

    const-string v1, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_7d
    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v1

    if-lez v1, :cond_8d

    .line 166
    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->decreaseHotness(I)V

    .line 167
    iget-object v1, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_8d
    sget-boolean v1, SAMP_DEBUG:Z

    if-eqz v1, :cond_c6

    const-string v1, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :cond_c6
    monitor-exit v2

    goto/16 :goto_6

    :catchall_c9
    move-exception v1

    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_3c .. :try_end_cb} :catchall_c9

    throw v1
.end method

.method dumpsampLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 465
    const-string v3, "ACTIVITY MANAGER SAMP (dumpsys activity samp)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    const-string v3, " hotnessAdj value (mHotnessAdjMap) --"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 469
    .local v2, "it":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 470
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 471
    .local v1, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 472
    .local v0, "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tHotnessAdj: activity %8d , empty %8d "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v8}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    .line 474
    .end local v0    # "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v1    # "entryHotness":Ljava/util/Map$Entry;
    :cond_6b
    return-void
.end method

.method protected getBgProcCount(I)I
    .registers 3
    .param p1, "kind"    # I

    .prologue
    .line 478
    packed-switch p1, :pswitch_data_12

    .line 488
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 480
    :pswitch_5
    iget v0, p0, numCached:I

    goto :goto_4

    .line 482
    :pswitch_8
    iget v0, p0, numEmpty:I

    goto :goto_4

    .line 484
    :pswitch_b
    iget v0, p0, mNumCachedHiddenProcs:I

    goto :goto_4

    .line 486
    :pswitch_e
    iget v0, p0, mNumNonCachedProcs:I

    goto :goto_4

    .line 478
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method getShortPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 492
    if-eqz p1, :cond_76

    .line 493
    move-object v0, p1

    .line 494
    .local v0, "shortPkgName":Ljava/lang/String;
    const-string v1, "com."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 495
    const-string v1, "com."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_15
    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 498
    const-string v1, "android."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 500
    :cond_25
    const-string/jumbo v1, "samsung."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 501
    const-string/jumbo v1, "samsung."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 503
    :cond_37
    const-string/jumbo v1, "sec."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 504
    const-string/jumbo v1, "sec."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 506
    :cond_49
    const-string v1, "app."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 507
    const-string v1, "app."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_59
    const-string/jumbo v1, "google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 510
    const-string/jumbo v1, "google."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 512
    :cond_6b
    const-string v1, "%30s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .end local v0    # "shortPkgName":Ljava/lang/String;
    :goto_75
    return-object v1

    :cond_76
    const-string v1, "%30s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_75
.end method

.method protected final smartAdjustProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .registers 55
    .param p2, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v43, SAMP_DEBUG_TRACE:Z

    if-eqz v43, :cond_14

    .line 215
    const-wide/16 v44, 0x40

    const-string/jumbo v43, "smartAdjustProcessesLocked"

    const/16 v46, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 217
    :cond_14
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v32, "smartDHACachedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v33, "smartDHAEmptyProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 223
    .local v4, "N":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 224
    .local v28, "now":J
    const-wide/32 v44, 0x1b7740

    sub-long v30, v28, v44

    .line 226
    .local v30, "oldTime":J
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, numCached:I

    .line 227
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, numEmpty:I

    .line 228
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, mNumNonCachedProcs:I

    .line 229
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, mNumCachedHiddenProcs:I

    .line 231
    add-int/lit8 v11, v4, -0x1

    .local v11, "i":I
    :goto_4d
    if-ltz v11, :cond_217

    .line 232
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 233
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    move/from16 v43, v0

    if-nez v43, :cond_bf

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v43, v0

    if-eqz v43, :cond_bf

    .line 234
    sget-boolean v43, Lcom/android/server/am/ProcessList;->mAMSExceptionEnable:Z

    if-eqz v43, :cond_c2

    .line 237
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v43

    const/16 v44, 0x64

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_c2

    const-string v43, "android.process.acore"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_bf

    const-string v43, "com.sec.android.provider.logsprovider"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_bf

    const-string v43, "com.samsung.klmsagent"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_bf

    const-string v43, "com.android.contacts"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_bf

    const-string v43, "android.process.media"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_bf

    const-string v43, "com.android.managedprovisioning"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_c2

    .line 231
    :cond_bf
    :goto_bf
    add-int/lit8 v11, v11, -0x1

    goto :goto_4d

    .line 248
    :cond_c2
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v43, v0

    packed-switch v43, :pswitch_data_828

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, mNumNonCachedProcs:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, mNumNonCachedProcs:I

    .line 282
    :goto_d7
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v43, v0

    const/16 v44, 0xa

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_bf

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v43, v0

    const/16 v44, 0x9

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_bf

    .line 284
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    if-lez v43, :cond_20c

    const/16 v43, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_bf

    .line 251
    :pswitch_103
    move-object/from16 v0, p0

    iget v0, v0, mNumCachedHiddenProcs:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, mNumCachedHiddenProcs:I

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, numCached:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, numCached:I

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, numCached:I

    move/from16 v43, v0

    sget v44, SMART_DHA_CACHED_APP_MAX:I

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_16a

    .line 255
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v43

    if-eqz v43, :cond_146

    .line 256
    const-string v43, "com.android.vending"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_146

    .line 257
    const-string v43, "GATE"

    const-string v44, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_146
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "cachedCount ##"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, numCached:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_d7

    .line 263
    :cond_16a
    const/16 v43, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_d7

    .line 267
    :pswitch_175
    move-object/from16 v0, p0

    iget v0, v0, numEmpty:I

    move/from16 v43, v0

    sget v44, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_1c0

    iget-wide v0, v5, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v44, v0

    cmp-long v43, v44, v30

    if-gez v43, :cond_1c0

    .line 268
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "empty for "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-wide/32 v44, 0x1b7740

    add-long v44, v44, v30

    iget-wide v0, v5, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    const-wide/16 v46, 0x3e8

    div-long v44, v44, v46

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string/jumbo v44, "s"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_d7

    .line 270
    :cond_1c0
    move-object/from16 v0, p0

    iget v0, v0, numEmpty:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, numEmpty:I

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, numEmpty:I

    move/from16 v43, v0

    sget v44, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_201

    .line 272
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "emptyCount ##"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, numEmpty:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_d7

    .line 274
    :cond_201
    const/16 v43, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_d7

    .line 285
    :cond_20c
    const/16 v43, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_bf

    .line 291
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_217
    const/16 v27, 0x0

    .line 292
    .local v27, "skipKillBGCount":I
    const-wide/16 v6, 0x0

    .line 293
    .local v6, "avgUSS":J
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/ProcessList;->getSmartDHADefaultMargin()J

    move-result-wide v22

    .line 294
    .local v22, "margin":J
    move-object/from16 v0, p0

    iget v0, v0, numCached:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, numEmpty:I

    move/from16 v44, v0

    add-int v10, v43, v44

    .line 297
    .local v10, "bgCount":I
    sget-boolean v43, SAMP_DEBUG_TRACE:Z

    if-eqz v43, :cond_247

    .line 298
    const-wide/16 v44, 0x40

    const-string/jumbo v43, "get memory size"

    const/16 v46, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 299
    :cond_247
    new-instance v15, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v15}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 300
    .local v15, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 301
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v36

    .line 303
    .local v36, "szFreeMem":J
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v34

    .line 305
    .local v34, "szCached":J
    move-object/from16 v0, p0

    iget-wide v0, v0, mProcessesExtraCache:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-lez v43, :cond_28d

    .line 307
    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mProcessesExtraCache:J

    move-wide/from16 v48, v0

    mul-long v44, v44, v48

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v48, v0

    sget-boolean v43, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v43, :cond_2ff

    const-wide/high16 v44, 0x3ff8000000000000L    # 1.5

    :goto_284
    mul-double v44, v44, v48

    sub-double v44, v46, v44

    move-wide/from16 v0, v44

    double-to-long v0, v0

    move-wide/from16 v34, v0

    .line 309
    :cond_28d
    sget-boolean v43, SAMP_DEBUG_TRACE:Z

    if-eqz v43, :cond_2a1

    .line 310
    const-wide/16 v44, 0x40

    const-string/jumbo v43, "get memory size"

    const/16 v46, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 313
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v43, v0

    const/16 v44, 0xf

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/am/ProcessList;->getLMKThreshold(I)J

    move-result-wide v20

    .line 314
    .local v20, "lmkThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/ProcessList;->getKswapdWatermark()J

    move-result-wide v16

    .line 315
    .local v16, "kswapdWatermark":J
    add-long v44, v16, v22

    sub-long v40, v44, v36

    .line 318
    .local v40, "szNeedFree":J
    const-wide/16 v38, 0x0

    .line 319
    .local v38, "szFreed":J
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v42, "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v43

    add-int/lit8 v14, v43, -0x1

    .local v14, "j":I
    :goto_2c8
    if-ltz v14, :cond_309

    .line 324
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 325
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_302

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v43

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    .line 322
    :goto_2fc
    add-int/lit8 v14, v14, -0x1

    goto :goto_2c8

    .line 307
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "j":I
    .end local v16    # "kswapdWatermark":J
    .end local v20    # "lmkThreshold":J
    .end local v38    # "szFreed":J
    .end local v40    # "szNeedFree":J
    .end local v42    # "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_2ff
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    goto :goto_284

    .line 328
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "j":I
    .restart local v16    # "kswapdWatermark":J
    .restart local v20    # "lmkThreshold":J
    .restart local v38    # "szFreed":J
    .restart local v40    # "szNeedFree":J
    .restart local v42    # "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_302
    const/16 v43, 0x0

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_2fc

    .line 330
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_309
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v43

    add-int/lit8 v14, v43, -0x1

    :goto_30f
    if-ltz v14, :cond_34d

    .line 332
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 333
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_346

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v43

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    .line 330
    :goto_343
    add-int/lit8 v14, v14, -0x1

    goto :goto_30f

    .line 336
    :cond_346
    const/16 v43, 0x0

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_343

    .line 339
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_34d
    sget-boolean v43, SAMP_HOTNESS_ENABLE:Z

    if-eqz v43, :cond_3cd

    .line 340
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 341
    .local v25, "nEmptyNum":I
    div-int/lit8 v26, v25, 0xa

    .line 343
    .local v26, "nHotnessSlot":I
    if-lez v26, :cond_3cd

    .line 344
    new-instance v43, Lcom/android/server/am/SmartAdjustManager$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager$1;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 356
    const/16 v24, 0x1

    .local v24, "nCnt":I
    :goto_36b
    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_3cd

    .line 357
    sub-int v43, v25, v24

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 358
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    sub-int v43, v25, v24

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 359
    add-int/lit8 v27, v27, 0x1

    .line 360
    sget-boolean v43, SAMP_DEBUG:Z

    if-eqz v43, :cond_3ca

    .line 361
    const-string v43, "SAMP"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Protected empty proc: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "("

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "/"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ")"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_3ca
    add-int/lit8 v24, v24, 0x1

    goto :goto_36b

    .line 367
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v24    # "nCnt":I
    .end local v25    # "nEmptyNum":I
    .end local v26    # "nHotnessSlot":I
    :cond_3cd
    const-wide/16 v44, 0x0

    cmp-long v43, v40, v44

    if-lez v43, :cond_580

    add-long v44, v40, v20

    cmp-long v43, v34, v44

    if-gtz v43, :cond_580

    sget v43, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    move/from16 v0, v43

    if-le v10, v0, :cond_580

    .line 370
    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    .line 375
    new-instance v43, Lcom/android/server/am/SmartAdjustManager$2;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager$2;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    invoke-static/range {v42 .. v43}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 400
    const/4 v11, 0x0

    :goto_401
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-ge v11, v0, :cond_580

    .line 401
    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 402
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_416

    .line 400
    :cond_413
    :goto_413
    add-int/lit8 v11, v11, 0x1

    goto :goto_401

    .line 405
    :cond_416
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v43, v0

    const/16 v44, 0xa

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_42e

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v43, v0

    const/16 v44, 0x9

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_431

    .line 406
    :cond_42e
    add-int/lit8 v27, v27, 0x1

    .line 407
    goto :goto_413

    .line 410
    :cond_431
    sget-boolean v43, DB_CONN_KILL_SKIP:Z

    if-nez v43, :cond_4ab

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->hasProviderClient:Z

    move/from16 v43, v0

    if-eqz v43, :cond_4ab

    .line 411
    const-string v43, "SAMP_SDHA"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "No longer want but don\'t kill provider connected empty : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " (pid "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ") (adj "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ") "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "(clientLowAdj "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ") (clientName : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ")"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/16 v43, 0x10

    move/from16 v0, v43

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientAdj:I

    .line 415
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientName:Ljava/lang/String;

    .line 416
    add-int/lit8 v27, v27, 0x1

    .line 417
    goto/16 :goto_413

    .line 420
    :cond_4ab
    const-wide/16 v18, 0x0

    .line 421
    .local v18, "lastKillTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, mLastKillTimeMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_51f

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, mLastKillTimeMap:Ljava/util/HashMap;

    move-object/from16 v43, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Long;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 423
    sub-long v12, v28, v18

    .line 424
    .local v12, "interval":J
    const-wide/16 v44, 0x1388

    cmp-long v43, v12, v44

    if-gez v43, :cond_51f

    .line 425
    const-string v43, "SAMP_SDHA"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "No longer want but don\'t kill hotness protected bg : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " (pid "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ") (lastKillTime: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-wide/16 v46, 0x3e8

    div-long v46, v12, v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " sec ago)"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    add-int/lit8 v27, v27, 0x1

    .line 428
    goto/16 :goto_413

    .line 432
    .end local v12    # "interval":J
    :cond_51f
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->getHistoricallyAvgUSS(Lcom/android/server/am/ProcessStatsService;I)J

    move-result-wide v8

    .line 433
    .local v8, "avgUssSize":J
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "BG, "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-wide/16 v44, 0x400

    div-long v44, v8, v44

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "K, hotnessAdj="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", oom_adj="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 434
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v1, v2}, updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 435
    add-long v38, v38, v8

    .line 436
    add-int/lit8 v10, v10, -0x1

    .line 438
    cmp-long v43, v38, v40

    if-gez v43, :cond_580

    sget v43, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    move/from16 v0, v43

    if-gt v10, v0, :cond_413

    .line 444
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "avgUssSize":J
    .end local v18    # "lastKillTime":J
    :cond_580
    const-wide/16 v44, 0x0

    cmp-long v43, v38, v44

    if-gtz v43, :cond_58a

    sget-boolean v43, SAMP_DEBUG:Z

    if-eqz v43, :cond_7ce

    .line 445
    :cond_58a
    const-string v44, "SAMP_SDHA"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "F:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v36, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, C:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v34, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, ProcCnt:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "K, mgn:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v22, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, nF:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-wide/16 v46, 0x0

    cmp-long v43, v40, v46

    if-gtz v43, :cond_7e3

    const-string v43, "-----"

    :goto_65f
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "K, fd:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-wide/16 v46, 0x0

    cmp-long v43, v38, v46

    if-nez v43, :cond_803

    const-string v43, "-----"

    :goto_679
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "K, thd:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%03d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v20, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, wm:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%02d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v16, v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, cch:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%02d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "M, emp:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%02d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, ", skipBG:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "%02d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, ", TOP:"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    if-eqz p2, :cond_823

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v43, v0

    const-string v46, "com."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    const-string v46, "android."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v46, "sec."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v46, "samsung."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    const-string v46, "app."

    const-string v47, ""

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v43

    :goto_7bb
    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_7ce
    sget-boolean v43, SAMP_DEBUG_TRACE:Z

    if-eqz v43, :cond_7e2

    .line 461
    const-wide/16 v44, 0x40

    const-string/jumbo v43, "smartAdjustProcessesLocked"

    const/16 v46, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v43

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 462
    :cond_7e2
    return-void

    .line 445
    :cond_7e3
    const-string v43, "%05d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v40, v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_65f

    :cond_803
    const-string v43, "%05d"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-wide/16 v48, 0x400

    div-long v48, v38, v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_679

    :cond_823
    const-string/jumbo v43, "null"

    goto :goto_7bb

    .line 248
    nop

    :pswitch_data_828
    .packed-switch 0xe
        :pswitch_103
        :pswitch_103
        :pswitch_175
    .end packed-switch
.end method

.method final updateHotnessAdj(Landroid/content/pm/ApplicationInfo;I)V
    .registers 11
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "nHotnessType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 176
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 177
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_48

    .line 178
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v7, v6, v6}, Lcom/android/server/am/ActivityManagerService;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 179
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 181
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 182
    sget-boolean v2, SAMP_DEBUG:Z

    if-eqz v2, :cond_48

    const-string v2, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find package record and new a Process Reccord in updateHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_48
    sget-object v2, strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 202
    :cond_52
    :goto_52
    return-void

    .line 188
    :cond_53
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v2, strPrevAppForActivityHotness:Ljava/lang/String;

    .line 189
    const-string/jumbo v2, "unknown"

    sput-object v2, strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 191
    iget-object v3, p0, mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 192
    :try_start_5f
    iget-object v2, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 193
    iget-object v2, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 194
    .local v1, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->increaseHotness(I)V

    .line 195
    iget-object v2, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :goto_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_5f .. :try_end_7e} :catchall_c5

    .line 201
    sget-boolean v2, SAMP_DEBUG:Z

    if-eqz v2, :cond_52

    const-string v2, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateHotnessAdj right after finishboot in PPM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 197
    .end local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :cond_b8
    :try_start_b8
    new-instance v1, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;-><init>(Lcom/android/server/am/SmartAdjustManager;I)V

    .line 198
    .restart local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    iget-object v2, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 200
    .end local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :catchall_c5
    move-exception v2

    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_b8 .. :try_end_c7} :catchall_c5

    throw v2
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    .line 113
    if-eqz p1, :cond_6

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 146
    :cond_6
    :goto_6
    return-void

    .line 116
    :cond_7
    sget-object v5, strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 119
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v5, strPrevAppForActivityHotness:Ljava/lang/String;

    .line 120
    const-string/jumbo v5, "unknown"

    sput-object v5, strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 122
    iget-object v6, p0, mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 123
    :try_start_1d
    iget-object v5, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 124
    iget-object v5, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 125
    .local v3, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->increaseHotness(I)V

    .line 126
    iget-object v5, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_3b
    sget-boolean v5, SAMP_HOTNESS_ENABLE:Z

    if-eqz v5, :cond_c7

    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v5

    iget v7, p0, SAMP_HOTNESS_MAX_VALUE:I

    if-le v5, v7, :cond_c7

    .line 133
    sget-boolean v5, SAMP_DEBUG:Z

    if-eqz v5, :cond_53

    const-string v5, "SAMP_Hotness"

    const-string/jumbo v7, "hotness value reached MAX, the hotness value of all app will be tuned half"

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_53
    iget-object v5, p0, mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 136
    .local v4, "it":Ljava/util/Iterator;
    :cond_5d
    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    .local v2, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v1, v0

    .line 139
    .local v1, "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->setHalf(I)V

    .line 140
    iget-object v5, p0, mHotnessAdjMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-boolean v5, SAMP_DEBUG:Z

    if-eqz v5, :cond_5d

    const-string v5, "SAMP_Hotness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HotnessMAX! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 144
    .end local v1    # "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v2    # "entryHotness":Ljava/util/Map$Entry;
    .end local v3    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v4    # "it":Ljava/util/Iterator;
    :catchall_b6
    move-exception v5

    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_1d .. :try_end_b8} :catchall_b6

    throw v5

    .line 128
    :cond_b9
    :try_start_b9
    new-instance v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    invoke-direct {v3, p0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;-><init>(Lcom/android/server/am/SmartAdjustManager;I)V

    .line 129
    .restart local v3    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    iget-object v5, p0, mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3b

    .line 144
    :cond_c7
    monitor-exit v6
    :try_end_c8
    .catchall {:try_start_b9 .. :try_end_c8} :catchall_b6

    .line 145
    sget-boolean v5, SAMP_DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "SAMP_Hotness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateHotnessAdj "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hotness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method final updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .prologue
    .line 205
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 211
    :cond_6
    :goto_6
    return-void

    .line 207
    :cond_7
    iget-object v1, p0, mLastKillTimeMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 208
    :try_start_a
    iget-object v0, p0, mLastKillTimeMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_4c

    .line 210
    sget-boolean v0, SAMP_DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "SAMP_SDHA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastKillTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 209
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method protected updateProperty()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x400

    const/4 v4, 0x0

    .line 522
    sput-boolean v4, SAMP_ENABLE:Z

    .line 523
    sput-boolean v4, SAMP_HOTNESS_ENABLE:Z

    .line 526
    const-string/jumbo v2, "sys.config.samp_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "systemPropString":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sput-boolean v5, SAMP_ENABLE:Z

    sput-boolean v5, SAMP_HOTNESS_ENABLE:Z

    .line 528
    :cond_1e
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    sput-boolean v4, SAMP_ENABLE:Z

    sput-boolean v4, SAMP_HOTNESS_ENABLE:Z

    .line 530
    :cond_2b
    const-string/jumbo v2, "sys.config.samp_hotness_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    sput-boolean v5, SAMP_HOTNESS_ENABLE:Z

    .line 532
    :cond_3f
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    sput-boolean v4, SAMP_HOTNESS_ENABLE:Z

    .line 534
    :cond_4a
    const-string/jumbo v2, "sys.config.samp_debug"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    sput-boolean v5, SAMP_DEBUG:Z

    .line 536
    :cond_5e
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    sput-boolean v4, SAMP_DEBUG:Z

    .line 537
    :cond_69
    sget-boolean v2, SAMP_DEBUG:Z

    invoke-static {v2}, Lcom/android/server/am/ProcessRecord;->setSmartDHADebugMode(Z)V

    .line 539
    const-string/jumbo v2, "sys.config.samp_debug_trace"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    sput-boolean v5, SAMP_DEBUG_TRACE:Z

    .line 541
    :cond_82
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    sput-boolean v4, SAMP_DEBUG_TRACE:Z

    .line 543
    :cond_8d
    sget-boolean v2, SAMP_ENABLE:Z

    if-eqz v2, :cond_11d

    .line 545
    :try_start_91
    const-string/jumbo v2, "sys.config.s_dha_margin"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ae

    .line 547
    iget-object v2, p0, mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ProcessList;->setSmartDHADefaultMargin(J)V

    .line 548
    :cond_ae
    const-string/jumbo v2, "sys.config.s_dha_bg_max"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c5

    .line 550
    iget-object v2, p0, mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 551
    :cond_c5
    const-string/jumbo v2, "sys.config.s_dha_bg_min"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_dc

    .line 553
    iget-object v2, p0, mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 554
    :cond_dc
    const-string/jumbo v2, "sys.config.s_dha_db_kill"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f1

    .line 556
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, DB_CONN_KILL_SKIP:Z

    .line 557
    :cond_f1
    const-string/jumbo v2, "sys.config.s_dha_extra_cache"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_108

    .line 559
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    iput-wide v2, p0, mProcessesExtraCache:J

    .line 560
    :cond_108
    const-string/jumbo v2, "sys.config.s_dha_cache_max"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11d

    .line 562
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, SMART_DHA_CACHED_APP_MAX:I
    :try_end_11d
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_11d} :catch_214

    .line 569
    :cond_11d
    :goto_11d
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAMP       : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, SAMP_ENABLE:Z

    if-eqz v2, :cond_221

    const-string v2, "Enabled"

    :goto_130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hotness    : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, SAMP_HOTNESS_ENABLE:Z

    if-eqz v2, :cond_225

    const-string v2, "Enabled"

    :goto_14e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samp debug : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, SAMP_DEBUG:Z

    if-eqz v2, :cond_229

    const-string v2, "Enabled"

    :goto_16d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samp trace : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, SAMP_DEBUG_TRACE:Z

    if-eqz v2, :cond_22d

    const-string v2, "Enabled"

    :goto_18c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-boolean v2, SAMP_ENABLE:Z

    if-eqz v2, :cond_213

    .line 574
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DftMgn : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getSmartDHADefaultMargin()J

    move-result-wide v4

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M, ExtraC : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mProcessesExtraCache:J

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M, MaxBg :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, mProcessList:Lcom/android/server/am/ProcessList;

    sget v4, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", MinBg :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, mProcessList:Lcom/android/server/am/ProcessList;

    sget v4, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", MaxC :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, SMART_DHA_CACHED_APP_MAX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", DBcKill :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, DB_CONN_KILL_SKIP:Z

    if-eqz v2, :cond_231

    const-string v2, "Y"

    :goto_1f8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Hotness :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, SAMP_HOTNESS_ENABLE:Z

    if-eqz v2, :cond_234

    const-string v2, "Y"

    :goto_208
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_213
    return-void

    .line 563
    :catch_214
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SAMP_SDHA"

    const-string v3, "Smart DHA parameter incorrect format!"

    invoke-static {v2, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_11d

    .line 569
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_221
    const-string v2, "Disabled"

    goto/16 :goto_130

    .line 570
    :cond_225
    const-string v2, "Disabled"

    goto/16 :goto_14e

    .line 571
    :cond_229
    const-string v2, "Disabled"

    goto/16 :goto_16d

    .line 572
    :cond_22d
    const-string v2, "Disabled"

    goto/16 :goto_18c

    .line 574
    :cond_231
    const-string v2, "N"

    goto :goto_1f8

    :cond_234
    const-string v2, "N"

    goto :goto_208
.end method
