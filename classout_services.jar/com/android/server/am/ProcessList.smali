.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ILS_Q;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final BSERVICE_APP_THRESHOLD:I

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static DEBUG:Z = false

.field static DHA_ADJ_CACHED_FACTOR:Z = false

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final EMPTY_APP_PERCENT:I

.field static final ENABLE_B_SERVICE_PROPAGATION:Z

.field static FHA_Enable:Z = false

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static LDHA_ES_ENABLE:Z = false

.field static LDHA_EXT_ENABLE:Z = false

.field static LDHA_EXT_LIMIT1:I = 0x0

.field static LDHA_EXT_LIMIT2:I = 0x0

.field public static LDHA_EXT_TH1:J = 0x0L

.field public static LDHA_EXT_TH2:J = 0x0L

.field static LDHA_SPC_ENABLE:Z = false

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_CACHED_APPS_FOR_FHA:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static MAX_EMPTY_APPS_FOR_FHA:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static MDHA_SSR_ENABLE:Z = false

.field static MDHA_SSR_MAX_SERVICE_TIME:I = 0x0

.field static final MIN_BSERVICE_AGING_TIME:I

.field static MIN_CACHED_APPS:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static PRE_CACHED_KILL:Z = false

.field static PRE_DECREMENT_SYNC:Z = false

.field static PRE_EMPTY_KILL:Z = false

.field static PRE_MAX_KILL_ENABLE:Z = false

.field static PRE_SUPPORT_INCREMENT:Z = false

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static SMART_DHA_BG_APPS_MIN:I = 0x0

.field static final SMART_DHA_MARGIN_MIN_HIGH:J

.field static final SMART_DHA_MARGIN_MIN_LOW:J

.field static final SYSTEM_ADJ:I = -0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TOTAL_DEVICE_MEMORY:J

.field static TRIM_CACHED_APPS:I = 0x0

.field static final TRIM_CACHE_PERCENT:I

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static final TRIM_EMPTY_PERCENT:I

.field static final TRIM_ENABLE_MEMORY:J

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x10

.field static final USE_TRIM_SETTINGS:Z

.field static final VISIBLE_APP_ADJ:I = 0x1

.field static mAMSExceptionEnable:Z

.field static mCPREnable:I

.field static mDHADefendTHEnable:Z

.field static mDynamicLMKEnable:Z

.field static mFragEnable:I

.field static mGoldenlistEnable:I

.field static mILS_2nd_Enable:Z

.field static mILS_DynamicLMKFlag:Z

.field static mILS_Enable:Z

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field static mLMKArray:Ljava/lang/String;

.field static mLMKRate:F

.field static mLMKScale:F

.field static mMaxCached:I

.field static mPremiumWhitelistEnable:I

.field static mSzILSFlag:Z

.field static mSzILSRate:F

.field static mSzILS_SDHARate:F

.field static mWhitelistEnable:I

.field static mb64bitLMKEnable:Z

.field static retCacheLimit:I

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field mDisplayHeight:I

.field mDisplayWidth:I

.field mDynamicLMKFlag:Z

.field mDynamicLMKRate:F

.field private mExtraFreeKBytes:J

.field private mHaveDisplaySize:Z

