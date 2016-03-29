.class public Lcom/android/settings/networkconnect/NetworkManagerUtils;
.super Ljava/lang/Object;
.source "NetworkManagerUtils.java"


# static fields
.field public static mIsWarningStatus:Z

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

.field private mEnd:J

.field private mNetWorkHistory:Landroid/net/NetworkStatsHistory;

.field private mNetWorkTemplate:Landroid/net/NetworkTemplate;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSharedpre:Landroid/content/SharedPreferences;

.field private mStart:J

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mWhiteListSlot1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListSlot2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 132
    new-instance v0, Lcom/android/settings/networkconnect/NetworkManagerUtils$1;

    invoke-direct {v0}, Lcom/android/settings/networkconnect/NetworkManagerUtils$1;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mWhiteListSlot1:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mWhiteListSlot2:Ljava/util/List;

    .line 56
    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    .line 57
    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 58
    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 59
    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 60
    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 68
    iput-wide v2, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStart:J

    .line 69
    iput-wide v2, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mEnd:J

    .line 74
    iput-object p1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 76
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 78
    return-void
.end method

.method private getActiveSubId()I
    .locals 4

    .prologue
    .line 270
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 271
    .local v0, "subId":I
    const-string v1, "NetworkManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v0
.end method

.method private getBounds(I)V
    .locals 11
    .param p1, "dayString"    # I

    .prologue
    .line 346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 347
    .local v9, "currentCalendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 348
    .local v10, "currentDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 349
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 350
    if-lt v10, p1, :cond_0

    .line 351
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStart:J

    .line 352
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 353
    .local v1, "calendar2":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 354
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mEnd:J

    .line 362
    :goto_0
    return-void

    .line 356
    .end local v1    # "calendar2":Ljava/util/Calendar;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 357
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mEnd:J

    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 359
    .restart local v1    # "calendar2":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 360
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStart:J

    goto :goto_0
.end method

.method private getConfirmTime()J
    .locals 7

    .prologue
    .line 306
    const-string v0, "check_time"

    .line 310
    .local v0, "confirmTimeString":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 312
    .local v2, "lConfirmTime":J
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 317
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 318
    const-wide/16 v2, 0x0

    .line 320
    :cond_0
    return-wide v2

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "NetworkManagerUtils"

    const-string v5, "lConfirmTime SettingNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getConfirmTraffic()J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 324
    const-string v2, "data_used_by_check_time"

    .line 328
    .local v2, "confirmTrafficString":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, "sConfirmTraffic":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 330
    :cond_0
    const-string v7, "NetworkManagerUtils"

    const-string v8, "getConfirmTraffic : false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-wide v0

    .line 335
    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 339
    .local v4, "dConfirm":D
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v4, v8

    .line 340
    double-to-long v0, v4

    .line 341
    .local v0, "confirmTraffic":J
    const-string v7, "NetworkManagerUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConfirmTraffic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from setting, confirm bytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    .end local v0    # "confirmTraffic":J
    .end local v4    # "dConfirm":D
    :catch_0
    move-exception v3

    .line 337
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getCurrentDataSoltId()I
    .locals 2

    .prologue
    .line 257
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 258
    .local v0, "subId":I
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v1

    return v1
.end method

.method private getStartDay()I
    .locals 6

    .prologue
    .line 291
    const-string v2, "set_package_start_date_value"

    .line 292
    .local v2, "startDayString":Ljava/lang/String;
    const/4 v1, 0x1

    .line 294
    .local v1, "iStart":I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_1

    .line 300
    :cond_0
    const/4 v1, 0x1

    .line 302
    :cond_1
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "NetworkManagerUtils"

    const-string v4, "iStart SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->isSupportMultiSIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 285
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 287
    .end local v0    # "tel":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getCurrentDataSoltId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isSupportMultiSIM()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 276
    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkStatus(Z)V
    .locals 14
    .param p1, "isNeedExecute"    # Z

    .prologue
    const-wide/16 v12, 0x400

    const/4 v11, 0x0

    .line 212
    const-string v8, "netstats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 213
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 214
    iget-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 215
    iget-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getTotalUsedData()J

    move-result-wide v4

    .line 217
    .local v4, "usedTotalBytes":J
    sput-boolean v11, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "activeSimSlotWarningEnable":I
    const-string v1, ""

    .line 220
    .local v1, "allData":Ljava/lang/String;
    const-string v3, ""

    .line 221
    .local v3, "warningValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 222
    .local v2, "isTrafficSettingEnable":Z
    iget-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set_data_limit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "max"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    iget-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data_warning_set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "off"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    iget-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data_warning_whitelist_enable_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 226
    iget-object v8, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch_traffic_settings"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 227
    const-string v8, "off"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const-string v8, "max"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 229
    :cond_0
    sput-boolean v11, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 230
    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->turnToNormalStatus()V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    mul-long/2addr v8, v12

    mul-long/2addr v8, v12

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long v6, v8, v10

    .line 236
    .local v6, "warningBytes":J
    cmp-long v8, v4, v6

    if-ltz v8, :cond_3

    .line 237
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 239
    :cond_3
    if-eqz p1, :cond_1

    .line 242
    sget-boolean v8, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    if-nez v8, :cond_4

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->turnToNormalStatus()V

    goto :goto_0

    .line 245
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->runWarning()V

    goto :goto_0
