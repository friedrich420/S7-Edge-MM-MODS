.class public Lcom/android/server/notification/EventConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "EventConditionProvider.java"


# static fields
.field private static final ACTION_EVALUATE:Ljava/lang/String;

.field private static final CHANGE_DELAY:J = 0x7d0L

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final NOT_SHOWN:Ljava/lang/String; = "..."

.field private static final REQUEST_CODE_EVALUATE:I = 0x1

.field private static final SIMPLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.ECP"


# instance fields
.field private mBootComplete:Z

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mEvaluateSubscriptionsW:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

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

.field private final mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/notification/CalendarTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, COMPONENT:Landroid/content/ComponentName;

    .line 56
    const-class v0, Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, SIMPLE_NAME:Ljava/lang/String;

    .line 57
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

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 5
    .param p1, "worker"    # Landroid/os/Looper;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 62
    iput-object p0, p0, mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mTrackers:Landroid/util/SparseArray;

    .line 306
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$2;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 315
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$3;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$4;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    .line 73
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_4d

    const-string v0, "ConditionProviders.ECP"

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

    .line 74
    :cond_4d
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mWorker:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/EventConditionProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .prologue
    .line 49
    invoke-direct {p0}, reloadTrackers()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 49
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .prologue
    .line 49
    iget-object v0, p0, mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .prologue
    .line 49
    iget-object v0, p0, mWorker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/EventConditionProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .prologue
    .line 49
    invoke-direct {p0}, evaluateSubscriptions()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/EventConditionProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .prologue
    .line 49
    invoke-direct {p0}, evaluateSubscriptionsW()V

    return-void
.end method

.method private createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .registers 14
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "state"    # I

    .prologue
    .line 277
    const-string v10, "..."

    .line 278
    .local v10, "summary":Ljava/lang/String;
    const-string v8, "..."

    .line 279
    .local v8, "line1":Ljava/lang/String;
    const-string v9, "..."

    .line 280
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
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, mWorker:Landroid/os/Handler;

    iget-object v1, p0, mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 191
    iget-object v0, p0, mWorker:Landroid/os/Handler;

    iget-object v1, p0, mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    :cond_11
    return-void
.end method

