.class Lcom/android/settings/GlobalRoamingSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GlobalRoamingSettings;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-static {p1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 157
    .local v0, "isAirplaneModeOn":Z
    const-string v2, "GlobalRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane mode changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$600(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 160
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$200(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 174
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$700(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$700(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v1

    .line 165
    .local v1, "rom":Landroid/app/enterprise/RoamingPolicy;
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$200(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 169
    .end local v1    # "rom":Landroid/app/enterprise/RoamingPolicy;
    :goto_1
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$600(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$200(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$3;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$600(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
