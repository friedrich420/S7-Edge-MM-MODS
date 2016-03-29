.class public Lcom/android/settings/trafficmanager/ITotalDataService;
.super Landroid/app/Service;
.source "ITotalDataService.java"


# instance fields
.field private mEnd:J

.field private mNetWorkHistory:Landroid/net/NetworkStatsHistory;

.field private mNetWorkTemplate:Landroid/net/NetworkTemplate;

.field private mStart:J

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    iput-wide v2, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStart:J

    .line 50
    iput-wide v2, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mEnd:J

    .line 51
    iput-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 52
    iput-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 53
    iput-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    .line 54
    iput-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 55
    iput-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 57
    new-instance v0, Lcom/android/settings/trafficmanager/ITotalDataService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/trafficmanager/ITotalDataService$1;-><init>(Lcom/android/settings/trafficmanager/ITotalDataService;)V

    iput-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/trafficmanager/ITotalDataService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/trafficmanager/ITotalDataService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getTotalUsedData()J

    move-result-wide v0

    return-wide v0
.end method

.method private getBounds(I)V
    .locals 11
    .param p1, "dayString"    # I

    .prologue
    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 170
    .local v9, "currentCalendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 171
    .local v10, "currentDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 172
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

    .line 173
    if-lt v10, p1, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStart:J

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 176
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

    .line 177
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mEnd:J

    .line 185
    :goto_0
    return-void

    .line 179
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

    .line 180
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mEnd:J

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 182
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

    .line 183
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStart:J

    goto :goto_0
.end method

.method private getConfirmTime()J
    .locals 7

    .prologue
    .line 127
    const-string v0, "check_time"

    .line 131
    .local v0, "confirmTimeString":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 133
    .local v2, "lConfirmTime":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 138
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 139
    const-wide/16 v2, 0x0

    .line 141
    :cond_0
    return-wide v2

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "ITotalDataService"

    const-string v5, "lConfirmTime SettingNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getConfirmTraffic()J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 145
    const-string v2, "data_used_by_check_time"

    .line 149
    .local v2, "confirmTrafficString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
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

    .line 151
    :cond_0
    const-string v7, "ITotalDataService"

    const-string v8, "getConfirmTraffic : false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-wide v0

    .line 156
    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 160
    .local v4, "dConfirm":D
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v4, v8

    .line 161
    double-to-long v0, v4

    .line 163
    .local v0, "confirmTraffic":J
    const-string v7, "ITotalDataService"

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

    .line 157
    .end local v0    # "confirmTraffic":J
    .end local v4    # "dConfirm":D
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getCurrentDataSoltId()I
    .locals 4

    .prologue
    .line 86
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 87
    .local v0, "subId":I
    const-string v1, "ITotalDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentDataSoltId getSlotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v1

    return v1
.end method

.method private getStartDay()I
    .locals 6

    .prologue
    .line 109
    const-string v2, "set_package_start_date_value"

    .line 113
    .local v2, "startDayString":Ljava/lang/String;
    const/4 v1, 0x1

    .line 115
    .local v1, "iStart":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_1

    .line 121
    :cond_0
    const/4 v1, 0x1

    .line 123
    :cond_1
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "ITotalDataService"

    const-string v4, "iStart SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getSubId()I
    .locals 4

    .prologue
    .line 80
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 81
    .local v0, "subId":I
    const-string v1, "ITotalDataService"

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

    .line 82
    return v0
.end method

.method private getSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->isSupportMultiSIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/trafficmanager/ITotalDataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 104
    .end local v0    # "tel":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getCurrentDataSoltId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getTotalUsedData()J
    .locals 27

    .prologue
    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getStartDay()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/trafficmanager/ITotalDataService;->getBounds(I)V

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 190
    .local v8, "currentTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getConfirmTime()J

    move-result-wide v12

    .line 191
    .local v12, "confirmTime":J
    const-wide/16 v20, 0x0

    .line 192
    .local v20, "startTraffic":J
    const-wide/16 v16, 0x0

    .line 193
    .local v16, "realTraffic":J
    const-string v15, "middle_real_value"

    .line 194
    .local v15, "realTrafficString":Ljava/lang/String;
    const-string v26, "total_used"

    .line 195
    .local v26, "totalUsedString":Ljava/lang/String;
    const-string v19, "switch_traffic_settings"

    .line 196
    .local v19, "switchOnLimit":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getCurrentDataSoltId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 202
    :cond_0
    const-wide/16 v24, 0x0

    .line 203
    .local v24, "totalUsedBytes":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStart:J

    cmp-long v3, v12, v4

    if-ltz v3, :cond_1

    cmp-long v3, v12, v8

    if-gtz v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-eqz v3, :cond_1

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getConfirmTraffic()J

    move-result-wide v20

    .line 207
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 214
    :cond_1
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    const/16 v5, 0xa

    invoke-interface {v3, v4, v5}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    if-nez v3, :cond_3

    .line 219
    const-string v3, "ITotalDataService"

    const-string v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    const-wide/16 v22, -0x1

    .line 251
    :cond_2
    :goto_1
    return-wide v22

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "ITotalDataService"

    const-string v4, "realTraffic SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 222
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/ITotalDataService;->mEnd:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 223
    .local v11, "enry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    add-long v24, v4, v6

    .line 229
    sub-long v4, v24, v16

    add-long v22, v4, v20

    .line 230
    .local v22, "totalTraffic":J
    const-string v3, "ITotalDataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "totalTraffic:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " totalUsedBytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " realTraffic:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startTraffic:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-static {v3, v4, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 234
    const-string v3, "enterprise_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/trafficmanager/ITotalDataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 236
    .local v14, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    const-string v3, "ITotalDataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnterpriseDeviceManager:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz v14, :cond_2

    .line 238
    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v18

    .line 239
    .local v18, "rp":Landroid/app/enterprise/RestrictionPolicy;
    const-string v3, "ITotalDataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RestrictionPolicy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-eqz v18, :cond_2

    .line 242
    const-string v3, "ITotalDataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUserMobileDataLimitAllowed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    const-string v3, "ITotalDataService/LPF"

    const-string v4, "switchOnLimit to 0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 224
    .end local v11    # "enry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v18    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v22    # "totalTraffic":J
    :catch_1
    move-exception v2

    .line 225
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ITotalDataService"

    const-string v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 227
    const-wide/16 v22, 0x0

    goto/16 :goto_1
.end method

.method private isSupportMultiSIM()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 92
    iget-object v1, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mTelManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 93
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mTelManager:Landroid/telephony/TelephonyManager;

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
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const-string v0, "ITotalDataService"

    const-string v1, "onBind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 75
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/trafficmanager/ITotalDataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 76
    iget-object v0, p0, Lcom/android/settings/trafficmanager/ITotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 286
    const-string v0, "ITotalDataService"

    const-string v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    const-string v0, "ITotalDataService"

    const-string v1, "onUnbind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x1

    return v0
.end method
