.class public Lcom/android/settings/networkconnect/NetworkConnectActivity;
.super Lcom/android/settings/SettingsActivity;
.source "NetworkConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private mDataSelectAllFlag:Z

.field public mDataTemplate:Landroid/net/NetworkTemplate;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEmailUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirewallAdapter:Lcom/android/settings/networkconnect/FirewallAdapter;

.field private mIsDataLoadFinished:Z

.field private mListView:Landroid/widget/ListView;

.field private mMobileCheckBox:Landroid/widget/CheckBox;

.field private mMobileText:Landroid/widget/TextView;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private mSubscriberId:Ljava/lang/String;

.field private mUidAllowedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWIFICheckBox:Landroid/widget/CheckBox;

.field private mWIFISelectAllFlag:Z

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

.field private mWlanText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
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

    sput-object v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    .line 332
    new-instance v0, Lcom/android/settings/networkconnect/NetworkConnectActivity$4;

    invoke-direct {v0}, Lcom/android/settings/networkconnect/NetworkConnectActivity$4;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    .line 85
    iput v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mSubId:I

    .line 86
    iput-boolean v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    .line 340
    new-instance v0, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity$5;-><init>(Lcom/android/settings/networkconnect/NetworkConnectActivity;)V

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 385
    new-instance v0, Lcom/android/settings/networkconnect/NetworkConnectActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity$6;-><init>(Lcom/android/settings/networkconnect/NetworkConnectActivity;)V

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/networkconnect/NetworkConnectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/networkconnect/NetworkConnectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWlanText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mMobileText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->formatFileSizeMB(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/networkconnect/NetworkConnectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/networkconnect/NetworkConnectActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Lcom/android/settings/networkconnect/FirewallAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/android/settings/networkconnect/FirewallAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/networkconnect/NetworkConnectActivity;Lcom/android/settings/networkconnect/FirewallAdapter;)Lcom/android/settings/networkconnect/FirewallAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/networkconnect/NetworkConnectActivity;
    .param p1, "x1"    # Lcom/android/settings/networkconnect/FirewallAdapter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/android/settings/networkconnect/FirewallAdapter;

    return-object p1
.end method

.method private dataReset()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 183
    sget-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 184
    return-void
.end method

.method private static formatFileSizeMB(J)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # J

    .prologue
    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "index":I
    long-to-int v3, p0

    .line 482
    .local v3, "iresult":I
    long-to-float v0, p0

    .line 483
    .local v0, "fresult":F
    const-string v4, ""

    .local v4, "value":Ljava/lang/String;
    move v2, v1

    .line 484
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-lez v3, :cond_0

    sget-object v5, Lcom/android/settings/networkconnect/NetworkConnectActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 485
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

    sget-object v6, Lcom/android/settings/networkconnect/NetworkConnectActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 486
    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v0, v5

    .line 487
    float-to-int v3, v0

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 489
    :cond_0
    return-object v4
.end method

.method private getStartTime()J
    .locals 20

    .prologue
    .line 499
    const-wide/16 v18, 0x0

    .line 500
    .local v18, "startTime":J
    const-string v16, "set_package_start_date_value"

    .line 501
    .local v16, "startDayString":Ljava/lang/String;
    const/4 v5, 0x1

    .line 503
    .local v5, "startDay":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mSubId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 508
    :goto_0
    const/4 v3, 0x1

    if-lt v5, v3, :cond_0

    const/16 v3, 0x1f

    if-le v5, v3, :cond_1

    .line 509
    :cond_0
    const/4 v5, 0x1

    .line 511
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 512
    .local v13, "currentCalendar":Ljava/util/Calendar;
    const/4 v3, 0x5

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 513
    .local v14, "currentDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 514
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

    .line 515
    if-lt v14, v5, :cond_2

    .line 516
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 523
    :goto_1
    return-wide v18

    .line 504
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v13    # "currentCalendar":Ljava/util/Calendar;
    .end local v14    # "currentDay":I
    :catch_0
    move-exception v15

    .line 505
    .local v15, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "NetworkConnect"

    const-string v4, "startDay SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v5, 0x1

    goto :goto_0

    .line 518
    .end local v15    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v13    # "currentCalendar":Ljava/util/Calendar;
    .restart local v14    # "currentDay":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 519
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

    .line 521
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    goto :goto_1
.end method

