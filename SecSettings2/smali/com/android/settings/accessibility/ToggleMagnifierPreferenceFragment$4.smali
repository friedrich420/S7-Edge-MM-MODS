.class Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 7
    .param p1, "toggleSwitch"    # Lcom/android/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v6, 0x0

    .line 219
    if-eqz p2, :cond_4

    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->isExclusiveOptionEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->showFingerMagnifierDisablePopup()V
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$500(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    .line 275
    :cond_0
    :goto_0
    return v6

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings"

    const-string v4, "MGWI"

    const-string v5, "Accessibility settings"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_magnifier"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getServiceTaskName(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 231
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v1, "nIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, "detectionIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 236
    .end local v0    # "detectionIntent":Landroid/content/Intent;
    .end local v1    # "nIntent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    const/4 v3, 0x1

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    goto :goto_0

    .line 270
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 261
    :cond_4
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 262
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    :cond_5
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_magnifier"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getServiceTaskName(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .restart local v1    # "nIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 272
    .end local v1    # "nIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method
