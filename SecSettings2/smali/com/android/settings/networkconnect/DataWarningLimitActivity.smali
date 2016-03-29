.class public Lcom/android/settings/networkconnect/DataWarningLimitActivity;
.super Lcom/android/settings/SettingsActivity;
.source "DataWarningLimitActivity.java"


# static fields
.field private static final DATA_SIZE_SUFFIX:[Ljava/lang/String;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public mDataTemplate:Landroid/net/NetworkTemplate;

.field private mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;

.field private mEnableWarningStatus:I

.field private mIsDataLoadFinished:Z

.field private mListView:Landroid/widget/ListView;

.field private mMobileText:Landroid/widget/TextView;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private mSubscriberId:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Landroid/widget/LinearLayout;

.field public mSwitchBarClickListener:Landroid/view/View$OnClickListener;

.field public mSwitchChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchtext:Landroid/widget/TextView;

.field private mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public mWifiTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MB"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GB"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    .line 277
    new-instance v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$3;

    invoke-direct {v0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity$3;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 75
    const-string v0, "DataWarningLimitActivity"

    iput-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->TAG:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I

    .line 92
    iput v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    .line 93
    iput-boolean v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    .line 170
    new-instance v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;-><init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 210
    new-instance v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity$2;-><init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchBarClickListener:Landroid/view/View$OnClickListener;

    .line 285
    new-instance v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity$4;-><init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 330
    new-instance v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity$5;-><init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->isWarningFunctionActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Lcom/android/settings/networkconnect/DataWarningAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/networkconnect/DataWarningLimitActivity;Lcom/android/settings/networkconnect/DataWarningAdapter;)Lcom/android/settings/networkconnect/DataWarningAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;
    .param p1, "x1"    # Lcom/android/settings/networkconnect/DataWarningAdapter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;

    return-object p1
.end method

.method static synthetic access$600(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->formatFileSizeMB(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/networkconnect/DataWarningLimitActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method private dataReset()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 165
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 166
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 167
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 168
    return-void
.end method

.method private static formatFileSizeMB(J)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # J

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 387
    .local v1, "index":I
    long-to-int v3, p0

    .line 388
    .local v3, "iresult":I
    long-to-float v0, p0

    .line 389
    .local v0, "fresult":F
    const-string v4, ""

    .local v4, "value":Ljava/lang/String;
    move v2, v1

    .line 390
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-lez v3, :cond_0

    sget-object v5, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 392
    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v0, v5

    .line 393
    float-to-int v3, v0

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 395
    :cond_0
    return-object v4
.end method

.method private getStartTime()J
    .locals 20

    .prologue
    .line 405
    const-wide/16 v18, 0x0

    .line 406
    .local v18, "startTime":J
    const-string v16, "set_package_start_date_value"

    .line 410
    .local v16, "startDayString":Ljava/lang/String;
    const/4 v5, 0x1

    .line 412
    .local v5, "startDay":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 417
    :goto_0
    const/4 v3, 0x1

    if-lt v5, v3, :cond_0

    const/16 v3, 0x1f

    if-le v5, v3, :cond_1

    .line 418
    :cond_0
    const/4 v5, 0x1

    .line 420
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 421
    .local v13, "currentCalendar":Ljava/util/Calendar;
    const/4 v3, 0x5

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 422
    .local v14, "currentDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 423
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 424
    if-lt v14, v5, :cond_2

    .line 425
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 432
    :goto_1
    return-wide v18

    .line 413
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v13    # "currentCalendar":Ljava/util/Calendar;
    .end local v14    # "currentDay":I
    :catch_0
    move-exception v15

    .line 414
    .local v15, "e":Landroid/provider/Settings$SettingNotFoundException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->TAG:Ljava/lang/String;

    const-string v4, "startDay SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v5, 0x1

    goto :goto_0

    .line 427
    .end local v15    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v13    # "currentCalendar":Ljava/util/Calendar;
    .restart local v14    # "currentDay":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 428
    .local v6, "newCalendar":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v5

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    .line 430
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    goto :goto_1
.end method

.method private getWarningWhiteList()V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;

    iget-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_warning_app_whitelist_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    .line 274
    const-string v1, "data_normal_app_whitelist"

    invoke-virtual {v0, v1}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    .line 275
    return-void
.end method

.method private init()V
    .locals 18

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->TAG:Ljava/lang/String;

    const-string v16, "init"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-boolean v15, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v15, :cond_8

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 221
    .local v14, "pm":Landroid/content/pm/PackageManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->dataReset()V

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getWarningWhiteList()V

    .line 223
    const/16 v15, 0x80

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 225
    .local v10, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v11, "emailUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_8

    .line 227
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 228
    .local v9, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 230
    .local v13, "intent":Landroid/content/Intent;
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v16, "com.samsung.android.email"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 231
    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    const-string v15, "android.permission.INTERNET"

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_1

    if-eqz v13, :cond_1

    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v16, 0x2710

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v16, 0x4e1f

    move/from16 v0, v16

    if-gt v15, v0, :cond_1

    .line 235
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 236
    .local v2, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->isInWhiteList(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 226
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 239
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 240
    .local v4, "uid":I
    invoke-virtual {v9, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "appLabel":Ljava/lang/String;
    sget-object v15, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 242
    .local v6, "isDataAllowed":Z
    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v15, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 243
    sget-object v15, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_3
    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v15, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v15

    if-eqz v15, :cond_6

    :cond_4
    const/4 v6, 0x1

    .line 246
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v15, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v7

    .line 248
    .local v7, "isWlanAllowed":Z
    if-eqz v6, :cond_7

    sget-object v15, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v8, 0x1

    .line 250
    .local v8, "isWarningAllowed":Z
    :goto_3
    const/4 v5, 0x0

    .line 251
    .local v5, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v16, "com.samsung.android.email"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 252
    move-object v5, v11

    .line 254
    :cond_5
    new-instance v1, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/networkconnect/ApplicationNetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZZZ)V

    .line 256
    .local v1, "applicationNetInfo":Lcom/android/settings/networkconnect/ApplicationNetInfo;
    sget-object v15, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 245
    .end local v1    # "applicationNetInfo":Lcom/android/settings/networkconnect/ApplicationNetInfo;
    .end local v5    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "isWlanAllowed":Z
    .end local v8    # "isWarningAllowed":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 248
    .restart local v7    # "isWlanAllowed":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 260
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "appLabel":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v6    # "isDataAllowed":Z
    .end local v7    # "isWlanAllowed":Z
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "emailUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    return-void
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 264
    sget-object v1, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x1

    .line 268
    :goto_1
    return v1

    .line 263
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isWarningFunctionActive()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 441
    const-string v0, ""

    .line 442
    .local v0, "allData":Ljava/lang/String;
    const-string v3, ""

    .line 443
    .local v3, "warningValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 444
    .local v1, "isTrafficSettingEnable":Z
    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 445
    .local v2, "sharedpre":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set_data_limit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "max"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data_warning_set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch_traffic_settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 448
    const-string v5, "off"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    const-string v5, "max"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v1, 0x7f0400a1

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->setContentView(I)V

    .line 101
    iput-object p0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 104
    const-string v1, "subscriberId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    .line 105
    const-string v1, "subId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 108
    const v1, 0x7f0d01c8

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchBar:Landroid/widget/LinearLayout;

    .line 109
    const v1, 0x7f0d01ca

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    .line 110
    iget-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchBar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f0d01c9

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0d01cc

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    .line 114
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    .line 160
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const v12, 0x7f0e16d6

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 120
    iput-boolean v6, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    .line 121
    invoke-direct {p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->init()V

    .line 122
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mWifiTemplate:Landroid/net/NetworkTemplate;

    .line 123
    iget-object v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    .line 124
    const-string v7, "netstats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mStatsService:Landroid/net/INetworkStatsService;

    .line 126
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v7}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 133
    .local v4, "now":J
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    const/16 v8, 0xb

    iget-object v9, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getStartTime()J

    move-result-wide v10

    invoke-static {v9, v10, v11, v4, v5}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 134
    iget-object v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data_warning_whitelist_enable_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    .line 136
    iget v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    if-ne v7, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->isWarningFunctionActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 137
    .local v0, "checked":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 138
    iget-object v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v6, 0x7f0e0e92

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 139
    new-instance v3, Lcom/android/settings/networkconnect/NetworkManagerUtils;

    iget-object v6, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/settings/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 140
    .local v3, "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->putUsedSubId(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->sortInWarningStatus()V

    .line 142
    iget-object v6, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .line 127
    .end local v0    # "checked":Z
    .end local v3    # "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    .end local v4    # "now":J
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 129
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 130
    .local v2, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e1":Ljava/lang/IllegalStateException;
    .restart local v4    # "now":J
    :cond_0
    move v0, v6

    .line 136
    goto :goto_1

    .line 138
    .restart local v0    # "checked":Z
    :cond_1
    const v6, 0x7f0e0e93

    goto :goto_2
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onStop()V

    .line 153
    return-void
.end method
