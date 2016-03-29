.class Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$3;
.super Ljava/lang/Object;
.source "UniversalLockSplashActivity.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$3;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 6
    .param p1, "toggleSwitch"    # Lcom/android/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    const-string v1, "UniversalLockSplashActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBeforeCheckedChanged: checked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eqz p2, :cond_0

    .line 265
    const-string v1, "UniversalLockSplashActivity"

    const-string v2, "setting the switch to false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;
    invoke-static {}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$1200()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$3;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$1300(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->launchConfirmCurrentLockScreen(Z)Z

    .line 277
    :goto_0
    return v5

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$3;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$1300(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->launchConfirmCurrentLockScreen(Z)Z

    move-result v0

    .line 273
    .local v0, "activityLaunched":Z
    const-string v1, "UniversalLockSplashActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting the switch to :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;
    invoke-static {}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$1200()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$3;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->loadSettings()V

    goto :goto_0
.end method
