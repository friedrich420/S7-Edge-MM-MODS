.class Lcom/android/settings/notification/ZenModeAutomationSettings$3;
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


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v1, 0xac

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    # invokes: Lcom/android/settings/notification/ZenModeAutomationSettings;->showAddRuleDialog()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$200(Lcom/android/settings/notification/ZenModeAutomationSettings;)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method
