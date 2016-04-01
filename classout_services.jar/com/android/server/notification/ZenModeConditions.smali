.class public Lcom/android/server/notification/ZenModeConditions;
.super Ljava/lang/Object;
.source "ZenModeConditions.java"

# interfaces
.implements Lcom/android/server/notification/ConditionProviders$Callback;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mFirstEvaluation:Z

.field private final mHelper:Lcom/android/server/notification/ZenModeHelper;

.field private final mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .registers 6
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mSubscriptions:Landroid/util/ArrayMap;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, mFirstEvaluation:Z

    .line 44
    iput-object p1, p0, mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 45
    iput-object p2, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 46
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 47
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {v1}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 49
    :cond_25
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 50
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-direct {v1}, Lcom/android/server/notification/ScheduleConditionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 52
    :cond_3a
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 53
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/EventConditionProvider;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 56
    :cond_53
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string/jumbo v1, "twschedule"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 57
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/TwScheduleConditionProvider;

    invoke-direct {v1}, Lcom/android/server/notification/TwScheduleConditionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 60
    :cond_68
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p0}, Lcom/android/server/notification/ConditionProviders;->setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V

    .line 61
    return-void
.end method

.method private evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V
    .registers 13
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "processSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    .line 133
    if-eqz p1, :cond_7

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v5, :cond_8

    .line 170
    :cond_7
    :goto_7
    return-void

    .line 134
    :cond_8
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 135
    .local v2, "id":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 136
    .local v3, "isSystemCondition":Z
    iget-object v5, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5}, Lcom/android/server/notification/ConditionProviders;->getSystemProviders()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/SystemConditionProviderService;

    .line 137
    .local v4, "sp":Lcom/android/server/notification/SystemConditionProviderService;
    invoke-virtual {v4, v2}, Lcom/android/server/notification/SystemConditionProviderService;->isValidConditionId(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 138
    iget-object v5, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v4}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    invoke-virtual {v5, v7, v2, v8}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 139
    invoke-virtual {v4}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 140
    const/4 v3, 0x1

    goto :goto_15

    .line 143
    .end local v4    # "sp":Lcom/android/server/notification/SystemConditionProviderService;
    :cond_3c
    if-nez v3, :cond_78

    .line 144
    iget-object v5, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Lcom/android/server/notification/ConditionProviders;->findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 145
    .local v0, "cp":Landroid/service/notification/IConditionProvider;
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_6f

    const-string v7, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ensure external rule exists: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_9a

    const/4 v5, 0x1

    :goto_5a
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_6f
    if-eqz v0, :cond_78

    .line 147
    iget-object v5, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7, v2, v0}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 150
    .end local v0    # "cp":Landroid/service/notification/IConditionProvider;
    :cond_78
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-nez v5, :cond_9c

    .line 151
    const-string v5, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No component found for automatic rule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-boolean v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    goto/16 :goto_7

    .restart local v0    # "cp":Landroid/service/notification/IConditionProvider;
    :cond_9a
    move v5, v6

    .line 145
    goto :goto_5a

    .line 155
    .end local v0    # "cp":Landroid/service/notification/IConditionProvider;
    :cond_9c
    if-eqz p2, :cond_a1

    .line 156
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_a1
    if-eqz p3, :cond_b8

    .line 159
    iget-object v5, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/ConditionProviders;->subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 160
    iget-object v5, p0, mSubscriptions:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_b8
    :goto_b8
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v5, :cond_7

    .line 166
    iget-object v5, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/ConditionProviders;->findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v5

    iput-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 167
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v5, :cond_7

    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found existing condition for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 162
    :cond_ec
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_b8

    const-string v5, "ZenModeHelper"

    const-string/jumbo v6, "zmc failed to subscribe"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8
.end method

.method private isAutomaticActive(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 173
    if-nez p1, :cond_4

    .line 181
    :cond_3
    :goto_3
    return v3

    .line 174
    :cond_4
    iget-object v4, p0, mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 175
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_3

    .line 176
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 177
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 178
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 6
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;
    .param p3, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x0

    .line 194
    if-eqz p1, :cond_9

    if-eqz p3, :cond_9

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_a

    .line 198
    :cond_9
    :goto_9
    return v0

    .line 195
    :cond_a
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 196
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 197
    iput-object p2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 198
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 5
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x0

    .line 185
    if-eqz p1, :cond_32

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v1, :cond_32

    iget-boolean v1, p0, mFirstEvaluation:Z

    if-nez v1, :cond_11

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v1

    if-nez v1, :cond_32

    .line 186
    :cond_11
    iput-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 187
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Snoozing reset for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_31
    const/4 v0, 0x1

    .line 190
    :cond_32
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V
    .registers 12
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "processSubscriptions"    # Z

    .prologue
    .line 72
    if-nez p1, :cond_3

    .line 96
    :goto_2
    return-void

    .line 73
    :cond_3
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v7, :cond_24

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v7, :cond_24

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v7

    if-nez v7, :cond_24

    .line 75
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_21

    const-string v7, "ZenModeHelper"

    const-string/jumbo v8, "evaluateConfig: clearing manual rule"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_21
    const/4 v7, 0x0

    iput-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 78
    :cond_24
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 79
    .local v3, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v7, v3, p2}, evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    .line 80
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 81
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, v1, v3, p2}, evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    .line 82
    invoke-direct {p0, v1}, updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    goto :goto_38

    .line 84
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_4b
    iget-object v7, p0, mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 85
    .local v0, "N":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_53
    if-ltz v4, :cond_7a

    .line 86
    iget-object v7, p0, mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 87
    .local v6, "id":Landroid/net/Uri;
    iget-object v7, p0, mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 88
    .local v2, "component":Landroid/content/ComponentName;
    if-eqz p2, :cond_77

    .line 89
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_77

    .line 90
    iget-object v7, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v7, v2, v6}, Lcom/android/server/notification/ConditionProviders;->unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V

    .line 91
    iget-object v7, p0, mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 85
    :cond_77
    add-int/lit8 v4, v4, -0x1

    goto :goto_53

    .line 95
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v6    # "id":Landroid/net/Uri;
    :cond_7a
    const/4 v7, 0x0

    iput-boolean v7, p0, mFirstEvaluation:Z

    goto :goto_2
.end method

.method public onBootComplete()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method public onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .registers 10
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 118
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_27

    const-string v4, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onConditionChanged "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_27
    iget-object v4, p0, mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 120
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v1, :cond_30

    .line 130
    :cond_2f
    :goto_2f
    return-void

    .line 121
    :cond_30
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 122
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, p1, p2, v4}, updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    .line 123
    .local v3, "updated":Z
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 124
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, p1, p2, v0}, updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 125
    invoke-direct {p0, v0}, updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 126
    goto :goto_44

    .line 127
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5b
    if-eqz v3, :cond_2f

    .line 128
    iget-object v4, p0, mHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v5, "conditionChanged"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/notification/ZenModeHelper;->setConfigAsync(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public onServiceAdded(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 110
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1d
    invoke-direct {p0, p1}, isAutomaticActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 112
    iget-object v0, p0, mHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p0, mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    const-string/jumbo v2, "zmc.onServiceAdded"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigAsync(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    .line 114
    :cond_31
    return-void
.end method

.method public onUserSwitched()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method public requestConditions(Landroid/service/notification/IConditionListener;I)V
    .registers 4
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 68
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ConditionProviders;->requestConditions(Landroid/service/notification/IConditionListener;I)V

    .line 69
    return-void
.end method