.method private evaluateSubscriptionsW()V
    .registers 19

    .prologue
    .line 196
    sget-boolean v14, DEBUG:Z

    if-eqz v14, :cond_c

    const-string v14, "ConditionProviders.ECP"

    const-string/jumbo v15, "evaluateSubscriptions"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, mBootComplete:Z

    if-nez v14, :cond_1e

    .line 198
    sget-boolean v14, DEBUG:Z

    if-eqz v14, :cond_1d

    const-string v14, "ConditionProviders.ECP"

    const-string v15, "Skipping evaluate before boot complete"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1d
    :goto_1d
    return-void

    .line 201
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 202
    .local v6, "now":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    move-object/from16 v0, p0

    iget-object v14, v0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v4, v14, :cond_4d

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/CalendarTracker;

    move-object/from16 v0, p0

    iget-object v15, v0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_48

    const/4 v15, 0x0

    :goto_42
    invoke-virtual {v14, v15}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 203
    :cond_48
    move-object/from16 v0, p0

    iget-object v15, v0, mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    goto :goto_42

    .line 205
    :cond_4d
    move-object/from16 v0, p0

    iget-object v14, v0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_82

    const/4 v14, 0x1

    :goto_58
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, setRegistered(Z)V

    .line 206
    const-wide/16 v10, 0x0

    .line 207
    .local v10, "reevaluateAt":J
    move-object/from16 v0, p0

    iget-object v14, v0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_123

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 208
    .local v2, "conditionId":Landroid/net/Uri;
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v3

    .line 209
    .local v3, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    if-nez v3, :cond_84

    .line 210
    const/4 v14, 0x0

    const-string v15, "badConditionId"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    goto :goto_67

    .line 205
    .end local v2    # "conditionId":Landroid/net/Uri;
    .end local v3    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "reevaluateAt":J
    :cond_82
    const/4 v14, 0x0

    goto :goto_58

    .line 213
    .restart local v2    # "conditionId":Landroid/net/Uri;
    .restart local v3    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v10    # "reevaluateAt":J
    :cond_84
    const/4 v9, 0x0

    .line 214
    .local v9, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    iget-object v14, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-nez v14, :cond_bc

    .line 216
    const/4 v4, 0x0

    :goto_8a
    move-object/from16 v0, p0

    iget-object v14, v0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v4, v14, :cond_f4

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/CalendarTracker;

    .line 218
    .local v12, "tracker":Lcom/android/server/notification/CalendarTracker;
    invoke-virtual {v12, v3, v6, v7}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v8

    .line 219
    .local v8, "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    if-nez v9, :cond_a8

    .line 220
    move-object v9, v8

    .line 216
    :goto_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 222
    :cond_a8
    iget-boolean v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    iget-boolean v15, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    or-int/2addr v14, v15

    iput-boolean v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 223
    iget-wide v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    iget-wide v0, v8, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    iput-wide v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_a5

    .line 228
    .end local v8    # "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v12    # "tracker":Lcom/android/server/notification/CalendarTracker;
    :cond_bc
    iget v14, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v13

    .line 229
    .local v13, "userId":I
    move-object/from16 v0, p0

    iget-object v14, v0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/CalendarTracker;

    .line 230
    .restart local v12    # "tracker":Lcom/android/server/notification/CalendarTracker;
    if-nez v12, :cond_f0

    .line 231
    const-string v14, "ConditionProviders.ECP"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No calendar tracker found for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v14, 0x0

    const-string v15, "badUserId"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    goto/16 :goto_67

    .line 235
    :cond_f0
    invoke-virtual {v12, v3, v6, v7}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v9

    .line 237
    .end local v12    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .end local v13    # "userId":I
    :cond_f4
    iget-wide v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_10a

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-eqz v14, :cond_108

    iget-wide v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v14, v14, v10

    if-gez v14, :cond_10a

    .line 238
    :cond_108
    iget-wide v10, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 240
    :cond_10a
    iget-boolean v14, v9, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    if-nez v14, :cond_118

    .line 241
    const/4 v14, 0x0

    const-string v15, "!inEventNow"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    goto/16 :goto_67

    .line 244
    :cond_118
    const/4 v14, 0x1

    const-string/jumbo v15, "inEventNow"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    goto/16 :goto_67

    .line 246
    .end local v2    # "conditionId":Landroid/net/Uri;
    .end local v3    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .end local v9    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :cond_123
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v10, v11}, rescheduleAlarm(JJ)V

    .line 247
    sget-boolean v14, DEBUG:Z

    if-eqz v14, :cond_1d

    const-string v14, "ConditionProviders.ECP"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "evaluateSubscriptions took "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 302
    :goto_9
    return-object v1

    .line 301
    :catch_a
    move-exception v0

    .line 302
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 7
    .param p1, "conditionId"    # Landroid/net/Uri;
    .param p2, "state"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 271
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_35

    const-string v0, "ConditionProviders.ECP"

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

    .line 273
    :cond_35
    invoke-direct {p0, p1, p2}, createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, notifyCondition(Landroid/service/notification/Condition;)V

    .line 274
    return-void
.end method

.method private reloadTrackers()V
    .registers 9

    .prologue
    .line 173
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "ConditionProviders.ECP"

    const-string/jumbo v5, "reloadTrackers"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v4, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_24

    .line 175
    iget-object v4, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/CalendarTracker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 177
    :cond_24
    iget-object v4, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 178
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 179
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->isOwner()Z

    move-result v4

    if-eqz v4, :cond_6a

    iget-object v0, p0, mContext:Landroid/content/Context;

    .line 180
    .local v0, "context":Landroid/content/Context;
    :goto_4b
    if-nez v0, :cond_71

    .line 181
    const-string v4, "ConditionProviders.ECP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create context for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 179
    .end local v0    # "context":Landroid/content/Context;
    :cond_6a
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v3}, getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    goto :goto_4b

    .line 184
    .restart local v0    # "context":Landroid/content/Context;
    :cond_71
    iget-object v4, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    new-instance v6, Lcom/android/server/notification/CalendarTracker;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v0}, Lcom/android/server/notification/CalendarTracker;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    .line 186
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "user":Landroid/os/UserHandle;
    :cond_82
    invoke-direct {p0}, evaluateSubscriptions()V

    .line 187
    return-void
.end method

