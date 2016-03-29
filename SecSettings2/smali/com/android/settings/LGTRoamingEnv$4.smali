.class Lcom/android/settings/LGTRoamingEnv$4;
.super Landroid/content/BroadcastReceiver;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/android/settings/LGTRoamingEnv;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    invoke-static {p1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 213
    .local v0, "isAirplaneModeOn":Z
    const-string v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Airplane mode changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/LGTRoamingEnv;->access$800(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/LGTRoamingEnv;->access$900(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/LGTRoamingEnv;->access$800(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 220
    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/LGTRoamingEnv;->access$900(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$4;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/LGTRoamingEnv;->access$800(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
