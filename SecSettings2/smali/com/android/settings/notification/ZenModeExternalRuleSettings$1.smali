.class Lcom/android/settings/notification/ZenModeExternalRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeExternalRuleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeExternalRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeExternalRuleSettings;

.field final synthetic val$ri:Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeExternalRuleSettings;Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeExternalRuleSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings$1;->val$ri:Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeExternalRuleSettings;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeExternalRuleSettings$1;->val$ri:Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    iget-object v2, v2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    return v3
.end method
