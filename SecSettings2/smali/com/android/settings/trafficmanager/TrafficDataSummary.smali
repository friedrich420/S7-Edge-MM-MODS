.class public Lcom/android/settings/trafficmanager/TrafficDataSummary;
.super Ljava/lang/Object;
.source "TrafficDataSummary.java"


# instance fields
.field private final DEFAULT_TRAFFIC_SUMMARY_START_DAY:I

.field private final DEFAULT_TRAFFIC_TOTAL:J

.field private final MB_TO_BYTE:J

.field private final TAG:Ljava/lang/String;

.field private isBlockData:Z

.field private mCal_Current:Ljava/util/Calendar;

.field private mCal_End:Ljava/util/Calendar;

.field private mCal_Start:Ljava/util/Calendar;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mEndTime:J

.field private mFreePercent:F

.field private mFreeWarningValue:F

.field private mIsExceed:Z

.field private mLoadFinihsed:Z

.field private mMiddleData:J

.field private mMiddleTime:J

.field private mRemainData:J

.field private mRemainTraffic:Ljava/lang/String;

.field private mSettingOn:Z

.field private mSimSlot:I

.field private mStartDay:I

.field private mStartTime:J

.field private mTodayEndTime:J

.field private mTodayStartTime:J

.field private mTodayused:Ljava/lang/String;

.field private mTotalData:J

.field private mTotalTraffic:Ljava/lang/String;

.field private mTrafficUsed:Ljava/lang/String;

