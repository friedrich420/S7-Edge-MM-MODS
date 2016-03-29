.class Lcom/android/settings/TRoamingSettings$7;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/settings/TRoamingSettings;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 565
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$100(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mUseDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$100(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    const-string v1, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$300(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->isRestrictBackgroundEnabled()Z
    invoke-static {v2}, Lcom/android/settings/TRoamingSettings;->access$900(Lcom/android/settings/TRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 571
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$1000(Lcom/android/settings/TRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$7;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$300(Lcom/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
