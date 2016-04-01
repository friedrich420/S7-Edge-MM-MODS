.class public Lcom/android/server/am/MARsTrigger;
.super Ljava/lang/Object;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ADJ14BG_KILLED:Ljava/lang/String; = "com.android.server.am.ACTION_ADJ14BG_KILLED"

.field public static final ACTION_MEMORY_NOT_ENOUGH:Ljava/lang/String; = "com.android.server.am.ACTION_MEMROY_NOT_ENOUGH"

.field public static final ACTION_PACKAGE_NOTUSED_RECENTLY:Ljava/lang/String; = "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

.field public static final ACTION_REQUEST_FILLIN_DB_FROMSM:Ljava/lang/String; = "MARS_REQUEST_PKG_INFO"

.field public static final ACTION_SMUI_SETTING_TRUN_ON:Ljava/lang/String; = "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

.field public static final ACTION_UI_SET_ALWAYS_OPTIMIZING:Ljava/lang/String; = "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

.field public static final ACTION_UI_SET_AUTORUN_OFF:Ljava/lang/String; = "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

.field static final EXCUTE_POLICY_MSG:I = 0x385

.field public static final MARS_ACTION_GET_RUNNING_LOCATION:Ljava/lang/String; = "android.intent.action.GET_RUNNING_LOCATION"

.field public static final MARS_ACTION_SET_RUNNING_LOCATION:Ljava/lang/String; = "android.intent.action.SET_RUNNING_LOCATION"

.field private static final MARS_APP_LOCKER_POLICY_ALARM:Ljava/lang/String; = "MARS_APP_LOCKER_POLICY_ALARM"

.field private static final MARS_APP_LOCKER_REPEAT_ALARM:Ljava/lang/String; = "MARS_APP_LOCKER_REPEAT_ALARM"

.field private static final MARS_AUTO_RUN_POLICY_ALARM:Ljava/lang/String; = "MARS_AUTO_RUN_POLICY_ALARM"

.field private static final MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM:Ljava/lang/String; = "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

.field private static final MARS_AUTO_RUN_REPEAT_ALARM:Ljava/lang/String; = "MARS_AUTO_RUN_REPEAT_ALARM"

.field private static final MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM:Ljava/lang/String; = "MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM"

.field private static final MARS_GCM_LOCKER_POLICY_ALARM:Ljava/lang/String; = "MARS_GCM_LOCKER_POLICY_ALARM"

.field private static final MARS_GCM_LOCKER_REPEAT_ALARM:Ljava/lang/String; = "MARS_GCM_LOCKER_REPEAT_ALARM"

.field static final TAG:Ljava/lang/String; = "MARsTrigger"


# instance fields
.field private final SPCM_COOL_TIME:J

.field private mAlarm:Landroid/app/AlarmManager;

.field private mAppLockerPolicyInterval:J

.field private mAppLockerRepeatAlarmInterval:J

.field private mAutoRunPolicyInterval:J

.field private mAutoRunRepeatAlarmInterval:J

.field public mAutoRunTrafficStatCollectorInterval:J

.field mContext:Landroid/content/Context;

.field private mGcmLockerPolicyInterval:J

.field private mGcmLockerRepeatAlarmInterval:J

.field final mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastSPCMWorkingTime:J

.field private mLastTimeChangeClockTime:J

.field private mLastTimeChangeRealtime:J

.field private mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