.field private subId:I


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "TrafficDataSummary"

    iput-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->TAG:Ljava/lang/String;

    .line 30
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_SUMMARY_START_DAY:I

    .line 31
    iput-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_TOTAL:J

    .line 32
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->MB_TO_BYTE:J

    .line 33
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    .line 34
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    .line 36
    iput-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 37
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mLoadFinihsed:Z

    .line 39
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 40
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    .line 41
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 43
    iput-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 44
    iput-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 55
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 56
    iput v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    .line 58
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    .line 59
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/net/ChartData;Landroid/content/Context;)V
    .locals 10
    .param p1, "mData"    # Lcom/android/settings/net/ChartData;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "TrafficDataSummary"

    iput-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->TAG:Ljava/lang/String;

    .line 30
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_SUMMARY_START_DAY:I

    .line 31
    iput-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_TOTAL:J

    .line 32
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->MB_TO_BYTE:J

    .line 33
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    .line 34
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    .line 36
    iput-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 37
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mLoadFinihsed:Z

    .line 39
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 40
    iput-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    .line 41
    iput v4, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 43
    iput-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 44
    iput-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 55
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 56
    iput v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    .line 58
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    .line 59
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    .line 63
    iput-object p1, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    .line 64
    iput-object p2, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private getPreferenceValue()V
    .locals 24

    .prologue
    .line 74
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "the SIM slot is:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "the sub id is:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 78
    .local v15, "prefs":Landroid/content/SharedPreferences;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    .line 80
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "restrict_data_check_box"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    .line 83
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 84
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 85
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "switch_traffic_settings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 86
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 87
    const/4 v9, 0x0

    .line 89
    .local v9, "isTrue":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "switch_traffic_settings"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    .line 90
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_b

    .line 91
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 99
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "switch_traffic_settings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "isTrue":I
    :cond_1
    :goto_1
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mSimSlot:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "mSettingOn: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "subId:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v13, "max"

    .line 123
    .local v13, "mTotal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 124
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_data_limit"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "max"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 125
    const-string v19, "max"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 127
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set_data_limit"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 131
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 132
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_data_limit"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_3
    const-string v19, "max"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 155
    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 156
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 168
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 169
    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 171
    :cond_2
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 173
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "check_time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v15, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 178
    const-string v4, "check_time"

    .line 182
    .local v4, "confirmTimeString":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 184
    .local v10, "lConfirmTime":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-wide v10

    .line 189
    :goto_5
    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-gez v19, :cond_3

    .line 190
    const-wide/16 v10, 0x0

    .line 192
    :cond_3
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mMiddleTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lConfirmTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_4

    .line 195
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 197
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    const-string v19, "TrafficDataSummary"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mMiddleTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 204
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_package_start_date_value"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 209
    const-string v17, "set_package_start_date_value"

    .line 213
    .local v17, "startDayString":Ljava/lang/String;
    const/4 v8, 0x1

    .line 215
    .local v8, "iStart":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v8

    .line 220
    :goto_6
    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v8, v0, :cond_5

    const/16 v19, 0x1f

    move/from16 v0, v19

    if-le v8, v0, :cond_6

    .line 221
    :cond_5
    const/4 v8, 0x1

    .line 223
    :cond_6
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mStartDay:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "iStart:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 226
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 228
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    const-string v12, "0.00"

    .line 234
    .local v12, "mMiddle":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_used_by_check_time"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "0.00"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 238
    const-string v19, "TrafficDataSummary"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mMiddle:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v5, "data_used_by_check_time"

    .line 244
    .local v5, "confirmTrafficString":Ljava/lang/String;
    const-string v16, "0.00"

    .line 246
    .local v16, "sConfirmTraffic":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v16

    .line 251
    :goto_7
    if-eqz v16, :cond_8

    const-string v19, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 252
    :cond_8
    const-string v19, "TrafficDataSummary"

    const-string v20, "getConfirmTraffic : false"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v16, "0.00"

    .line 255
    :cond_9
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mMiddle:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sConfirmTraffic:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v19, "0.00"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 258
    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 260
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_a
    :try_start_5
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 266
    .local v14, "mmData":F
    const/high16 v19, 0x49800000    # 1048576.0f

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 271
    .end local v14    # "mmData":F
    :goto_8
    const-string v18, "off"

    .line 272
    .local v18, "warningValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 273
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_warning_set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 274
    const-string v19, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 276
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data_warning_set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    move-result-object v18

    .line 280
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 281
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_warning_set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_a
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "warningValue:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v19, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 305
    const/high16 v19, -0x40800000    # -1.0f

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    .line 314
    :goto_b
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mFreeWarningValue:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 92
    .end local v4    # "confirmTimeString":Ljava/lang/String;
    .end local v5    # "confirmTrafficString":Ljava/lang/String;
    .end local v8    # "iStart":I
    .end local v10    # "lConfirmTime":J
    .end local v12    # "mMiddle":Ljava/lang/String;
    .end local v13    # "mTotal":Ljava/lang/String;
    .end local v16    # "sConfirmTraffic":Ljava/lang/String;
    .end local v17    # "startDayString":Ljava/lang/String;
    .end local v18    # "warningValue":Ljava/lang/String;
    .restart local v9    # "isTrue":I
    :cond_b
    if-nez v9, :cond_0

    .line 93
    const/16 v19, 0x0

    :try_start_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 95
    :catch_0
    move-exception v6

    .line 96
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    goto/16 :goto_0

    .line 103
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v9    # "isTrue":I
    :cond_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "switch_traffic_settings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 104
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 105
    const/4 v9, 0x0

    .line 107
    .restart local v9    # "isTrue":I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "switch_traffic_settings"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    .line 108
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_e

    .line 109
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    .line 116
    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 117
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "switch_traffic_settings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 110
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_e
    if-nez v9, :cond_d

    .line 111
    const/16 v19, 0x0

    :try_start_9
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_c

    .line 113
    :catch_1
    move-exception v6

    .line 114
    .restart local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    goto :goto_c

    .line 128
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v9    # "isTrue":I
    .restart local v13    # "mTotal":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 129
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "max"

    goto/16 :goto_2

    .line 135
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set_data_limit"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 139
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_data_limit"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "max"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 140
    const-string v19, "max"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 142
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set_data_limit"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v13

    .line 146
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 147
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set_data_limit"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v0, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 143
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_3
    move-exception v6

    .line 144
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v13, "max"

    goto :goto_d

    .line 150
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set_data_limit"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 160
    :cond_12
    :try_start_b
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 161
    .restart local v14    # "mmData":F
    float-to-long v0, v14

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x100000

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_4

    .line 162
    .end local v14    # "mmData":F
    :catch_4
    move-exception v6

    .line 163
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 165
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    goto/16 :goto_4

    .line 185
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "confirmTimeString":Ljava/lang/String;
    .restart local v10    # "lConfirmTime":J
    :catch_5
    move-exception v6

    .line 186
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v19, "TrafficDataSummary"

    const-string v20, "lConfirmTime SettingNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-wide/16 v10, 0x0

    goto/16 :goto_5

    .line 216
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v8    # "iStart":I
    .restart local v17    # "startDayString":Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 217
    .restart local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v19, "TrafficDataSummary"

    const-string v20, "iStart SettingNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v8, 0x1

    goto/16 :goto_6

    .line 247
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5    # "confirmTrafficString":Ljava/lang/String;
    .restart local v12    # "mMiddle":Ljava/lang/String;
    .restart local v16    # "sConfirmTraffic":Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 248
    .local v6, "e":Ljava/lang/Exception;
    const-string v19, "TrafficDataSummary"

    const-string v20, "sConfirmTraffic SettingNotFoundException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v16, "0.00"

    goto/16 :goto_7

    .line 267
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v6

    .line 268
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    goto/16 :goto_8

    .line 277
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v18    # "warningValue":Ljava/lang/String;
    :catch_9
    move-exception v6

    .line 278
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v18, "off"

    goto/16 :goto_9

    .line 284
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data_warning_set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 288
    :cond_14
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_warning_set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 289
    const-string v19, "off"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 291
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data_warning_set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move-result-object v18

    .line 295
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 296
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data_warning_set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_a

    .line 292
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_a
    move-exception v6

    .line 293
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v18, "off"

    goto :goto_e

    .line 299
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data_warning_set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 308
    :cond_16
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    :try_start_d
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto/16 :goto_b

    .line 309
    :catch_b
    move-exception v6

    .line 310
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v19, "TrafficDataSummary/LPF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/high16 v19, -0x40800000    # -1.0f

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    goto/16 :goto_b
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 513
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    return-wide v0
.end method

