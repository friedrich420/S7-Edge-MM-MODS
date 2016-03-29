.class Lcom/android/settings/LockscreenMenuSettings$1;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockscreenMenuSettings;->warnAppInstallationFromPackageInstaller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockscreenMenuSettings;

.field final synthetic val$mCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    iput-object p2, p0, Lcom/android/settings/LockscreenMenuSettings$1;->val$mCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 708
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "one_time_operate"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 710
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 712
    .local v1, "extras":Landroid/os/Bundle;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 713
    .local v2, "installIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .end local v2    # "installIntent":Landroid/content/Intent;
    :goto_0
    const-string v3, "LockscreenMenuSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings$1;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/android/settings/LockscreenMenuSettings;->finish()V

    .line 735
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .line 714
    .restart local v1    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 720
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    # invokes: Lcom/android/settings/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V
    invoke-static {v3, v5}, Lcom/android/settings/LockscreenMenuSettings;->access$000(Lcom/android/settings/LockscreenMenuSettings;Z)V

    .line 722
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    # getter for: Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings/LockscreenMenuSettings;->access$100(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 723
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    # getter for: Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings/LockscreenMenuSettings;->access$100(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 724
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "one_time_operate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 725
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 727
    .restart local v1    # "extras":Landroid/os/Bundle;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 728
    .restart local v2    # "installIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 732
    .end local v2    # "installIntent":Landroid/content/Intent;
    :goto_2
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings$1;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v3}, Lcom/android/settings/LockscreenMenuSettings;->finish()V

    goto :goto_1

    .line 729
    :catch_1
    move-exception v0

    .line 730
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2
.end method