.field mNotReadPropertyFlag:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeDynamicHigh:[I

.field private final mOomMinFreeDynamicNormal:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeHigh32Bit:[I

.field private final mOomMinFreeHigh_FHA:[I

.field private final mOomMinFreeLow:[I

.field private final mOomMinFreeLow32Bit:[I

.field private final mOomMinFreeLow_FHA:[I

.field private mSmartDHADefaultMargin:J

.field private mSmartDHAKswapdWatermark:J

.field private mSzDHADefendThreshold:J

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v2, 0x64

    const/4 v6, 0x5

    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 60
    sput-boolean v4, DEBUG:Z

    .line 140
    const-string/jumbo v0, "ro.sys.fw.bservice_age"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, MIN_BSERVICE_AGING_TIME:I

    .line 142
    const-string/jumbo v0, "ro.sys.fw.bservice_limit"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, BSERVICE_APP_THRESHOLD:I

    .line 144
    const-string/jumbo v0, "ro.sys.fw.bservice_enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, ENABLE_B_SERVICE_PROPAGATION:Z

    .line 146
    const/4 v0, 0x0

    sput-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 148
    invoke-static {}, totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, TOTAL_DEVICE_MEMORY:J

    .line 170
    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, INIT_CACHED_APPS:I

    .line 174
    const-string/jumbo v0, "ro.config.dha_cached_min"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MIN_CACHED_APPS:I

    .line 176
    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MAX_CACHED_APPS:I

    .line 178
    const-string/jumbo v0, "ro.config.fha_cached_max"

    const-string v1, "16"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MAX_CACHED_APPS_FOR_FHA:I

    .line 180
    const-string/jumbo v0, "ro.sys.fw.use_trim_settings"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, USE_TRIM_SETTINGS:Z

    .line 182
    const-string/jumbo v0, "ro.sys.fw.empty_app_percent"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, EMPTY_APP_PERCENT:I

    .line 183
    const-string/jumbo v0, "ro.sys.fw.trim_empty_percent"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, TRIM_EMPTY_PERCENT:I

    .line 185
    const-string/jumbo v0, "ro.sys.fw.trim_cache_percent"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, TRIM_CACHE_PERCENT:I

    .line 187
    const-string/jumbo v0, "ro.sys.fw.trim_enable_memory"

    const-wide/32 v2, 0x40000000

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, TRIM_ENABLE_MEMORY:J

    .line 195
    const-string/jumbo v0, "ro.config.dha_empty_init"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, INIT_EMPTY_APPS:I

    .line 197
    const-string/jumbo v0, "ro.config.dha_empty_min"

    const-string v1, "8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MIN_EMPTY_APPS_FOR_DHA:I

    .line 199
    const-string/jumbo v0, "ro.config.dha_empty_max"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MAX_EMPTY_APPS:I

    .line 201
    const-string/jumbo v0, "ro.config.fha_empty_max"

    const-string v1, "16"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MAX_EMPTY_APPS_FOR_FHA:I

    .line 212
    invoke-static {}, computeTrimEmptyApps()I

    move-result v0

    sput v0, TRIM_EMPTY_APPS:I

    .line 223
    invoke-static {}, computeTrimCachedApps()I

    move-result v0

    sput v0, TRIM_CACHED_APPS:I

    .line 226
    const/4 v0, 0x3

    sput v0, TRIM_CRITICAL_THRESHOLD:I

    .line 229
    sput v6, TRIM_LOW_THRESHOLD:I

    .line 294
    const-string/jumbo v0, "ro.config.dha_defendth_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mDHADefendTHEnable:Z

    .line 300
    const-string/jumbo v0, "ro.config.ldha_es_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LDHA_ES_ENABLE:Z

    .line 302
    const-string/jumbo v0, "ro.config.ldha_spc_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LDHA_SPC_ENABLE:Z

    .line 304
    const-string/jumbo v0, "ro.config.ldha_ext_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LDHA_EXT_ENABLE:Z

    .line 306
    sput-wide v8, LDHA_EXT_TH1:J

    .line 308
    sput-wide v8, LDHA_EXT_TH2:J

    .line 310
    const-string/jumbo v0, "ro.config.ldha_ext_limit1"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, LDHA_EXT_LIMIT1:I

    .line 312
    const-string/jumbo v0, "ro.config.ldha_ext_limit2"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, LDHA_EXT_LIMIT2:I

    .line 314
    const-string/jumbo v0, "ro.config.pre_max_kill_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, PRE_MAX_KILL_ENABLE:Z

    .line 316
    const-string/jumbo v0, "ro.config.pre_cached_kill"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, PRE_CACHED_KILL:Z

    .line 318
    const-string/jumbo v0, "ro.config.pre_empty_kill"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, PRE_EMPTY_KILL:Z

    .line 320
    const-string/jumbo v0, "ro.config.pre_decrement_sync"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, PRE_DECREMENT_SYNC:Z

    .line 322
    const-string/jumbo v0, "ro.config.pre_support_increment"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, PRE_SUPPORT_INCREMENT:Z

    .line 324
    const-string/jumbo v0, "ro.config.dha_adj_cached_factor"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, DHA_ADJ_CACHED_FACTOR:Z

    .line 326
    sput v4, retCacheLimit:I

    .line 329
    const-string/jumbo v0, "ro.config.64bit_lmk_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mb64bitLMKEnable:Z

    .line 332
    const-string/jumbo v0, "ro.config.dha_ils_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mILS_Enable:Z

    .line 334
    const-string/jumbo v0, "ro.config.dha_ils_2nd_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mILS_2nd_Enable:Z

    .line 336
    const-string/jumbo v0, "ro.config.dha_ils_dyna_lmk"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mILS_DynamicLMKFlag:Z

    .line 338
    const-string/jumbo v0, "ro.config.dha_ils_rate"

    const-string v1, "1.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, mSzILSRate:F

    .line 340
    const-string/jumbo v0, "ro.config.dha_ils_sdha_rate"

    const-string v1, "1.8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, mSzILS_SDHARate:F

    .line 342
    sput-boolean v4, mSzILSFlag:Z

    .line 344
    sget v0, INIT_CACHED_APPS:I

    sput v0, mMaxCached:I

    .line 346
    const-string/jumbo v0, "ro.config.dha_whitelist_enable"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, mWhitelistEnable:I

    .line 348
    const-string/jumbo v0, "ro.config.dha_pwhitelist_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, mPremiumWhitelistEnable:I

    .line 350
    const-string/jumbo v0, "ro.config.dha_goldenlist_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, mGoldenlistEnable:I

    .line 353
    const-string/jumbo v0, "ro.config.dha_CPR_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, mCPREnable:I

    .line 356
    const-string/jumbo v0, "ro.config.dha_frag_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, mFragEnable:I

    .line 358
    const-string/jumbo v0, "ro.config.dha_lmk_scale"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, mLMKScale:F

    .line 360
    const-string/jumbo v0, "ro.config.dha_lmk_rate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, mLMKRate:F

    .line 362
    const-string/jumbo v0, "ro.config.dha_lmk_array"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mLMKArray:Ljava/lang/String;

    .line 364
    const-string/jumbo v0, "ro.config.dha_dyna_lmk_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mDynamicLMKEnable:Z

    .line 366
    const-string/jumbo v0, "ro.config.ams_exception_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mAMSExceptionEnable:Z

    .line 370
    const-string/jumbo v0, "ro.config.mdha_ssr_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, MDHA_SSR_ENABLE:Z

    .line 372
    const-string/jumbo v0, "ro.config.mdha_ssr_max_minute"

    const-string v1, "10"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, MDHA_SSR_MAX_SERVICE_TIME:I

    .line 384
    const-wide/32 v0, 0x200000

    sput-wide v0, DHA_INCREASE_THRESHOLD:J

    .line 388
    const-string/jumbo v0, "ro.config.fha_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, FHA_Enable:Z

    .line 394
    const-string/jumbo v0, "ro.config.sdha_margin_min_low"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, SMART_DHA_MARGIN_MIN_LOW:J

    .line 395
    const-string/jumbo v0, "ro.config.sdha_margin_min_high"

    const-string v1, "60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, SMART_DHA_MARGIN_MIN_HIGH:J

    .line 397
    const-string/jumbo v0, "ro.config.sdha_apps_bg_max"

    const-string v1, "40"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, SMART_DHA_BG_APPS_MAX:I

    .line 398
    const-string/jumbo v0, "ro.config.sdha_apps_bg_min"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, SMART_DHA_BG_APPS_MIN:I

    .line 905
    new-array v0, v5, [I

    fill-array-data v0, :array_34a

    sput-object v0, sProcStateToProcMem:[I

    .line 925
    new-array v0, v5, [J

    fill-array-data v0, :array_370

    sput-object v0, sFirstAwakePssTimes:[J

    .line 945
    new-array v0, v5, [J

    fill-array-data v0, :array_3b8

    sput-object v0, sSameAwakePssTimes:[J

    .line 965
    new-array v0, v5, [J

    fill-array-data v0, :array_400

    sput-object v0, sTestFirstAwakePssTimes:[J

    .line 985
    new-array v0, v5, [J

    fill-array-data v0, :array_448

    sput-object v0, sTestSameAwakePssTimes:[J

    return-void

    .line 905
    :array_34a
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 925
    :array_370
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 945
    :array_3b8
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    .line 965
    :array_400
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x4e20
        0x4e20
        0x4e20
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    .line 985
    :array_448
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x6

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-array v1, v2, [I

    fill-array-data v1, :array_a4

    iput-object v1, p0, mOomAdj:[I

    .line 250
    new-array v1, v2, [I

    fill-array-data v1, :array_b4

    iput-object v1, p0, mOomMinFreeLow32Bit:[I

    .line 255
    new-array v1, v2, [I

    fill-array-data v1, :array_c4

    iput-object v1, p0, mOomMinFreeHigh32Bit:[I

    .line 261
    new-array v1, v2, [I

    fill-array-data v1, :array_d4

    iput-object v1, p0, mOomMinFreeLow:[I

    .line 267
    new-array v1, v2, [I

    fill-array-data v1, :array_e4

    iput-object v1, p0, mOomMinFreeHigh:[I

    .line 272
    new-array v1, v2, [I

    fill-array-data v1, :array_f4

    iput-object v1, p0, mOomMinFreeLow_FHA:[I

    .line 277
    new-array v1, v2, [I

    fill-array-data v1, :array_104

    iput-object v1, p0, mOomMinFreeHigh_FHA:[I

    .line 282
    iget-object v1, p0, mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, mOomMinFree:[I

    .line 284
    iget-object v1, p0, mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, mOomMinFreeDynamicNormal:[I

    .line 286
    iget-object v1, p0, mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, mOomMinFreeDynamicHigh:[I

    .line 290
    const-wide/32 v2, 0x2000000

    iput-wide v2, p0, mSzDHAThreshold:J

    .line 292
    const-wide/32 v2, 0x800000

    iput-wide v2, p0, mSzDHADefendThreshold:J

    .line 296
    const/4 v1, 0x2

    iput v1, p0, mSzDHAStep:I

    .line 298
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, mSzDHAThresholdRate:F

    .line 368
    const-string/jumbo v1, "ro.config.dha_dynamic_lmk_rate"

    const-string v2, "1.2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, mDynamicLMKRate:F

    .line 374
    iput-boolean v6, p0, mDynamicLMKFlag:Z

    .line 376
    iput v6, p0, mDisplayWidth:I

    .line 378
    iput v6, p0, mDisplayHeight:I

    .line 386
    const/4 v1, 0x1

    iput-boolean v1, p0, mNotReadPropertyFlag:Z

    .line 391
    const-wide/16 v2, -0x1

    iput-wide v2, p0, mSmartDHAKswapdWatermark:J

    .line 392
    sget-wide v2, SMART_DHA_MARGIN_MIN_HIGH:J

    iput-wide v2, p0, mSmartDHADefaultMargin:J

    .line 400
    const-string/jumbo v1, "sys.sysctl.extra_free_kbytes"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    iput-wide v2, p0, mExtraFreeKBytes:J

    .line 411
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 412
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 413
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, mTotalMemMb:J

    .line 414
    invoke-direct {p0, v6, v6, v6}, updateOomLevels(IIZ)V

    .line 415
    return-void

    .line 244
    :array_a4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 250
    :array_b4
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 255
    :array_c4
    .array-data 4
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data

    .line 261
    :array_d4
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 267
    :array_e4
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x36ee8
        0x4f588
    .end array-data

    .line 272
    :array_f4
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    .line 277
    :array_104
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static allowTrim()Z
    .registers 4

    .prologue
    .line 189
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sget-wide v2, TRIM_ENABLE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 843
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_15

    .line 844
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    .line 845
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 843
    :cond_10
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 848
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 849
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 737
    if-ne p2, p3, :cond_19

    .line 738
    if-nez p1, :cond_5

    .line 741
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 739
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 741
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static computeDHAEmptyProcessLimit(I)I
    .registers 4
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 731
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_2e

    sget-boolean v0, LDHA_ES_ENABLE:Z

    if-eqz v0, :cond_2e

    .line 732
    const-string v0, "ActivityManager_LDHA_ES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "totalProcessLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "retCacheLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, retCacheLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_2e
    sget v0, retCacheLimit:I

    sub-int v0, p0, v0

    return v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 2
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 723
    sget-boolean v0, USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_10

    invoke-static {}, allowTrim()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 724
    sget v0, EMPTY_APP_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    .line 726
    :goto_f
    return v0

    :cond_10
    div-int/lit8 v0, p0, 0x2

    goto :goto_f
.end method

.method public static computeNextPssTime(IZZZJ)J
    .registers 10
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .prologue
    .line 1015
    if-eqz p2, :cond_19

    if-eqz p1, :cond_16

    sget-object v0, sTestFirstAwakePssTimes:[J

    .line 1024
    .local v0, "table":[J
    :goto_6
    if-ltz p0, :cond_b

    array-length v1, v0

    if-lt p0, v1, :cond_21

    .line 1025
    :cond_b
    const-string v1, "ActivityManager"

    const-string v2, "Invalid Process State within computeNextPssTime"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-wide/16 v2, 0x3a98

    add-long/2addr v2, p4

    .line 1030
    :goto_15
    return-wide v2

    .line 1015
    .end local v0    # "table":[J
    :cond_16
    sget-object v0, sTestSameAwakePssTimes:[J

    goto :goto_6

    :cond_19
    if-eqz p1, :cond_1e

    sget-object v0, sFirstAwakePssTimes:[J

    goto :goto_6

    :cond_1e
    sget-object v0, sSameAwakePssTimes:[J

    goto :goto_6

    .line 1030
    .restart local v0    # "table":[J
    :cond_21
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    goto :goto_15
.end method

.method public static computeTrimCachedApps()I
    .registers 1

    .prologue
    .line 217
    sget-boolean v0, USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_f

    invoke-static {}, allowTrim()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 218
    sget v0, MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x2

    .line 220
    :goto_e
    return v0

    :cond_f
    sget v0, MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_e
.end method

.method public static computeTrimEmptyApps()I
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_f

    invoke-static {}, allowTrim()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 207
    sget v0, MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    .line 209
    :goto_e
    return v0

    :cond_f
    sget v0, MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_e
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .registers 7
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0xb

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 745
    const/16 v0, 0x9

    if-lt p0, v0, :cond_18

    .line 746
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 774
    :goto_17
    return-object v0

    .line 747
    :cond_18
    const/16 v0, 0x8

    if-lt p0, v0, :cond_26

    .line 748
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 749
    :cond_26
    const/4 v0, 0x7

    if-lt p0, v0, :cond_32

    .line 750
    const-string/jumbo v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 751
    :cond_32
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3e

    .line 752
    const-string/jumbo v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 753
    :cond_3e
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4a

    .line 754
    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 755
    :cond_4a
    const/4 v0, 0x4

    if-lt p0, v0, :cond_56

    .line 756
    const-string/jumbo v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 757
    :cond_56
    const/4 v0, 0x3

    if-lt p0, v0, :cond_61

    .line 758
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 759
    :cond_61
    const/4 v0, 0x2

    if-lt p0, v0, :cond_6d

    .line 760
    const-string/jumbo v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 761
    :cond_6d
    const/4 v0, 0x1

    if-lt p0, v0, :cond_79

    .line 762
    const-string/jumbo v0, "vis  "

    const/4 v1, 0x1

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 763
    :cond_79
    if-ltz p0, :cond_84

    .line 764
    const-string/jumbo v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 765
    :cond_84
    if-lt p0, v5, :cond_8e

    .line 766
    const-string/jumbo v0, "psvc "

    invoke-static {v0, v2, p0, v5}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 767
    :cond_8e
    if-lt p0, v4, :cond_98

    .line 768
    const-string/jumbo v0, "pers "

    invoke-static {v0, v2, p0, v4}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 769
    :cond_98
    if-lt p0, v3, :cond_a3

    .line 770
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 771
    :cond_a3
    if-lt p0, v1, :cond_ae

    .line 772
    const-string/jumbo v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 774
    :cond_ae
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "curProcState"    # I

    .prologue
    .line 780
    packed-switch p0, :pswitch_data_3c

    .line 836
    const-string v0, "??"

    .line 839
    .local v0, "procState":Ljava/lang/String;
    :goto_5
    return-object v0

    .line 782
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "N "

    .line 783
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 785
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "P "

    .line 786
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 788
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "PU"

    .line 789
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 791
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "T "

    .line 792
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 794
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_12
    const-string v0, "SB"

    .line 795
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 797
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_15
    const-string v0, "SF"

    .line 798
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 800
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_18
    const-string v0, "TS"

    .line 801
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 803
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "IF"

    .line 804
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 806
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "IB"

    .line 807
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 809
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_21
    const-string v0, "BU"

    .line 810
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 812
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_24
    const-string v0, "HW"

    .line 813
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 815
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_27
    const-string v0, "S "

    .line 816
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 818
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "R "

    .line 819
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 821
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "HO"

    .line 822
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 824
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_30
    const-string v0, "LA"

    .line 825
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 827
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_33
    const-string v0, "CA"

    .line 828
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 830
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_36
    const-string v0, "Ca"

    .line 831
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 833
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_39
    const-string v0, "CE"

    .line 834
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 780
    :pswitch_data_3c
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3
    .param p0, "test"    # Z

    .prologue
    .line 1010
    if-eqz p0, :cond_5

    const-wide/16 v0, 0x2710

    :goto_4
    return-wide v0

    :cond_5
    const-wide/16 v0, 0x3a98

    goto :goto_4
.end method

.method private static openLmkdSocket()Z
    .registers 5

    .prologue
    .line 1125
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, sLmkdSocket:Landroid/net/LocalSocket;

    .line 1126
    sget-object v1, sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "lmkd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1129
    sget-object v1, sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_21

    .line 1136
    const/4 v1, 0x1

    .local v0, "ex":Ljava/io/IOException;
    :goto_20
    return v1

    .line 1130
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_21
    move-exception v0

    .line 1131
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v1, 0x0

    sput-object v1, sLmkdSocket:Landroid/net/LocalSocket;

    .line 1133
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 4
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 1006
    sget-object v0, sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final remove(I)V
    .registers 3
    .param p0, "pid"    # I

    .prologue
    .line 1117
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1118
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1119
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1120
    invoke-static {v0}, writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 1121
    return-void
.end method

.method public static final setOomAdj(III)V
    .registers 13
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    const/16 v1, 0x10

    .line 1096
    if-ne p2, v1, :cond_5

    .line 1111
    :cond_4
    :goto_4
    return-void

    .line 1099
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1100
    .local v4, "start":J
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1101
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1102
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1103
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1104
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1105
    invoke-static {v0}, writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 1106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1107
    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    .line 1108
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method static totalDeviceMemory()J
    .registers 4

    .prologue
    .line 151
    sget-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_b

    .line 152
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 154
    :cond_b
    sget-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 156
    sget-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static updateILS(Ljava/lang/String;)V
    .registers 5
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 1373
    sget-boolean v1, mILS_Enable:Z

    if-nez v1, :cond_5

    .line 1382
    :cond_4
    :goto_4
    return-void

    .line 1375
    :cond_5
    sget-boolean v0, mSzILSFlag:Z

    .line 1377
    .local v0, "ILSPrevFlag":Z
    invoke-static {p0}, Lcom/android/server/am/ProcessList$ILS_Q;->isAppsLaunchFreq(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, mSzILSFlag:Z

    .line 1379
    sget-boolean v1, mSzILSFlag:Z

    if-eq v0, v1, :cond_4

    .line 1380
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILS: FlagChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, mSzILSFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private updateOomLevels(IIZ)V
    .registers 36
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalMemMb:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x15e

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x43af0000    # 350.0f

    div-float v23, v27, v28

    .line 436
    .local v23, "scaleMem":F
    const v12, 0x5dc00

    .line 437
    .local v12, "minSize":I
    const v10, 0xfa000

    .line 439
    .local v10, "maxSize":I
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v27

    if-nez v27, :cond_36

    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalMemMb:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x600

    cmp-long v27, v28, v30

    if-gez v27, :cond_50

    mul-int v27, p1, p2

    const v28, 0xfa000

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_50

    .line 441
    :cond_36
    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalMemMb:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x12c

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x44b54000    # 1450.0f

    div-float v23, v27, v28

    .line 443
    const v12, 0x25800

    .line 444
    const v10, 0x1fa400

    .line 447
    :cond_50
    mul-int v27, p1, p2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v12

    move/from16 v28, v0

    sub-float v27, v27, v28

    sub-int v28, v10, v12

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v22, v27, v28

    .line 454
    .local v22, "scaleDisp":F
    cmpl-float v27, v23, v22

    if-lez v27, :cond_fd

    move/from16 v21, v23

    .line 456
    .local v21, "scale":F
    :goto_6b
    const/16 v27, 0x0

    cmpg-float v27, v21, v27

    if-gez v27, :cond_101

    const/16 v21, 0x0

    .line 459
    :cond_73
    :goto_73
    sget-boolean v27, FHA_Enable:Z

    if-nez v27, :cond_81

    sget v27, mLMKScale:F

    const/high16 v28, -0x40800000    # -1.0f

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_81

    .line 460
    sget v21, mLMKScale:F

    .line 463
    :cond_81
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e0009

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 465
    .local v14, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e0008

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 475
    .local v13, "minfree_abs":I
    sget-boolean v27, FHA_Enable:Z

    if-eqz v27, :cond_9f

    .line 476
    const/16 v27, 0x1

    sput-boolean v27, mb64bitLMKEnable:Z

    .line 478
    :cond_9f
    sget-object v27, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_10b

    sget-boolean v27, mb64bitLMKEnable:Z

    if-eqz v27, :cond_10b

    const/4 v7, 0x1

    .line 480
    .local v7, "is64bit":Z
    :goto_ad
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ae
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_14a

    .line 481
    const/4 v8, 0x0

    .line 482
    .local v8, "low":I
    const/4 v5, 0x0

    .line 484
    .local v5, "high":I
    sget-boolean v27, FHA_Enable:Z

    if-eqz v27, :cond_118

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeLow_FHA:[I

    move-object/from16 v27, v0

    aget v8, v27, v6

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeHigh_FHA:[I

    move-object/from16 v27, v0

    aget v5, v27, v6

    .line 488
    if-eqz v7, :cond_df

    .line 490
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v6, v0, :cond_10d

    mul-int/lit8 v27, v5, 0x3

    div-int/lit8 v5, v27, 0x2

    .line 510
    :cond_df
    :goto_df
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    int-to-float v0, v8

    move/from16 v28, v0

    sub-int v29, v5, v8

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v21

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    aput v28, v27, v6

    .line 480
    add-int/lit8 v6, v6, 0x1

    goto :goto_ae

    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v7    # "is64bit":Z
    .end local v8    # "low":I
    .end local v13    # "minfree_abs":I
    .end local v14    # "minfree_adj":I
    .end local v21    # "scale":F
    :cond_fd
    move/from16 v21, v22

    .line 454
    goto/16 :goto_6b

    .line 457
    .restart local v21    # "scale":F
    :cond_101
    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, v21, v27

    if-lez v27, :cond_73

    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_73

    .line 478
    .restart local v13    # "minfree_abs":I
    .restart local v14    # "minfree_adj":I
    :cond_10b
    const/4 v7, 0x0

    goto :goto_ad

    .line 491
    .restart local v5    # "high":I
    .restart local v6    # "i":I
    .restart local v7    # "is64bit":Z
    .restart local v8    # "low":I
    :cond_10d
    const/16 v27, 0x5

    move/from16 v0, v27

    if-ne v6, v0, :cond_df

    mul-int/lit8 v27, v5, 0x7

    div-int/lit8 v5, v27, 0x4

    goto :goto_df

    .line 494
    :cond_118
    if-eqz v7, :cond_132

    .line 498
    const-string v27, "XXXXXX"

    const-string v28, "choosing minFree values for 64 Bit"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeLow:[I

    move-object/from16 v27, v0

    aget v8, v27, v6

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeHigh:[I

    move-object/from16 v27, v0

    aget v5, v27, v6

    goto :goto_df

    .line 505
    :cond_132
    const-string v27, "XXXXXX"

    const-string v28, "choosing minFree values for 32 Bit"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeLow32Bit:[I

    move-object/from16 v27, v0

    aget v8, v27, v6

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeHigh32Bit:[I

    move-object/from16 v27, v0

    aget v5, v27, v6

    goto :goto_df

    .line 514
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_14a
    const-string/jumbo v27, "ro.config.oomminfree"

    const-string v28, "0"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 515
    .local v17, "prop_mOomMinFreeHigh":Ljava/lang/String;
    const-string v27, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 517
    .local v11, "minFreeHighStr":[Ljava/lang/String;
    sget-boolean v27, FHA_Enable:Z

    if-nez v27, :cond_19d

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    array-length v0, v11

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_19d

    .line 518
    const/4 v6, 0x0

    :goto_176
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_19d

    .line 519
    const-string v27, "XXXXXX"

    const-string v28, "choosing minFree values with cofing values"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    aget-object v28, v11, v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    aput v28, v27, v6

    .line 518
    add-int/lit8 v6, v6, 0x1

    goto :goto_176

    .line 526
    :cond_19d
    if-ltz v13, :cond_1ed

    .line 527
    const/4 v6, 0x0

    :goto_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_1ed

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    int-to-float v0, v13

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v29, v0

    aget v29, v29, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    aput v28, v27, v6

    .line 527
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a0

    .line 533
    :cond_1ed
    if-eqz v14, :cond_255

    .line 534
    const/4 v6, 0x0

    :goto_1f0
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_255

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    aget v28, v27, v6

    int-to-float v0, v14

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v30, v0

    aget v30, v30, v6

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    aput v28, v27, v6

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    aget v27, v27, v6

    if-gez v27, :cond_252

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v6

    .line 534
    :cond_252
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f0

    .line 544
    :cond_255
    const/4 v6, 0x0

    :goto_256
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_29a

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeDynamicNormal:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v28, v0

    aget v28, v28, v6

    aput v28, v27, v6

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeDynamicHigh:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v28, v0

    aget v28, v28, v6

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, mDynamicLMKRate:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    aput v28, v27, v6

    .line 544
    add-int/lit8 v6, v6, 0x1

    goto :goto_256

    .line 552
    :cond_29a
    const/16 v27, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, getMemLevel(I)J

    move-result-wide v28

    const-wide/16 v30, 0x400

    div-long v28, v28, v30

    const-wide/16 v30, 0x3

    div-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, mCachedRestoreLevel:J

    .line 556
    mul-int v27, p1, p2

    mul-int/lit8 v27, v27, 0x4

    mul-int/lit8 v27, v27, 0x3

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    .line 557
    .local v18, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e000b

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 558
    .local v20, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e000a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 560
    .local v19, "reserve_abs":I
    if-ltz v19, :cond_2d8

    .line 561
    move/from16 v18, v19

    .line 564
    :cond_2d8
    if-eqz v20, :cond_2e0

    .line 565
    add-int v18, v18, v20

    .line 566
    if-gez v18, :cond_2e0

    .line 567
    const/16 v18, 0x0

    .line 589
    :cond_2e0
    const-string/jumbo v27, "none"

    sget-object v28, mLMKArray:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_332

    .line 590
    sget-object v27, mLMKArray:Ljava/lang/String;

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 591
    .local v9, "mMinFreeProperty":[Ljava/lang/String;
    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "updateOomLevels using LMKArray "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, mLMKArray:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v6, 0x0

    :goto_30f
    :try_start_30f
    array-length v0, v9

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_332

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    aget-object v28, v9, v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    mul-int/lit8 v28, v28, 0x4

    aput v28, v27, v6
    :try_end_326
    .catch Ljava/lang/NumberFormatException; {:try_start_30f .. :try_end_326} :catch_329

    .line 594
    add-int/lit8 v6, v6, 0x1

    goto :goto_30f

    .line 597
    :catch_329
    move-exception v16

    .line 598
    .local v16, "nfe":Ljava/lang/NumberFormatException;
    const-string v27, "ActivityManager"

    const-string/jumbo v28, "updateOomLevels, LMKArray NumberFormatException "

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v9    # "mMinFreeProperty":[Ljava/lang/String;
    .end local v16    # "nfe":Ljava/lang/NumberFormatException;
    :cond_332
    if-eqz p3, :cond_3a7

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    add-int/lit8 v27, v27, 0x1

    mul-int/lit8 v27, v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 604
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 605
    const/4 v6, 0x0

    :goto_351
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_389

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    aget v27, v27, v6

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x1000

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v27, v0

    aget v27, v27, v6

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 605
    add-int/lit8 v6, v6, 0x1

    goto :goto_351

    .line 610
    :cond_389
    invoke-static {v4}, writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 612
    const-string/jumbo v27, "sys.sysctl.extra_free_kbytes"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, mExtraFreeKBytes:J

    .line 619
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_3a7
    const/16 v27, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, getMemLevel(I)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, mSzDHAThreshold:J

    .line 622
    move-object/from16 v0, p0

    iget-boolean v0, v0, mNotReadPropertyFlag:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5b5

    .line 633
    const-string/jumbo v27, "ro.config.dha_step"

    move-object/from16 v0, p0

    iget v0, v0, mSzDHAStep:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, mSzDHAStep:I

    .line 635
    const-string/jumbo v27, "ro.config.dha_th_rate"

    move-object/from16 v0, p0

    iget v0, v0, mSzDHAThresholdRate:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, mSzDHAThresholdRate:F

    .line 637
    const-string/jumbo v27, "ro.config.dha_th_level"

    const-string v28, "15"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, getMemLevel(I)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, mSzDHAThreshold:J

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeLow:[I

    move-object/from16 v27, v0

    const-string/jumbo v28, "ro.config.dha_defend_th_level"

    const-string v29, "3"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    aget v27, v27, v28

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v21

    move/from16 v0, v27

    float-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, mSzDHADefendThreshold:J

    .line 639
    const-string/jumbo v27, "ro.config.dha_increase_th"

    sget-wide v28, DHA_INCREASE_THRESHOLD:J

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    sput-wide v28, DHA_INCREASE_THRESHOLD:J

    .line 640
    const-string/jumbo v27, "ro.config.ldha_ext_th1"

    const/16 v28, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, getMemLevel(I)J

    move-result-wide v28

    const-wide/16 v30, 0x400

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    sput-wide v28, LDHA_EXT_TH1:J

    .line 641
    const-string/jumbo v27, "ro.config.ldha_ext_th2"

    const/16 v28, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, getMemLevel(I)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3fd999999999999aL    # 0.4

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x400

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    sput-wide v28, LDHA_EXT_TH2:J

    .line 643
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA STEP "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, mSzDHAStep:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA TH RATE "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, mSzDHAThresholdRate:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA mSzDHAThreshold "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, mSzDHAThreshold:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA mSzDHADefendThreshold "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, mSzDHADefendThreshold:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-wide v30, DHA_INCREASE_THRESHOLD:J

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA LDHA_EXT_TH1 "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-wide v30, LDHA_EXT_TH1:J

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA LDHA_EXT_TH2 "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-wide v30, LDHA_EXT_TH2:J

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA LDHA_EXT_LIMIT1 "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, LDHA_EXT_LIMIT1:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA LDHA_EXT_LIMIT2 "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, LDHA_EXT_LIMIT2:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNotReadPropertyFlag:Z

    .line 657
    :cond_5b5
    sget-wide v28, SMART_DHA_MARGIN_MIN_LOW:J

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    sget-wide v28, SMART_DHA_MARGIN_MIN_HIGH:J

    sget-wide v30, SMART_DHA_MARGIN_MIN_LOW:J

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v21

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, mSmartDHADefaultMargin:J

    .line 662
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v26, "strMinFreeLow":Ljava/lang/StringBuilder;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v25, "strMinFreeHigh":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .local v24, "strMinFree":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "nCnt":I
    :goto_5e6
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_646

    .line 667
    if-lez v15, :cond_60e

    .line 668
    const/16 v27, 0x2c

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    const/16 v27, 0x2c

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    const/16 v27, 0x2c

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    :cond_60e
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeLow:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeHigh:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x1000

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    add-int/lit8 v15, v15, 0x1

    goto :goto_5e6

    .line 678
    :cond_646
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Init MinFreeLow: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Init MinFreeHigh: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Scale: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MinFreeKbytesAbsolute: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Final MinFree: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1385
    const/4 v1, 0x0

    .line 1387
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_17
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    .line 1388
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_44
    .catchall {:try_start_6 .. :try_end_d} :catchall_41

    .line 1392
    if-eqz v2, :cond_47

    .line 1394
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    move-object v1, v2

    .line 1399
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_13
    :goto_13
    return-void

    .line 1395
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v3

    move-object v1, v2

    .line 1396
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_13

    .line 1389
    :catch_17
    move-exception v0

    .line 1390
    .local v0, "e":Ljava/io/IOException;
    :goto_18
    :try_start_18
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_38

    .line 1392
    if-eqz v1, :cond_13

    .line 1394
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_13

    .line 1395
    :catch_36
    move-exception v3

    goto :goto_13

    .line 1392
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_38
    move-exception v3

    :goto_39
    if-eqz v1, :cond_3e

    .line 1394
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 1396
    :cond_3e
    :goto_3e
    throw v3

    .line 1395
    :catch_3f
    move-exception v4

    goto :goto_3e

    .line 1392
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_41
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_39

    .line 1389
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_44
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_18

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_47
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_13
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_24

    .line 1142
    sget-object v2, sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_16

    .line 1143
    invoke-static {}, openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1145
    const-wide/16 v2, 0x3e8

    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_36

    .line 1141
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1153
    :cond_16
    :try_start_16
    sget-object v2, sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_24} :catch_25

    .line 1166
    :cond_24
    return-void

    .line 1155
    :catch_25
    move-exception v0

    .line 1156
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :try_start_2d
    sget-object v2, sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_38

    .line 1163
    :goto_32
    const/4 v2, 0x0

    sput-object v2, sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_13

    .line 1146
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_36
    move-exception v2

    goto :goto_13

    .line 1160
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_38
    move-exception v2

    goto :goto_32
.end method


# virtual methods
.method public ResetDynamicLMK()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1429
    sget-boolean v0, mDynamicLMKEnable:Z

    if-eqz v0, :cond_9

    sget-boolean v0, mSzILSFlag:Z

    if-eqz v0, :cond_a

    .line 1435
    :cond_9
    :goto_9
    return-void

    .line 1431
    :cond_a
    iget-boolean v0, p0, mDynamicLMKFlag:Z

    if-eqz v0, :cond_9

    .line 1432
    iput-boolean v1, p0, mDynamicLMKFlag:Z

    .line 1433
    invoke-virtual {p0, v1}, changeLMKByDynamicLMK(Z)V

    goto :goto_9
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 418
    iget-boolean v1, p0, mHaveDisplaySize:Z

    if-nez v1, :cond_27

    .line 419
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 420
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 421
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_27

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_27

    .line 422
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, mDisplayWidth:I

    .line 423
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, mDisplayHeight:I

    .line 424
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, updateOomLevels(IIZ)V

    .line 425
    iput-boolean v3, p0, mHaveDisplaySize:Z

    .line 428
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_27
    return-void
.end method

.method changeLMKByDynamicLMK(Z)V
    .registers 10
    .param p1, "flag"    # Z

    .prologue
    .line 700
    iget-object v3, p0, mOomAdj:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 701
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v3, p0, mOomAdj:[I

    array-length v3, v3

    new-array v2, v3, [I

    .line 703
    .local v2, "mTempOomMinFree":[I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v3, p0, mOomAdj:[I

    array-length v3, v3

    if-ge v1, v3, :cond_44

    .line 705
    if-eqz p1, :cond_3b

    .line 706
    iget-object v3, p0, mOomMinFree:[I

    iget-object v4, p0, mOomMinFreeDynamicHigh:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 710
    :goto_26
    iget-object v3, p0, mOomMinFree:[I

    aget v3, v3, v1

    mul-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x1000

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 711
    iget-object v3, p0, mOomAdj:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 708
    :cond_3b
    iget-object v3, p0, mOomMinFree:[I

    iget-object v4, p0, mOomMinFreeDynamicNormal:[I

    aget v4, v4, v1

    aput v4, v3, v1

    goto :goto_26

    .line 714
    :cond_44
    invoke-static {v0}, writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 716
    iput-boolean p1, p0, mDynamicLMKFlag:Z

    .line 717
    const-string/jumbo v3, "ro.config.dha_th_level"

    const-string v4, "15"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p0, mSzDHAThreshold:J

    .line 719
    const-string v3, "DynamicLMK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeLMKByDynamicLMK: flag =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSzDHAThreshold =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, mSzDHAThreshold:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method decrementAppCount(IIILcom/android/server/am/ProcessRecord;Z)I
    .registers 13
    .param p1, "maxApp"    # I
    .param p2, "empty"    # I
    .param p3, "cached"    # I
    .param p4, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "preventAggressiveKill"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1268
    add-int v5, p2, p3

    iget v6, p0, mSzDHAStep:I

    sub-int v2, v5, v6

    .line 1269
    .local v2, "mUpdateMax":I
    if-gt p2, p3, :cond_f

    iget v5, p0, mSzDHAStep:I

    if-eq v5, v4, :cond_f

    add-int/lit8 v2, v2, 0x1

    .line 1271
    :cond_f
    if-le p1, v2, :cond_29

    .line 1272
    sget v5, MIN_EMPTY_APPS_FOR_DHA:I

    sget v6, MIN_CACHED_APPS:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_1e

    .line 1273
    sget v5, MIN_EMPTY_APPS_FOR_DHA:I

    sget v6, MIN_CACHED_APPS:I

    add-int v2, v5, v6

    .line 1280
    :cond_1e
    :goto_1e
    if-le p2, p3, :cond_2b

    .line 1281
    sput p3, mMaxCached:I

    .line 1299
    :cond_22
    :goto_22
    sget v5, mMaxCached:I

    if-gtz v5, :cond_28

    sput v4, mMaxCached:I

    .line 1300
    :cond_28
    return v2

    .line 1277
    :cond_29
    move v2, p1

    goto :goto_1e

    .line 1284
    :cond_2b
    sget v3, mMaxCached:I

    .line 1285
    .local v3, "prevMaxCached":I
    add-int/lit8 v5, p3, -0x1

    sput v5, mMaxCached:I

    .line 1286
    sget v5, mMaxCached:I

    if-le v5, v2, :cond_39

    sub-int v5, v2, p2

    sput v5, mMaxCached:I

    .line 1288
    :cond_39
    if-eqz p5, :cond_41

    sget v5, mMaxCached:I

    if-le v3, v5, :cond_41

    .line 1289
    sput v3, mMaxCached:I

    .line 1290
    :cond_41
    sget-boolean v5, PRE_MAX_KILL_ENABLE:Z

    if-eqz v5, :cond_22

    sget-boolean v5, PRE_DECREMENT_SYNC:Z

    if-eqz v5, :cond_22

    sget v5, mMaxCached:I

    if-le v3, v5, :cond_22

    sget v5, mMaxCached:I

    sget v6, MIN_CACHED_APPS:I

    if-lt v5, v6, :cond_22

    .line 1291
    if-eqz p4, :cond_22

    .line 1292
    iget v0, p4, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 1293
    .local v0, "appState":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_81

    const/16 v5, 0xf

    if-eq v0, v5, :cond_81

    move v1, v4

    .line 1294
    .local v1, "killedBySPC":Z
    :goto_60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_83

    const-string v5, "SPC_cached #"

    :goto_6f
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1295
    sput v3, mMaxCached:I

    goto :goto_22

    .line 1293
    .end local v1    # "killedBySPC":Z
    :cond_81
    const/4 v1, 0x0

    goto :goto_60

    .line 1294
    .restart local v1    # "killedBySPC":Z
    :cond_83
    const-string v5, "cached #"

    goto :goto_6f
.end method

.method decrementEmptyAppCount(IIILcom/android/server/am/ProcessRecord;Z)I
    .registers 13
    .param p1, "maxEmptyApp"    # I
    .param p2, "empty"    # I
    .param p3, "cached"    # I
    .param p4, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "preventAggressiveKill"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1318
    iget v5, p0, mSzDHAStep:I

    sub-int v3, p2, v5

    .line 1320
    .local v3, "ret":I
    if-le p1, v3, :cond_5e

    .line 1321
    sget v5, MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v3, v5, :cond_d

    .line 1322
    sget v3, MIN_EMPTY_APPS_FOR_DHA:I

    .line 1324
    :cond_d
    sget v5, MIN_CACHED_APPS:I

    if-le p3, v5, :cond_58

    .line 1325
    sget v2, mMaxCached:I

    .line 1326
    .local v2, "prevMaxCached":I
    add-int/lit8 v5, p3, -0x1

    sput v5, mMaxCached:I

    .line 1328
    if-eqz p5, :cond_1f

    sget v5, mMaxCached:I

    if-le v2, v5, :cond_1f

    .line 1329
    sput v2, mMaxCached:I

    .line 1330
    :cond_1f
    sget-boolean v5, PRE_MAX_KILL_ENABLE:Z

    if-eqz v5, :cond_58

    sget-boolean v5, PRE_DECREMENT_SYNC:Z

    if-eqz v5, :cond_58

    sget v5, mMaxCached:I

    if-le v2, v5, :cond_58

    .line 1331
    if-eqz p4, :cond_58

    .line 1332
    iget v0, p4, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 1333
    .local v0, "appState":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_59

    const/16 v5, 0xf

    if-eq v0, v5, :cond_59

    move v1, v4

    .line 1334
    .local v1, "killedBySPC":Z
    :goto_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_5b

    const-string v5, "SPC_cached #"

    :goto_47
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1335
    sput v2, mMaxCached:I

    .line 1343
    .end local v0    # "appState":I
    .end local v1    # "killedBySPC":Z
    .end local v2    # "prevMaxCached":I
    :cond_58
    :goto_58
    return v3

    .line 1333
    .restart local v0    # "appState":I
    .restart local v2    # "prevMaxCached":I
    :cond_59
    const/4 v1, 0x0

    goto :goto_38

    .line 1334
    .restart local v1    # "killedBySPC":Z
    :cond_5b
    const-string v5, "cached #"

    goto :goto_47

    .line 1341
    .end local v0    # "appState":I
    .end local v1    # "killedBySPC":Z
    .end local v2    # "prevMaxCached":I
    :cond_5e
    move v3, p1

    goto :goto_58
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    .prologue
    .line 1047
    iget-wide v0, p0, mCachedRestoreLevel:J

    return-wide v0
.end method

.method getKswapdWatermark()J
    .registers 7

    .prologue
    .line 1072
    iget-wide v2, p0, mSmartDHAKswapdWatermark:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    .line 1073
    sget-object v2, mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v2, :cond_13

    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v2, mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 1075
    :cond_13
    sget-object v2, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getWatermark()J

    move-result-wide v0

    .line 1076
    .local v0, "watermark":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_21

    iput-wide v0, p0, mSmartDHAKswapdWatermark:J

    .line 1078
    .end local v0    # "watermark":J
    :cond_21
    iget-wide v2, p0, mSmartDHAKswapdWatermark:J

    return-wide v2
.end method

.method getLMKThreshold(I)J
    .registers 4
    .param p1, "adj"    # I

    .prologue
    const/16 v0, 0xf

    .line 1053
    if-ge p1, v0, :cond_6

    const/16 v0, 0x9

    :cond_6
    invoke-virtual {p0, v0}, getMemLevel(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getMemLevel(I)J
    .registers 6
    .param p1, "adjustment"    # I

    .prologue
    .line 1034
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 1035
    iget-object v1, p0, mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    .line 1036
    iget-object v1, p0, mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    .line 1039
    :goto_13
    return-wide v2

    .line 1034
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1039
    :cond_17
    iget-object v1, p0, mOomMinFree:[I

    iget-object v2, p0, mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    goto :goto_13
.end method

.method getSmartDHADefaultMargin()J
    .registers 7

    .prologue
    .line 1057
    iget-wide v0, p0, mSmartDHADefaultMargin:J

    .line 1059
    .local v0, "margin":J
    sget-boolean v2, mSzILSFlag:Z

    if-eqz v2, :cond_b

    .line 1060
    long-to-float v2, v0

    sget v3, mSzILS_SDHARate:F

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 1064
    :cond_b
    iget-wide v2, p0, mExtraFreeKBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    .line 1065
    iget-wide v2, p0, mExtraFreeKBytes:J

    add-long/2addr v0, v2

    .line 1068
    :cond_16
    return-wide v0
.end method

.method incrementAppCount(I)I
    .registers 5
    .param p1, "maxApp"    # I

    .prologue
    .line 1304
    iget v1, p0, mSzDHAStep:I

    add-int v0, p1, v1

    .line 1306
    .local v0, "mUpdateMax":I
    sget v1, MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_a

    .line 1307
    sget v0, MAX_EMPTY_APPS:I

    .line 1309
    :cond_a
    sput v0, mMaxCached:I

    .line 1311
    sget v1, mMaxCached:I

    sget v2, MAX_CACHED_APPS:I

    if-le v1, v2, :cond_16

    .line 1312
    sget v1, MAX_CACHED_APPS:I

    sput v1, mMaxCached:I

    .line 1314
    :cond_16
    return v0
.end method

.method incrementEmptyAppCount(I)I
    .registers 4
    .param p1, "maxEmptyApp"    # I

    .prologue
    .line 1347
    iget v1, p0, mSzDHAStep:I

    add-int v0, p1, v1

    .line 1349
    .local v0, "ret":I
    sget v1, MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_a

    .line 1350
    sget v0, MAX_EMPTY_APPS:I

    .line 1353
    :cond_a
    return v0
.end method

.method public setSmartDHADefaultMargin(J)V
    .registers 4
    .param p1, "margin"    # J

    .prologue
    .line 1082
    iput-wide p1, p0, mSmartDHADefaultMargin:J

    .line 1083
    return-void
.end method

.method public setTrimCachedApps(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 1361
    sput p1, TRIM_CACHED_APPS:I

    .line 1362
    return-void
.end method

.method public setTrimCriticalTH(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 1365
    sput p1, TRIM_CRITICAL_THRESHOLD:I

    .line 1366
    return-void
.end method

.method public setTrimEmptyApps(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 1357
    sput p1, TRIM_EMPTY_APPS:I

    .line 1358
    return-void
.end method

.method public setTrimLowlTH(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 1369
    sput p1, TRIM_LOW_THRESHOLD:I

    .line 1370
    return-void
.end method

.method public updateDHAParameter()V
    .registers 12

    .prologue
    .line 1514
    :try_start_0
    const-string v6, ""

    .line 1515
    .local v6, "result":Ljava/lang/String;
    const-string v5, ""

    .line 1516
    .local v5, "name":Ljava/lang/String;
    const-string v7, ""

    .line 1517
    .local v7, "value":Ljava/lang/String;
    const-string v0, "[=:]"

    .line 1518
    .local v0, "SEPATOR":Ljava/lang/String;
    const-string v4, "/data/local/tmp/dha_parameter.dat"

    .line 1519
    .local v4, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1520
    .local v1, "buf":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1522
    .local v3, "file":Ljava/io/File;
    const-string v8, "ActivityManager"

    const-string v9, "Start updateDHAParameter"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_413

    .line 1525
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "updateDHAParameter exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    new-instance v1, Ljava/io/BufferedReader;

    .end local v1    # "buf":Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1527
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_2f
    :goto_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_407

    .line 1528
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2f

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 1532
    const-string v8, "[=:]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1533
    const-string v8, "[=:]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1535
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "name = [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ], value = [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const-string v8, "MAX_CACHED_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 1537
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, MAX_CACHED_APPS:I
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a4} :catch_a5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_a4} :catch_ba

    goto :goto_2f

    .line 1691
    .end local v0    # "SEPATOR":Ljava/lang/String;
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_a5
    move-exception v2

    .line 1692
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1696
    .end local v2    # "e":Ljava/io/IOException;
    :goto_a9
    return-void

    .line 1539
    .restart local v0    # "SEPATOR":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filepath":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_aa
    :try_start_aa
    const-string v8, "MIN_CACHED_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bf

    .line 1540
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, MIN_CACHED_APPS:I
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b8} :catch_a5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_aa .. :try_end_b8} :catch_ba

    goto/16 :goto_2f

    .line 1693
    .end local v0    # "SEPATOR":Ljava/lang/String;
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_ba
    move-exception v2

    .line 1694
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_a9

    .line 1542
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v0    # "SEPATOR":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filepath":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_bf
    :try_start_bf
    const-string v8, "MAX_EMPTY_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 1543
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, MAX_EMPTY_APPS:I

    goto/16 :goto_2f

    .line 1545
    :cond_cf
    const-string v8, "MIN_EMPTY_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    .line 1546
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, MIN_EMPTY_APPS_FOR_DHA:I

    goto/16 :goto_2f

    .line 1548
    :cond_df
    const-string v8, "INIT_EMPTY_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ef

    .line 1549
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, INIT_EMPTY_APPS:I

    goto/16 :goto_2f

    .line 1551
    :cond_ef
    const-string/jumbo v8, "mSzDHAStep"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_100

    .line 1552
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, mSzDHAStep:I

    goto/16 :goto_2f

    .line 1554
    :cond_100
    const-string/jumbo v8, "mSzDHAThreshold"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_112

    .line 1555
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, mSzDHAThreshold:J

    goto/16 :goto_2f

    .line 1557
    :cond_112
    const-string/jumbo v8, "ro.config.dha_th_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_123

    .line 1558
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, mSzDHAThresholdRate:F

    goto/16 :goto_2f

    .line 1560
    :cond_123
    const-string/jumbo v8, "mSzDHADefendThreshold"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_135

    .line 1561
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, mSzDHADefendThreshold:J

    goto/16 :goto_2f

    .line 1563
    :cond_135
    const-string/jumbo v8, "ro.config.dha_defendth_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_146

    .line 1564
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, mDHADefendTHEnable:Z

    goto/16 :goto_2f

    .line 1566
    :cond_146
    const-string v8, "DHA_INCREASE_THRESHOLD"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_157

    .line 1567
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    sput-wide v8, DHA_INCREASE_THRESHOLD:J

    goto/16 :goto_2f

    .line 1569
    :cond_157
    const-string/jumbo v8, "ro.config.dha_lmk_scale"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_170

    .line 1570
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    sput v8, mLMKScale:F

    .line 1571
    iget v8, p0, mDisplayWidth:I

    iget v9, p0, mDisplayHeight:I

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, updateOomLevels(IIZ)V

    goto/16 :goto_2f

    .line 1573
    :cond_170
    const-string/jumbo v8, "ro.config.dha_lmk_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_199

    .line 1574
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    sput v8, mLMKRate:F

    .line 1575
    sget v8, mLMKRate:F

    invoke-virtual {p0, v8}, writeLMKValueWithRate(F)V

    .line 1576
    const-string/jumbo v8, "ro.config.dha_th_level"

    const-string v9, "15"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, getMemLevel(I)J

    move-result-wide v8

    iput-wide v8, p0, mSzDHAThreshold:J

    goto/16 :goto_2f

    .line 1578
    :cond_199
    const-string/jumbo v8, "ro.config.dha_lmk_array"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c9

    .line 1579
    sput-object v7, mLMKArray:Ljava/lang/String;

    .line 1580
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dha_lmk_array mLMKArray ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, mLMKArray:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget v8, p0, mDisplayWidth:I

    iget v9, p0, mDisplayHeight:I

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, updateOomLevels(IIZ)V

    goto/16 :goto_2f

    .line 1583
    :cond_1c9
    const-string/jumbo v8, "ro.config.dha_dyna_lmk_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e2

    .line 1584
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, mDynamicLMKEnable:Z

    .line 1585
    iget v8, p0, mDisplayWidth:I

    iget v9, p0, mDisplayHeight:I

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, updateOomLevels(IIZ)V

    goto/16 :goto_2f

    .line 1587
    :cond_1e2
    const-string/jumbo v8, "ro.config.dha_dynamic_lmk_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f3

    .line 1588
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, mDynamicLMKRate:F

    goto/16 :goto_2f

    .line 1590
    :cond_1f3
    const-string/jumbo v8, "ro.config.dha_ils_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_204

    .line 1591
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, mILS_Enable:Z

    goto/16 :goto_2f

    .line 1593
    :cond_204
    const-string/jumbo v8, "ro.config.dha_ils_dyna_lmk"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_215

    .line 1594
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, mILS_DynamicLMKFlag:Z

    goto/16 :goto_2f

    .line 1596
    :cond_215
    const-string/jumbo v8, "ro.config.dha_ils_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_226

    .line 1597
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    sput v8, mSzILSRate:F

    goto/16 :goto_2f

    .line 1599
    :cond_226
    const-string/jumbo v8, "ro.config.dha_ils_sdha_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_237

    .line 1600
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    sput v8, mSzILS_SDHARate:F

    goto/16 :goto_2f

    .line 1602
    :cond_237
    const-string/jumbo v8, "ro.config.dha_whitelist_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_248

    .line 1603
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, mWhitelistEnable:I

    goto/16 :goto_2f

    .line 1605
    :cond_248
    const-string/jumbo v8, "ro.config.dha_pwhitelist_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_259

    .line 1606
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, mPremiumWhitelistEnable:I

    goto/16 :goto_2f

    .line 1608
    :cond_259
    const-string/jumbo v8, "ro.config.dha_whl_key"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26a

    .line 1609
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ActivityManagerService;->white_list_key:I

    goto/16 :goto_2f

    .line 1611
    :cond_26a
    const-string/jumbo v8, "ro.config.dha_goldenlist_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27b

    .line 1612
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, mGoldenlistEnable:I

    goto/16 :goto_2f

    .line 1614
    :cond_27b
    const-string/jumbo v8, "ro.config.dha_CPR_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28c

    .line 1615
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, mCPREnable:I

    goto/16 :goto_2f

    .line 1617
    :cond_28c
    const-string/jumbo v8, "ro.config.dha_frag_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29d

    .line 1618
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, mFragEnable:I

    goto/16 :goto_2f

    .line 1620
    :cond_29d
    const-string/jumbo v8, "ro.config.64bit_lmk_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2ae

    .line 1621
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, mb64bitLMKEnable:Z

    goto/16 :goto_2f

    .line 1623
    :cond_2ae
    const-string/jumbo v8, "ro.config.ldha_es_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2bf

    .line 1624
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, LDHA_ES_ENABLE:Z

    goto/16 :goto_2f

    .line 1626
    :cond_2bf
    const-string/jumbo v8, "ro.config.ldha_spc_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d0

    .line 1627
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, LDHA_SPC_ENABLE:Z

    goto/16 :goto_2f

    .line 1629
    :cond_2d0
    const-string/jumbo v8, "ro.config.ldha_ext_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e1

    .line 1630
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, LDHA_EXT_ENABLE:Z

    goto/16 :goto_2f

    .line 1632
    :cond_2e1
    const-string/jumbo v8, "ro.config.ldha_ext_th1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f2

    .line 1633
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, LDHA_EXT_TH1:J

    goto/16 :goto_2f

    .line 1635
    :cond_2f2
    const-string/jumbo v8, "ro.config.ldha_ext_th2"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_303

    .line 1636
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, LDHA_EXT_TH2:J

    goto/16 :goto_2f

    .line 1638
    :cond_303
    const-string/jumbo v8, "ro.config.ldha_ext_limit1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_314

    .line 1639
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, LDHA_EXT_LIMIT1:I

    goto/16 :goto_2f

    .line 1641
    :cond_314
    const-string/jumbo v8, "ro.config.ldha_ext_limit2"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_325

    .line 1642
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, LDHA_EXT_LIMIT2:I

    goto/16 :goto_2f

    .line 1644
    :cond_325
    const-string/jumbo v8, "ro.config.ams_exception_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_336

    .line 1645
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, mAMSExceptionEnable:Z

    goto/16 :goto_2f

    .line 1647
    :cond_336
    const-string/jumbo v8, "ro.config.fha_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34f

    .line 1648
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, FHA_Enable:Z

    .line 1649
    iget v8, p0, mDisplayWidth:I

    iget v9, p0, mDisplayHeight:I

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, updateOomLevels(IIZ)V

    goto/16 :goto_2f

    .line 1651
    :cond_34f
    const-string/jumbo v8, "ro.config.fha_cached_max"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_360

    .line 1652
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, MAX_CACHED_APPS_FOR_FHA:I

    goto/16 :goto_2f

    .line 1654
    :cond_360
    const-string/jumbo v8, "ro.config.fha_empty_max"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_371

    .line 1655
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, MAX_EMPTY_APPS_FOR_FHA:I

    goto/16 :goto_2f

    .line 1657
    :cond_371
    const-string/jumbo v8, "ro.config.mdha_ssr_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_382

    .line 1658
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, MDHA_SSR_ENABLE:Z

    goto/16 :goto_2f

    .line 1660
    :cond_382
    const-string/jumbo v8, "ro.config.mdha_ssr_max_minute"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_397

    .line 1661
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    sput v8, MDHA_SSR_MAX_SERVICE_TIME:I

    goto/16 :goto_2f

    .line 1663
    :cond_397
    const-string/jumbo v8, "ro.config.pre_max_kill_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a8

    .line 1664
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, PRE_MAX_KILL_ENABLE:Z

    goto/16 :goto_2f

    .line 1666
    :cond_3a8
    const-string/jumbo v8, "ro.config.pre_cached_kill"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b9

    .line 1667
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, PRE_CACHED_KILL:Z

    goto/16 :goto_2f

    .line 1669
    :cond_3b9
    const-string/jumbo v8, "ro.config.pre_empty_kill"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3ca

    .line 1670
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, PRE_EMPTY_KILL:Z

    goto/16 :goto_2f

    .line 1672
    :cond_3ca
    const-string/jumbo v8, "ro.config.pre_decrement_sync"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3db

    .line 1673
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, PRE_DECREMENT_SYNC:Z

    goto/16 :goto_2f

    .line 1675
    :cond_3db
    const-string/jumbo v8, "ro.config.pre_support_increment"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3ec

    .line 1676
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, PRE_SUPPORT_INCREMENT:Z

    goto/16 :goto_2f

    .line 1678
    :cond_3ec
    const-string/jumbo v8, "ro.config.dha_adj_cached_factor"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3fd

    .line 1679
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, DHA_ADJ_CACHED_FACTOR:Z

    goto/16 :goto_2f

    .line 1682
    :cond_3fd
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "not matched parameter"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 1685
    :cond_407
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1686
    const-string v8, "ActivityManager"

    const-string v9, "complete parameter"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 1689
    :cond_413
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "file does not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41b
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_41b} :catch_a5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_bf .. :try_end_41b} :catch_ba

    goto/16 :goto_a9
.end method

.method public updateDynamicLMK(Ljava/lang/String;J)V
    .registers 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "AvgUSS"    # J

    .prologue
    const/4 v3, 0x1

    .line 1402
    sget-boolean v0, mDynamicLMKEnable:Z

    if-eqz v0, :cond_9

    sget-boolean v0, mSzILSFlag:Z

    if-eqz v0, :cond_a

    .line 1420
    :cond_9
    :goto_9
    return-void

    .line 1404
    :cond_a
    const-string v0, "DynamicLMK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDynamicLMK: processName =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AvgUSS =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const-string/jumbo v0, "launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1407
    invoke-virtual {p0}, ResetDynamicLMK()V

    goto :goto_9

    .line 1409
    :cond_3a
    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "com.samsung.android.video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1412
    :cond_52
    iget-boolean v0, p0, mDynamicLMKFlag:Z

    if-nez v0, :cond_9

    .line 1413
    invoke-virtual {p0, v3}, changeLMKByDynamicLMK(Z)V

    .line 1414
    iput-boolean v3, p0, mDynamicLMKFlag:Z

    goto :goto_9

    .line 1417
    :cond_5c
    const/4 v0, 0x0

    iput-boolean v0, p0, mDynamicLMKFlag:Z

    goto :goto_9
.end method

.method public updateHiddenAppNum(IIILcom/android/server/am/ProcessRecord;Z)I
    .registers 26
    .param p1, "maxProcess"    # I
    .param p2, "curCached"    # I
    .param p3, "curEmpty"    # I
    .param p4, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "preventAggressiveKill"    # Z

    .prologue
    .line 1170
    move/from16 v12, p1

    .line 1172
    .local v12, "ret":I
    sget-object v2, mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v2, :cond_188

    .line 1174
    sget-object v2, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1177
    sget-object v2, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v18

    .line 1180
    .local v18, "szFreeMem":J
    sget-object v2, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    sget-object v4, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v4

    add-long v14, v2, v4

    .line 1181
    .local v14, "szAvailableMem":J
    const-wide/16 v16, 0x0

    .line 1182
    .local v16, "szFragMem":J
    sget v2, mFragEnable:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    move-object/from16 v0, p0

    iget-wide v2, v0, mSzDHAThreshold:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    cmp-long v2, v18, v2

    if-gez v2, :cond_3c

    .line 1183
    sget-object v2, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readBuddyInfo()V

    .line 1184
    sget-object v2, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFragRate()J

    move-result-wide v16

    .line 1187
    :cond_3c
    sget-boolean v2, LDHA_ES_ENABLE:Z

    if-nez v2, :cond_44

    div-int/lit8 v2, p1, 0x2

    sput v2, mMaxCached:I

    .line 1189
    :cond_44
    sget v2, mMaxCached:I

    sget v3, MIN_CACHED_APPS:I

    if-ge v2, v3, :cond_4e

    .line 1190
    sget v2, MIN_CACHED_APPS:I

    sput v2, mMaxCached:I

    .line 1192
    :cond_4e
    sget v2, mMaxCached:I

    sget v3, MAX_CACHED_APPS:I

    if-le v2, v3, :cond_58

    .line 1193
    sget v2, MAX_CACHED_APPS:I

    sput v2, mMaxCached:I

    .line 1196
    :cond_58
    sget-boolean v2, mSzILSFlag:Z

    if-eqz v2, :cond_64

    sget-boolean v2, mILS_2nd_Enable:Z

    if-eqz v2, :cond_64

    .line 1197
    sget v2, MIN_CACHED_APPS:I

    sput v2, mMaxCached:I

    .line 1200
    :cond_64
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_102

    .line 1201
    const/4 v11, 0x0

    .line 1202
    .local v11, "maxBG":I
    sget-boolean v2, LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_10a

    move/from16 v11, p1

    .line 1205
    :goto_6f
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AvailableMem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x400

    div-long v4, v14, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "kB (Free: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "kB, Cached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "kB) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Threshold = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, mSzDHAThreshold:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "kB [MaxHidden: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Current Hidden"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Current Empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Frag.Mem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x400

    div-long v4, v16, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    .end local v11    # "maxBG":I
    :cond_102
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-gtz v2, :cond_110

    move v13, v12

    .line 1264
    .end local v12    # "ret":I
    .end local v14    # "szAvailableMem":J
    .end local v16    # "szFragMem":J
    .end local v18    # "szFreeMem":J
    .local v13, "ret":I
    :goto_109
    return v13

    .line 1203
    .end local v13    # "ret":I
    .restart local v11    # "maxBG":I
    .restart local v12    # "ret":I
    .restart local v14    # "szAvailableMem":J
    .restart local v16    # "szFragMem":J
    .restart local v18    # "szFreeMem":J
    :cond_10a
    sget v2, mMaxCached:I

    add-int v11, p1, v2

    goto/16 :goto_6f

    .line 1214
    .end local v11    # "maxBG":I
    :cond_110
    move-object/from16 v0, p0

    iget v10, v0, mSzDHAThresholdRate:F

    .line 1216
    .local v10, "mFinalDHAThresholdRate":F
    sget-boolean v2, mSzILSFlag:Z

    if-eqz v2, :cond_124

    .line 1217
    sget-boolean v2, mILS_DynamicLMKFlag:Z

    if-nez v2, :cond_124

    .line 1218
    move-object/from16 v0, p0

    iget v2, v0, mSzDHAThresholdRate:F

    sget v3, mSzILSRate:F

    mul-float v10, v2, v3

    .line 1222
    :cond_124
    move-object/from16 v0, p0

    iget-wide v2, v0, mSzDHAThreshold:J

    long-to-float v2, v2

    mul-float v9, v2, v10

    .line 1224
    .local v9, "mFinalDHAThreshold":F
    const/4 v8, 0x0

    .line 1225
    .local v8, "curProcess":I
    sget-boolean v2, LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_18a

    add-int v8, p2, p3

    .line 1229
    :goto_132
    sub-long v2, v14, v16

    long-to-float v2, v2

    cmpg-float v2, v2, v9

    if-ltz v2, :cond_147

    sget-boolean v2, mDHADefendTHEnable:Z

    if-eqz v2, :cond_19e

    sub-long v2, v18, v16

    move-object/from16 v0, p0

    iget-wide v4, v0, mSzDHADefendThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_19e

    .line 1230
    :cond_147
    sget-boolean v2, LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_18d

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 1231
    invoke-virtual/range {v2 .. v7}, decrementAppCount(IIILcom/android/server/am/ProcessRecord;Z)I

    move-result v12

    .line 1232
    sget v2, mMaxCached:I

    sput v2, retCacheLimit:I

    .line 1235
    :goto_15f
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_188

    .line 1236
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrease Hidden App Number from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "curProcess":I
    .end local v9    # "mFinalDHAThreshold":F
    .end local v10    # "mFinalDHAThresholdRate":F
    .end local v14    # "szAvailableMem":J
    .end local v16    # "szFragMem":J
    .end local v18    # "szFreeMem":J
    :cond_188
    :goto_188
    move v13, v12

    .line 1264
    .end local v12    # "ret":I
    .restart local v13    # "ret":I
    goto :goto_109

    .line 1226
    .end local v13    # "ret":I
    .restart local v8    # "curProcess":I
    .restart local v9    # "mFinalDHAThreshold":F
    .restart local v10    # "mFinalDHAThresholdRate":F
    .restart local v12    # "ret":I
    .restart local v14    # "szAvailableMem":J
    .restart local v16    # "szFragMem":J
    .restart local v18    # "szFreeMem":J
    :cond_18a
    move/from16 v8, p3

    goto :goto_132

    :cond_18d
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 1234
    invoke-virtual/range {v2 .. v7}, decrementEmptyAppCount(IIILcom/android/server/am/ProcessRecord;Z)I

    move-result v12

    goto :goto_15f

    .line 1241
    :cond_19e
    sub-long v2, v14, v16

    long-to-float v2, v2

    sget-wide v4, DHA_INCREASE_THRESHOLD:J

    long-to-float v3, v4

    add-float/2addr v3, v9

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1fe

    move/from16 v0, p1

    if-ge v8, v0, :cond_1c4

    sget-boolean v2, LDHA_ES_ENABLE:Z

    if-nez v2, :cond_1fe

    sget-boolean v2, PRE_MAX_KILL_ENABLE:Z

    if-eqz v2, :cond_1fe

    sget-boolean v2, PRE_SUPPORT_INCREMENT:Z

    if-eqz v2, :cond_1fe

    sget v2, Lcom/android/server/am/ActivityManagerService;->curTopState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1fe

    add-int/lit8 v2, v8, 0x1

    move/from16 v0, p1

    if-lt v2, v0, :cond_1fe

    .line 1244
    :cond_1c4
    sget-boolean v2, LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_1f9

    .line 1245
    invoke-virtual/range {p0 .. p1}, incrementAppCount(I)I

    move-result v12

    .line 1246
    const/4 v2, 0x0

    sput v2, retCacheLimit:I

    .line 1249
    :goto_1cf
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_188

    .line 1250
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Increase Hidden App Number from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_188

    .line 1248
    :cond_1f9
    invoke-virtual/range {p0 .. p1}, incrementEmptyAppCount(I)I

    move-result v12

    goto :goto_1cf

    .line 1255
    :cond_1fe
    sget-boolean v2, LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_188

    .line 1256
    sput v12, mMaxCached:I

    .line 1257
    sget v2, mMaxCached:I

    sget v3, MAX_CACHED_APPS:I

    if-le v2, v3, :cond_20e

    .line 1258
    sget v2, MAX_CACHED_APPS:I

    sput v2, mMaxCached:I

    .line 1260
    :cond_20e
    const/4 v2, 0x0

    sput v2, retCacheLimit:I

    goto/16 :goto_188
.end method

.method public updateLMKbyILS()V
    .registers 2

    .prologue
    .line 1423
    sget-boolean v0, mILS_Enable:Z

    if-eqz v0, :cond_d

    sget-boolean v0, mILS_DynamicLMKFlag:Z

    if-eqz v0, :cond_d

    .line 1424
    sget-boolean v0, mSzILSFlag:Z

    invoke-virtual {p0, v0}, changeLMKByDynamicLMK(Z)V

    .line 1426
    :cond_d
    return-void
.end method

.method writeLMKValueWithRate(F)V
    .registers 6
    .param p1, "rate"    # F

    .prologue
    .line 688
    iget-object v2, p0, mOomAdj:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 689
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 690
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v2, p0, mOomAdj:[I

    array-length v2, v2

    if-ge v1, v2, :cond_37

    .line 691
    iget-object v2, p0, mOomMinFree:[I

    iget-object v3, p0, mOomMinFree:[I

    aget v3, v3, v1

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    aput v3, v2, v1

    .line 692
    iget-object v2, p0, mOomMinFree:[I

    aget v2, v2, v1

    mul-int/lit16 v2, v2, 0x400

    div-int/lit16 v2, v2, 0x1000

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 693
    iget-object v2, p0, mOomAdj:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 696
    :cond_37
    invoke-static {v0}, writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 697
    return-void
.end method
