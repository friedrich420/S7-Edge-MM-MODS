.class Lcom/android/server/notification/ZenModeHelper$1;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/service/notification/ZenModeConfig$Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .prologue
    .line 732
    iput-object p1, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;
    .registers 11
    .param p1, "v1"    # Landroid/service/notification/ZenModeConfig$XmlV1;

    .prologue
    .line 735
    if-nez p1, :cond_4

    const/4 v3, 0x0

    .line 791
    :goto_3
    return-object v3

    .line 736
    :cond_4
    new-instance v3, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 737
    .local v3, "rt":Landroid/service/notification/ZenModeConfig;
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowCalls:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 738
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowEvents:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 739
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    iput v6, v3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 740
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowMessages:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 741
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    iput v6, v3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 742
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowReminders:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 744
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowAlarms:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 747
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepMode:Ljava/lang/String;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig$XmlV1;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v2

    .line 748
    .local v2, "days":[I
    if-eqz v2, :cond_85

    array-length v6, v2

    if-lez v6, :cond_85

    .line 749
    const-string v6, "ZenModeHelper"

    const-string v7, "Migrating existing V1 downtime to single schedule"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 751
    .local v5, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iput-object v2, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 752
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartHour:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 753
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartMinute:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 754
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndHour:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 755
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndMinute:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 756
    new-instance v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 766
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->applyDowntime:Z

    .line 767
    .local v1, "applyDowntime":Z
    iput-boolean v1, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 768
    const-string/jumbo v6, "twschedule"

    iput-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 769
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 770
    iget-object v6, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "dnd_allowexception"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 772
    .local v0, "allowException":I
    if-nez v0, :cond_83

    const/4 v6, 0x2

    :goto_77
    iput v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 775
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 772
    :cond_83
    const/4 v6, 0x1

    goto :goto_77

    .line 777
    .end local v0    # "allowException":I
    .end local v1    # "applyDowntime":Z
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_85
    const-string v6, "ZenModeHelper"

    const-string v7, "No existing V1 downtime found, generating default schedules"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v6, p0, this$0:Lcom/android/server/notification/ZenModeHelper;

    # invokes: Lcom/android/server/notification/ZenModeHelper;->appendDefaultTwScheduleRules(Landroid/service/notification/ZenModeConfig;)V
    invoke-static {v6, v3}, Lcom/android/server/notification/ZenModeHelper;->access$700(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V

    goto/16 :goto_3
.end method
