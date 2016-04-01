.class public Lcom/android/server/notification/TwScheduleConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "TwScheduleConditionProvider.java"


# static fields
.field private static final ACTION_EVALUATE:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final NOT_SHOWN:Ljava/lang/String; = "..."

.field private static final REQUEST_CODE_EVALUATE:I = 0x1

.field private static final SIMPLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.SCP"


# instance fields
.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mNextAlarmTime:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    .line 47
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/TwScheduleConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, COMPONENT:Landroid/content/ComponentName;

    .line 50
    const-class v0, Lcom/android/server/notification/TwScheduleConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, SIMPLE_NAME:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".EVALUATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, ACTION_EVALUATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 55
    iput-object p0, p0, mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    .line 227
    new-instance v0, Lcom/android/server/notification/TwScheduleConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/TwScheduleConditionProvider$1;-><init>(Lcom/android/server/notification/TwScheduleConditionProvider;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_38

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_38
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 43
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/TwScheduleConditionProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/TwScheduleConditionProvider;

    .prologue
    .line 43
    invoke-direct {p0}, evaluateSubscriptions()V

    return-void
.end method

.method private createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .registers 14
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "state"    # I

    .prologue
    .line 221
    const-string v10, "..."

    .line 222
    .local v10, "summary":Ljava/lang/String;
    const-string v8, "..."

    .line 223
    .local v8, "line1":Ljava/lang/String;
    const-string v9, "..."

    .line 224
    .local v9, "line2":Ljava/lang/String;
    new-instance v0, Landroid/service/notification/Condition;

    const-string v2, "..."

    const-string v3, "..."

    const-string v4, "..."

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private evaluateSubscriptions()V
    .registers 15

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    .line 144
    iget-object v3, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_57

    move v3, v8

    :goto_d
    invoke-direct {p0, v3}, setRegistered(Z)V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 146
    .local v6, "now":J
    iput-wide v12, p0, mNextAlarmTime:J

    .line 147
    iget-object v3, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 148
    .local v1, "conditionId":Landroid/net/Uri;
    invoke-static {v1}, toScheduleCalendar(Landroid/net/Uri;)Lcom/android/server/notification/ScheduleCalendar;

    move-result-object v0

    .line 149
    .local v0, "cal":Lcom/android/server/notification/ScheduleCalendar;
    if-eqz v0, :cond_59

    invoke-virtual {v0, v6, v7}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 150
    const-string/jumbo v3, "meetsSchedule"

    invoke-direct {p0, v1, v8, v3}, notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    .line 154
    :goto_3a
    if-eqz v0, :cond_1c

    .line 155
    invoke-virtual {v0, v6, v7}, Lcom/android/server/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v4

    .line 156
    .local v4, "nextChangeTime":J
    cmp-long v3, v4, v12

    if-lez v3, :cond_1c

    cmp-long v3, v4, v6

    if-lez v3, :cond_1c

    .line 157
    iget-wide v10, p0, mNextAlarmTime:J

    cmp-long v3, v10, v12

    if-eqz v3, :cond_54

    iget-wide v10, p0, mNextAlarmTime:J

    cmp-long v3, v4, v10

    if-gez v3, :cond_1c

    .line 158
    :cond_54
    iput-wide v4, p0, mNextAlarmTime:J

    goto :goto_1c

    .end local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .end local v1    # "conditionId":Landroid/net/Uri;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "nextChangeTime":J
    .end local v6    # "now":J
    :cond_57
    move v3, v9

    .line 144
    goto :goto_d

    .line 152
    .restart local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .restart local v1    # "conditionId":Landroid/net/Uri;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "now":J
    :cond_59
    const-string v3, "!meetsSchedule"

    invoke-direct {p0, v1, v9, v3}, notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    goto :goto_3a

    .line 163
    .end local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .end local v1    # "conditionId":Landroid/net/Uri;
    :cond_5f
    iget-wide v8, p0, mNextAlarmTime:J

    invoke-direct {p0, v6, v7, v8, v9}, updateAlarm(JJ)V

    .line 164
    return-void
.end method

.method private static meetsSchedule(Landroid/net/Uri;J)Z
    .registers 6
    .param p0, "conditionId"    # Landroid/net/Uri;
    .param p1, "time"    # J

    .prologue
    .line 185
    invoke-static {p0}, toScheduleCalendar(Landroid/net/Uri;)Lcom/android/server/notification/ScheduleCalendar;

    move-result-object v0

    .line 186
    .local v0, "cal":Lcom/android/server/notification/ScheduleCalendar;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 7
    .param p1, "conditionId"    # Landroid/net/Uri;
    .param p2, "state"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_35

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_35
    invoke-direct {p0, p1, p2}, createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, notifyCondition(Landroid/service/notification/Condition;)V

    .line 218
    return-void
.end method

.method private setRegistered(Z)V
    .registers 6
    .param p1, "registered"    # Z

    .prologue
    .line 199
    iget-boolean v1, p0, mRegistered:Z

    if-ne v1, p1, :cond_5

    .line 211
    :goto_4
    return-void

    .line 200
    :cond_5
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_22

    const-string v1, "ConditionProviders.SCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRegistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_22
    iput-boolean p1, p0, mRegistered:Z

    .line 202
    iget-boolean v1, p0, mRegistered:Z

    if-eqz v1, :cond_42

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    sget-object v1, ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4

    .line 209
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_42
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_4
.end method

.method private static toScheduleCalendar(Landroid/net/Uri;)Lcom/android/server/notification/ScheduleCalendar;
    .registers 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 190
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    .line 191
    .local v1, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v1, :cond_f

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_f

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_11

    :cond_f
    const/4 v0, 0x0

    .line 195
    :goto_10
    return-object v0

    .line 192
    :cond_11
    new-instance v0, Lcom/android/server/notification/ScheduleCalendar;

    invoke-direct {v0}, Lcom/android/server/notification/ScheduleCalendar;-><init>()V

    .line 193
    .local v0, "sc":Lcom/android/server/notification/ScheduleCalendar;
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    .line 194
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_10
.end method

.method private updateAlarm(JJ)V
    .registers 16
    .param p1, "now"    # J
    .param p3, "time"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 167
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 168
    .local v0, "alarms":Landroid/app/AlarmManager;
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, ACTION_EVALUATE:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "time"

    invoke-virtual {v3, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v9, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 174
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 175
    cmp-long v2, p3, p1

    if-lez v2, :cond_5a

    .line 176
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_56

    const-string v2, "ConditionProviders.SCP"

    const-string v3, "Scheduling evaluate for %s, in %s, now=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3, p4}, ts(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    sub-long v6, p3, p1

    invoke-static {v6, v7}, formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {p1, p2}, ts(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_56
    invoke-virtual {v0, v8, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 182
    :cond_59
    :goto_59
    return-void

    .line 180
    :cond_5a
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_59

    const-string v2, "ConditionProviders.SCP"

    const-string v3, "Not scheduling evaluate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-virtual {p0, p1}, attachBaseContext(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 78
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 80
    const-string v0, "      mRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 81
    const-string v0, "      mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 83
    .local v4, "now":J
    iget-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 84
    .local v6, "conditionId":Landroid/net/Uri;
    const-string v0, "        "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    invoke-static {v6, v4, v5}, meetsSchedule(Landroid/net/Uri;J)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "* "

    :goto_4b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_32

    .line 85
    :cond_52
    const-string v0, "  "

    goto :goto_4b

    .line 88
    .end local v6    # "conditionId":Landroid/net/Uri;
    :cond_55
    const-string/jumbo v1, "mNextAlarmTime"

    iget-wide v2, p0, mNextAlarmTime:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    .line 89
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 68
    sget-object v0, COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "id"    # Landroid/net/Uri;

    .prologue
    .line 73
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onBootComplete()V
    .registers 1

    .prologue
    .line 100
    return-void
.end method

.method public onConnected()V
    .registers 3

    .prologue
    .line 93
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.SCP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, mConnected:Z

    .line 95
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    .line 105
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ConditionProviders.SCP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, mConnected:Z

    .line 107
    return-void
.end method

.method public onRequestConditions(I)V
    .registers 5
    .param p1, "relevance"    # I

    .prologue
    .line 111
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestConditions relevance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1d
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 5
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 117
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1d
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 119
    const/4 v0, 0x0

    const-string v1, "badCondition"

    invoke-direct {p0, p1, v0, v1}, notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    .line 124
    :goto_29
    return-void

    .line 122
    :cond_2a
    iget-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-direct {p0}, evaluateSubscriptions()V

    goto :goto_29
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 5
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 128
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnsubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1d
    iget-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 130
    invoke-direct {p0}, evaluateSubscriptions()V

    .line 131
    return-void
.end method