.method private getWarningWhiteList()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;

    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_warning_app_whitelist_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    .line 329
    const-string v1, "data_normal_app_whitelist"

    invoke-virtual {v0, v1}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    .line 330
    return-void
.end method

.method private init()V
    .locals 17

    .prologue
    .line 273
    const-string v14, "NetworkConnect"

    const-string v15, "init"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-boolean v14, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v14, :cond_8

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 276
    .local v13, "pm":Landroid/content/pm/PackageManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->dataReset()V

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getWarningWhiteList()V

    .line 278
    const/16 v14, 0x80

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 280
    .local v10, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    .line 281
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_8

    .line 282
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 283
    .local v9, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 285
    .local v12, "intent":Landroid/content/Intent;
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v15, "com.samsung.android.email"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    const-string v14, "android.permission.INTERNET"

    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_1

    if-eqz v12, :cond_1

    iget v14, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v15, 0x2710

    if-lt v14, v15, :cond_1

    iget v14, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v15, 0x4e1f

    if-gt v14, v15, :cond_1

    .line 290
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 291
    .local v2, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->isInWhiteList(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 281
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 294
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 295
    .local v4, "uid":I
    invoke-virtual {v9, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "appLabel":Ljava/lang/String;
    sget-object v14, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 297
    .local v6, "isDataAllowed":Z
    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v14, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 298
    sget-object v14, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_3
    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v14, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_4
    const/4 v6, 0x1

    .line 301
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v14, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v7

    .line 303
    .local v7, "isWlanAllowed":Z
    if-eqz v6, :cond_7

    sget-object v14, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v8, 0x1

    .line 305
    .local v8, "isWarningAllowed":Z
    :goto_3
    const/4 v5, 0x0

    .line 306
    .local v5, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v15, "com.samsung.android.email"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    .line 309
    :cond_5
    new-instance v1, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/networkconnect/ApplicationNetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZZZ)V

    .line 311
    .local v1, "applicationNetInfo":Lcom/android/settings/networkconnect/ApplicationNetInfo;
    sget-object v14, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 300
    .end local v1    # "applicationNetInfo":Lcom/android/settings/networkconnect/ApplicationNetInfo;
    .end local v5    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "isWlanAllowed":Z
    .end local v8    # "isWarningAllowed":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 303
    .restart local v7    # "isWlanAllowed":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 315
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "appLabel":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v6    # "isDataAllowed":Z
    .end local v7    # "isWlanAllowed":Z
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "i":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    return-void
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 319
    sget-object v1, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const/4 v1, 0x1

    .line 323
    :goto_1
    return v1

    .line 318
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "checkBox"    # Landroid/view/View;

    .prologue
    .line 188
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    .line 189
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_0

    .line 190
    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 192
    :cond_0
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f0e1280

    invoke-virtual {p0, v5}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 194
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 195
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 270
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 199
    .local v2, "mobile_checked":Z
    if-eqz v2, :cond_2

    .line 200
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 202
    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4, v2}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    .line 204
    iget-object v5, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_1
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/android/settings/networkconnect/FirewallAdapter;

    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/android/settings/networkconnect/FirewallAdapter;->setApplicationNetInfoList(Ljava/util/List;)V

    .line 207
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/android/settings/networkconnect/FirewallAdapter;

    invoke-virtual {v4}, Lcom/android/settings/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 208
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings/networkconnect/NetworkConnectActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity$1;-><init>(Lcom/android/settings/networkconnect/NetworkConnectActivity;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 243
    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    :cond_2
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 219
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 220
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 221
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4, v2}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    .line 222
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4, v2}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    .line 223
    iget-object v5, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 225
    :cond_3
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/android/settings/networkconnect/FirewallAdapter;

    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/android/settings/networkconnect/FirewallAdapter;->setApplicationNetInfoList(Ljava/util/List;)V

    .line 226
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/android/settings/networkconnect/FirewallAdapter;

    invoke-virtual {v4}, Lcom/android/settings/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 227
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings/networkconnect/NetworkConnectActivity$2;

    invoke-direct {v5, p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity$2;-><init>(Lcom/android/settings/networkconnect/NetworkConnectActivity;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 246
    .end local v0    # "i":I
    .end local v2    # "mobile_checked":Z
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 247
    .local v3, "wifi_checked":Z
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 248
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4, v3}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setWlanAllowed(Z)V

    .line 249
    iget-object v5, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 251
    :cond_4
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/android/settings/networkconnect/FirewallAdapter;

    sget-object v5, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/android/settings/networkconnect/FirewallAdapter;->setApplicationNetInfoList(Ljava/util/List;)V

    .line 252
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/android/settings/networkconnect/FirewallAdapter;

    invoke-virtual {v4}, Lcom/android/settings/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 253
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 254
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_5
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 255
    iget-object v5, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4, v3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 258
    .end local v1    # "k":I
    :cond_5
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings/networkconnect/NetworkConnectActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity$3;-><init>(Lcom/android/settings/networkconnect/NetworkConnectActivity;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 265
    iput-boolean v3, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    goto/16 :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0368
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v1, 0x7f040144

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->setContentView(I)V

    .line 99
    iput-object p0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 102
    const-string v1, "subscriberId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    .line 103
    const-string v1, "subId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mSubId:I

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 106
    const v1, 0x7f0d0369

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWlanText:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0d01cc

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mMobileText:Landroid/widget/TextView;

    .line 108
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    .line 109
    const v1, 0x7f0d0368

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    .line 110
    const v1, 0x7f0d036a

    invoke-virtual {p0, v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    .line 111
    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 175
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 118
    const-string v7, "NetworkConnect"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-boolean v13, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    .line 120
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->init()V

    .line 121
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWifiTemplate:Landroid/net/NetworkTemplate;

    .line 122
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    .line 123
    const-string v7, "netstats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mStatsService:Landroid/net/INetworkStatsService;

    .line 125
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v7}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 132
    .local v4, "now":J
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    const/16 v8, 0xb

    iget-object v9, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getStartTime()J

    move-result-wide v10

    invoke-static {v9, v10, v11, v4, v5}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 133
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWlanText:Landroid/widget/TextView;

    const v8, 0x7f0e16d7

    invoke-virtual {p0, v8}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mMobileText:Landroid/widget/TextView;

    const v8, 0x7f0e16d6

    invoke-virtual {p0, v8}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "data_count":I
    const/4 v6, 0x0

    .line 137
    .local v6, "wlan_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 138
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 141
    :cond_0
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    add-int/lit8 v6, v6, 0x1

    .line 137
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "data_count":I
    .end local v3    # "i":I
    .end local v4    # "now":J
    .end local v6    # "wlan_count":I
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 128
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v2    # "e1":Ljava/lang/IllegalStateException;
    .restart local v0    # "data_count":I
    .restart local v3    # "i":I
    .restart local v4    # "now":J
    .restart local v6    # "wlan_count":I
    :cond_2
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v0, v7, :cond_3

    .line 146
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    iput-boolean v12, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    .line 152
    :goto_2
    sget-object v7, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 153
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    iput-boolean v12, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    .line 159
    :goto_3
    return-void

    .line 149
    :cond_3
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    iput-boolean v13, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    goto :goto_2

    .line 156
    :cond_4
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 157
    iput-boolean v12, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    goto :goto_3
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onStop()V

    .line 169
    return-void
.end method
