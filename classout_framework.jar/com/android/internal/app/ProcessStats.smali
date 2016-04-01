.class public final Lcom/android/internal/app/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/ProcessStats$PackageState;,
        Lcom/android/internal/app/ProcessStats$ServiceState;,
        Lcom/android/internal/app/ProcessStats$ProcessState;,
        Lcom/android/internal/app/ProcessStats$ProcessStateHolder;,
        Lcom/android/internal/app/ProcessStats$DurationsTable;,
        Lcom/android/internal/app/ProcessStats$PssAggr;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field public static final LABEL_BG_TOTAL:I = 0x1

.field public static final LABEL_TOTAL:I = 0x0

.field static final LONGS_SIZE:I = 0x1000

.field private static final MAGIC:I = 0x50535453

.field public static final NON_CACHED_PROC_STATES:[I

.field static OFFSET_ARRAY_MASK:I = 0x0

.field static OFFSET_ARRAY_SHIFT:I = 0x0

.field static OFFSET_INDEX_MASK:I = 0x0

.field static OFFSET_INDEX_SHIFT:I = 0x0

.field static OFFSET_TYPE_MASK:I = 0x0

.field static OFFSET_TYPE_SHIFT:I = 0x0

.field private static final PARCEL_VERSION:I = 0x12

.field static final PROCESS_STATE_TO_STATE:[I

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field static final STATE_TAGS:[Ljava/lang/String;

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field mAddLongTable:[I

.field mAddLongTableSize:I

.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field mNextLong:I

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/app/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsageArgs:[J

.field public mSysMemUsageTable:[I

.field public mSysMemUsageTableSize:I

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 58
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, COMMIT_PERIOD:J

    .line 63
    const-wide/32 v0, 0x36ee80

    sput-wide v0, COMMIT_UPTIME_PERIOD:J

    .line 127
    new-array v0, v6, [I

    fill-array-data v0, :array_19c

    sput-object v0, ALL_MEM_ADJ:[I

    .line 130
    new-array v0, v4, [I

    fill-array-data v0, :array_1a8

    sput-object v0, ALL_SCREEN_ADJ:[I

    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1b0

    sput-object v0, NON_CACHED_PROC_STATES:[I

    .line 138
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1c6

    sput-object v0, BACKGROUND_PROC_STATES:[I

    .line 144
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1d8

    sput-object v0, PROCESS_STATE_TO_STATE:[I

    .line 164
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1fe

    sput-object v0, ALL_PROC_STATES:[I

    .line 171
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Persist"

    aput-object v1, v0, v3

    const-string v1, "Top    "

    aput-object v1, v0, v5

    const-string v1, "ImpFg  "

    aput-object v1, v0, v4

    const-string v1, "ImpBg  "

    aput-object v1, v0, v7

    const-string v1, "Backup "

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "HeavyWt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ServRst"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Receivr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Home   "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LastAct"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CchAct "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CchCAct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CchEmty"

    aput-object v2, v0, v1

    sput-object v0, STATE_NAMES:[Ljava/lang/String;

    .line 178
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v0, v3

    const-string/jumbo v1, "on"

    aput-object v1, v0, v5

    sput-object v0, ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 182
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "norm"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mod"

    aput-object v1, v0, v5

    const-string v1, "low"

    aput-object v1, v0, v4

    const-string v1, "crit"

    aput-object v1, v0, v7

    sput-object v0, ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 186
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pers"

    aput-object v1, v0, v3

    const-string/jumbo v1, "top"

    aput-object v1, v0, v5

    const-string v1, "impfg"

    aput-object v1, v0, v4

    const-string v1, "impbg"

    aput-object v1, v0, v7

    const-string v1, "backup"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "heavy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "service-rs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "receiver"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "home"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lastact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cch-activity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cch-aclient"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cch-empty"

    aput-object v2, v0, v1

    sput-object v0, STATE_NAMES_CSV:[Ljava/lang/String;

    .line 192
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v5

    sput-object v0, ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 196
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "n"

    aput-object v1, v0, v3

    const-string v1, "m"

    aput-object v1, v0, v5

    const-string v1, "l"

    aput-object v1, v0, v4

    const-string v1, "c"

    aput-object v1, v0, v7

    sput-object v0, ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 200
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "p"

    aput-object v1, v0, v3

    const-string/jumbo v1, "t"

    aput-object v1, v0, v5

    const-string v1, "f"

    aput-object v1, v0, v4

    const-string v1, "b"

    aput-object v1, v0, v7

    const-string/jumbo v1, "u"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "e"

    aput-object v2, v0, v1

    sput-object v0, STATE_TAGS:[Ljava/lang/String;

    .line 213
    sput v3, OFFSET_TYPE_SHIFT:I

    .line 214
    const/16 v0, 0xff

    sput v0, OFFSET_TYPE_MASK:I

    .line 216
    const/16 v0, 0x8

    sput v0, OFFSET_ARRAY_SHIFT:I

    .line 217
    const/16 v0, 0xff

    sput v0, OFFSET_ARRAY_MASK:I

    .line 219
    const/16 v0, 0x10

    sput v0, OFFSET_INDEX_SHIFT:I

    .line 220
    const v0, 0xffff

    sput v0, OFFSET_INDEX_MASK:I

    .line 416
    new-instance v0, Lcom/android/internal/app/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessStats$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    .line 1460
    new-array v0, v3, [I

    sput-object v0, BAD_TABLE:[I

    return-void

    .line 127
    nop

    :array_19c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 130
    :array_1a8
    .array-data 4
        0x0
        0x4
    .end array-data

    .line 132
    :array_1b0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 138
    :array_1c6
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 144
    :array_1d8
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    .line 164
    :array_1fe
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, mPackages:Lcom/android/internal/app/ProcessMap;

    .line 228
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 230
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, mMemFactorDurations:[J

    .line 231
    const/4 v0, -0x1

    iput v0, p0, mMemFactor:I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, mSysMemUsageTable:[I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, mSysMemUsageTableSize:I

    .line 236
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, mSysMemUsageArgs:[J

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLongs:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {p0}, reset()V

    .line 266
    invoke-virtual {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "running"    # Z

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, mPackages:Lcom/android/internal/app/ProcessMap;

    .line 228
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 230
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, mMemFactorDurations:[J

    .line 231
    const/4 v0, -0x1

    iput v0, p0, mMemFactor:I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, mSysMemUsageTable:[I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, mSysMemUsageTableSize:I

    .line 236
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, mSysMemUsageArgs:[J

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLongs:Ljava/util/ArrayList;

    .line 260
    iput-boolean p1, p0, mRunning:Z

    .line 261
    invoke-virtual {p0}, reset()V

    .line 262
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/app/ProcessStats;
    .param p1, "x1"    # Landroid/os/Parcel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static addSysMemUsage([JI[JI)V
    .registers 16
    .param p0, "dstData"    # [J
    .param p1, "dstOff"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    .prologue
    .line 392
    add-int/lit8 v5, p1, 0x0

    aget-wide v2, p0, v5

    .line 393
    .local v2, "dstCount":J
    add-int/lit8 v5, p3, 0x0

    aget-wide v0, p2, v5

    .line 394
    .local v0, "addCount":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_22

    .line 395
    add-int/lit8 v5, p1, 0x0

    aput-wide v0, p0, v5

    .line 396
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_13
    const/16 v5, 0x10

    if-ge v4, v5, :cond_84

    .line 397
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 399
    .end local v4    # "i":I
    :cond_22
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_84

    .line 400
    add-int/lit8 v5, p1, 0x0

    add-long v6, v2, v0

    aput-wide v6, p0, v5

    .line 401
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_2f
    const/16 v5, 0x10

    if-ge v4, v5, :cond_84

    .line 402
    add-int v5, p1, v4

    aget-wide v6, p0, v5

    add-int v5, p3, v4

    aget-wide v8, p2, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_47

    .line 403
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    .line 405
    :cond_47
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, p0, v6

    long-to-double v6, v6

    long-to-double v8, v2

    mul-double/2addr v6, v8

    add-int v8, p3, v4

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, p2, v8

    long-to-double v8, v8

    long-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-long v8, v2, v0

    long-to-double v8, v8

    div-double/2addr v6, v8

    double-to-long v6, v6

    aput-wide v6, p0, v5

    .line 409
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v6, p0, v5

    add-int v5, p3, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v8, p2, v5

    cmp-long v5, v6, v8

    if-gez v5, :cond_81

    .line 410
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    .line 401
    :cond_81
    add-int/lit8 v4, v4, 0x3

    goto :goto_2f

    .line 414
    .end local v4    # "i":I
    :cond_84
    return-void
.end method

.method static binarySearch([III)I
    .registers 9
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 2039
    const/4 v1, 0x0

    .line 2040
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 2042
    .local v0, "hi":I
    :goto_3
    if-gt v1, v0, :cond_1c

    .line 2043
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 2044
    .local v2, "mid":I
    aget v4, p0, v2

    sget v5, OFFSET_TYPE_SHIFT:I

    shr-int/2addr v4, v5

    sget v5, OFFSET_TYPE_MASK:I

    and-int v3, v4, v5

    .line 2046
    .local v3, "midVal":I
    if-ge v3, p2, :cond_17

    .line 2047
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 2048
    :cond_17
    if-le v3, p2, :cond_1e

    .line 2049
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 2054
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1c
    xor-int/lit8 v2, v1, -0x1

    :cond_1e
    return v2
.end method

.method private buildTimePeriodStartClockStr()V
    .registers 5

    .prologue
    .line 1456
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v2, p0, mTimePeriodStartClock:J

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mTimePeriodStartClockStr:Ljava/lang/String;

    .line 1458
    return-void
.end method

.method public static computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V
    .registers 32
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    .prologue
    .line 595
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 596
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 598
    const/4 v11, 0x0

    .local v11, "is":I
    :goto_35
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_1c4

    .line 599
    const/4 v9, 0x0

    .local v9, "im":I
    :goto_45
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_1c0

    .line 600
    const/4 v10, 0x0

    .local v10, "ip":I
    :goto_55
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_1bc

    .line 601
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    add-int v22, v22, v23

    mul-int/lit8 v22, v22, 0xe

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v10

    add-int v8, v22, v23

    .line 603
    .local v8, "bucket":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v24

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 604
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v20

    .line 605
    .local v20, "samples":J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_fe

    .line 606
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v16

    .line 607
    .local v16, "minPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 608
    .local v4, "avgPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v12

    .line 609
    .local v12, "maxPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v18

    .line 610
    .local v18, "minUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    .line 611
    .local v6, "avgUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    .line 612
    .local v14, "maxUss":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_102

    .line 613
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 614
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 615
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 616
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 617
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 618
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 637
    :cond_f0
    :goto_f0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    add-long v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 600
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    :cond_fe
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_55

    .line 620
    .restart local v4    # "avgPss":J
    .restart local v6    # "avgUss":J
    .restart local v12    # "maxPss":J
    .restart local v14    # "maxUss":J
    .restart local v16    # "minPss":J
    .restart local v18    # "minUss":J
    :cond_102
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v16, v22

    if-gez v22, :cond_112

    .line 621
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 623
    :cond_112
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    long-to-double v0, v4

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 625
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v12, v22

    if-lez v22, :cond_15e

    .line 626
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 628
    :cond_15e
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v18, v22

    if-gez v22, :cond_16e

    .line 629
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 631
    :cond_16e
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    long-to-double v0, v6

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 633
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-lez v22, :cond_f0

    .line 634
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    goto/16 :goto_f0

    .line 599
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v8    # "bucket":I
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    .end local v20    # "samples":J
    :cond_1bc
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_45

    .line 598
    .end local v10    # "ip":I
    :cond_1c0
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_35

    .line 642
    .end local v9    # "im":I
    :cond_1c4
    return-void
.end method

.method static computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J
    .registers 14
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .prologue
    .line 646
    const-wide/16 v4, 0x0

    .line 656
    .local v4, "totalTime":J
    const/4 v3, 0x0

    .local v3, "is":I
    :goto_3
    array-length v6, p1

    if-ge v3, v6, :cond_27

    .line 657
    const/4 v1, 0x0

    .local v1, "im":I
    :goto_7
    array-length v6, p2

    if-ge v1, v6, :cond_24

    .line 658
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_b
    array-length v6, p3

    if-ge v2, v6, :cond_21

    .line 659
    aget v6, p1, v3

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    aget v7, p3, v2

    add-int v0, v6, v7

    .line 661
    .local v0, "bucket":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 658
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 657
    .end local v0    # "bucket":I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 656
    .end local v2    # "ip":I
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 665
    .end local v1    # "im":I
    :cond_27
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    .line 666
    return-wide v4
.end method

.method static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .registers 16
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 541
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_21

    .line 542
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_6
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1e

    .line 543
    add-int v2, v0, v1

    .line 544
    .local v2, "state":I
    aget-wide v4, p2, v2

    .line 545
    .local v4, "time":J
    if-ne p3, v2, :cond_12

    .line 546
    sub-long v6, p6, p4

    add-long/2addr v4, v6

    .line 548
    :cond_12
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1b

    .line 549
    invoke-static {p0, v2, v4, v5}, printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 542
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 541
    .end local v2    # "state":I
    .end local v4    # "time":J
    :cond_1e
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 553
    .end local v0    # "imem":I
    :cond_21
    return-void
.end method

.method static dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .registers 25
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    .line 1297
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v8, v15, :cond_d3

    .line 1298
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v9, v15, v8

    .line 1299
    .local v9, "off":I
    sget v15, OFFSET_TYPE_SHIFT:I

    shr-int v15, v9, v15

    sget v22, OFFSET_TYPE_MASK:I

    and-int v14, v15, v22

    .line 1300
    .local v14, "type":I
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, getLong(II)J

    move-result-wide v6

    .line 1301
    .local v6, "count":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, getLong(II)J

    move-result-wide v12

    .line 1302
    .local v12, "min":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, getLong(II)J

    move-result-wide v4

    .line 1303
    .local v4, "avg":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, getLong(II)J

    move-result-wide v10

    .line 1304
    .local v10, "max":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, getLong(II)J

    move-result-wide v20

    .line 1305
    .local v20, "umin":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, getLong(II)J

    move-result-wide v16

    .line 1306
    .local v16, "uavg":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, getLong(II)J

    move-result-wide v18

    .line 1307
    .local v18, "umax":J
    const/16 v15, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1308
    move-object/from16 v0, p0

    invoke-static {v0, v14}, printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1309
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1310
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1311
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1312
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1313
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1314
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1315
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1316
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1317
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1318
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1319
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1320
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1321
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1322
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1297
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1324
    .end local v4    # "avg":J
    .end local v6    # "count":J
    .end local v9    # "off":I
    .end local v10    # "max":J
    .end local v12    # "min":J
    .end local v14    # "type":I
    .end local v16    # "uavg":J
    .end local v18    # "umax":J
    .end local v20    # "umin":J
    :cond_d3
    return-void
.end method

.method static dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V
    .registers 14
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "now"    # J

    .prologue
    .line 1280
    const/4 v0, 0x0

    .line 1281
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    if-ge v1, v6, :cond_29

    .line 1282
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    aget v2, v6, v1

    .line 1283
    .local v2, "off":I
    sget v6, OFFSET_TYPE_SHIFT:I

    shr-int v6, v2, v6

    sget v7, OFFSET_TYPE_MASK:I

    and-int v3, v6, v7

    .line 1284
    .local v3, "type":I
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, getLong(II)J

    move-result-wide v4

    .line 1285
    .local v4, "time":J
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v6, v3, :cond_23

    .line 1286
    const/4 v0, 0x1

    .line 1287
    iget-wide v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    .line 1289
    :cond_23
    invoke-static {p0, v3, v4, v5}, printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1281
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1291
    .end local v2    # "off":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    :cond_29
    if-nez v0, :cond_39

    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_39

    .line 1292
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iget-wide v8, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v8, p2, v8

    invoke-static {p0, v6, v8, v9}, printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1294
    :cond_39
    return-void
.end method

.method private dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p4, "dumpAll"    # Z

    .prologue
    .line 2161
    if-eqz p4, :cond_6f

    .line 2162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2163
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2164
    const-string v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2165
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2166
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_44

    .line 2168
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2170
    :cond_44
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq p3, v0, :cond_6f

    .line 2171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2172
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2173
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    :cond_6f
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    if-eqz v0, :cond_80

    .line 2177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2179
    :cond_80
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v0, :cond_91

    .line 2180
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2182
    :cond_91
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_99

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_b1

    .line 2183
    :cond_99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2184
    const-string v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2187
    :cond_b1
    return-void
.end method

.method static dumpProcessList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJ)V
    .registers 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJ)V"
        }
    .end annotation

    .prologue
    .line 1067
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_19
    if-ltz v8, :cond_5e

    .line 1069
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1070
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    iget-object v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1074
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    const-string v0, " entries)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    .line 1078
    invoke-static/range {v0 .. v7}, dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 1079
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v0, :cond_5b

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1080
    invoke-static/range {v0 .. v5}, dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 1068
    :cond_5b
    add-int/lit8 v8, v8, -0x1

    goto :goto_19

    .line 1083
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_5e
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .registers 22
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    .prologue
    .line 1222
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const-string/jumbo v0, "process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1223
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1225
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1226
    const-string/jumbo v0, "vers"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1227
    const-string v4, "\t"

    if-eqz p2, :cond_6c

    move-object v3, p3

    :goto_21
    if-eqz p4, :cond_6f

    move-object/from16 v2, p5

    :goto_25
    if-eqz p6, :cond_72

    move-object/from16 v0, p7

    :goto_29
    invoke-static {p0, v4, v3, v2, v0}, dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 1230
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1231
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "i":I
    :goto_35
    if-ltz v10, :cond_74

    .line 1232
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1233
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1234
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1235
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1236
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1237
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    .line 1238
    invoke-static/range {v0 .. v9}, dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V

    .line 1240
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1231
    add-int/lit8 v10, v10, -0x1

    goto :goto_35

    .line 1227
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "i":I
    :cond_6c
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_21

    :cond_6f
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_25

    :cond_72
    const/4 v0, 0x0

    goto :goto_29

    .line 1242
    .restart local v10    # "i":I
    :cond_74
    return-void
.end method

.method static dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V
    .registers 24
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I

    .prologue
    .line 877
    const/4 v10, 0x0

    .line 878
    .local v10, "printedHeader":Z
    const/4 v12, -0x1

    .line 879
    .local v12, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_3
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v8, v13, :cond_124

    .line 880
    const/4 v11, -0x1

    .line 881
    .local v11, "printedMem":I
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_a
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v3, v13, :cond_120

    .line 882
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_10
    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v7, v13, :cond_11c

    .line 883
    aget v9, p3, v8

    .line 884
    .local v9, "iscreen":I
    aget v6, p4, v3

    .line 885
    .local v6, "imem":I
    add-int v13, v9, v6

    mul-int/lit8 v13, v13, 0xe

    aget v14, p5, v7

    add-int v2, v13, v14

    .line 886
    .local v2, "bucket":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v4

    .line 887
    .local v4, "count":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_112

    .line 888
    if-nez v10, :cond_4a

    .line 889
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    const-string v13, "PSS/USS ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 892
    const-string v13, " entries):"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const/4 v10, 0x1

    .line 895
    :cond_4a
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    const-string v13, "  "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_63

    .line 898
    if-eq v12, v9, :cond_116

    move v13, v9

    :goto_5d
    move-object/from16 v0, p0

    invoke-static {v0, v13}, printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 900
    move v12, v9

    .line 902
    :cond_63
    move-object/from16 v0, p4

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_74

    .line 903
    if-eq v11, v6, :cond_119

    move v13, v6

    :goto_6c
    const/16 v14, 0x2f

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 904
    move v11, v6

    .line 906
    :cond_74
    sget-object v13, STATE_NAMES:[Ljava/lang/String;

    aget v14, p5, v7

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 908
    const-string v13, " samples "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 909
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 910
    const-string v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 912
    const-string v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 914
    const-string v13, " / "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 916
    const-string v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 918
    const-string v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 882
    :cond_112
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_10

    .line 898
    :cond_116
    const/4 v13, -0x1

    goto/16 :goto_5d

    .line 903
    :cond_119
    const/4 v13, -0x1

    goto/16 :goto_6c

    .line 881
    .end local v2    # "bucket":I
    .end local v4    # "count":J
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    :cond_11c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 879
    .end local v7    # "ip":I
    :cond_120
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 925
    .end local v3    # "im":I
    .end local v11    # "printedMem":I
    :cond_124
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-eqz v13, :cond_144

    .line 926
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "Killed for excessive wake locks: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    :cond_144
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-eqz v13, :cond_164

    .line 930
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "Killed for excessive CPU use: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    :cond_164
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-eqz v13, :cond_1bc

    .line 934
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "Killed from cached state: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, " times from pss "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v13, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v13, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 940
    :cond_1bc
    return-void
.end method

.method static dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V
    .registers 28
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .prologue
    .line 829
    const-wide/16 v16, 0x0

    .line 830
    .local v16, "totalTime":J
    const/4 v11, -0x1

    .line 831
    .local v11, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_4
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v8, v13, :cond_92

    .line 832
    const/4 v10, -0x1

    .line 833
    .local v10, "printedMem":I
    const/4 v5, 0x0

    .local v5, "im":I
    :goto_b
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v5, v13, :cond_8e

    .line 834
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_11
    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v7, v13, :cond_8a

    .line 835
    aget v9, p3, v8

    .line 836
    .local v9, "iscreen":I
    aget v6, p4, v5

    .line 837
    .local v6, "imem":I
    add-int v13, v9, v6

    mul-int/lit8 v13, v13, 0xe

    aget v18, p5, v7

    add-int v4, v13, v18

    .line 838
    .local v4, "bucket":I
    move-object/from16 v0, p2

    move-wide/from16 v1, p6

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v14

    .line 839
    .local v14, "time":J
    const-string v12, ""

    .line 840
    .local v12, "running":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v13, v4, :cond_34

    .line 841
    const-string v12, " (running)"

    .line 843
    :cond_34
    const-wide/16 v18, 0x0

    cmp-long v13, v14, v18

    if-eqz v13, :cond_83

    .line 844
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    move-object/from16 v0, p3

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_4f

    .line 846
    if-eq v11, v9, :cond_86

    move v13, v9

    :goto_49
    move-object/from16 v0, p0

    invoke-static {v0, v13}, printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 848
    move v11, v9

    .line 850
    :cond_4f
    move-object/from16 v0, p4

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_65

    .line 851
    if-eq v10, v6, :cond_88

    move v13, v6

    :goto_5b
    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v13, v1}, printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 852
    move v10, v6

    .line 854
    :cond_65
    sget-object v13, STATE_NAMES:[Ljava/lang/String;

    aget v18, p5, v7

    aget-object v13, v13, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    add-long v16, v16, v14

    .line 834
    :cond_83
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 846
    :cond_86
    const/4 v13, -0x1

    goto :goto_49

    .line 851
    :cond_88
    const/4 v13, -0x1

    goto :goto_5b

    .line 833
    .end local v4    # "bucket":I
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    .end local v12    # "running":Ljava/lang/String;
    .end local v14    # "time":J
    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    .line 831
    .end local v7    # "ip":I
    :cond_8e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 861
    .end local v5    # "im":I
    .end local v10    # "printedMem":I
    :cond_92
    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_ce

    .line 862
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p3

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_aa

    .line 864
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13}, printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 866
    :cond_aa
    move-object/from16 v0, p4

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_bd

    .line 867
    const/4 v13, -0x1

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v13, v1}, printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 869
    :cond_bd
    const-string v13, "TOTAL  : "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 873
    :cond_ce
    return-void
.end method

.method static dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V
    .registers 38
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    .prologue
    .line 1033
    if-eqz p2, :cond_60

    move-object/from16 v0, p3

    array-length v9, v0

    .line 1034
    .local v9, "NSS":I
    :goto_5
    if-eqz p4, :cond_62

    move-object/from16 v0, p5

    array-length v5, v0

    .line 1035
    .local v5, "NMS":I
    :goto_a
    if-eqz p6, :cond_64

    move-object/from16 v0, p7

    array-length v7, v0

    .line 1036
    .local v7, "NPS":I
    :goto_f
    const/16 v16, 0x0

    .local v16, "iss":I
    :goto_11
    move/from16 v0, v16

    if-ge v0, v9, :cond_a6

    .line 1037
    const/4 v12, 0x0

    .local v12, "ims":I
    :goto_16
    if-ge v12, v5, :cond_a2

    .line 1038
    const/4 v14, 0x0

    .local v14, "ips":I
    :goto_19
    if-ge v14, v7, :cond_9e

    .line 1039
    if-eqz p2, :cond_66

    aget v24, p3, v16

    .line 1040
    .local v24, "vsscreen":I
    :goto_1f
    if-eqz p4, :cond_69

    aget v22, p5, v12

    .line 1041
    .local v22, "vsmem":I
    :goto_23
    if-eqz p6, :cond_6c

    aget v23, p7, v14

    .line 1042
    .local v23, "vsproc":I
    :goto_27
    if-eqz p2, :cond_6f

    const/4 v8, 0x1

    .line 1043
    .local v8, "NSA":I
    :goto_2a
    if-eqz p4, :cond_73

    const/4 v4, 0x1

    .line 1044
    .local v4, "NMA":I
    :goto_2d
    if-eqz p6, :cond_77

    const/4 v6, 0x1

    .line 1045
    .local v6, "NPA":I
    :goto_30
    const-wide/16 v18, 0x0

    .line 1046
    .local v18, "totalTime":J
    const/4 v15, 0x0

    .local v15, "isa":I
    :goto_33
    if-ge v15, v8, :cond_8a

    .line 1047
    const/4 v11, 0x0

    .local v11, "ima":I
    :goto_36
    if-ge v11, v4, :cond_87

    .line 1048
    const/4 v13, 0x0

    .local v13, "ipa":I
    :goto_39
    if-ge v13, v6, :cond_84

    .line 1049
    if-eqz p2, :cond_7b

    const/16 v21, 0x0

    .line 1050
    .local v21, "vascreen":I
    :goto_3f
    if-eqz p4, :cond_7e

    const/16 v17, 0x0

    .line 1051
    .local v17, "vamem":I
    :goto_43
    if-eqz p6, :cond_81

    const/16 v20, 0x0

    .line 1052
    .local v20, "vaproc":I
    :goto_47
    add-int v25, v24, v21

    add-int v25, v25, v22

    add-int v25, v25, v17

    mul-int/lit8 v25, v25, 0xe

    add-int v25, v25, v23

    add-int v10, v25, v20

    .line 1054
    .local v10, "bucket":I
    move-object/from16 v0, p1

    move-wide/from16 v1, p8

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v26

    add-long v18, v18, v26

    .line 1048
    add-int/lit8 v13, v13, 0x1

    goto :goto_39

    .line 1033
    .end local v4    # "NMA":I
    .end local v5    # "NMS":I
    .end local v6    # "NPA":I
    .end local v7    # "NPS":I
    .end local v8    # "NSA":I
    .end local v9    # "NSS":I
    .end local v10    # "bucket":I
    .end local v11    # "ima":I
    .end local v12    # "ims":I
    .end local v13    # "ipa":I
    .end local v14    # "ips":I
    .end local v15    # "isa":I
    .end local v16    # "iss":I
    .end local v17    # "vamem":I
    .end local v18    # "totalTime":J
    .end local v20    # "vaproc":I
    .end local v21    # "vascreen":I
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_60
    const/4 v9, 0x1

    goto :goto_5

    .line 1034
    .restart local v9    # "NSS":I
    :cond_62
    const/4 v5, 0x1

    goto :goto_a

    .line 1035
    .restart local v5    # "NMS":I
    :cond_64
    const/4 v7, 0x1

    goto :goto_f

    .line 1039
    .restart local v7    # "NPS":I
    .restart local v12    # "ims":I
    .restart local v14    # "ips":I
    .restart local v16    # "iss":I
    :cond_66
    const/16 v24, 0x0

    goto :goto_1f

    .line 1040
    .restart local v24    # "vsscreen":I
    :cond_69
    const/16 v22, 0x0

    goto :goto_23

    .line 1041
    .restart local v22    # "vsmem":I
    :cond_6c
    const/16 v23, 0x0

    goto :goto_27

    .line 1042
    .restart local v23    # "vsproc":I
    :cond_6f
    move-object/from16 v0, p3

    array-length v8, v0

    goto :goto_2a

    .line 1043
    .restart local v8    # "NSA":I
    :cond_73
    move-object/from16 v0, p5

    array-length v4, v0

    goto :goto_2d

    .line 1044
    .restart local v4    # "NMA":I
    :cond_77
    move-object/from16 v0, p7

    array-length v6, v0

    goto :goto_30

    .line 1049
    .restart local v6    # "NPA":I
    .restart local v11    # "ima":I
    .restart local v13    # "ipa":I
    .restart local v15    # "isa":I
    .restart local v18    # "totalTime":J
    :cond_7b
    aget v21, p3, v15

    goto :goto_3f

    .line 1050
    .restart local v21    # "vascreen":I
    :cond_7e
    aget v17, p5, v11

    goto :goto_43

    .line 1051
    .restart local v17    # "vamem":I
    :cond_81
    aget v20, p7, v13

    goto :goto_47

    .line 1047
    .end local v17    # "vamem":I
    .end local v21    # "vascreen":I
    :cond_84
    add-int/lit8 v11, v11, 0x1

    goto :goto_36

    .line 1046
    .end local v13    # "ipa":I
    :cond_87
    add-int/lit8 v15, v15, 0x1

    goto :goto_33

    .line 1058
    .end local v11    # "ima":I
    :cond_8a
    const-string v25, "\t"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1038
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_19

    .line 1037
    .end local v4    # "NMA":I
    .end local v6    # "NPA":I
    .end local v8    # "NSA":I
    .end local v15    # "isa":I
    .end local v18    # "totalTime":J
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_9e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_16

    .line 1036
    .end local v14    # "ips":I
    :cond_a2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_11

    .line 1063
    .end local v12    # "ims":I
    :cond_a6
    return-void
.end method

.method static dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .registers 25
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    .prologue
    .line 1088
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v6, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 1090
    .local v6, "totals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-wide/from16 v0, p7

    invoke-static {p1, v6, v0, v1}, computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 1091
    iget-wide v8, v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v8, v8

    move-wide/from16 v0, p9

    long-to-double v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v4, v8, v10

    .line 1093
    .local v4, "percentage":D
    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v7, v4, v8

    if-gez v7, :cond_2c

    iget-wide v8, v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_44

    .line 1094
    :cond_2c
    if-eqz p2, :cond_31

    .line 1095
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    :cond_31
    if-eqz p3, :cond_38

    .line 1098
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    :cond_38
    move-wide/from16 v0, p9

    move/from16 v2, p11

    invoke-virtual {v6, p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 1101
    if-eqz p2, :cond_44

    .line 1102
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1105
    :cond_44
    return-void
.end method

.method static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V
    .registers 24
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "inclUidVers"    # Z
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IZJJ)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_176

    .line 1165
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1166
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    const-string v1, "* "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1168
    iget-object v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1169
    const-string v1, " / "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    iget v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1171
    const-string v1, " / v"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    iget v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1173
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1174
    const-string v4, "         TOTAL: "

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1176
    const-string v4, "    Persistent: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1178
    const-string v4, "           Top: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1180
    const-string v4, "        Imp Fg: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1182
    const-string v4, "        Imp Bg: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x3

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1184
    const-string v4, "        Backup: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x4

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1186
    const-string v4, "     Heavy Wgt: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x5

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1188
    const-string v4, "       Service: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x6

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1190
    const-string v4, "    Service Rs: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x7

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1192
    const-string v4, "      Receiver: "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/16 v3, 0x8

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1194
    const-string v4, "      Bg TOTAL: "

    const/4 v1, 0x5

    new-array v7, v1, [I

    fill-array-data v7, :array_178

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1197
    const-string v4, "        (Home): "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/16 v3, 0x9

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1199
    const-string v4, "    (Last Act): "

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/16 v3, 0xa

    aput v3, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1201
    const-string v4, "      (Cached): "

    const/4 v1, 0x3

    new-array v7, v1, [I

    fill-array-data v7, :array_186

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v1 .. v12}, dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1164
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    .line 1205
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_176
    return-void

    .line 1194
    nop

    :array_178
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    .line 1201
    :array_186
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method static dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V
    .registers 26
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "svc"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "serviceType"    # I
    .param p8, "opCount"    # I
    .param p9, "curState"    # I
    .param p10, "curStartTime"    # J
    .param p12, "now"    # J

    .prologue
    .line 558
    if-gtz p8, :cond_3

    .line 592
    :goto_2
    return-void

    .line 561
    :cond_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 566
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 568
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    move/from16 v0, p8

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 572
    const/4 v2, 0x0

    .line 573
    .local v2, "didCurState":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    move-object/from16 v0, p6

    iget v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mDurationsTableSize:I

    if-ge v3, v9, :cond_6a

    .line 574
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mDurationsTable:[I

    aget v5, v9, v3

    .line 575
    .local v5, "off":I
    sget v9, OFFSET_TYPE_SHIFT:I

    shr-int v9, v5, v9

    sget v10, OFFSET_TYPE_MASK:I

    and-int v8, v9, v10

    .line 576
    .local v8, "type":I
    div-int/lit8 v4, v8, 0x4

    .line 577
    .local v4, "memFactor":I
    rem-int/lit8 v8, v8, 0x4

    .line 578
    move/from16 v0, p7

    if-eq v8, v0, :cond_55

    .line 573
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 581
    :cond_55
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, getLong(II)J

    move-result-wide v6

    .line 582
    .local v6, "time":J
    move/from16 v0, p9

    if-ne v0, v4, :cond_66

    .line 583
    const/4 v2, 0x1

    .line 584
    sub-long v10, p12, p10

    add-long/2addr v6, v10

    .line 586
    :cond_66
    invoke-static {p0, v4, v6, v7}, printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    goto :goto_52

    .line 588
    .end local v4    # "memFactor":I
    .end local v5    # "off":I
    .end local v6    # "time":J
    .end local v8    # "type":I
    :cond_6a
    if-nez v2, :cond_78

    const/4 v9, -0x1

    move/from16 v0, p9

    if-eq v0, v9, :cond_78

    .line 589
    sub-long v10, p12, p10

    move/from16 v0, p9

    invoke-static {p0, v0, v10, v11}, printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 591
    :cond_78
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    goto :goto_2
.end method

.method public static dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J
    .registers 32
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p3, "serviceType"    # I
    .param p4, "curState"    # I
    .param p5, "curStartTime"    # J
    .param p7, "now"    # J

    .prologue
    .line 2395
    const-wide/16 v20, 0x0

    .line 2396
    .local v20, "totalTime":J
    const/4 v15, -0x1

    .line 2397
    .local v15, "printedScreen":I
    const/4 v13, 0x0

    .local v13, "iscreen":I
    :goto_4
    const/16 v4, 0x8

    if-ge v13, v4, :cond_66

    .line 2398
    const/4 v14, -0x1

    .line 2399
    .local v14, "printedMem":I
    const/4 v12, 0x0

    .local v12, "imem":I
    :goto_a
    const/4 v4, 0x4

    if-ge v12, v4, :cond_63

    .line 2400
    add-int v9, v12, v13

    .local v9, "state":I
    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v10, p7

    .line 2401
    # invokes: Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->access$000(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J

    move-result-wide v18

    .line 2403
    .local v18, "time":J
    const-string v16, ""

    .line 2404
    .local v16, "running":Ljava/lang/String;
    move/from16 v0, p4

    if-ne v0, v9, :cond_27

    if-eqz p0, :cond_27

    .line 2405
    const-string v16, " (running)"

    .line 2407
    :cond_27
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-eqz v4, :cond_5c

    .line 2408
    if-eqz p0, :cond_5a

    .line 2409
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    if-eq v15, v13, :cond_5f

    move v4, v13

    :goto_35
    move-object/from16 v0, p0

    invoke-static {v0, v4}, printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 2412
    move v15, v13

    .line 2413
    if-eq v14, v12, :cond_61

    move v4, v12

    :goto_3e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 2414
    move v14, v12

    .line 2415
    const-string v4, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2416
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2418
    :cond_5a
    add-long v20, v20, v18

    .line 2399
    :cond_5c
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 2410
    :cond_5f
    const/4 v4, -0x1

    goto :goto_35

    .line 2413
    :cond_61
    const/4 v4, -0x1

    goto :goto_3e

    .line 2397
    .end local v9    # "state":I
    .end local v16    # "running":Ljava/lang/String;
    .end local v18    # "time":J
    :cond_63
    add-int/lit8 v13, v13, 0x4

    goto :goto_4

    .line 2422
    .end local v12    # "imem":I
    .end local v14    # "printedMem":I
    :cond_66
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-eqz v4, :cond_82

    if-eqz p0, :cond_82

    .line 2423
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    const-string v4, "    TOTAL: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2425
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2426
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 2428
    :cond_82
    return-wide v20
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .registers 20
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 501
    const-wide/16 v8, 0x0

    .line 502
    .local v8, "totalTime":J
    const/4 v3, -0x1

    .line 503
    .local v3, "printedScreen":I
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_4
    const/16 v10, 0x8

    if-ge v1, v10, :cond_4c

    .line 504
    const/4 v2, -0x1

    .line 505
    .local v2, "printedMem":I
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_a
    const/4 v10, 0x4

    if-ge v0, v10, :cond_49

    .line 506
    add-int v5, v0, v1

    .line 507
    .local v5, "state":I
    aget-wide v6, p2, v5

    .line 508
    .local v6, "time":J
    const-string v4, ""

    .line 509
    .local v4, "running":Ljava/lang/String;
    if-ne p3, v5, :cond_1c

    .line 510
    sub-long v10, p6, p4

    add-long/2addr v6, v10

    .line 511
    if-eqz p0, :cond_1c

    .line 512
    const-string v4, " (running)"

    .line 515
    :cond_1c
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_42

    .line 516
    if-eqz p0, :cond_41

    .line 517
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    if-eq v3, v1, :cond_45

    move v10, v1

    :goto_2a
    invoke-static {p0, v10}, printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 520
    move v3, v1

    .line 521
    if-eq v2, v0, :cond_47

    move v10, v0

    :goto_31
    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 522
    move v2, v0

    .line 523
    const-string v10, ": "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    :cond_41
    add-long/2addr v8, v6

    .line 505
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 518
    :cond_45
    const/4 v10, -0x1

    goto :goto_2a

    .line 521
    :cond_47
    const/4 v10, -0x1

    goto :goto_31

    .line 503
    .end local v4    # "running":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v6    # "time":J
    :cond_49
    add-int/lit8 v1, v1, 0x4

    goto :goto_4

    .line 530
    .end local v0    # "imem":I
    .end local v2    # "printedMem":I
    :cond_4c
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_62

    if-eqz p0, :cond_62

    .line 531
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    const-string v10, "    TOTAL: "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 534
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 536
    :cond_62
    return-wide v8
.end method

.method static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .registers 15
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I

    .prologue
    const/4 v7, 0x1

    .line 1000
    if-eqz p2, :cond_4c

    array-length v2, p2

    .line 1001
    .local v2, "NS":I
    :goto_4
    if-eqz p3, :cond_4e

    array-length v0, p3

    .line 1002
    .local v0, "NM":I
    :goto_7
    if-eqz p4, :cond_50

    array-length v1, p4

    .line 1003
    .local v1, "NP":I
    :goto_a
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_b
    if-ge v5, v2, :cond_58

    .line 1004
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_e
    if-ge v3, v0, :cond_55

    .line 1005
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_11
    if-ge v4, v1, :cond_52

    .line 1006
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1007
    const/4 v6, 0x0

    .line 1008
    .local v6, "printed":Z
    if-eqz p2, :cond_22

    array-length v8, p2

    if-le v8, v7, :cond_22

    .line 1009
    aget v8, p2, v5

    invoke-static {p0, v8}, printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1010
    const/4 v6, 0x1

    .line 1012
    :cond_22
    if-eqz p3, :cond_34

    array-length v8, p3

    if-le v8, v7, :cond_34

    .line 1013
    if-eqz v6, :cond_2e

    .line 1014
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    :cond_2e
    aget v8, p3, v3

    invoke-static {p0, v8}, printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1017
    const/4 v6, 0x1

    .line 1019
    :cond_34
    if-eqz p4, :cond_49

    array-length v8, p4

    if-le v8, v7, :cond_49

    .line 1020
    if-eqz v6, :cond_40

    .line 1021
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    :cond_40
    sget-object v8, STATE_NAMES_CSV:[Ljava/lang/String;

    aget v9, p4, v4

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1005
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .end local v0    # "NM":I
    .end local v1    # "NP":I
    .end local v2    # "NS":I
    .end local v3    # "im":I
    .end local v4    # "ip":I
    .end local v5    # "is":I
    .end local v6    # "printed":Z
    :cond_4c
    move v2, v7

    .line 1000
    goto :goto_4

    .restart local v2    # "NS":I
    :cond_4e
    move v0, v7

    .line 1001
    goto :goto_7

    .restart local v0    # "NM":I
    :cond_50
    move v1, v7

    .line 1002
    goto :goto_a

    .line 1004
    .restart local v1    # "NP":I
    .restart local v3    # "im":I
    .restart local v4    # "ip":I
    .restart local v5    # "is":I
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1003
    .end local v4    # "ip":I
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 1028
    .end local v3    # "im":I
    :cond_58
    return-void
.end method

.method static printAdjTag(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 1261
    sget-object v0, ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 1262
    sget-object v0, ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1263
    return-void
.end method

.method static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 1273
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1274
    invoke-static {p0, p1}, printAdjTag(Ljava/io/PrintWriter;I)V

    .line 1275
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1276
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1277
    return-void
.end method

.method static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mod"    # I

    .prologue
    .line 1245
    div-int v0, p2, p3

    .line 1246
    .local v0, "index":I
    if-ltz v0, :cond_11

    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 1247
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1251
    :goto_c
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1

    .line 1249
    :cond_11
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_c
.end method

.method static printLongOffset(I)Ljava/lang/String;
    .registers 4
    .param p0, "off"    # I

    .prologue
    .line 2021
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2022
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, OFFSET_ARRAY_SHIFT:I

    shr-int v1, p0, v1

    sget v2, OFFSET_ARRAY_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2023
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, OFFSET_INDEX_SHIFT:I

    shr-int v1, p0, v1

    sget v2, OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2024
    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, OFFSET_TYPE_SHIFT:I

    shr-int v1, p0, v1

    sget v2, OFFSET_TYPE_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2025
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printMemLabel(Ljava/io/PrintWriter;IC)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I
    .param p2, "sep"    # C

    .prologue
    .line 461
    packed-switch p1, :pswitch_data_48

    .line 483
    const-string v0, "????"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 487
    :cond_d
    :goto_d
    return-void

    .line 463
    :pswitch_e
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    if-eqz p2, :cond_d

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 467
    :pswitch_1b
    const-string v0, "Norm"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 471
    :pswitch_26
    const-string v0, "Mod "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 475
    :pswitch_31
    const-string v0, "Low "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 479
    :pswitch_3c
    const-string v0, "Crit"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_d

    .line 461
    nop

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_e
        :pswitch_1b
        :pswitch_26
        :pswitch_31
        :pswitch_3c
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 490
    if-ltz p1, :cond_c

    .line 491
    const/4 v0, 0x3

    if-gt p1, v0, :cond_d

    .line 492
    sget-object v0, ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    :cond_c
    :goto_c
    return-void

    .line 494
    :cond_d
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c
.end method

.method static printPercent(Ljava/io/PrintWriter;D)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fraction"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1208
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    .line 1209
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_22

    .line 1210
    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    :goto_1c
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1217
    return-void

    .line 1211
    :cond_22
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_3a

    .line 1212
    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1c

    .line 1214
    :cond_3a
    const-string v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method static printProcStateTag(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 1255
    sget-object v0, ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p0, v0, p1, v1}, printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 1256
    sget-object v0, ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 1257
    sget-object v0, STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1258
    return-void
.end method

.method static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 1266
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1267
    invoke-static {p0, p1}, printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1268
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1269
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1270
    return-void
.end method

.method private static printScreenLabel(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 428
    packed-switch p1, :pswitch_data_1c

    .line 439
    :pswitch_3
    const-string v0, "????/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    :goto_8
    return-void

    .line 430
    :pswitch_9
    const-string v0, "     "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 433
    :pswitch_f
    const-string v0, "SOff/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 436
    :pswitch_15
    const-string v0, "SOn /"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 428
    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_9
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_15
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 445
    packed-switch p1, :pswitch_data_1c

    .line 455
    :pswitch_3
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    :goto_8
    :pswitch_8
    return-void

    .line 449
    :pswitch_9
    sget-object v0, ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 452
    :pswitch_12
    sget-object v0, ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 445
    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
    .end packed-switch
.end method

.method static processSummaryLocked(Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)Ljava/util/ArrayList;
    .registers 28
    .param p0, "prefix"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I
    .param p5, "inclUidVers"    # Z
    .param p6, "now"    # J
    .param p8, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IZJJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcStatsCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1111
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .local v12, "procColl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcStatsCollection;>;"
    const-string v14, "ProcessStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ProcStats processSummaryLocked  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, "i":I
    :goto_27
    if-ltz v6, :cond_127

    .line 1117
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1118
    .local v7, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v13, Lcom/android/internal/app/ProcStatsCollection;

    invoke-direct {v13}, Lcom/android/internal/app/ProcStatsCollection;-><init>()V

    .line 1120
    .local v13, "procItem":Lcom/android/internal/app/ProcStatsCollection;
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->Label:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "TOTAL"

    aput-object v16, v14, v15

    .line 1121
    sget-object p4, NON_CACHED_PROC_STATES:[I

    .line 1122
    new-instance v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 1123
    .local v5, "fg_total":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-wide/from16 v0, p6

    invoke-static {v7, v5, v0, v1}, computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 1124
    iget-wide v14, v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v14, v14

    move-wide/from16 v0, p8

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v10, v14, v16

    .line 1126
    .local v10, "percentage_fg_total":D
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->Label:[Ljava/lang/String;

    const/4 v15, 0x1

    const-string v16, "Bg TOTAL"

    aput-object v16, v14, v15

    .line 1127
    const/4 v14, 0x5

    new-array v0, v14, [I

    move-object/from16 p4, v0

    .end local p4    # "procStates":[I
    fill-array-data p4, :array_128

    .line 1129
    .restart local p4    # "procStates":[I
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v4, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 1130
    .local v4, "bg_total":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-wide/from16 v0, p6

    invoke-static {v7, v4, v0, v1}, computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 1131
    iget-wide v14, v4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v14, v14

    move-wide/from16 v0, p8

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v8, v14, v16

    .line 1133
    .local v8, "percentage_bg_total":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v10, v14

    if-gez v14, :cond_96

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, v8, v14

    if-ltz v14, :cond_123

    .line 1134
    :cond_96
    iget-object v14, v7, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iput-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->procName:Ljava/lang/String;

    .line 1135
    iget-wide v14, v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_dd

    .line 1136
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->percentage:[D

    const/4 v15, 0x0

    aput-wide v10, v14, v15

    .line 1137
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->minPss:[J

    const/4 v15, 0x0

    iget-wide v0, v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1138
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->avgPss:[J

    const/4 v15, 0x0

    iget-wide v0, v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1139
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->maxPss:[J

    const/4 v15, 0x0

    iget-wide v0, v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1140
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->minUss:[J

    const/4 v15, 0x0

    iget-wide v0, v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1141
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->avgUss:[J

    const/4 v15, 0x0

    iget-wide v0, v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1142
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->maxUss:[J

    const/4 v15, 0x0

    iget-wide v0, v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1145
    :cond_dd
    iget-wide v14, v4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_120

    .line 1146
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->percentage:[D

    const/4 v15, 0x1

    aput-wide v8, v14, v15

    .line 1147
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->minPss:[J

    const/4 v15, 0x1

    iget-wide v0, v4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1148
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->avgPss:[J

    const/4 v15, 0x1

    iget-wide v0, v4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1149
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->maxPss:[J

    const/4 v15, 0x1

    iget-wide v0, v4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1150
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->minUss:[J

    const/4 v15, 0x1

    iget-wide v0, v4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1151
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->avgUss:[J

    const/4 v15, 0x1

    iget-wide v0, v4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1152
    iget-object v14, v13, Lcom/android/internal/app/ProcStatsCollection;->maxUss:[J

    const/4 v15, 0x1

    iget-wide v0, v4, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v16, v0

    aput-wide v16, v14, v15

    .line 1154
    :cond_120
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    :cond_123
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_27

    .line 1158
    .end local v4    # "bg_total":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .end local v5    # "fg_total":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .end local v7    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "percentage_bg_total":D
    .end local v10    # "percentage_fg_total":D
    .end local v13    # "procItem":Lcom/android/internal/app/ProcStatsCollection;
    :cond_127
    return-object v12

    .line 1127
    :array_128
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 1703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "got":I
    if-eq v0, p2, :cond_27

    .line 1704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mReadError:Ljava/lang/String;

    .line 1705
    const/4 v1, 0x0

    .line 1707
    :goto_26
    return v1

    :cond_27
    const/4 v1, 0x1

    goto :goto_26
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 1541
    const/16 v2, 0x9

    if-gt p2, v2, :cond_9

    .line 1542
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1554
    :goto_8
    return-object v2

    .line 1544
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1545
    .local v0, "index":I
    if-ltz v0, :cond_18

    .line 1546
    iget-object v2, p0, mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_8

    .line 1548
    :cond_18
    xor-int/lit8 v0, v0, -0x1

    .line 1549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1550
    .local v1, "name":Ljava/lang/String;
    :goto_1e
    iget-object v2, p0, mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2d

    .line 1551
    iget-object v2, p0, mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1553
    :cond_2d
    iget-object v2, p0, mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1554
    goto :goto_8
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "array"    # [J
    .param p4, "num"    # I

    .prologue
    .line 1504
    const/16 v4, 0xa

    if-gt p2, v4, :cond_8

    .line 1505
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 1526
    :cond_7
    return-void

    .line 1508
    :cond_8
    array-length v0, p3

    .line 1509
    .local v0, "alen":I
    if-le p4, v0, :cond_2e

    .line 1510
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad array lengths: got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " array is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1513
    :cond_2e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, p4, :cond_4c

    .line 1514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1515
    .local v3, "val":I
    if-ltz v3, :cond_3d

    .line 1516
    int-to-long v4, v3

    aput-wide v4, p3, v2

    .line 1513
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1518
    :cond_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1519
    .local v1, "bottom":I
    xor-int/lit8 v4, v3, -0x1

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p3, v2

    goto :goto_3a

    .line 1522
    .end local v1    # "bottom":I
    .end local v3    # "val":I
    :cond_4c
    :goto_4c
    if-ge v2, v0, :cond_7

    .line 1523
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    .line 1524
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .registers 9
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1711
    const/4 v4, 0x0

    .line 1712
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1713
    .local v2, "initialAvail":I
    if-lez v2, :cond_17

    add-int/lit8 v5, v2, 0x1

    :goto_a
    new-array v1, v5, [B

    .line 1715
    .local v1, "data":[B
    :cond_c
    :goto_c
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1718
    .local v0, "amt":I
    if-gez v0, :cond_1a

    .line 1721
    aput v4, p1, v6

    .line 1722
    return-object v1

    .line 1713
    .end local v0    # "amt":I
    .end local v1    # "data":[B
    :cond_17
    const/16 v5, 0x4000

    goto :goto_a

    .line 1724
    .restart local v0    # "amt":I
    .restart local v1    # "data":[B
    :cond_1a
    add-int/2addr v4, v0

    .line 1725
    array-length v5, v1

    if-lt v4, v5, :cond_c

    .line 1726
    add-int/lit16 v5, v4, 0x4000

    new-array v3, v5, [B

    .line 1729
    .local v3, "newData":[B
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1730
    move-object v1, v3

    goto :goto_c
.end method

.method private readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1464
    .local v1, "size":I
    if-gez v1, :cond_2c

    .line 1465
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    sget-object v2, BAD_TABLE:[I

    .line 1482
    :cond_2b
    :goto_2b
    return-object v2

    .line 1468
    :cond_2c
    if-nez v1, :cond_30

    move-object v2, v3

    .line 1469
    goto :goto_2b

    .line 1471
    :cond_30
    new-array v2, v1, [I

    .line 1472
    .local v2, "table":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    if-ge v0, v1, :cond_2b

    .line 1473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v0

    .line 1476
    aget v4, v2, v0

    invoke-virtual {p0, v4}, validateLongOffset(I)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 1477
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring existing stats; bad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " table entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-static {v6}, printLongOffset(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1479
    goto :goto_2b

    .line 1472
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method

.method private resetCommon()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mTimePeriodStartClock:J

    .line 1427
    invoke-direct {p0}, buildTimePeriodStartClockStr()V

    .line 1428
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mTimePeriodEndRealtime:J

    iput-wide v0, p0, mTimePeriodStartRealtime:J

    .line 1429
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mTimePeriodEndUptime:J

    iput-wide v0, p0, mTimePeriodStartUptime:J

    .line 1430
    iget-object v0, p0, mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1431
    iget-object v0, p0, mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    iput v2, p0, mNextLong:I

    .line 1433
    iget-object v0, p0, mMemFactorDurations:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 1434
    iput-object v3, p0, mSysMemUsageTable:[I

    .line 1435
    iput v2, p0, mSysMemUsageTableSize:I

    .line 1436
    iput-wide v4, p0, mStartTime:J

    .line 1437
    iput-object v3, p0, mReadError:Ljava/lang/String;

    .line 1438
    iput v2, p0, mFlags:I

    .line 1439
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, evaluateSystemProperties(Z)Z

    .line 1440
    return-void
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1529
    iget-object v1, p0, mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1530
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    .line 1531
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    :goto_11
    return-void

    .line 1534
    :cond_12
    iget-object v1, p0, mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1535
    iget-object v1, p0, mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .registers 14
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "array"    # [J
    .param p3, "num"    # I

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 1486
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, p3, :cond_47

    .line 1487
    aget-wide v4, p2, v1

    .line 1488
    .local v4, "val":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_28

    .line 1489
    const-string v3, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time val negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const-wide/16 v4, 0x0

    .line 1492
    :cond_28
    cmp-long v3, v4, v8

    if-gtz v3, :cond_33

    .line 1493
    long-to-int v3, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1486
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1495
    :cond_33
    const/16 v3, 0x20

    shr-long v6, v4, v3

    and-long/2addr v6, v8

    long-to-int v3, v6

    xor-int/lit8 v2, v3, -0x1

    .line 1496
    .local v2, "top":I
    const-wide/32 v6, 0xfffffff

    and-long/2addr v6, v4

    long-to-int v0, v6

    .line 1497
    .local v0, "bottom":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 1501
    .end local v0    # "bottom":I
    .end local v2    # "top":I
    .end local v4    # "val":J
    :cond_47
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/ProcessStats;)V
    .registers 42
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats;

    .prologue
    .line 270
    move-object/from16 v0, p1

    iget-object v4, v0, mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v29

    .line 271
    .local v29, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/16 v18, 0x0

    .local v18, "ip":I
    :goto_a
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_f2

    .line 272
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 273
    .local v5, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/util/SparseArray;

    .line 274
    .local v35, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v21, 0x0

    .local v21, "iu":I
    :goto_28
    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_ee

    .line 275
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 276
    .local v6, "uid":I
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/util/SparseArray;

    .line 277
    .local v37, "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v22, 0x0

    .local v22, "iv":I
    :goto_44
    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_ea

    .line 278
    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 279
    .local v7, "vers":I
    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 280
    .local v27, "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 281
    .local v14, "NPROCS":I
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 282
    .local v15, "NSRVS":I
    const/16 v19, 0x0

    .local v19, "iproc":I
    :goto_70
    move/from16 v0, v19

    if-ge v0, v14, :cond_bc

    .line 283
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 284
    .local v26, "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, v26

    if-eq v4, v0, :cond_b9

    .line 287
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v8

    .line 289
    .local v8, "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-ne v4, v8, :cond_b4

    .line 291
    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 293
    .local v24, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v30

    .line 295
    .local v30, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-wide/from16 v0, v24

    invoke-virtual {v8, v4, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v8

    .line 296
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v9, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v24    # "now":J
    .end local v30    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_b4
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 282
    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_b9
    add-int/lit8 v19, v19, 0x1

    goto :goto_70

    .line 301
    .end local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_bc
    const/16 v20, 0x0

    .local v20, "isvc":I
    :goto_be
    move/from16 v0, v20

    if-ge v0, v15, :cond_e6

    .line 302
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 305
    .local v28, "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v34

    .line 307
    .local v34, "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->add(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 301
    add-int/lit8 v20, v20, 0x1

    goto :goto_be

    .line 277
    .end local v28    # "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v34    # "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_e6
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_44

    .line 274
    .end local v7    # "vers":I
    .end local v14    # "NPROCS":I
    .end local v15    # "NSRVS":I
    .end local v19    # "iproc":I
    .end local v20    # "isvc":I
    .end local v27    # "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_ea
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_28

    .line 271
    .end local v6    # "uid":I
    .end local v22    # "iv":I
    .end local v37    # "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_ee
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a

    .line 313
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v21    # "iu":I
    .end local v35    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_f2
    move-object/from16 v0, p1

    iget-object v4, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v31

    .line 314
    .local v31, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v18, 0x0

    :goto_fc
    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_18c

    .line 315
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/util/SparseArray;

    .line 316
    .local v36, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v21, 0x0

    .restart local v21    # "iu":I
    :goto_110
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_188

    .line 317
    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 318
    .restart local v6    # "uid":I
    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 319
    .restart local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v4, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 321
    .restart local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v8, :cond_180

    .line 323
    new-instance v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v26

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v9, p0

    move v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 325
    .restart local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v4, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v6, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v9}, getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v33

    .line 328
    .local v33, "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_180

    .line 329
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v33    # "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_180
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 316
    add-int/lit8 v21, v21, 0x1

    goto :goto_110

    .line 314
    .end local v6    # "uid":I
    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_188
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_fc

    .line 336
    .end local v21    # "iu":I
    .end local v36    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_18c
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_18e
    const/16 v4, 0x8

    move/from16 v0, v17

    if-ge v0, v4, :cond_1a6

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, mMemFactorDurations:[J

    aget-wide v10, v4, v17

    move-object/from16 v0, p1

    iget-object v9, v0, mMemFactorDurations:[J

    aget-wide v12, v9, v17

    add-long/2addr v10, v12

    aput-wide v10, v4, v17

    .line 336
    add-int/lit8 v17, v17, 0x1

    goto :goto_18e

    .line 343
    :cond_1a6
    const/16 v17, 0x0

    :goto_1a8
    move-object/from16 v0, p1

    iget v4, v0, mSysMemUsageTableSize:I

    move/from16 v0, v17

    if-ge v0, v4, :cond_1e2

    .line 344
    move-object/from16 v0, p1

    iget-object v4, v0, mSysMemUsageTable:[I

    aget v16, v4, v17

    .line 345
    .local v16, "ent":I
    sget v4, OFFSET_TYPE_SHIFT:I

    shr-int v4, v16, v4

    sget v9, OFFSET_TYPE_MASK:I

    and-int v32, v4, v9

    .line 346
    .local v32, "state":I
    move-object/from16 v0, p1

    iget-object v4, v0, mLongs:Ljava/util/ArrayList;

    sget v9, OFFSET_ARRAY_SHIFT:I

    shr-int v9, v16, v9

    sget v10, OFFSET_ARRAY_MASK:I

    and-int/2addr v9, v10

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [J

    .line 347
    .local v23, "longs":[J
    sget v4, OFFSET_INDEX_SHIFT:I

    shr-int v4, v16, v4

    sget v9, OFFSET_INDEX_MASK:I

    and-int/2addr v4, v9

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, addSysMemUsage(I[JI)V

    .line 343
    add-int/lit8 v17, v17, 0x1

    goto :goto_1a8

    .line 350
    .end local v16    # "ent":I
    .end local v23    # "longs":[J
    .end local v32    # "state":I
    :cond_1e2
    move-object/from16 v0, p1

    iget-wide v10, v0, mTimePeriodStartClock:J

    move-object/from16 v0, p0

    iget-wide v12, v0, mTimePeriodStartClock:J

    cmp-long v4, v10, v12

    if-gez v4, :cond_1fe

    .line 351
    move-object/from16 v0, p1

    iget-wide v10, v0, mTimePeriodStartClock:J

    move-object/from16 v0, p0

    iput-wide v10, v0, mTimePeriodStartClock:J

    .line 352
    move-object/from16 v0, p1

    iget-object v4, v0, mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, mTimePeriodStartClockStr:Ljava/lang/String;

    .line 354
    :cond_1fe
    move-object/from16 v0, p0

    iget-wide v10, v0, mTimePeriodEndRealtime:J

    move-object/from16 v0, p1

    iget-wide v12, v0, mTimePeriodEndRealtime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, mTimePeriodStartRealtime:J

    move-wide/from16 v38, v0

    sub-long v12, v12, v38

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, mTimePeriodEndRealtime:J

    .line 355
    move-object/from16 v0, p0

    iget-wide v10, v0, mTimePeriodEndUptime:J

    move-object/from16 v0, p1

    iget-wide v12, v0, mTimePeriodEndUptime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, mTimePeriodStartUptime:J

    move-wide/from16 v38, v0

    sub-long v12, v12, v38

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, mTimePeriodEndUptime:J

    .line 356
    return-void
.end method

.method addLongData(III)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "num"    # I

    .prologue
    .line 1984
    invoke-virtual {p0, p3}, allocLongData(I)I

    move-result v0

    .line 1985
    .local v0, "off":I
    iget-object v1, p0, mAddLongTable:[I

    if-eqz v1, :cond_1b

    iget-object v1, p0, mAddLongTable:[I

    :goto_a
    iget v2, p0, mAddLongTableSize:I

    or-int v3, p2, v0

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, mAddLongTable:[I

    .line 1988
    iget v1, p0, mAddLongTableSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mAddLongTableSize:I

    .line 1989
    return v0

    .line 1985
    :cond_1b
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_a
.end method

.method addSysMemUsage(I[JI)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "data"    # [J
    .param p3, "dataOff"    # I

    .prologue
    .line 375
    iget-object v3, p0, mSysMemUsageTable:[I

    iget v4, p0, mSysMemUsageTableSize:I

    invoke-static {v3, v4, p1}, binarySearch([III)I

    move-result v0

    .line 377
    .local v0, "idx":I
    if-ltz v0, :cond_29

    .line 378
    iget-object v3, p0, mSysMemUsageTable:[I

    aget v2, v3, v0

    .line 386
    .local v2, "off":I
    :goto_e
    iget-object v3, p0, mLongs:Ljava/util/ArrayList;

    sget v4, OFFSET_ARRAY_SHIFT:I

    shr-int v4, v2, v4

    sget v5, OFFSET_ARRAY_MASK:I

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 387
    .local v1, "longs":[J
    sget v3, OFFSET_INDEX_SHIFT:I

    shr-int v3, v2, v3

    sget v4, OFFSET_INDEX_MASK:I

    and-int v0, v3, v4

    .line 388
    invoke-static {v1, v0, p2, p3}, addSysMemUsage([JI[JI)V

    .line 389
    return-void

    .line 380
    .end local v1    # "longs":[J
    .end local v2    # "off":I
    :cond_29
    iget-object v3, p0, mSysMemUsageTable:[I

    iput-object v3, p0, mAddLongTable:[I

    .line 381
    iget v3, p0, mSysMemUsageTableSize:I

    iput v3, p0, mAddLongTableSize:I

    .line 382
    xor-int/lit8 v3, v0, -0x1

    const/16 v4, 0x10

    invoke-virtual {p0, v3, p1, v4}, addLongData(III)I

    move-result v2

    .line 383
    .restart local v2    # "off":I
    iget-object v3, p0, mAddLongTable:[I

    iput-object v3, p0, mSysMemUsageTable:[I

    .line 384
    iget v3, p0, mAddLongTableSize:I

    iput v3, p0, mSysMemUsageTableSize:I

    goto :goto_e
.end method

.method public addSysMemUsage(JJJJJ)V
    .registers 18
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .prologue
    .line 360
    iget v2, p0, mMemFactor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3b

    .line 361
    iget v2, p0, mMemFactor:I

    mul-int/lit8 v1, v2, 0xe

    .line 362
    .local v1, "state":I
    iget-object v2, p0, mSysMemUsageArgs:[J

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    aput-wide v4, v2, v3

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    const/4 v2, 0x3

    if-ge v0, v2, :cond_35

    .line 364
    iget-object v2, p0, mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x1

    aput-wide p1, v2, v3

    .line 365
    iget-object v2, p0, mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x4

    aput-wide p3, v2, v3

    .line 366
    iget-object v2, p0, mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x7

    aput-wide p5, v2, v3

    .line 367
    iget-object v2, p0, mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xa

    aput-wide p7, v2, v3

    .line 368
    iget-object v2, p0, mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xd

    aput-wide p9, v2, v3

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 370
    :cond_35
    iget-object v2, p0, mSysMemUsageArgs:[J

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, addSysMemUsage(I[JI)V

    .line 372
    .end local v0    # "i":I
    .end local v1    # "state":I
    :cond_3b
    return-void
.end method

.method allocLongData(I)I
    .registers 8
    .param p1, "num"    # I

    .prologue
    .line 1993
    iget-object v3, p0, mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1994
    .local v2, "whichLongs":I
    iget-object v3, p0, mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1995
    .local v0, "longs":[J
    iget v3, p0, mNextLong:I

    add-int/2addr v3, p1

    array-length v4, v0

    if-le v3, v4, :cond_24

    .line 1996
    const/16 v3, 0x1000

    new-array v0, v3, [J

    .line 1997
    iget-object v3, p0, mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    add-int/lit8 v2, v2, 0x1

    .line 1999
    const/4 v3, 0x0

    iput v3, p0, mNextLong:I

    .line 2001
    :cond_24
    sget v3, OFFSET_ARRAY_SHIFT:I

    shl-int v3, v2, v3

    iget v4, p0, mNextLong:I

    sget v5, OFFSET_INDEX_SHIFT:I

    shl-int/2addr v4, v5

    or-int v1, v3, v4

    .line 2002
    .local v1, "off":I
    iget v3, p0, mNextLong:I

    add-int/2addr v3, p1

    iput v3, p0, mNextLong:I

    .line 2003
    return v1
.end method

.method collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;

    .prologue
    .line 2627
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2628
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2629
    .local v0, "ITEMLEN":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2630
    .local v1, "PKGLEN":I
    if-ne v0, v1, :cond_13

    .line 2631
    const-string p2, ""

    .line 2638
    .end local v0    # "ITEMLEN":I
    .end local v1    # "PKGLEN":I
    .end local p2    # "itemName":Ljava/lang/String;
    :cond_12
    :goto_12
    return-object p2

    .line 2632
    .restart local v0    # "ITEMLEN":I
    .restart local v1    # "PKGLEN":I
    .restart local p2    # "itemName":Ljava/lang/String;
    :cond_13
    if-lt v0, v1, :cond_12

    .line 2633
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_12

    .line 2634
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_12
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .registers 32
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "sortProcStates"    # [I
    .param p5, "now"    # J
    .param p7, "reqPackage"    # Ljava/lang/String;
    .param p8, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2577
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2578
    .local v10, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    .line 2579
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_e
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v12, v3, :cond_8e

    .line 2580
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2581
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/SparseArray;

    .line 2582
    .local v20, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v14, 0x0

    .local v14, "iu":I
    :goto_25
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_8b

    .line 2583
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    .line 2584
    .local v22, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 2585
    .local v9, "NVERS":I
    const/4 v15, 0x0

    .local v15, "iv":I
    :goto_38
    if-ge v15, v9, :cond_88

    .line 2586
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2587
    .local v21, "state":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 2588
    .local v8, "NPROCS":I
    if-eqz p7, :cond_56

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    :cond_56
    const/16 v18, 0x1

    .line 2589
    .local v18, "pkgMatch":Z
    :goto_58
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_59
    if-ge v13, v8, :cond_85

    .line 2590
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2591
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v18, :cond_77

    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 2589
    :cond_71
    :goto_71
    add-int/lit8 v13, v13, 0x1

    goto :goto_59

    .line 2588
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v13    # "iproc":I
    .end local v18    # "pkgMatch":Z
    :cond_74
    const/16 v18, 0x0

    goto :goto_58

    .line 2594
    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v13    # "iproc":I
    .restart local v18    # "pkgMatch":Z
    :cond_77
    if-eqz p8, :cond_7f

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2597
    :cond_7f
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 2585
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_85
    add-int/lit8 v15, v15, 0x1

    goto :goto_38

    .line 2582
    .end local v8    # "NPROCS":I
    .end local v13    # "iproc":I
    .end local v18    # "pkgMatch":Z
    .end local v21    # "state":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_88
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 2579
    .end local v9    # "NVERS":I
    .end local v15    # "iv":I
    .end local v22    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_8b
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 2602
    .end local v14    # "iu":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_8e
    new-instance v16, Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2603
    .local v16, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_9a
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v11, v3, :cond_d1

    .line 2604
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    .line 2605
    invoke-static/range {v2 .. v7}, computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_ce

    .line 2606
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2607
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_ce

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 2608
    invoke-static/range {v2 .. v7}, computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    .line 2603
    :cond_ce
    add-int/lit8 v11, v11, 0x1

    goto :goto_9a

    .line 2612
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_d1
    new-instance v3, Lcom/android/internal/app/ProcessStats$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ProcessStats$2;-><init>(Lcom/android/internal/app/ProcessStats;)V

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2623
    return-object v16
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V
    .registers 52
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    .prologue
    .line 681
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 682
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_9
    const/16 v41, 0xe

    move/from16 v0, v41

    if-ge v14, v0, :cond_3a

    .line 683
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 684
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 685
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 686
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput v42, v41, v14

    .line 682
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 688
    :cond_3a
    const/4 v14, 0x0

    :goto_3b
    const/16 v41, 0x10

    move/from16 v0, v41

    if-ge v14, v0, :cond_4e

    .line 689
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 688
    add-int/lit8 v14, v14, 0x1

    goto :goto_3b

    .line 691
    :cond_4e
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 692
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 693
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 694
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 695
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 696
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 697
    const/16 v41, 0x10

    move/from16 v0, v41

    new-array v0, v0, [J

    move-object/from16 v38, v0

    .line 698
    .local v38, "totalMemUsage":[J
    const/4 v14, 0x0

    :goto_87
    move-object/from16 v0, p0

    iget v0, v0, mSysMemUsageTableSize:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_c3

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, mSysMemUsageTable:[I

    move-object/from16 v41, v0

    aget v9, v41, v14

    .line 700
    .local v9, "ent":I
    move-object/from16 v0, p0

    iget-object v0, v0, mLongs:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    sget v42, OFFSET_ARRAY_SHIFT:I

    shr-int v42, v9, v42

    sget v43, OFFSET_ARRAY_MASK:I

    and-int v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [J

    .line 701
    .local v20, "longs":[J
    sget v41, OFFSET_INDEX_SHIFT:I

    shr-int v41, v9, v41

    sget v42, OFFSET_INDEX_MASK:I

    and-int v15, v41, v42

    .line 702
    .local v15, "idx":I
    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v41

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, addSysMemUsage([JI[JI)V

    .line 698
    add-int/lit8 v14, v14, 0x1

    goto :goto_87

    .line 704
    .end local v9    # "ent":I
    .end local v15    # "idx":I
    .end local v20    # "longs":[J
    :cond_c3
    const/16 v18, 0x0

    .local v18, "is":I
    :goto_c5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_241

    .line 705
    const/16 v16, 0x0

    .local v16, "im":I
    :goto_d8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v16

    move/from16 v1, v41

    if-ge v0, v1, :cond_23d

    .line 706
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v41, v0

    aget v41, v41, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v42, v0

    aget v42, v42, v16

    add-int v21, v41, v42

    .line 707
    .local v21, "memBucket":I
    mul-int/lit8 v32, v21, 0xe

    .line 708
    .local v32, "stateBucket":I
    move-object/from16 v0, p0

    iget-object v0, v0, mMemFactorDurations:[J

    move-object/from16 v41, v0

    aget-wide v22, v41, v21

    .line 709
    .local v22, "memTime":J
    move-object/from16 v0, p0

    iget v0, v0, mMemFactor:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v21

    if-ne v0, v1, :cond_11b

    .line 710
    move-object/from16 v0, p0

    iget-wide v0, v0, mStartTime:J

    move-wide/from16 v42, v0

    sub-long v42, p2, v42

    add-long v22, v22, v42

    .line 712
    :cond_11b
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-wide/from16 v42, v0

    add-long v42, v42, v22

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, mSysMemUsageTable:[I

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, mSysMemUsageTableSize:I

    move/from16 v42, v0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, binarySearch([III)I

    move-result v33

    .line 714
    .local v33, "sysIdx":I
    move-object/from16 v20, v38

    .line 715
    .restart local v20    # "longs":[J
    const/4 v15, 0x0

    .line 716
    .restart local v15    # "idx":I
    if-ltz v33, :cond_187

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, mSysMemUsageTable:[I

    move-object/from16 v41, v0

    aget v9, v41, v33

    .line 718
    .restart local v9    # "ent":I
    move-object/from16 v0, p0

    iget-object v0, v0, mLongs:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    sget v42, OFFSET_ARRAY_SHIFT:I

    shr-int v42, v9, v42

    sget v43, OFFSET_ARRAY_MASK:I

    and-int v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [J

    .line 719
    .local v37, "tmpLongs":[J
    sget v41, OFFSET_INDEX_SHIFT:I

    shr-int v41, v9, v41

    sget v42, OFFSET_INDEX_MASK:I

    and-int v36, v41, v42

    .line 720
    .local v36, "tmpIdx":I
    add-int/lit8 v41, v36, 0x0

    aget-wide v42, v37, v41

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-ltz v41, :cond_187

    .line 721
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, addSysMemUsage([JI[JI)V

    .line 722
    move-object/from16 v20, v37

    .line 723
    move/from16 v15, v36

    .line 726
    .end local v9    # "ent":I
    .end local v36    # "tmpIdx":I
    .end local v37    # "tmpLongs":[J
    :cond_187
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x2

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 728
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x5

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 730
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x8

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 732
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0xb

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 734
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0xe

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 736
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x0

    aget-wide v44, v20, v41

    add-long v42, v42, v44

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 705
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_d8

    .line 704
    .end local v15    # "idx":I
    .end local v20    # "longs":[J
    .end local v21    # "memBucket":I
    .end local v22    # "memTime":J
    .end local v32    # "stateBucket":I
    .end local v33    # "sysIdx":I
    :cond_23d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_c5

    .line 739
    .end local v16    # "im":I
    :cond_241
    move-object/from16 v0, p0

    iget-object v0, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v28

    .line 740
    .local v28, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v17, 0x0

    .local v17, "iproc":I
    :goto_24d
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v41

    move/from16 v0, v17

    move/from16 v1, v41

    if-ge v0, v1, :cond_4ca

    .line 741
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/util/SparseArray;

    .line 742
    .local v40, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v19, 0x0

    .local v19, "iu":I
    :goto_263
    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    move-result v41

    move/from16 v0, v19

    move/from16 v1, v41

    if-ge v0, v1, :cond_4c6

    .line 743
    move-object/from16 v0, v40

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 744
    .local v27, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v12, Lcom/android/internal/app/ProcessStats$PssAggr;

    invoke-direct {v12}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    .line 745
    .local v12, "fgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    new-instance v7, Lcom/android/internal/app/ProcessStats$PssAggr;

    invoke-direct {v7}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    .line 746
    .local v7, "bgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    new-instance v8, Lcom/android/internal/app/ProcessStats$PssAggr;

    invoke-direct {v8}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    .line 747
    .local v8, "cachedPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    const/4 v13, 0x0

    .line 748
    .local v13, "havePss":Z
    const/4 v14, 0x0

    :goto_288
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_2df

    .line 749
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    move-object/from16 v41, v0

    aget v26, v41, v14

    .line 750
    .local v26, "off":I
    sget v41, OFFSET_TYPE_SHIFT:I

    shr-int v41, v26, v41

    sget v42, OFFSET_TYPE_MASK:I

    and-int v39, v41, v42

    .line 751
    .local v39, "type":I
    rem-int/lit8 v29, v39, 0xe

    .line 752
    .local v29, "procState":I
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v30

    .line 753
    .local v30, "samples":J
    const-wide/16 v42, 0x0

    cmp-long v41, v30, v42

    if-lez v41, :cond_2c8

    .line 754
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 755
    .local v4, "avg":J
    const/4 v13, 0x1

    .line 756
    const/16 v41, 0x2

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_2cb

    .line 757
    move-wide/from16 v0, v30

    invoke-virtual {v12, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 748
    .end local v4    # "avg":J
    :cond_2c8
    :goto_2c8
    add-int/lit8 v14, v14, 0x1

    goto :goto_288

    .line 758
    .restart local v4    # "avg":J
    :cond_2cb
    const/16 v41, 0x8

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_2d9

    .line 759
    move-wide/from16 v0, v30

    invoke-virtual {v7, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    goto :goto_2c8

    .line 761
    :cond_2d9
    move-wide/from16 v0, v30

    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    goto :goto_2c8

    .line 765
    .end local v4    # "avg":J
    .end local v26    # "off":I
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v39    # "type":I
    :cond_2df
    if-nez v13, :cond_2e4

    .line 742
    :cond_2e1
    add-int/lit8 v19, v19, 0x1

    goto :goto_263

    .line 768
    :cond_2e4
    const/4 v10, 0x0

    .line 769
    .local v10, "fgHasBg":Z
    const/4 v11, 0x0

    .line 770
    .local v11, "fgHasCached":Z
    const/4 v6, 0x0

    .line 771
    .local v6, "bgHasCached":Z
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_30b

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_30b

    .line 772
    const/4 v10, 0x1

    .line 773
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 775
    :cond_30b
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_32f

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_32f

    .line 776
    const/4 v11, 0x1

    .line 777
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 779
    :cond_32f
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_353

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_353

    .line 780
    const/4 v6, 0x1

    .line 781
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 783
    :cond_353
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_378

    if-nez v10, :cond_378

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_378

    .line 784
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 786
    :cond_378
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_39d

    if-nez v6, :cond_39d

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_39d

    .line 787
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 789
    :cond_39d
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_3c2

    if-nez v11, :cond_3c2

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_3c2

    .line 790
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 792
    :cond_3c2
    const/4 v14, 0x0

    :goto_3c3
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_2e1

    .line 793
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    move-object/from16 v41, v0

    aget v26, v41, v14

    .line 794
    .restart local v26    # "off":I
    sget v41, OFFSET_TYPE_SHIFT:I

    shr-int v41, v26, v41

    sget v42, OFFSET_TYPE_MASK:I

    and-int v39, v41, v42

    .line 795
    .restart local v39    # "type":I
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, getLong(II)J

    move-result-wide v34

    .line 796
    .local v34, "time":J
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v39

    if-ne v0, v1, :cond_3ff

    .line 797
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    move-wide/from16 v42, v0

    sub-long v42, p2, v42

    add-long v34, v34, v42

    .line 799
    :cond_3ff
    rem-int/lit8 v29, v39, 0xe

    .line 800
    .restart local v29    # "procState":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v41, v0

    aget-wide v42, v41, v29

    add-long v42, v42, v34

    aput-wide v42, v41, v29

    .line 801
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v30

    .line 803
    .restart local v30    # "samples":J
    const-wide/16 v42, 0x0

    cmp-long v41, v30, v42

    if-lez v41, :cond_49e

    .line 804
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 815
    .restart local v4    # "avg":J
    :goto_423
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v41, v0

    aget-wide v42, v41, v29

    move-wide/from16 v0, v42

    long-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    aget v41, v41, v29

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v42, v42, v44

    long-to-double v0, v4

    move-wide/from16 v44, v0

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    aget v41, v41, v29

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v30

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v24, v42, v44

    .line 819
    .local v24, "newAvg":D
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v41, v0

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v42, v0

    aput-wide v42, v41, v29

    .line 820
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    aget v42, v41, v29

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v42, v42, v30

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v42, v0

    aput v42, v41, v29

    .line 821
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v41, v0

    aget-wide v42, v41, v29

    long-to-double v0, v4

    move-wide/from16 v44, v0

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    aput-wide v42, v41, v29

    .line 792
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3c3

    .line 805
    .end local v4    # "avg":J
    .end local v24    # "newAvg":D
    :cond_49e
    const/16 v41, 0x2

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_4ae

    .line 806
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v30, v0

    .line 807
    iget-wide v4, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_423

    .line 808
    .end local v4    # "avg":J
    :cond_4ae
    const/16 v41, 0x8

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_4be

    .line 809
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v30, v0

    .line 810
    iget-wide v4, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_423

    .line 812
    .end local v4    # "avg":J
    :cond_4be
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v30, v0

    .line 813
    iget-wide v4, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_423

    .line 740
    .end local v4    # "avg":J
    .end local v6    # "bgHasCached":Z
    .end local v7    # "bgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v8    # "cachedPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v10    # "fgHasBg":Z
    .end local v11    # "fgHasCached":Z
    .end local v12    # "fgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v13    # "havePss":Z
    .end local v26    # "off":I
    .end local v27    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v34    # "time":J
    .end local v39    # "type":I
    :cond_4c6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_24d

    .line 825
    .end local v19    # "iu":I
    .end local v40    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_4ca
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1559
    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 51
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 2642
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 2643
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v37

    .line 2644
    .local v37, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const-string/jumbo v4, "vers,5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2645
    const-string/jumbo v4, "period,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2646
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, mTimePeriodStartRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2647
    move-object/from16 v0, p0

    iget-boolean v4, v0, mRunning:Z

    if-eqz v4, :cond_bd

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_46
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2648
    const/16 v36, 0x1

    .line 2649
    .local v36, "partial":Z
    move-object/from16 v0, p0

    iget v4, v0, mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5e

    .line 2650
    const-string v4, ",shutdown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2651
    const/16 v36, 0x0

    .line 2653
    :cond_5e
    move-object/from16 v0, p0

    iget v4, v0, mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6f

    .line 2654
    const-string v4, ",sysprops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2655
    const/16 v36, 0x0

    .line 2657
    :cond_6f
    move-object/from16 v0, p0

    iget v4, v0, mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_80

    .line 2658
    const-string v4, ",complete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2659
    const/16 v36, 0x0

    .line 2661
    :cond_80
    if-eqz v36, :cond_89

    .line 2662
    const-string v4, ",partial"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2664
    :cond_89
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2665
    const-string v4, "config,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2666
    const/16 v29, 0x0

    .local v29, "ip":I
    :goto_9e
    invoke-virtual/range {v37 .. v37}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_2f3

    .line 2667
    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2668
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_c2

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c2

    .line 2666
    :cond_ba
    add-int/lit8 v29, v29, 0x1

    goto :goto_9e

    .line 2647
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v29    # "ip":I
    .end local v36    # "partial":Z
    :cond_bd
    move-object/from16 v0, p0

    iget-wide v4, v0, mTimePeriodEndRealtime:J

    goto :goto_46

    .line 2671
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v29    # "ip":I
    .restart local v36    # "partial":Z
    :cond_c2
    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/util/SparseArray;

    .line 2672
    .local v45, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v32, 0x0

    .local v32, "iu":I
    :goto_ce
    invoke-virtual/range {v45 .. v45}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_ba

    .line 2673
    move-object/from16 v0, v45

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2674
    .local v7, "uid":I
    move-object/from16 v0, v45

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/util/SparseArray;

    .line 2675
    .local v47, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v33, 0x0

    .local v33, "iv":I
    :goto_ea
    invoke-virtual/range {v47 .. v47}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v33

    if-ge v0, v4, :cond_2ef

    .line 2676
    move-object/from16 v0, v47

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 2677
    .local v8, "vers":I
    move-object/from16 v0, v47

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2678
    .local v38, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v26

    .line 2679
    .local v26, "NPROCS":I
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v27

    .line 2680
    .local v27, "NSRVS":I
    const/16 v30, 0x0

    .local v30, "iproc":I
    :goto_116
    move/from16 v0, v30

    move/from16 v1, v26

    if-ge v0, v1, :cond_286

    .line 2681
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2682
    .local v39, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-string/jumbo v4, "pkgproc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2683
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2684
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2685
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2686
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2687
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2688
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2689
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2690
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2691
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2692
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v4, :cond_1ca

    .line 2693
    const-string/jumbo v4, "pkgpss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2694
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2695
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2696
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2697
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2698
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2699
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2700
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2701
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2702
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2704
    :cond_1ca
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v4, :cond_1dc

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v4, :cond_1dc

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v4, :cond_282

    .line 2706
    :cond_1dc
    const-string/jumbo v4, "pkgkills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2707
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2708
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2709
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2710
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2711
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2712
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2713
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2714
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2715
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2716
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2717
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2718
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2719
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2720
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2722
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2723
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2724
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2725
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2726
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2680
    :cond_282
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_116

    .line 2729
    .end local v39    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_286
    const/16 v31, 0x0

    .local v31, "isvc":I
    :goto_288
    move/from16 v0, v31

    move/from16 v1, v27

    if-ge v0, v1, :cond_2eb

    .line 2730
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2732
    .local v9, "serviceName":Ljava/lang/String;
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2733
    .local v10, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    const-string/jumbo v5, "pkgsvc-run"

    const/4 v11, 0x0

    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v17}, dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2736
    const-string/jumbo v5, "pkgsvc-start"

    const/4 v11, 0x1

    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v17}, dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2739
    const-string/jumbo v5, "pkgsvc-bound"

    const/4 v11, 0x2

    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v17}, dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2742
    const-string/jumbo v5, "pkgsvc-exec"

    const/4 v11, 0x3

    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v17}, dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2729
    add-int/lit8 v31, v31, 0x1

    goto :goto_288

    .line 2675
    .end local v9    # "serviceName":Ljava/lang/String;
    .end local v10    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_2eb
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_ea

    .line 2672
    .end local v8    # "vers":I
    .end local v26    # "NPROCS":I
    .end local v27    # "NSRVS":I
    .end local v30    # "iproc":I
    .end local v31    # "isvc":I
    .end local v38    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_2ef
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_ce

    .line 2750
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v32    # "iu":I
    .end local v33    # "iv":I
    .end local v45    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v47    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_2f3
    move-object/from16 v0, p0

    iget-object v4, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v40

    .line 2751
    .local v40, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v29, 0x0

    :goto_2fd
    invoke-virtual/range {v40 .. v40}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_424

    .line 2752
    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 2753
    .local v41, "procName":Ljava/lang/String;
    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/util/SparseArray;

    .line 2754
    .local v46, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v32, 0x0

    .restart local v32    # "iu":I
    :goto_31b
    invoke-virtual/range {v46 .. v46}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_420

    .line 2755
    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2756
    .restart local v7    # "uid":I
    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2757
    .local v42, "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    if-lez v4, :cond_362

    .line 2758
    const-string/jumbo v4, "proc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2759
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2760
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2761
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2762
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2763
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2765
    :cond_362
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v4, :cond_38d

    .line 2766
    const-string/jumbo v4, "pss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2767
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2768
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2769
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2770
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-static {v0, v1}, dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2771
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2773
    :cond_38d
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v4, :cond_39f

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v4, :cond_39f

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v4, :cond_41c

    .line 2775
    :cond_39f
    const-string v4, "kills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2776
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2777
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2778
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2779
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2780
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2781
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2782
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2783
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2784
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2785
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2786
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2787
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2788
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2789
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2790
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2791
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2754
    :cond_41c
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_31b

    .line 2751
    .end local v7    # "uid":I
    .end local v42    # "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_420
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2fd

    .line 2795
    .end local v32    # "iu":I
    .end local v41    # "procName":Ljava/lang/String;
    .end local v46    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_424
    const-string/jumbo v4, "total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2796
    const-string v19, ","

    move-object/from16 v0, p0

    iget-object v0, v0, mMemFactorDurations:[J

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mMemFactor:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mStartTime:J

    move-wide/from16 v22, v0

    move-object/from16 v18, p1

    move-wide/from16 v24, v16

    invoke-static/range {v18 .. v25}, dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 2798
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2799
    move-object/from16 v0, p0

    iget-object v4, v0, mSysMemUsageTable:[I

    if-eqz v4, :cond_4a7

    .line 2800
    const-string/jumbo v4, "sysmemusage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2801
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_45a
    move-object/from16 v0, p0

    iget v4, v0, mSysMemUsageTableSize:I

    move/from16 v0, v28

    if-ge v0, v4, :cond_4a7

    .line 2802
    move-object/from16 v0, p0

    iget-object v4, v0, mSysMemUsageTable:[I

    aget v35, v4, v28

    .line 2803
    .local v35, "off":I
    sget v4, OFFSET_TYPE_SHIFT:I

    shr-int v4, v35, v4

    sget v5, OFFSET_TYPE_MASK:I

    and-int v44, v4, v5

    .line 2804
    .local v44, "type":I
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2805
    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-static {v0, v1}, printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 2806
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_480
    const/16 v4, 0x10

    move/from16 v0, v34

    if-ge v0, v4, :cond_4a4

    .line 2807
    const/4 v4, 0x1

    move/from16 v0, v34

    if-le v0, v4, :cond_492

    .line 2808
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2810
    :cond_492
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, getLong(II)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2806
    add-int/lit8 v34, v34, 0x1

    goto :goto_480

    .line 2801
    :cond_4a4
    add-int/lit8 v28, v28, 0x1

    goto :goto_45a

    .line 2814
    .end local v28    # "i":I
    .end local v34    # "j":I
    .end local v35    # "off":I
    .end local v44    # "type":I
    :cond_4a7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2815
    new-instance v43, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, ALL_SCREEN_ADJ:[I

    sget-object v5, ALL_MEM_ADJ:[I

    move-object/from16 v0, v43

    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 2817
    .local v43, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2818
    const-string/jumbo v4, "weights,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2819
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2820
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2821
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2822
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2823
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2824
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2825
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2826
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2827
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2828
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2829
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2830
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2831
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2832
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2833
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2834
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2835
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2836
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2837
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2838
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2839
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2840
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_571
    const/16 v4, 0xe

    move/from16 v0, v28

    if-ge v0, v4, :cond_59e

    .line 2841
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2842
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v28

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2843
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2844
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v4, v4, v28

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2840
    add-int/lit8 v28, v28, 0x1

    goto :goto_571

    .line 2846
    :cond_59e
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2847
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .registers 26
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "sortProcStates"    # [I
    .param p8, "now"    # J
    .param p10, "totalTime"    # J
    .param p12, "reqPackage"    # Ljava/lang/String;
    .param p13, "activeOnly"    # Z

    .prologue
    .line 2552
    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v8, p12

    move/from16 v9, p13

    invoke-virtual/range {v1 .. v9}, collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 2554
    .local v3, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 2555
    if-eqz p2, :cond_21

    .line 2556
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2557
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2559
    :cond_21
    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v1 .. v11}, dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V

    .line 2562
    :cond_31
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .registers 67
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpAll"    # Z
    .param p7, "activeOnly"    # Z

    .prologue
    .line 2191
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v16

    .line 2193
    .local v16, "totalTime":J
    const/16 v52, 0x0

    .line 2194
    .local v52, "sepNeeded":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mSysMemUsageTable:[I

    if-eqz v4, :cond_32

    .line 2195
    const-string v4, "System memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    const-string v4, "  "

    sget-object v5, ALL_SCREEN_ADJ:[I

    sget-object v7, ALL_MEM_ADJ:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5, v7}, dumpSysMemUsage(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    .line 2197
    const/16 v52, 0x1

    .line 2199
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v44

    .line 2200
    .local v44, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/16 v48, 0x0

    .line 2201
    .local v48, "printedHeader":Z
    const/16 v37, 0x0

    .local v37, "ip":I
    :goto_3e
    invoke-virtual/range {v44 .. v44}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_3bc

    .line 2202
    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 2203
    .local v46, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/util/SparseArray;

    .line 2204
    .local v54, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v40, 0x0

    .local v40, "iu":I
    :goto_5c
    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_3b8

    .line 2205
    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v53

    .line 2206
    .local v53, "uid":I
    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/util/SparseArray;

    .line 2207
    .local v57, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v41, 0x0

    .local v41, "iv":I
    :goto_78
    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v41

    if-ge v0, v4, :cond_3b4

    .line 2208
    move-object/from16 v0, v57

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v56

    .line 2209
    .local v56, "vers":I
    move-object/from16 v0, v57

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2210
    .local v47, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v35

    .line 2211
    .local v35, "NPROCS":I
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v36

    .line 2212
    .local v36, "NSRVS":I
    if-eqz p2, :cond_ae

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    :cond_ae
    const/16 v45, 0x1

    .line 2213
    .local v45, "pkgMatch":Z
    :goto_b0
    if-nez v45, :cond_df

    .line 2214
    const/16 v50, 0x0

    .line 2215
    .local v50, "procMatch":Z
    const/16 v38, 0x0

    .local v38, "iproc":I
    :goto_b6
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_d4

    .line 2216
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2217
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 2218
    const/16 v50, 0x1

    .line 2222
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_d4
    if-nez v50, :cond_df

    .line 2207
    .end local v50    # "procMatch":Z
    :cond_d6
    add-int/lit8 v41, v41, 0x1

    goto :goto_78

    .line 2212
    .end local v38    # "iproc":I
    .end local v45    # "pkgMatch":Z
    :cond_d9
    const/16 v45, 0x0

    goto :goto_b0

    .line 2215
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v38    # "iproc":I
    .restart local v45    # "pkgMatch":Z
    .restart local v50    # "procMatch":Z
    :cond_dc
    add-int/lit8 v38, v38, 0x1

    goto :goto_b6

    .line 2226
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v38    # "iproc":I
    .end local v50    # "procMatch":Z
    :cond_df
    if-gtz v35, :cond_e3

    if-lez v36, :cond_126

    .line 2227
    :cond_e3
    if-nez v48, :cond_f5

    .line 2228
    if-eqz v52, :cond_ea

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2229
    :cond_ea
    const-string v4, "Per-Package Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    const/16 v48, 0x1

    .line 2231
    const/16 v52, 0x1

    .line 2233
    :cond_f5
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, " / v"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2235
    move-object/from16 v0, p1

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    :cond_126
    if-eqz p5, :cond_12a

    if-eqz p6, :cond_1e0

    .line 2238
    :cond_12a
    const/16 v38, 0x0

    .restart local v38    # "iproc":I
    :goto_12c
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_224

    .line 2239
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2240
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v45, :cond_14d

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14d

    .line 2238
    :goto_14a
    add-int/lit8 v38, v38, 0x1

    goto :goto_12c

    .line 2243
    :cond_14d
    if-eqz p7, :cond_175

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_175

    .line 2244
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2245
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14a

    .line 2248
    :cond_175
    const-string v4, "      Process "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2249
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2250
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v4, v4, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_1d8

    .line 2251
    const-string v4, " (multi, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2255
    :goto_19a
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2256
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2257
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    const-string v5, "        "

    sget-object v7, ALL_SCREEN_ADJ:[I

    sget-object v8, ALL_MEM_ADJ:[I

    sget-object v9, ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 2260
    const-string v5, "        "

    sget-object v7, ALL_SCREEN_ADJ:[I

    sget-object v8, ALL_MEM_ADJ:[I

    sget-object v9, ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 2262
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_14a

    .line 2253
    :cond_1d8
    const-string v4, " (unique, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19a

    .line 2265
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v38    # "iproc":I
    :cond_1e0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2266
    .local v9, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v38, 0x0

    .restart local v38    # "iproc":I
    :goto_1e7
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_214

    .line 2267
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2268
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v45, :cond_208

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_208

    .line 2266
    :cond_205
    :goto_205
    add-int/lit8 v38, v38, 0x1

    goto :goto_1e7

    .line 2271
    :cond_208
    if-eqz p7, :cond_210

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_205

    .line 2274
    :cond_210
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_205

    .line 2276
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_214
    const-string v8, "      "

    sget-object v10, ALL_SCREEN_ADJ:[I

    sget-object v11, ALL_MEM_ADJ:[I

    sget-object v12, NON_CACHED_PROC_STATES:[I

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-wide/from16 v14, p3

    invoke-static/range {v7 .. v17}, dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V

    .line 2279
    .end local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_224
    const/16 v39, 0x0

    .local v39, "isvc":I
    :goto_226
    move/from16 v0, v39

    move/from16 v1, v36

    if-ge v0, v1, :cond_d6

    .line 2280
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2281
    .local v24, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-nez v45, :cond_249

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_249

    .line 2279
    :cond_246
    :goto_246
    add-int/lit8 v39, v39, 0x1

    goto :goto_226

    .line 2284
    :cond_249
    if-eqz p7, :cond_271

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_271

    .line 2285
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2286
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_246

    .line 2289
    :cond_271
    if-eqz p6, :cond_39c

    .line 2290
    const-string v4, "      Service "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2294
    :goto_27a
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2295
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2296
    const-string v4, "        Process: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2297
    const-string v20, "        "

    const-string v21, "          "

    const-string v22, "    "

    const-string v23, "Running"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_2c2

    if-eqz p6, :cond_3a5

    :cond_2c2
    const/16 v34, 0x1

    :goto_2c4
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    invoke-virtual/range {v18 .. v34}, dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2300
    const-string v20, "        "

    const-string v21, "          "

    const-string v22, "    "

    const-string v23, "Started"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_2ef

    if-eqz p6, :cond_3a9

    :cond_2ef
    const/16 v34, 0x1

    :goto_2f1
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    invoke-virtual/range {v18 .. v34}, dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2303
    const-string v20, "        "

    const-string v21, "          "

    const-string v22, "      "

    const-string v23, "Bound"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_31c

    if-eqz p6, :cond_3ad

    :cond_31c
    const/16 v34, 0x1

    :goto_31e
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    invoke-virtual/range {v18 .. v34}, dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2306
    const-string v20, "        "

    const-string v21, "          "

    const-string v22, "  "

    const-string v23, "Executing"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_349

    if-eqz p6, :cond_3b1

    :cond_349
    const/16 v34, 0x1

    :goto_34b
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    invoke-virtual/range {v18 .. v34}, dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2309
    if-eqz p6, :cond_246

    .line 2310
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v4, :cond_36e

    .line 2311
    const-string v4, "        mOwner="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2313
    :cond_36e
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v4, :cond_37a

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    if-eqz v4, :cond_246

    .line 2314
    :cond_37a
    const-string v4, "        mStarted="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2315
    const-string v4, " mRestarting="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_246

    .line 2292
    :cond_39c
    const-string v4, "      * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_27a

    .line 2297
    :cond_3a5
    const/16 v34, 0x0

    goto/16 :goto_2c4

    .line 2300
    :cond_3a9
    const/16 v34, 0x0

    goto/16 :goto_2f1

    .line 2303
    :cond_3ad
    const/16 v34, 0x0

    goto/16 :goto_31e

    .line 2306
    :cond_3b1
    const/16 v34, 0x0

    goto :goto_34b

    .line 2204
    .end local v24    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v35    # "NPROCS":I
    .end local v36    # "NSRVS":I
    .end local v38    # "iproc":I
    .end local v39    # "isvc":I
    .end local v45    # "pkgMatch":Z
    .end local v47    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v56    # "vers":I
    :cond_3b4
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_5c

    .line 2201
    .end local v41    # "iv":I
    .end local v53    # "uid":I
    .end local v57    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_3b8
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_3e

    .line 2323
    .end local v40    # "iu":I
    .end local v46    # "pkgName":Ljava/lang/String;
    .end local v54    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_3bc
    move-object/from16 v0, p0

    iget-object v4, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v49

    .line 2324
    .local v49, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v48, 0x0

    .line 2325
    const/16 v42, 0x0

    .local v42, "numShownProcs":I
    const/16 v43, 0x0

    .line 2326
    .local v43, "numTotalProcs":I
    const/16 v37, 0x0

    :goto_3cc
    invoke-virtual/range {v49 .. v49}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_4ca

    .line 2327
    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 2328
    .local v51, "procName":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/SparseArray;

    .line 2329
    .local v55, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v40, 0x0

    .restart local v40    # "iu":I
    :goto_3ea
    invoke-virtual/range {v55 .. v55}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_4c6

    .line 2330
    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v53

    .line 2331
    .restart local v53    # "uid":I
    add-int/lit8 v43, v43, 0x1

    .line 2332
    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2333
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    if-nez v4, :cond_416

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_416

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-nez v4, :cond_416

    .line 2329
    :cond_413
    :goto_413
    add-int/lit8 v40, v40, 0x1

    goto :goto_3ea

    .line 2337
    :cond_416
    iget-boolean v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_413

    .line 2340
    if-eqz p2, :cond_430

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_430

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_413

    .line 2344
    :cond_430
    add-int/lit8 v42, v42, 0x1

    .line 2345
    if-eqz v52, :cond_437

    .line 2346
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2348
    :cond_437
    const/16 v52, 0x1

    .line 2349
    if-nez v48, :cond_444

    .line 2350
    const-string v4, "Multi-Package Common Processes:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    const/16 v48, 0x1

    .line 2353
    :cond_444
    if-eqz p7, :cond_462

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_462

    .line 2354
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_413

    .line 2357
    :cond_462
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2358
    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2359
    const-string v4, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2360
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    const-string v27, "        "

    sget-object v29, ALL_SCREEN_ADJ:[I

    sget-object v30, ALL_MEM_ADJ:[I

    sget-object v31, ALL_PROC_STATES:[I

    move-object/from16 v26, p1

    move-object/from16 v28, v6

    move-wide/from16 v32, p3

    invoke-static/range {v26 .. v33}, dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 2363
    const-string v11, "        "

    sget-object v13, ALL_SCREEN_ADJ:[I

    sget-object v14, ALL_MEM_ADJ:[I

    sget-object v15, ALL_PROC_STATES:[I

    move-object/from16 v10, p1

    move-object v12, v6

    invoke-static/range {v10 .. v15}, dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 2365
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_413

    .line 2326
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v53    # "uid":I
    :cond_4c6
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_3cc

    .line 2368
    .end local v40    # "iu":I
    .end local v51    # "procName":Ljava/lang/String;
    .end local v55    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_4ca
    if-eqz p6, :cond_4f2

    .line 2369
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2370
    const-string v4, "  Total procs: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2371
    const-string v4, " shown of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2374
    :cond_4f2
    if-eqz v52, :cond_4f7

    .line 2375
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2377
    :cond_4f7
    if-eqz p5, :cond_54e

    .line 2378
    const-string v4, "Summary:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v27, p2

    move-wide/from16 v28, p3

    move/from16 v30, p7

    .line 2379
    invoke-virtual/range {v25 .. v30}, dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 2384
    :goto_50d
    if-eqz p6, :cond_54d

    .line 2385
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2386
    const-string v4, "Internal state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2387
    const-string v4, "  Num long arrays: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2388
    const-string v4, "  Next long entry: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, mNextLong:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2389
    const-string v4, "  mRunning="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, mRunning:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2391
    :cond_54d
    return-void

    .line 2381
    :cond_54e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    goto :goto_50d
.end method

.method dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V
    .registers 31
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "count"    # I
    .param p8, "serviceType"    # I
    .param p9, "state"    # I
    .param p10, "startTime"    # J
    .param p12, "now"    # J
    .param p14, "totalTime"    # J
    .param p16, "dumpAll"    # Z

    .prologue
    .line 2435
    if-eqz p7, :cond_2b

    .line 2436
    if-eqz p16, :cond_2c

    .line 2437
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    const-string v2, " op count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    .line 2439
    invoke-static/range {v3 .. v11}, dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    .line 2451
    :cond_2b
    :goto_2b
    return-void

    .line 2442
    :cond_2c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    invoke-static/range {v3 .. v11}, dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    move-result-wide v12

    .line 2444
    .local v12, "myTime":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    const-string v2, " count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2446
    const-string v2, " / time "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2447
    long-to-double v2, v12

    move-wide/from16 v0, p14

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p1, v2, v3}, printPercent(Ljava/io/PrintWriter;D)V

    .line 2448
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2b
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    .prologue
    .line 2454
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    .line 2456
    .local v14, "totalTime":J
    const/4 v6, 0x0

    const-string v7, "  "

    sget-object v8, ALL_SCREEN_ADJ:[I

    sget-object v9, ALL_MEM_ADJ:[I

    sget-object v10, ALL_PROC_STATES:[I

    sget-object v11, NON_CACHED_PROC_STATES:[I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v12, p3

    move-object/from16 v16, p2

    move/from16 v17, p5

    invoke-virtual/range {v4 .. v17}, dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 2458
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 2460
    return-void
.end method

.method dumpSysMemUsage(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I

    .prologue
    .line 961
    const/4 v15, -0x1

    .line 962
    .local v15, "printedScreen":I
    const/4 v12, 0x0

    .local v12, "is":I
    :goto_2
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v12, v2, :cond_a2

    .line 963
    const/4 v14, -0x1

    .line 964
    .local v14, "printedMem":I
    const/4 v10, 0x0

    .local v10, "im":I
    :goto_9
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v10, v2, :cond_9e

    .line 965
    aget v13, p3, v12

    .line 966
    .local v13, "iscreen":I
    aget v11, p4, v10

    .line 967
    .local v11, "imem":I
    add-int v2, v13, v11

    mul-int/lit8 v6, v2, 0xe

    .line 968
    .local v6, "bucket":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, getSysMemUsageValue(II)J

    move-result-wide v8

    .line 969
    .local v8, "count":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_96

    .line 970
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_35

    .line 972
    if-eq v15, v13, :cond_9a

    move v2, v13

    :goto_2f
    move-object/from16 v0, p1

    invoke-static {v0, v2}, printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 974
    move v15, v13

    .line 976
    :cond_35
    move-object/from16 v0, p4

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_45

    .line 977
    if-eq v14, v11, :cond_9c

    move v2, v11

    :goto_3e
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 978
    move v14, v11

    .line 980
    :cond_45
    const-string v2, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 982
    const-string v2, " samples:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string v5, "  Cached"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 985
    const-string v5, "  Free"

    const/4 v7, 0x4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 987
    const-string v5, "  ZRam"

    const/4 v7, 0x7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 989
    const-string v5, "  Kernel"

    const/16 v7, 0xa

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 991
    const-string v5, "  Native"

    const/16 v7, 0xd

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 964
    :cond_96
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 972
    :cond_9a
    const/4 v2, -0x1

    goto :goto_2f

    .line 977
    :cond_9c
    const/4 v2, -0x1

    goto :goto_3e

    .line 962
    .end local v6    # "bucket":I
    .end local v8    # "count":J
    .end local v11    # "imem":I
    .end local v13    # "iscreen":I
    :cond_9e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 996
    .end local v10    # "im":I
    .end local v14    # "printedMem":I
    :cond_a2
    return-void
.end method

.method dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "bucket"    # I
    .param p5, "index"    # I

    .prologue
    const-wide/16 v2, 0x400

    .line 949
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, p4, p5}, getSysMemUsageValue(II)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 952
    const-string v0, " min, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0, p4, v0}, getSysMemUsageValue(II)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 954
    const-string v0, " avg, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    add-int/lit8 v0, p5, 0x2

    invoke-virtual {p0, p4, v0}, getSysMemUsageValue(II)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 956
    const-string v0, " max"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .prologue
    .line 2488
    const-string v4, "Run time Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2489
    const-string v5, "  "

    move-object/from16 v0, p0

    iget-object v6, v0, mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, mStartTime:J

    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    invoke-static/range {v4 .. v11}, dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 2490
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2491
    const-string v4, "Memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2492
    new-instance v17, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, ALL_SCREEN_ADJ:[I

    sget-object v5, ALL_MEM_ADJ:[I

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 2494
    .local v17, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2495
    const-wide/16 v12, 0x0

    .line 2496
    .local v12, "totalPss":J
    const-string v6, "  "

    const-string v7, "Kernel "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2498
    const-string v6, "  "

    const-string v7, "Native "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2500
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_6d
    const/16 v4, 0xe

    if-ge v15, v4, :cond_95

    .line 2502
    const/4 v4, 0x7

    if-eq v15, v4, :cond_92

    .line 2503
    const-string v6, "  "

    sget-object v4, STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v4, v15

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v4, v15

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v14, v4, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2500
    :cond_92
    add-int/lit8 v15, v15, 0x1

    goto :goto_6d

    .line 2508
    :cond_95
    const-string v6, "  "

    const-string v7, "Cached "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2510
    const-string v6, "  "

    const-string v7, "Free   "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2512
    const-string v6, "  "

    const-string v7, "Z-Ram  "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2514
    const-string v4, "  TOTAL  : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2515
    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2516
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2517
    const-string v6, "  "

    sget-object v4, STATE_NAMES:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v7, v4, v5

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    const/4 v5, 0x7

    aget-wide v8, v4, v5

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    const/4 v5, 0x7

    aget v14, v4, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 2520
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2521
    const-string v4, "          Start time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2522
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, p0

    iget-wide v6, v0, mTimePeriodStartClock:J

    invoke-static {v4, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2523
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2524
    const-string v4, "  Total elapsed time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    move-object/from16 v0, p0

    iget-boolean v4, v0, mRunning:Z

    if-eqz v4, :cond_196

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_13a
    move-object/from16 v0, p0

    iget-wide v6, v0, mTimePeriodStartRealtime:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2528
    const/16 v16, 0x1

    .line 2529
    .local v16, "partial":Z
    move-object/from16 v0, p0

    iget v4, v0, mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_157

    .line 2530
    const-string v4, " (shutdown)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2531
    const/16 v16, 0x0

    .line 2533
    :cond_157
    move-object/from16 v0, p0

    iget v4, v0, mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_168

    .line 2534
    const-string v4, " (sysprops)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2535
    const/16 v16, 0x0

    .line 2537
    :cond_168
    move-object/from16 v0, p0

    iget v4, v0, mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_179

    .line 2538
    const-string v4, " (complete)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    const/16 v16, 0x0

    .line 2541
    :cond_179
    if-eqz v16, :cond_182

    .line 2542
    const-string v4, " (partial)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2544
    :cond_182
    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 2545
    move-object/from16 v0, p0

    iget-object v4, v0, mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2546
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2547
    return-void

    .line 2525
    .end local v16    # "partial":Z
    :cond_196
    move-object/from16 v0, p0

    iget-wide v4, v0, mTimePeriodEndRealtime:J

    goto :goto_13a
.end method

.method public evaluateSystemProperties(Z)Z
    .registers 6
    .param p1, "update"    # Z

    .prologue
    .line 1443
    const/4 v0, 0x0

    .line 1444
    .local v0, "changed":Z
    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "runtime":Ljava/lang/String;
    iget-object v2, p0, mRuntime:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1447
    const/4 v0, 0x1

    .line 1448
    if-eqz p1, :cond_1d

    .line 1449
    iput-object v1, p0, mRuntime:Ljava/lang/String;

    .line 1452
    :cond_1d
    return v0
.end method

.method filteredSummaryLocked(Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)Ljava/util/ArrayList;
    .registers 24
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "sortProcStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;
    .param p12, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I[I[I[IJJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcStatsCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2567
    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v1 .. v9}, collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 2570
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v5, 0x1

    move-object v0, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    invoke-static/range {v0 .. v9}, processSummaryLocked(Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getLong(II)J
    .registers 7
    .param p1, "off"    # I
    .param p2, "index"    # I

    .prologue
    .line 2034
    iget-object v1, p0, mLongs:Ljava/util/ArrayList;

    sget v2, OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 2035
    .local v0, "longs":[J
    sget v1, OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I

    .prologue
    .line 2058
    iget-object v3, p0, mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 2059
    .local v2, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v2, :cond_14

    .line 2060
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2061
    .restart local v2    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    iget-object v3, p0, mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2063
    :cond_14
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2064
    .local v0, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v0, :cond_1e

    move-object v1, v0

    .line 2069
    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    .local v1, "as":Ljava/lang/Object;
    :goto_1d
    return-object v1

    .line 2067
    .end local v1    # "as":Ljava/lang/Object;
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_1e
    new-instance v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 2068
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-virtual {v2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 2069
    .restart local v1    # "as":Ljava/lang/Object;
    goto :goto_1d
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .registers 31
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 2074
    invoke-virtual/range {p0 .. p3}, getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v23

    .line 2075
    .local v23, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2076
    .local v4, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v4, :cond_15

    move-object/from16 v24, v4

    .line 2140
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v24, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_14
    return-object v24

    .line 2079
    .end local v24    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2080
    .local v2, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v2, :cond_3f

    .line 2081
    new-instance v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v2    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 2082
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v2    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v3, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2085
    :cond_3f
    iget-boolean v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v3, :cond_ef

    .line 2086
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    iget v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_60

    .line 2089
    move-object v4, v2

    .line 2138
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_54
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v4

    .line 2140
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v24    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_14

    .line 2096
    .end local v24    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_60
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 2101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2104
    .local v10, "now":J
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    iget v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1, v5}, getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v21

    .line 2106
    .local v21, "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v21, :cond_ad

    .line 2107
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v20

    .line 2110
    .local v20, "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v22, v3, -0x1

    .local v22, "i":I
    :goto_90
    if-ltz v22, :cond_df

    .line 2114
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2115
    .local v25, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-ne v3, v2, :cond_aa

    .line 2118
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2113
    :cond_aa
    add-int/lit8 v22, v22, -0x1

    goto :goto_90

    .line 2124
    .end local v20    # "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v22    # "i":I
    .end local v25    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_ad
    const-string v3, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cloning proc state: no package state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_df
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v5, v2

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 2130
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_54

    .line 2134
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "now":J
    .end local v21    # "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_ef
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object v12, v4

    move-object v13, v2

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v12 .. v19}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_54
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    .line 2145
    invoke-virtual {p0, p1, p2, p3}, getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v6

    .line 2146
    .local v6, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2147
    .local v0, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v0, :cond_10

    move-object v7, v0

    .line 2156
    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v7, "ss":Ljava/lang/Object;
    :goto_f
    return-object v7

    .line 2151
    .end local v7    # "ss":Ljava/lang/Object;
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_10
    if-eqz p4, :cond_26

    invoke-virtual {p0, p1, p2, p3, p4}, getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v5

    .line 2153
    .local v5, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_16
    new-instance v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2154
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 2156
    .restart local v7    # "ss":Ljava/lang/Object;
    goto :goto_f

    .line 2151
    .end local v5    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "ss":Ljava/lang/Object;
    :cond_26
    const/4 v5, 0x0

    goto :goto_16
.end method

.method getSysMemUsageValue(II)J
    .registers 7
    .param p1, "state"    # I
    .param p2, "index"    # I

    .prologue
    .line 943
    iget-object v1, p0, mSysMemUsageTable:[I

    iget v2, p0, mSysMemUsageTableSize:I

    invoke-static {v1, v2, p1}, binarySearch([III)I

    move-result v0

    .line 944
    .local v0, "idx":I
    if-ltz v0, :cond_13

    iget-object v1, p0, mSysMemUsageTable:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1, p2}, getLong(II)J

    move-result-wide v2

    :goto_12
    return-wide v2

    :cond_13
    const-wide/16 v2, 0x0

    goto :goto_12
.end method

.method printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .registers 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "memWeight"    # D
    .param p6, "totalTime"    # J
    .param p8, "curTotalMem"    # J
    .param p10, "samples"    # I

    .prologue
    .line 2472
    const-wide/16 v4, 0x0

    cmpl-double v4, p4, v4

    if-eqz v4, :cond_2e

    .line 2473
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, p4

    long-to-double v6, p6

    div-double/2addr v4, v6

    double-to-long v2, v4

    .line 2474
    .local v2, "mem":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2476
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2478
    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    move/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2480
    const-string v4, " samples)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2481
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2482
    add-long p8, p8, v2

    .line 2484
    .end local v2    # "mem":J
    .end local p8    # "curTotalMem":J
    :cond_2e
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1737
    const/4 v4, 0x1

    :try_start_1
    new-array v2, v4, [I

    .line 1738
    .local v2, "len":[I
    invoke-static {p1, v2}, readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 1739
    .local v3, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1740
    .local v1, "in":Landroid/os/Parcel;
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1741
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1742
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1744
    invoke-virtual {p0, v1}, readFromParcel(Landroid/os/Parcel;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 1748
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v2    # "len":[I
    .end local v3    # "raw":[B
    :goto_1c
    return-void

    .line 1745
    :catch_1d
    move-exception v0

    .line 1746
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, mReadError:Ljava/lang/String;

    goto :goto_1c
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 38
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1751
    move-object/from16 v0, p0

    iget-object v13, v0, mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-gtz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-lez v13, :cond_34

    :cond_1c
    const/16 v26, 0x1

    .line 1753
    .local v26, "hadData":Z
    :goto_1e
    if-eqz v26, :cond_23

    .line 1754
    invoke-virtual/range {p0 .. p0}, resetSafely()V

    .line 1757
    :cond_23
    const v13, 0x50535453

    const-string/jumbo v14, "magic number"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_37

    .line 1981
    :cond_33
    :goto_33
    return-void

    .line 1751
    .end local v26    # "hadData":Z
    :cond_34
    const/16 v26, 0x0

    goto :goto_1e

    .line 1760
    .restart local v26    # "hadData":Z
    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1761
    .local v31, "version":I
    const/16 v13, 0x12

    move/from16 v0, v31

    if-eq v0, v13, :cond_5b

    .line 1762
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad version: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto :goto_33

    .line 1765
    :cond_5b
    const/16 v13, 0xe

    const-string/jumbo v14, "state count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 1768
    const/16 v13, 0x8

    const-string v14, "adj count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 1771
    const/4 v13, 0x7

    const-string/jumbo v14, "pss count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 1774
    const/16 v13, 0x10

    const-string/jumbo v14, "sys mem usage count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 1777
    const/16 v13, 0x1000

    const-string v14, "longs size"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 1781
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mIndexToCommonString:Ljava/util/ArrayList;

    .line 1783
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, mTimePeriodStartClock:J

    .line 1784
    invoke-direct/range {p0 .. p0}, buildTimePeriodStartClockStr()V

    .line 1785
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, mTimePeriodStartRealtime:J

    .line 1786
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, mTimePeriodEndRealtime:J

    .line 1787
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, mTimePeriodStartUptime:J

    .line 1788
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, mTimePeriodEndUptime:J

    .line 1789
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mRuntime:Ljava/lang/String;

    .line 1790
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mFlags:I

    .line 1792
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1793
    .local v19, "NLONGS":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1794
    .local v18, "NEXTLONG":I
    move-object/from16 v0, p0

    iget-object v13, v0, mLongs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1795
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_102
    add-int/lit8 v13, v19, -0x1

    move/from16 v0, v28

    if-ge v0, v13, :cond_13a

    .line 1796
    :goto_108
    move-object/from16 v0, p0

    iget-object v13, v0, mLongs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, v28

    if-lt v0, v13, :cond_120

    .line 1797
    move-object/from16 v0, p0

    iget-object v13, v0, mLongs:Ljava/util/ArrayList;

    const/16 v14, 0x1000

    new-array v14, v14, [J

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_108

    .line 1799
    :cond_120
    move-object/from16 v0, p0

    iget-object v13, v0, mLongs:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    const/16 v14, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v13, v14}, readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1795
    add-int/lit8 v28, v28, 0x1

    goto :goto_102

    .line 1801
    :cond_13a
    const/16 v13, 0x1000

    new-array v0, v13, [J

    move-object/from16 v29, v0

    .line 1802
    .local v29, "longs":[J
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mNextLong:I

    .line 1803
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, v29

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1804
    move-object/from16 v0, p0

    iget-object v13, v0, mLongs:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    move-object/from16 v0, p0

    iget-object v13, v0, mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v14, v0, mMemFactorDurations:[J

    array-length v14, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v13, v14}, readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1808
    const-string v13, "ProcessStats"

    const-string/jumbo v14, "sys mem usage"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mSysMemUsageTable:[I

    .line 1809
    move-object/from16 v0, p0

    iget-object v13, v0, mSysMemUsageTable:[I

    sget-object v14, BAD_TABLE:[I

    if-eq v13, v14, :cond_33

    .line 1812
    move-object/from16 v0, p0

    iget-object v13, v0, mSysMemUsageTable:[I

    if-eqz v13, :cond_1b7

    move-object/from16 v0, p0

    iget-object v13, v0, mSysMemUsageTable:[I

    array-length v13, v13

    :goto_192
    move-object/from16 v0, p0

    iput v13, v0, mSysMemUsageTableSize:I

    .line 1814
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1815
    .local v21, "NPROC":I
    if-gez v21, :cond_1b9

    .line 1816
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad process count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1812
    .end local v21    # "NPROC":I
    :cond_1b7
    const/4 v13, 0x0

    goto :goto_192

    .line 1819
    .restart local v21    # "NPROC":I
    :cond_1b9
    if-lez v21, :cond_262

    .line 1820
    add-int/lit8 v21, v21, -0x1

    .line 1821
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    .line 1822
    .local v11, "procName":Ljava/lang/String;
    if-nez v11, :cond_1d1

    .line 1823
    const-string v13, "bad process name"

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1826
    :cond_1d1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1827
    .local v24, "NUID":I
    if-gez v24, :cond_1f9

    .line 1828
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad uid count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1857
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v8, "pkgName":Ljava/lang/String;
    .local v9, "uid":I
    .local v10, "vers":I
    :cond_1f2
    move-object/from16 v0, p0

    iget-object v13, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v11, v9, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1831
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    :cond_1f9
    if-lez v24, :cond_1b9

    .line 1832
    add-int/lit8 v24, v24, -0x1

    .line 1833
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1834
    .restart local v9    # "uid":I
    if-gez v9, :cond_21c

    .line 1835
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1838
    :cond_21c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1839
    .restart local v8    # "pkgName":Ljava/lang/String;
    if-nez v8, :cond_230

    .line 1840
    const-string v13, "bad process package name"

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1843
    :cond_230
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1844
    .restart local v10    # "vers":I
    if-eqz v26, :cond_24e

    move-object/from16 v0, p0

    iget-object v13, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v11, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v6, v13

    .line 1845
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_241
    if-eqz v6, :cond_250

    .line 1846
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_1f2

    goto/16 :goto_33

    .line 1844
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_24e
    const/4 v6, 0x0

    goto :goto_241

    .line 1850
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_250
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 1851
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_1f2

    goto/16 :goto_33

    .line 1863
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    .end local v11    # "procName":Ljava/lang/String;
    .end local v24    # "NUID":I
    :cond_262
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1864
    .local v20, "NPKG":I
    if-gez v20, :cond_283

    .line 1865
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad package count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1868
    :cond_283
    if-lez v20, :cond_444

    .line 1869
    add-int/lit8 v20, v20, -0x1

    .line 1870
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1871
    .restart local v8    # "pkgName":Ljava/lang/String;
    if-nez v8, :cond_29b

    .line 1872
    const-string v13, "bad package name"

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1875
    :cond_29b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1876
    .restart local v24    # "NUID":I
    if-gez v24, :cond_2bc

    .line 1877
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad uid count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1880
    :cond_2bc
    if-lez v24, :cond_283

    .line 1881
    add-int/lit8 v24, v24, -0x1

    .line 1882
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1883
    .restart local v9    # "uid":I
    if-gez v9, :cond_2df

    .line 1884
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1887
    :cond_2df
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1888
    .local v25, "NVERS":I
    if-gez v25, :cond_300

    .line 1889
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad versions count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1892
    :cond_300
    if-lez v25, :cond_2bc

    .line 1893
    add-int/lit8 v25, v25, -0x1

    .line 1894
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1895
    .restart local v10    # "vers":I
    new-instance v30, Lcom/android/internal/app/ProcessStats$PackageState;

    move-object/from16 v0, v30

    invoke-direct {v0, v8, v9}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1896
    .local v30, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, p0

    iget-object v13, v0, mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/SparseArray;

    .line 1897
    .local v32, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v32, :cond_329

    .line 1898
    new-instance v32, Landroid/util/SparseArray;

    .end local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-direct/range {v32 .. v32}, Landroid/util/SparseArray;-><init>()V

    .line 1899
    .restart local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v32

    invoke-virtual {v13, v8, v9, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1901
    :cond_329
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1902
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1903
    .local v22, "NPROCS":I
    if-gez v22, :cond_358

    .line 1904
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad package process count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1943
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v7, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v11    # "procName":Ljava/lang/String;
    .local v27, "hasProc":I
    :cond_351
    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v11    # "procName":Ljava/lang/String;
    .end local v27    # "hasProc":I
    :cond_358
    :goto_358
    if-lez v22, :cond_3d2

    .line 1908
    add-int/lit8 v22, v22, -0x1

    .line 1909
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    .line 1910
    .restart local v11    # "procName":Ljava/lang/String;
    if-nez v11, :cond_370

    .line 1911
    const-string v13, "bad package process name"

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1914
    :cond_370
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1917
    .restart local v27    # "hasProc":I
    move-object/from16 v0, p0

    iget-object v13, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v11, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1920
    .restart local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v7, :cond_39a

    .line 1921
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no common proc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1924
    :cond_39a
    if-eqz v27, :cond_3ca

    .line 1929
    if-eqz v26, :cond_3b6

    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v6, v13

    .line 1930
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_3a9
    if-eqz v6, :cond_3b8

    .line 1931
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_351

    goto/16 :goto_33

    .line 1929
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3b6
    const/4 v6, 0x0

    goto :goto_3a9

    .line 1935
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3b8
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-wide/16 v12, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 1937
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_351

    goto/16 :goto_33

    .line 1947
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3ca
    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_358

    .line 1950
    .end local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v11    # "procName":Ljava/lang/String;
    .end local v27    # "hasProc":I
    :cond_3d2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1951
    .local v23, "NSRVS":I
    if-gez v23, :cond_3fa

    .line 1952
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bad package service count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1972
    .local v12, "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v15, "serviceName":Ljava/lang/String;
    .local v16, "processName":Ljava/lang/String;
    :cond_3f3
    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    .end local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v15    # "serviceName":Ljava/lang/String;
    .end local v16    # "processName":Ljava/lang/String;
    :cond_3fa
    if-lez v23, :cond_300

    .line 1956
    add-int/lit8 v23, v23, -0x1

    .line 1957
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1958
    .restart local v15    # "serviceName":Ljava/lang/String;
    if-nez v15, :cond_40c

    .line 1959
    const-string v13, "bad package service name"

    move-object/from16 v0, p0

    iput-object v13, v0, mReadError:Ljava/lang/String;

    goto/16 :goto_33

    .line 1962
    :cond_40c
    const/16 v13, 0x9

    move/from16 v0, v31

    if-le v0, v13, :cond_43f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    .line 1963
    .restart local v16    # "processName":Ljava/lang/String;
    :goto_41c
    if-eqz v26, :cond_442

    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object v12, v13

    .line 1964
    .restart local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    :goto_429
    if-nez v12, :cond_435

    .line 1965
    new-instance v12, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    const/16 v17, 0x0

    move-object/from16 v13, p0

    move-object v14, v8

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 1967
    .restart local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_435
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/internal/app/ProcessStats$ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v13

    if-nez v13, :cond_3f3

    goto/16 :goto_33

    .line 1962
    .end local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v16    # "processName":Ljava/lang/String;
    :cond_43f
    const/16 v16, 0x0

    goto :goto_41c

    .line 1963
    .restart local v16    # "processName":Ljava/lang/String;
    :cond_442
    const/4 v12, 0x0

    goto :goto_429

    .line 1978
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    .end local v15    # "serviceName":Ljava/lang/String;
    .end local v16    # "processName":Ljava/lang/String;
    .end local v22    # "NPROCS":I
    .end local v23    # "NSRVS":I
    .end local v24    # "NUID":I
    .end local v25    # "NVERS":I
    .end local v30    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_444
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, mIndexToCommonString:Ljava/util/ArrayList;

    goto/16 :goto_33
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 1328
    invoke-direct {p0}, resetCommon()V

    .line 1329
    iget-object v0, p0, mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1330
    iget-object v0, p0, mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1331
    const/4 v0, -0x1

    iput v0, p0, mMemFactor:I

    .line 1332
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mStartTime:J

    .line 1334
    return-void
.end method

.method public resetSafely()V
    .registers 20

    .prologue
    .line 1338
    invoke-direct/range {p0 .. p0}, resetCommon()V

    .line 1341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1342
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 1343
    .local v11, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    .local v2, "ip":I
    :goto_17
    if-ltz v2, :cond_3b

    .line 1344
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 1345
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .local v5, "iu":I
    :goto_25
    if-ltz v5, :cond_38

    .line 1346
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats$ProcessState;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    .line 1345
    add-int/lit8 v5, v5, -0x1

    goto :goto_25

    .line 1343
    :cond_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 1352
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 1353
    .local v7, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_4b
    if-ltz v2, :cond_12d

    .line 1354
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 1355
    .local v14, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .restart local v5    # "iu":I
    :goto_59
    if-ltz v5, :cond_120

    .line 1356
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;

    .line 1357
    .local v16, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .local v6, "iv":I
    :goto_67
    if-ltz v6, :cond_113

    .line 1358
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1359
    .local v10, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    .local v3, "iproc":I
    :goto_7b
    if-ltz v3, :cond_c8

    .line 1360
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1361
    .local v12, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_af

    .line 1362
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 1363
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    .line 1364
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1359
    :goto_ac
    add-int/lit8 v3, v3, -0x1

    goto :goto_7b

    .line 1366
    :cond_af
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 1367
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_ac

    .line 1370
    .end local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_c8
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    .local v4, "isvc":I
    :goto_d2
    if-ltz v4, :cond_f6

    .line 1371
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1372
    .local v13, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_ec

    .line 1373
    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetSafely(J)V

    .line 1370
    :goto_e9
    add-int/lit8 v4, v4, -0x1

    goto :goto_d2

    .line 1375
    :cond_ec
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_e9

    .line 1378
    .end local v13    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_f6
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_10f

    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_10f

    .line 1379
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1357
    :cond_10f
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_67

    .line 1382
    .end local v3    # "iproc":I
    .end local v4    # "isvc":I
    .end local v10    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_113
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_11c

    .line 1383
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1355
    :cond_11c
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_59

    .line 1386
    .end local v6    # "iv":I
    .end local v16    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_120
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_129

    .line 1387
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1353
    :cond_129
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4b

    .line 1392
    .end local v5    # "iu":I
    .end local v14    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_12d
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_133
    if-ltz v2, :cond_18e

    .line 1393
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 1394
    .restart local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .restart local v5    # "iu":I
    :goto_141
    if-ltz v5, :cond_182

    .line 1395
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1396
    .restart local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v17

    if-nez v17, :cond_155

    iget v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    move/from16 v17, v0

    if-lez v17, :cond_17b

    .line 1403
    :cond_155
    iget-boolean v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_177

    iget-boolean v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_177

    iget v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_177

    .line 1405
    iget-object v12, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1406
    iput-object v12, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1407
    invoke-virtual {v15, v5, v12}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1394
    :goto_174
    add-int/lit8 v5, v5, -0x1

    goto :goto_141

    .line 1409
    :cond_177
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    goto :goto_174

    .line 1412
    :cond_17b
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 1413
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_174

    .line 1416
    .end local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_182
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_18b

    .line 1417
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1392
    :cond_18b
    add-int/lit8 v2, v2, -0x1

    goto :goto_133

    .line 1421
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_18e
    move-object/from16 v0, p0

    iput-wide v8, v0, mStartTime:J

    .line 1423
    return-void
.end method

.method setLong(IIJ)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    .prologue
    .line 2029
    iget-object v1, p0, mLongs:Ljava/util/ArrayList;

    sget v2, OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 2030
    .local v0, "longs":[J
    sget v1, OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 2031
    return-void
.end method

.method public summaryLocked(Ljava/lang/String;JZ)Ljava/util/ArrayList;
    .registers 19
    .param p1, "reqPackage"    # Ljava/lang/String;
    .param p2, "now"    # J
    .param p4, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcStatsCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2463
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, mMemFactorDurations:[J

    iget v3, p0, mMemFactor:I

    iget-wide v4, p0, mStartTime:J

    move-wide/from16 v6, p2

    invoke-static/range {v0 .. v7}, dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v10

    .line 2466
    .local v10, "totalTime":J
    const/4 v2, 0x0

    const-string v3, "  "

    sget-object v4, ALL_SCREEN_ADJ:[I

    sget-object v5, ALL_MEM_ADJ:[I

    sget-object v6, ALL_PROC_STATES:[I

    sget-object v7, NON_CACHED_PROC_STATES:[I

    move-object v1, p0

    move-wide/from16 v8, p2

    move-object v12, p1

    move/from16 v13, p4

    invoke-virtual/range {v1 .. v13}, filteredSummaryLocked(Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method validateLongOffset(I)Z
    .registers 7
    .param p1, "off"    # I

    .prologue
    const/4 v2, 0x0

    .line 2007
    sget v3, OFFSET_ARRAY_SHIFT:I

    shr-int v3, p1, v3

    sget v4, OFFSET_ARRAY_MASK:I

    and-int v0, v3, v4

    .line 2008
    .local v0, "arr":I
    iget-object v3, p0, mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_12

    .line 2017
    :cond_11
    :goto_11
    return v2

    .line 2011
    :cond_12
    sget v3, OFFSET_INDEX_SHIFT:I

    shr-int v3, p1, v3

    sget v4, OFFSET_INDEX_MASK:I

    and-int v1, v3, v4

    .line 2012
    .local v1, "idx":I
    const/16 v3, 0x1000

    if-ge v1, v3, :cond_11

    .line 2017
    const/4 v2, 0x1

    goto :goto_11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1564
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, writeToParcel(Landroid/os/Parcel;JI)V

    .line 1565
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .registers 37
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J
    .param p4, "flags"    # I

    .prologue
    .line 1569
    const v26, 0x50535453

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    const/16 v26, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    const/16 v26, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    const/16 v26, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    const/16 v26, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    const/16 v26, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1577
    new-instance v26, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v0, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    .line 1581
    .local v21, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1582
    .local v5, "NPROC":I
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_6a
    if-ge v12, v5, :cond_90

    .line 1583
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1584
    .local v24, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1585
    .local v8, "NUID":I
    const/4 v15, 0x0

    .local v15, "iu":I
    :goto_79
    if-ge v15, v8, :cond_8d

    .line 1586
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1585
    add-int/lit8 v15, v15, 0x1

    goto :goto_79

    .line 1582
    :cond_8d
    add-int/lit8 v12, v12, 0x1

    goto :goto_6a

    .line 1589
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v18

    .line 1590
    .local v18, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1591
    .local v4, "NPKG":I
    const/4 v12, 0x0

    :goto_9f
    if-ge v12, v4, :cond_12c

    .line 1592
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1593
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1594
    .restart local v8    # "NUID":I
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_ae
    if-ge v15, v8, :cond_128

    .line 1595
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    .line 1596
    .local v25, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1597
    .local v9, "NVERS":I
    const/16 v16, 0x0

    .local v16, "iv":I
    :goto_be
    move/from16 v0, v16

    if-ge v0, v9, :cond_125

    .line 1598
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1599
    .local v19, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1600
    .local v6, "NPROCS":I
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_d7
    if-ge v13, v6, :cond_fd

    .line 1601
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1602
    .local v20, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_fa

    .line 1603
    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1600
    :cond_fa
    add-int/lit8 v13, v13, 0x1

    goto :goto_d7

    .line 1606
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_fd
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1607
    .local v7, "NSRVS":I
    const/4 v14, 0x0

    .local v14, "isvc":I
    :goto_108
    if-ge v14, v7, :cond_122

    .line 1608
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->commitStateTime(J)V

    .line 1607
    add-int/lit8 v14, v14, 0x1

    goto :goto_108

    .line 1597
    :cond_122
    add-int/lit8 v16, v16, 0x1

    goto :goto_be

    .line 1594
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_125
    add-int/lit8 v15, v15, 0x1

    goto :goto_ae

    .line 1591
    .end local v9    # "NVERS":I
    .end local v16    # "iv":I
    .end local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_128
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9f

    .line 1614
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_12c
    move-object/from16 v0, p0

    iget-wide v0, v0, mTimePeriodStartClock:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1615
    move-object/from16 v0, p0

    iget-wide v0, v0, mTimePeriodStartRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1616
    move-object/from16 v0, p0

    iget-wide v0, v0, mTimePeriodEndRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1617
    move-object/from16 v0, p0

    iget-wide v0, v0, mTimePeriodStartUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1618
    move-object/from16 v0, p0

    iget-wide v0, v0, mTimePeriodEndUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, mRuntime:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1620
    move-object/from16 v0, p0

    iget v0, v0, mFlags:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    move-object/from16 v0, p0

    iget v0, v0, mNextLong:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1a6
    move-object/from16 v0, p0

    iget-object v0, v0, mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v11, v0, :cond_1d3

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    .line 1626
    .local v10, "array":[J
    array-length v0, v10

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v10, v2}, writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1624
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a6

    .line 1628
    .end local v10    # "array":[J
    :cond_1d3
    move-object/from16 v0, p0

    iget-object v0, v0, mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mLongs:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [J

    .line 1629
    .local v17, "lastLongs":[J
    move-object/from16 v0, p0

    iget v0, v0, mNextLong:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1631
    move-object/from16 v0, p0

    iget v0, v0, mMemFactor:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_22a

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, mMemFactor:I

    move/from16 v27, v0

    aget-wide v28, v26, v27

    move-object/from16 v0, p0

    iget-wide v0, v0, mStartTime:J

    move-wide/from16 v30, v0

    sub-long v30, p2, v30

    add-long v28, v28, v30

    aput-wide v28, v26, v27

    .line 1633
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, mStartTime:J

    .line 1635
    :cond_22a
    move-object/from16 v0, p0

    iget-object v0, v0, mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mMemFactorDurations:[J

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1637
    move-object/from16 v0, p0

    iget v0, v0, mSysMemUsageTableSize:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    const/4 v11, 0x0

    :goto_254
    move-object/from16 v0, p0

    iget v0, v0, mSysMemUsageTableSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v11, v0, :cond_270

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, mSysMemUsageTable:[I

    move-object/from16 v26, v0

    aget v26, v26, v11

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    add-int/lit8 v11, v11, 0x1

    goto :goto_254

    .line 1644
    :cond_270
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    const/4 v12, 0x0

    :goto_276
    if-ge v12, v5, :cond_2dd

    .line 1646
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1648
    .restart local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1649
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_29b
    if-ge v15, v8, :cond_2da

    .line 1651
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1653
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1654
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1650
    add-int/lit8 v15, v15, 0x1

    goto :goto_29b

    .line 1645
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2da
    add-int/lit8 v12, v12, 0x1

    goto :goto_276

    .line 1658
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_2dd
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    const/4 v12, 0x0

    :goto_2e3
    if-ge v12, v4, :cond_405

    .line 1660
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1661
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1662
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1663
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_308
    if-ge v15, v8, :cond_401

    .line 1665
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    .line 1667
    .restart local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1668
    .restart local v9    # "NVERS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    const/16 v16, 0x0

    .restart local v16    # "iv":I
    :goto_32a
    move/from16 v0, v16

    if-ge v0, v9, :cond_3fd

    .line 1670
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1672
    .restart local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1673
    .restart local v6    # "NPROCS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    const/4 v13, 0x0

    .restart local v13    # "iproc":I
    :goto_357
    if-ge v13, v6, :cond_3a9

    .line 1675
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1676
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1677
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_396

    .line 1679
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    :goto_393
    add-int/lit8 v13, v13, 0x1

    goto :goto_357

    .line 1682
    :cond_396
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_393

    .line 1686
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3a9
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1687
    .restart local v7    # "NSRVS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    const/4 v14, 0x0

    .restart local v14    # "isvc":I
    :goto_3b9
    if-ge v14, v7, :cond_3f9

    .line 1689
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1691
    .local v22, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1688
    add-int/lit8 v14, v14, 0x1

    goto :goto_3b9

    .line 1669
    .end local v22    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_3f9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_32a

    .line 1664
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_3fd
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_308

    .line 1659
    .end local v9    # "NVERS":I
    .end local v16    # "iv":I
    .end local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_401
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2e3

    .line 1698
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_405
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1699
    return-void
.end method
