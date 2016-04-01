.class public Lcom/android/server/notification/CountdownConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "CountdownConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CountdownConditionProvider$1;,
        Lcom/android/server/notification/CountdownConditionProvider$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_CONDITION_ID:Ljava/lang/String; = "condition_id"

.field private static final REQUEST_CODE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CCP"


# instance fields
.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    .line 43
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, COMPONENT:Landroid/content/ComponentName;

    .line 46
    const-class v0, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 50
    iput-object p0, p0, mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CountdownConditionProvider$Receiver;-><init>(Lcom/android/server/notification/CountdownConditionProvider;Lcom/android/server/notification/CountdownConditionProvider$1;)V

    iput-object v0, p0, mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    .line 57
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_19

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "new CountdownConditionProvider()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_19
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$300(JI)Landroid/service/notification/Condition;
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, newCondition(JI)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method private static final newCondition(JI)Landroid/service/notification/Condition;
    .registers 11
    .param p0, "time"    # J
    .param p2, "state"    # I

    .prologue
    .line 163
    new-instance v0, Landroid/service/notification/Condition;

    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public static tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .param p0, "conditionUri"    # Landroid/net/Uri;

    .prologue
    .line 168
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 169
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_c

    const/4 v4, 0x0

    .line 173
    :goto_b
    return-object v4

    .line 170
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 171
    .local v2, "now":J
    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v6

    .line 173
    .local v6, "span":Ljava/lang/CharSequence;
    const-string v4, "Scheduled for %s, %s in the future (%s), now=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, ts(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v7, 0x3

    invoke-static {v2, v3}, ts(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    .prologue
    .line 82
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
    .line 72
    invoke-virtual {p0, p1}, attachBaseContext(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 87
    const-string v0, "    CountdownConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    const-string v0, "      mTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, mTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 90
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 62
    sget-object v0, COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "id"    # Landroid/net/Uri;

    .prologue
    .line 67
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onBootComplete()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public onConnected()V
    .registers 5

    .prologue
    .line 94
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_c
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, mConnected:Z

    .line 97
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    .line 102
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ConditionProviders.CCP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_f
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_1a

    .line 104
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mReceiver:Lcom/android/server/notification/CountdownConditionProvider$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, mConnected:Z

    .line 107
    return-void
.end method

.method public onRequestConditions(I)V
    .registers 2
    .param p1, "relevance"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 15
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 116
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "ConditionProviders.CCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSubscribe "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1e
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, mTime:J

    .line 118
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 120
    .local v6, "alarms":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    sget-object v1, ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "condition_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 122
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/16 v1, 0x64

    const/high16 v4, 0x8000000

    invoke-static {v0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 124
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 125
    iget-wide v0, p0, mTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_b0

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 127
    .local v2, "now":J
    iget-wide v0, p0, mTime:J

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v9

    .line 129
    .local v9, "span":Ljava/lang/CharSequence;
    iget-wide v0, p0, mTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b1

    .line 131
    iget-wide v0, p0, mTime:J

    invoke-static {v0, v1, v12}, newCondition(JI)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, notifyCondition(Landroid/service/notification/Condition;)V

    .line 136
    :goto_72
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_b0

    const-string v1, "ConditionProviders.CCP"

    const-string v4, "%s %s for %s, %s in the future (%s), now=%s"

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/Object;

    iget-wide v10, p0, mTime:J

    cmp-long v0, v10, v2

    if-gtz v0, :cond_b7

    const-string v0, "Not scheduling"

    :goto_85
    aput-object v0, v5, v12

    const/4 v0, 0x1

    sget-object v10, ACTION:Ljava/lang/String;

    aput-object v10, v5, v0

    const/4 v0, 0x2

    iget-wide v10, p0, mTime:J

    invoke-static {v10, v11}, ts(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    const/4 v0, 0x3

    iget-wide v10, p0, mTime:J

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    invoke-static {v2, v3}, ts(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2    # "now":J
    .end local v9    # "span":Ljava/lang/CharSequence;
    :cond_b0
    return-void

    .line 134
    .restart local v2    # "now":J
    .restart local v9    # "span":Ljava/lang/CharSequence;
    :cond_b1
    iget-wide v0, p0, mTime:J

    invoke-virtual {v6, v12, v0, v1, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_72

    .line 136
    :cond_b7
    const-string v0, "Scheduling"

    goto :goto_85
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 2
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 146
    return-void
.end method
