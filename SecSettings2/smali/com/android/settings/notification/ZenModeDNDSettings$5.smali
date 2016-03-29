.class Lcom/android/settings/notification/ZenModeDNDSettings$5;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 271
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$400(Lcom/android/settings/notification/ZenModeDNDSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 272
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 273
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v1

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq v0, v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 275
    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$600()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange Scheduling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v1

    iput-boolean v0, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 277
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 278
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$500(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-nez v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$500(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    sget-object v2, Lcom/android/settings/notification/ZenModeDNDSettings;->ALL_DAYS:[I

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$700(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput v4, v1, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    .line 281
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$500(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->updateRule(Landroid/net/Uri;)V
    invoke-static {v1, v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$800(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$900(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method
