.class Lcom/android/settings/usefulfeature/Usefulfeature$3;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const v0, 0x7f0e0e93

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$600(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # invokes: Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$700(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$600(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$600(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$600(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$600(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # invokes: Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$800(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_popup_view_shortcut"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f0e0e92

    :cond_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
