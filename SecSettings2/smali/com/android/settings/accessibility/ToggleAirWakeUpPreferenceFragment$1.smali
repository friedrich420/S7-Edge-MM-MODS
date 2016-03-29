.class Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleAirWakeUpPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 3
    .param p1, "toggleSwitch"    # Lcom/android/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    const-string v2, "accessibility"

    # invokes: Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 101
    .local v0, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz p2, :cond_0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->OnStartGestureWakeup()Z

    .line 113
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->OnStopGestureWakeup()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    goto :goto_0
.end method