.method public getFreePercent()F
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    return v0
.end method

.method public getIsBlockData()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->isBlockData:Z

    return v0
.end method

.method public getIsExceed()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    return v0
.end method

.method public getIsMonitorOn()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    return v0
.end method

.method public getRemainTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 509
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    return-wide v0
.end method

.method public getTheTime()V
    .locals 22

    .prologue
    .line 387
    const-string v17, "TrafficDataSummary"

    const-string v18, "getTheTime()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    .line 390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    .line 391
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    .line 392
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    .line 393
    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 394
    .local v5, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 397
    .local v12, "mCurrent_year":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 398
    .local v10, "mCurrent_month":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 399
    .local v6, "mCurrent_day":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 400
    .local v7, "mCurrent_hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 401
    .local v9, "mCurrent_min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 402
    .local v11, "mCurrent_sec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 403
    .local v8, "mCurrent_mSec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_1

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    .line 428
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_0

    .line 429
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-gez v17, :cond_0

    .line 430
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 433
    :cond_0
    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 434
    .local v4, "Startdate":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 436
    .local v13, "mEndMonth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 437
    .local v14, "mEndYear":I
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    add-int/lit8 v19, v13, 0x1

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 443
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    .line 444
    const-string v17, "TrafficDataSummary/LPF"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mEndTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    .line 453
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x5265c00

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayEndTime:J

    .line 454
    const-string v17, "TrafficDataSummary/LPF"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mTodayStartTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v17, "TrafficDataSummary/LPF"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mCurrentTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void

    .line 413
    .end local v4    # "Startdate":Ljava/util/Date;
    .end local v13    # "mEndMonth":I
    .end local v14    # "mEndYear":I
    :cond_1
    add-int/lit8 v15, v10, -0x1

    .line 414
    .local v15, "mStart_month":I
    move/from16 v16, v12

    .line 415
    .local v16, "mStart_year":I
    if-gez v15, :cond_2

    .line 416
    add-int/lit8 v16, v16, -0x1

    .line 417
    const/16 v15, 0xb

    .line 419
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    goto/16 :goto_0

    .line 440
    .end local v15    # "mStart_month":I
    .end local v16    # "mStart_year":I
    .restart local v4    # "Startdate":Ljava/util/Date;
    .restart local v13    # "mEndMonth":I
    .restart local v14    # "mEndYear":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v19, v14, 0x1

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1
.end method

.method public getTodayused()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalData()J
    .locals 2

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    return-wide v0
.end method

.method public getTotalTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getWarningByte()J
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 539
    const-wide/16 v4, 0x0

    .line 542
    .local v4, "middle_real_value":J
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "middle_real_value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 546
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "warining set the middle_real_value is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 551
    .local v0, "correct_used":J
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    long-to-double v8, v8

    iget v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    float-to-double v10, v3

    sub-double v10, v12, v10

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-long v6, v8

    .line 552
    .local v6, "result":J
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    iget-wide v10, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    .line 553
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    long-to-double v8, v8

    iget v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    float-to-double v10, v3

    sub-double v10, v12, v10

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-long v8, v8

    sub-long v10, v0, v4

    sub-long v6, v8, v10

    .line 555
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 556
    const-wide/16 v6, 0x0

    .line 558
    :cond_1
    return-wide v6

    .line 547
    .end local v0    # "correct_used":J
    .end local v6    # "result":J
    :catch_0
    move-exception v2

    .line 548
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TrafficDataSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception happend:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWarningValue()F
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    return v0
.end method

