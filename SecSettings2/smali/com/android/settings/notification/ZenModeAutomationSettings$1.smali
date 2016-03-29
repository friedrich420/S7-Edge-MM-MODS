.class Lcom/android/settings/notification/ZenModeAutomationSettings$1;
.super Lcom/android/settings/notification/ZenRuleNameDialog;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->showAddRuleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Lcom/android/settings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/android/settings/notification/ServiceListing;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 97
    .local p5, "x3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/settings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V
    .locals 7
    .param p1, "ruleName"    # Ljava/lang/String;
    .param p2, "ri"    # Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    .prologue
    const/4 v5, 0x1

    .line 100
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v3, v3, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v4, 0xad

    invoke-static {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 101
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 102
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-object p1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 103
    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 104
    iput v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 105
    iget-object v3, p2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    iput-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 106
    iget-object v3, p2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iput-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 107
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v3, v3, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 108
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "ruleId":Ljava/lang/String;
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v3, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v4, p2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->settingsAction:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v6, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    # invokes: Lcom/android/settings/notification/ZenModeAutomationSettings;->showRule(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v2, v6}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$000(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
