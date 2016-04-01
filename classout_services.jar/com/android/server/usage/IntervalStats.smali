.class Lcom/android/server/usage/IntervalStats;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# instance fields
.field public activeConfiguration:Landroid/content/res/Configuration;

.field public beginTime:J

.field public final configurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/Configuration;",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field public endTime:J

.field public events:Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field public lastTimeSaved:J

.field private final mStringCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final packageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, packageStats:Landroid/util/ArrayMap;

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, configurations:Landroid/util/ArrayMap;

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mStringCache:Landroid/util/ArraySet;

    return-void
.end method

.method private getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v1, p0, mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 161
    .local v0, "index":I
    if-gez v0, :cond_e

    .line 162
    iget-object v1, p0, mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 165
    .end local p1    # "str":Ljava/lang/String;
    :goto_d
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_e
    iget-object v1, p0, mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p1, v1

    goto :goto_d
.end method

.method private isStatefulEvent(I)Z
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 86
    packed-switch p1, :pswitch_data_8

    .line 93
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 91
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 86
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 78
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-direct {p0, p1}, getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 79
    if-eqz p2, :cond_13

    .line 80
    invoke-direct {p0, p2}, getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 82
    :cond_13
    return-object v0
.end method

.method getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 62
    iget-object v1, p0, configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 63
    .local v0, "configStats":Landroid/app/usage/ConfigurationStats;
    if-nez v0, :cond_1e

    .line 64
    new-instance v0, Landroid/app/usage/ConfigurationStats;

    .end local v0    # "configStats":Landroid/app/usage/ConfigurationStats;
    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 65
    .restart local v0    # "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p0, beginTime:J

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 66
    iget-wide v2, p0, endTime:J

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 67
    iput-object p1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 68
    iget-object v1, p0, configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1e
    return-object v0
.end method

.method getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v1, p0, packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 46
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_28

    .line 47
    new-instance v0, Landroid/app/usage/UsageStats;

    .end local v0    # "usageStats":Landroid/app/usage/UsageStats;
    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 48
    .restart local v0    # "usageStats":Landroid/app/usage/UsageStats;
    invoke-direct {p0, p1}, getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 49
    iget-wide v2, p0, beginTime:J

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 50
    iget-wide v2, p0, endTime:J

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 51
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    .line 52
    iget-object v1, p0, packageStats:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_28
    return-object v0
.end method

.method update(Ljava/lang/String;JI)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I

    .prologue
    const/4 v6, 0x1

    .line 97
    invoke-virtual {p0, p1}, getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .line 101
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    const/4 v1, 0x2

    if-eq p4, v1, :cond_b

    const/4 v1, 0x3

    if-ne p4, v1, :cond_1d

    .line 103
    :cond_b
    iget v1, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    if-eq v1, v6, :cond_14

    iget v1, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 105
    :cond_14
    iget-wide v2, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 109
    :cond_1d
    invoke-direct {p0, p4}, isStatefulEvent(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 110
    iput p4, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 113
    :cond_25
    const/4 v1, 0x6

    if-eq p4, v1, :cond_2a

    .line 114
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 116
    :cond_2a
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    .line 117
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 119
    if-ne p4, v6, :cond_36

    .line 120
    iget v1, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 123
    :cond_36
    iput-wide p2, p0, endTime:J

    .line 124
    return-void
.end method

.method updateBeginIdleTime(Ljava/lang/String;J)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J

    .prologue
    .line 133
    invoke-virtual {p0, p1}, getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .line 134
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    .line 135
    return-void
.end method

.method updateConfigurationStats(Landroid/content/res/Configuration;J)V
    .registers 10
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "timeStamp"    # J

    .prologue
    .line 143
    iget-object v2, p0, activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_1d

    .line 144
    iget-object v2, p0, configurations:Landroid/util/ArrayMap;

    iget-object v3, p0, activeConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 145
    .local v0, "activeStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iget-wide v4, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 146
    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 149
    .end local v0    # "activeStats":Landroid/app/usage/ConfigurationStats;
    :cond_1d
    if-eqz p1, :cond_2f

    .line 150
    invoke-virtual {p0, p1}, getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .line 151
    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iput-wide p2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 152
    iget v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 153
    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, p0, activeConfiguration:Landroid/content/res/Configuration;

    .line 156
    .end local v1    # "configStats":Landroid/app/usage/ConfigurationStats;
    :cond_2f
    iput-wide p2, p0, endTime:J

    .line 157
    return-void
.end method

.method updateSystemLastUsedTime(Ljava/lang/String;J)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastUsedTime"    # J

    .prologue
    .line 138
    invoke-virtual {p0, p1}, getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .line 139
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    .line 140
    return-void
.end method