.field private mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field private mTriggerAutoRunPolicyImmediately:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V
    .registers 7
    .param p1, "policyManager"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v2, 0x493e0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastSPCMWorkingTime:J

    .line 47
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, SPCM_COOL_TIME:J

    .line 58
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, mAppLockerPolicyInterval:J

    .line 59
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, mAppLockerRepeatAlarmInterval:J

    .line 67
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, mGcmLockerPolicyInterval:J

    .line 68
    iput-wide v2, p0, mGcmLockerRepeatAlarmInterval:J

    .line 83
    iput-wide v2, p0, mAutoRunPolicyInterval:J

    .line 84
    iput-wide v2, p0, mAutoRunRepeatAlarmInterval:J

    .line 85
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, mAutoRunTrafficStatCollectorInterval:J

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, mTriggerAutoRunPolicyImmediately:Z

    .line 204
    new-instance v0, Lcom/android/server/am/MARsTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v0, Lcom/android/server/am/MARsTrigger$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$3;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p1, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 93
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    iget-object v1, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;-><init>(Lcom/android/server/am/MARsTrigger;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mLastTimeChangeClockTime:J

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mLastTimeChangeRealtime:J

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MARsTrigger;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-wide v0, p0, mGcmLockerPolicyInterval:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, setAlarm(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/MARsTrigger;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-wide v0, p0, mLastTimeChangeClockTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/am/MARsTrigger;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, mLastTimeChangeClockTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/server/am/MARsTrigger;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-wide v0, p0, mLastTimeChangeRealtime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/am/MARsTrigger;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, mLastTimeChangeRealtime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, actionToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, triggerPolicy(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/MARsTrigger;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-wide v0, p0, mGcmLockerRepeatAlarmInterval:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/MARsTrigger;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-wide v0, p0, mLastSPCMWorkingTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/server/am/MARsTrigger;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, mLastSPCMWorkingTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsTrigger;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-wide v0, p0, mAppLockerPolicyInterval:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/MARsTrigger;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-wide v0, p0, mAppLockerRepeatAlarmInterval:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/MARsTrigger;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-wide v0, p0, mAutoRunRepeatAlarmInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsTrigger;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-boolean v0, p0, mTriggerAutoRunPolicyImmediately:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsTrigger;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-wide v0, p0, mAutoRunPolicyInterval:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, mAlarm:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 35
    iget-object v0, p0, mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private actionToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "com.android.server.am.ACTION_MEMROY_NOT_ENOUGH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 177
    const-string v0, "Memory Not Enough"

    .line 201
    :goto_a
    return-object v0

    .line 178
    :cond_b
    const-string v0, "com.android.server.am.ACTION_ADJ14BG_KILLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 179
    const-string v0, "Adj 14 BG Killed"

    goto :goto_a

    .line 180
    :cond_16
    const-string v0, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 181
    const-string v0, "User Set Always Optimizing"

    goto :goto_a

    .line 182
    :cond_21
    const-string v0, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 183
    const-string v0, "Package Not Used Recently"

    goto :goto_a

    .line 184
    :cond_2c
    const-string v0, "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 185
    const-string v0, "Ui Setting --- Turn On"

    goto :goto_a

    .line 186
    :cond_37
    const-string v0, "MARS_GCM_LOCKER_POLICY_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 187
    const-string v0, "GCM Locker 15s-kill"

    goto :goto_a

    .line 188
    :cond_42
    const-string v0, "MARS_GCM_LOCKER_REPEAT_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 189
    const-string v0, "GCM Locker 5Min-kill"

    goto :goto_a

    .line 190
    :cond_4d
    const-string v0, "MARS_APP_LOCKER_POLICY_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 191
    const-string v0, "App Locker -- 10Min"

    goto :goto_a

    .line 192
    :cond_58
    const-string v0, "MARS_APP_LOCKER_REPEAT_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 193
    const-string v0, "App Locker 1Hour-kill"

    goto :goto_a

    .line 194
    :cond_63
    const-string v0, "MARS_AUTO_RUN_POLICY_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 195
    const-string v0, "Auto Run Off(China Model)"

    goto :goto_a

    .line 196
    :cond_6e
    const-string v0, "MARS_AUTO_RUN_REPEAT_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 197
    const-string v0, "Auto Run 1Hour-kill"

    goto :goto_a

    .line 198
    :cond_79
    const-string v0, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 199
    const-string v0, "User Set Auto Run Off(China Model)"

    goto :goto_a

    .line 201
    :cond_84
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private setAlarm(Ljava/lang/String;J)V
    .registers 12
    .param p1, "intentString"    # Ljava/lang/String;
    .param p2, "alarmTime"    # J

    .prologue
    const/4 v6, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 389
    const-string v1, "MARS_GCM_LOCKER_POLICY_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 390
    iget-object v1, p0, mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_27

    .line 391
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 394
    .local v0, "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 397
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_27
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 477
    :cond_33
    :goto_33
    return-void

    .line 400
    :cond_34
    const-string v1, "MARS_GCM_LOCKER_REPEAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 401
    iget-object v1, p0, mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_57

    .line 402
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 405
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    .line 408
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_57
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_33

    .line 411
    :cond_64
    const-string v1, "MARS_APP_LOCKER_POLICY_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 412
    iget-object v1, p0, mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_87

    .line 413
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 416
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 419
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_87
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_33

    .line 422
    :cond_94
    const-string v1, "MARS_APP_LOCKER_REPEAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 423
    iget-object v1, p0, mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_b7

    .line 424
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 427
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    .line 430
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_b7
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_33

    .line 433
    :cond_c5
    const-string v1, "MARS_AUTO_RUN_POLICY_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 434
    iget-object v1, p0, mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_e8

    .line 435
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 438
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 441
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_e8
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_33

    .line 444
    :cond_f6
    const-string v1, "MARS_AUTO_RUN_REPEAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 445
    iget-object v1, p0, mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_119

    .line 446
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 449
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

    .line 452
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_119
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_33

    .line 455
    :cond_127
    const-string v1, "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 456
    iget-object v1, p0, mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_14a

    .line 457
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 460
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

    .line 463
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_14a
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_33

    .line 466
    :cond_158
    const-string v1, "MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 467
    iget-object v1, p0, mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_17b

    .line 468
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 471
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

    .line 474
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_17b
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_33
.end method

.method private triggerPolicy(ILjava/lang/String;)V
    .registers 5
    .param p1, "policynum"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 373
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, triggerPolicyDelayed(ILjava/lang/String;J)V

    .line 374
    return-void
.end method

.method private triggerPolicyDelayed(ILjava/lang/String;J)V
    .registers 10
    .param p1, "policynum"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "delayMillis"    # J

    .prologue
    .line 377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "policy-num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string/jumbo v2, "trigger-reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    const/16 v3, 0x385

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 383
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 384
    iget-object v2, p0, mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    invoke-virtual {v2, v1, p3, p4}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 385
    return-void
.end method


# virtual methods
.method public registerReceiver(Z)V
    .registers 7
    .param p1, "boot"    # Z

    .prologue
    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v3, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v2, "policyFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.server.am.ACTION_MEMROY_NOT_ENOUGH"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v3, "com.android.server.am.ACTION_ADJ14BG_KILLED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v3, "MARS_GCM_LOCKER_POLICY_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v3, "MARS_GCM_LOCKER_REPEAT_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v3, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v3, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v3, "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v3, "MARS_APP_LOCKER_POLICY_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v3, "MARS_APP_LOCKER_REPEAT_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v3, "MARS_AUTO_RUN_POLICY_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v3, "MARS_AUTO_RUN_REPEAT_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v3, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v3, "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v3, "MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v3, "android.intent.action.SET_RUNNING_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    if-eqz p1, :cond_a4

    .line 157
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v1, "pkgFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    .end local v1    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_a4
    iget-object v3, p0, mAlarm:Landroid/app/AlarmManager;

    if-nez v3, :cond_b4

    .line 167
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, mAlarm:Landroid/app/AlarmManager;

    .line 168
    :cond_b4
    return-void
.end method

.method public unregisterReceiver()V
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    return-void
.end method
