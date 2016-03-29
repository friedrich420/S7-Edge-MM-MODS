.class Lcom/android/settings/TRoamingSettings$2;
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
    .line 159
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$400(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$500(Lcom/android/settings/TRoamingSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 163
    const-string v0, "TRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK mUseLTERoamingObserver LTE_ROAMING is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z
    invoke-static {v2}, Lcom/android/settings/TRoamingSettings;->access$500(Lcom/android/settings/TRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$500(Lcom/android/settings/TRoamingSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$600(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-virtual {v0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hd_voice_roaming_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$600(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-virtual {v0}, Lcom/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hd_voice_roaming_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$2;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$600(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
