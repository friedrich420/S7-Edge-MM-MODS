.class Lcom/android/settings/notification/ZenModeAutomationSettings$4;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$4;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesReloaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 305
    .local v2, "service":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->getRuleInfo(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v1

    .line 306
    .local v1, "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->settingsAction:Ljava/lang/String;

    const-string v4, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    if-ne v3, v4, :cond_0

    .line 308
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$4;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    # getter for: Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$300(Lcom/android/settings/notification/ZenModeAutomationSettings;)Lcom/android/settings/notification/ServiceListing;

    move-result-object v3

    iget-object v4, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabling external condition provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$4;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    # getter for: Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$300(Lcom/android/settings/notification/ZenModeAutomationSettings;)Lcom/android/settings/notification/ServiceListing;

    move-result-object v3

    iget-object v4, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 314
    .end local v1    # "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .end local v2    # "service":Landroid/content/pm/ServiceInfo;
    :cond_1
    return-void
.end method