.method private rescheduleAlarm(JJ)V
    .registers 16
    .param p1, "now"    # J
    .param p3, "time"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 251
    iput-wide p3, p0, mNextAlarmTime:J

    .line 252
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 253
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

    .line 259
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 260
    cmp-long v2, p3, v6

    if-eqz v2, :cond_37

    cmp-long v2, p3, p1

    if-gez v2, :cond_5f

    .line 261
    :cond_37
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_5a

    const-string v3, "ConditionProviders.ECP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduling evaluate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    cmp-long v2, p3, v6

    if-nez v2, :cond_5b

    const-string/jumbo v2, "no time specified"

    :goto_4f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_5a
    :goto_5a
    return-void

    .line 261
    :cond_5b
    const-string/jumbo v2, "specified time in the past"

    goto :goto_4f

    .line 265
    :cond_5f
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_86

    const-string v2, "ConditionProviders.ECP"

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

    .line 267
    :cond_86
    invoke-virtual {v0, v8, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_5a
.end method

.method private setRegistered(Z)V
    .registers 6
    .param p1, "registered"    # Z

    .prologue
    .line 284
    iget-boolean v1, p0, mRegistered:Z

    if-ne v1, p1, :cond_5

    .line 296
    :goto_4
    return-void

    .line 285
    :cond_5
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_22

    const-string v1, "ConditionProviders.ECP"

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

    .line 286
    :cond_22
    iput-boolean p1, p0, mRegistered:Z

    .line 287
    iget-boolean v1, p0, mRegistered:Z

    if-eqz v1, :cond_42

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    sget-object v1, ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4

    .line 294
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_42
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_4
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    .prologue
    .line 169
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
    .line 164
    invoke-virtual {p0, p1}, attachBaseContext(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 89
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 91
    const-string v0, "      mRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 92
    const-string v0, "      mBootComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mBootComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 93
    const-string/jumbo v1, "mNextAlarmTime"

    iget-wide v2, p0, mNextAlarmTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    .line 94
    const-string v0, "      mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 96
    .local v6, "conditionId":Landroid/net/Uri;
    const-string v0, "        "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_45

    .line 99
    .end local v6    # "conditionId":Landroid/net/Uri;
    :cond_5a
    const-string v0, "      mTrackers="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_60
    iget-object v0, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_86

    .line 101
    const-string v0, "        user="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 102
    iget-object v0, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/CalendarTracker;

    const-string v1, "          "

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/CalendarTracker;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 100
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 104
    :cond_86
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 79
    sget-object v0, COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "id"    # Landroid/net/Uri;

    .prologue
    .line 84
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onBootComplete()V
    .registers 4

    .prologue
    .line 108
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "ConditionProviders.ECP"

    const-string/jumbo v2, "onBootComplete"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_c
    iget-boolean v1, p0, mBootComplete:Z

    if-eqz v1, :cond_11

    .line 121
    :goto_10
    return-void

    .line 110
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, mBootComplete:Z

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/notification/EventConditionProvider$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/EventConditionProvider$1;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    invoke-direct {p0}, reloadTrackers()V

    goto :goto_10
.end method

.method public onConnected()V
    .registers 3

    .prologue
    .line 125
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, mConnected:Z

    .line 127
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    .line 132
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, mConnected:Z

    .line 134
    return-void
.end method

.method public onRequestConditions(I)V
    .registers 5
    .param p1, "relevance"    # I

    .prologue
    .line 138
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ConditionProviders.ECP"

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

    .line 140
    :cond_1d
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 5
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 144
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ConditionProviders.ECP"

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

    .line 145
    :cond_1d
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 146
    const/4 v0, 0x0

    const-string v1, "badCondition"

    invoke-direct {p0, p1, v0, v1}, notifyCondition(Landroid/net/Uri;ILjava/lang/String;)V

    .line 152
    :cond_29
    :goto_29
    return-void

    .line 149
    :cond_2a
    iget-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 150
    invoke-direct {p0}, evaluateSubscriptions()V

    goto :goto_29
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 5
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 156
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ConditionProviders.ECP"

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

    .line 157
    :cond_1d
    iget-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 158
    invoke-direct {p0}, evaluateSubscriptions()V

    .line 160
    :cond_28
    return-void
.end method
