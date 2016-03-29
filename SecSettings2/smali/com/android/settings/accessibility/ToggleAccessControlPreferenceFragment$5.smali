.class Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;
.super Ljava/lang/Object;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

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

    .line 312
    if-eqz p2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$300(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isInteractionControlExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 314
    .local v0, "bundle_data":Landroid/os/Bundle;
    const-string v2, "is_enabled"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 315
    .local v1, "is_enabled":Z
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    const-string v3, "dialog_content"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mDisableExclusiveOptionsMessage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$402(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    const-string v3, "option_flag"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mDisableExclusiveOptionsFlag:I
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$502(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)I

    .line 317
    if-eqz v1, :cond_0

    .line 318
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V
    invoke-static {v2, v4}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$600(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    .line 332
    .end local v0    # "bundle_data":Landroid/os/Bundle;
    .end local v1    # "is_enabled":Z
    :goto_0
    return v4

    .line 320
    .restart local v0    # "bundle_data":Landroid/os/Bundle;
    .restart local v1    # "is_enabled":Z
    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 321
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$700(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 324
    .end local v0    # "bundle_data":Landroid/os/Bundle;
    .end local v1    # "is_enabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$800(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V
    invoke-static {v2, v5}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$900(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$1000(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p1, v4}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 329
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$1100(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
