.class Lcom/android/settings/GlobalRoamingSettings$1;
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
    .line 105
    iput-object p1, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v2, "GlobalRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReceiver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v2, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    :cond_0
    const-string v2, "GlobalRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update LGT data roaming status :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z
    invoke-static {v4}, Lcom/android/settings/GlobalRoamingSettings;->access$000(Lcom/android/settings/GlobalRoamingSettings;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v2, "GlobalRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update LGT RestrictBackground status :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v4}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$200(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$200(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z
    invoke-static {v3}, Lcom/android/settings/GlobalRoamingSettings;->access$000(Lcom/android/settings/GlobalRoamingSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 115
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$000(Lcom/android/settings/GlobalRoamingSettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$200(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const v3, 0x7f0e152b

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$200(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const v3, 0x7f0e152a

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 121
    :cond_3
    const-string v2, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const-string v2, "ENABLED"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 123
    .local v1, "enabled":Z
    const-string v2, "GlobalRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update RestrictBackground status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v4}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v2, "GlobalRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update RestrictBackground enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$1;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonBackgroundData:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$300(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