.method public getlimiValue()J
    .locals 12

    .prologue
    .line 516
    const-wide/16 v4, 0x0

    .line 519
    .local v4, "middle_real_value":J
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "middle_real_value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 523
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the middle_real_value is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    iget-wide v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 528
    .local v0, "correct_used":J
    iget-wide v6, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 529
    .local v6, "result":J
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    iget-wide v10, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    .line 530
    iget-wide v8, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    sub-long v10, v0, v4

    sub-long v6, v8, v10

    .line 532
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 533
    const-wide/16 v6, 0x0

    .line 535
    :cond_1
    return-wide v6

    .line 524
    .end local v0    # "correct_used":J
    .end local v6    # "result":J
    :catch_0
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TrafficDataSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception happend:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPackagedSetted()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    return v0
.end method

.method public setChartData(Lcom/android/settings/net/ChartData;)V
    .locals 0
    .param p1, "mData"    # Lcom/android/settings/net/ChartData;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    .line 72
    return-void
.end method

.method public setSimSlot(I)V
    .locals 0
    .param p1, "slot"    # I

    .prologue
    .line 495
    iput p1, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mSimSlot:I

    .line 496
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 499
    iput p1, p0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    .line 500
    return-void
.end method

.method public updateDataInfomation()V
    .locals 24

    .prologue
    .line 317
    const-string v3, "TrafficDataSummary"

    const-string v4, "updateDataInfomation()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getPreferenceValue()V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/trafficmanager/TrafficDataSummary;->getTheTime()V

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    .line 322
    const-wide/16 v22, 0x0

    .line 323
    .local v22, "totalBytes":J
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the mMiddleTime is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the start is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the mCurrentTime is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 328
    .local v11, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v11, :cond_0

    iget-wide v4, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v4, v6

    .line 329
    :goto_0
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the totalBytes is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total_used"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-static {v3, v4, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    .line 362
    :goto_1
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTrafficUsed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayEndTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 364
    .local v12, "entry_today":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v12, :cond_3

    iget-wide v4, v12, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v12, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v18, v4, v6

    .line 365
    .local v18, "todayBytes":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    .line 366
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "todayBytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTodayused:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTotalData:J

    move-wide/from16 v20, v0

    .line 369
    .local v20, "total":J
    sub-long v4, v20, v22

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 370
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRemainData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    cmp-long v3, v20, v22

    if-gez v3, :cond_4

    .line 373
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 374
    sub-long v14, v22, v20

    .line 375
    .local v14, "mRm":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v3, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    .line 376
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 380
    .end local v14    # "mRm":J
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v3, v20, v4

    if-lez v3, :cond_5

    .line 381
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    long-to-float v3, v4

    move-wide/from16 v0, v20

    long-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    .line 384
    :goto_4
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFreePercent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 328
    .end local v12    # "entry_today":Landroid/net/NetworkStatsHistory$Entry;
    .end local v18    # "todayBytes":J
    .end local v20    # "total":J
    :cond_0
    const-wide/16 v22, 0x0

    goto/16 :goto_0

    .line 339
    .end local v11    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v3, v3, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 340
    .restart local v11    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v11, :cond_2

    iget-wide v4, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v4, v6

    .line 341
    :goto_5
    const-wide/16 v16, 0x0

    .line 344
    .local v16, "middle_real_value":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "middle_real_value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v16

    .line 348
    const-string v3, "TrafficDataSummary/LPF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the middle_real_value is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_6
    sub-long v4, v22, v16

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mMiddleData:J

    add-long v22, v4, v6

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total_used"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-static {v3, v4, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    goto/16 :goto_1

    .line 340
    .end local v16    # "middle_real_value":J
    :cond_2
    const-wide/16 v22, 0x0

    goto :goto_5

    .line 349
    .restart local v16    # "middle_real_value":J
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TrafficDataSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception happend:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 364
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v16    # "middle_real_value":J
    .restart local v12    # "entry_today":Landroid/net/NetworkStatsHistory$Entry;
    :cond_3
    const-wide/16 v18, 0x0

    goto/16 :goto_2

    .line 378
    .restart local v18    # "todayBytes":J
    .restart local v20    # "total":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainData:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    goto/16 :goto_3

    .line 383
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/trafficmanager/TrafficDataSummary;->mFreePercent:F

    goto/16 :goto_4
.end method
