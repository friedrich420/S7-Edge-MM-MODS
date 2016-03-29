.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTime(II)Z
    .locals 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 103
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-boolean v2, v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDisableListeners:Z

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 105
    :cond_2
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    if-eq p2, v1, :cond_0

    .line 109
    :cond_4
    sget-boolean v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange start h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    iput p1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 111
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    iput p2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 112
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateRule(Landroid/net/Uri;)V

    goto :goto_0
.end method