.end method

.method public getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 263
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v3, "test.subscriberid"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "retVal":Ljava/lang/String;
    const-string v3, "NetworkManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveSubscriberId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " actualSubscriberId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-object v1
.end method

.method public getTotalUsedData()J
    .locals 24

    .prologue
    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getStartDay()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getBounds(I)V

    .line 366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 367
    .local v8, "currentTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getConfirmTime()J

    move-result-wide v12

    .line 368
    .local v12, "confirmTime":J
    const-wide/16 v18, 0x0

    .line 369
    .local v18, "startTraffic":J
    const-wide/16 v14, 0x0

    .line 370
    .local v14, "realTraffic":J
    const-string v16, "middle_real_value"

    .line 372
    .local v16, "realTrafficString":Ljava/lang/String;
    const-wide/16 v22, 0x0

    .line 373
    .local v22, "totalUsedBytes":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStart:J

    cmp-long v3, v12, v4

    if-ltz v3, :cond_0

    cmp-long v3, v12, v8

    if-gtz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-eqz v3, :cond_0

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getConfirmTraffic()J

    move-result-wide v18

    .line 376
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 383
    :cond_0
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    const/16 v5, 0xa

    invoke-interface {v3, v4, v5}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    if-nez v3, :cond_1

    .line 386
    const-string v3, "NetworkManagerUtils"

    const-string v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    const-wide/16 v20, -0x1

    .line 397
    :goto_1
    return-wide v20

    .line 377
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "NetworkManagerUtils"

    const-string v4, "realTraffic SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-wide/16 v14, 0x0

    goto :goto_0

    .line 389
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mEnd:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 390
    .local v11, "enry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    add-long v22, v4, v6

    .line 396
    sub-long v4, v22, v14

    add-long v20, v4, v18

    .line 397
    .local v20, "totalTraffic":J
    goto :goto_1

    .line 391
    .end local v11    # "enry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v20    # "totalTraffic":J
    :catch_1
    move-exception v2

    .line 392
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "NetworkManagerUtils"

    const-string v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 394
    const-wide/16 v20, 0x0

    goto :goto_1
.end method

.method public getUsedSubIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "used_subId"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "subIds":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 96
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "subIdsArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 98
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    .end local v3    # "subIdsArray":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getWhiteList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "whiteListType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "mWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "whiteListString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 84
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "whiteListStringArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 86
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    .end local v3    # "whiteListStringArray":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public isCurrentSlotWarning(Ljava/lang/String;)Z
    .locals 1
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-boolean v0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x1

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putUsedSubId(Ljava/lang/String;)V
    .locals 6
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "used_subId"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "subIds":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 108
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "subIdsArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 110
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .end local v0    # "i":I
    .end local v3    # "subIdsArray":[Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "used_subId"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    :cond_1
    return-void

    .line 118
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public putWhiteList(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "whiteListType"    # Ljava/lang/String;
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
    .line 124
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v1, "whiteListString":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 126
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    return-void
.end method

.method public runWarning()V
    .locals 6

    .prologue
    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v2, "warningWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, "normalAppUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_warning_app_whitelist_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 190
    const-string v3, "data_normal_app_whitelist"

    invoke-virtual {p0, v3}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 192
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    .line 191
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    goto :goto_1

    .line 198
    :cond_2
    return-void
.end method

.method public sortInNormalStatus()V
    .locals 4

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "applicationNetInfoList1":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/networkconnect/ApplicationNetInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "applicationNetInfoList2":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/networkconnect/ApplicationNetInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 144
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_0
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_1
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 153
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    return-void
.end method

.method public sortInWarningStatus()V
    .locals 5

    .prologue
    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, "appDataEnableList1":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/networkconnect/ApplicationNetInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "appDataEnableList2":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/networkconnect/ApplicationNetInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "appDataDisableList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/networkconnect/ApplicationNetInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 162
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->isWarningAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_0
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_1
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_2
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 176
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    return-void
.end method

.method public turnToNormalStatus()V
    .locals 5

    .prologue
    .line 201
    const-string v2, "NetworkManagerUtils"

    const-string v3, "turnToNormalStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "normalAppUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "data_normal_app_whitelist"

    invoke-virtual {p0, v2}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    iget-object v3, p0, Lcom/android/settings/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    return-void
.end method
