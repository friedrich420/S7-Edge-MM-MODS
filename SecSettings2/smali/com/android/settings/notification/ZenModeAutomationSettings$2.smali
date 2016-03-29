.class Lcom/android/settings/notification/ZenModeAutomationSettings$2;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->updateControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$isEvent:Z

.field final synthetic val$isSchedule:Z

.field final synthetic val$rule:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;ZZLjava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iput-boolean p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$isSchedule:Z

    iput-boolean p3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$isEvent:Z

    iput-object p4, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$id:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 157
    iget-boolean v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$isSchedule:Z

    if-eqz v1, :cond_0

    const-string v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 160
    .local v0, "action":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$id:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    # invokes: Lcom/android/settings/notification/ZenModeAutomationSettings;->showRule(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$000(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x1

    return v1

    .line 157
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$isEvent:Z

    if-eqz v1, :cond_1

    const-string v0, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    goto :goto_0

    :cond_1
    const-string v0, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    goto :goto_0
.end method
