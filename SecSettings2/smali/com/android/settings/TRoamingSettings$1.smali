.class Lcom/android/settings/TRoamingSettings$1;
.super Landroid/database/ContentObserver;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$100(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$000(Lcom/android/settings/TRoamingSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$300(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$200(Lcom/android/settings/TRoamingSettings;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 135
    const-string v0, "TRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK mUseDataRoamingObserver DATA_ROAMING is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z
    invoke-static {v2}, Lcom/android/settings/TRoamingSettings;->access$000(Lcom/android/settings/TRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$000(Lcom/android/settings/TRoamingSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$400(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$400(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$500(Lcom/android/settings/TRoamingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-virtual {v0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lte_roaming_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$600(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-virtual {v0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hd_voice_roaming_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$600(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-virtual {v0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hd_voice_roaming_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$400(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$500(Lcom/android/settings/TRoamingSettings;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    const-string v0, "TRoamingSettings"

    const-string v1, "KKK mUseDataRoamingObserver LTE_ROAMING is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$600(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$1;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$600(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
