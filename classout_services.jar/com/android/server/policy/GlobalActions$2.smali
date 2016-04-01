.class Lcom/android/server/policy/GlobalActions$2;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .registers 13
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 909
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1026
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 912
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v1, :cond_25

    .line 913
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in onPress of DataModeToggle ro.config.donot_nosim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ro.config.donot_nosim"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_25
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 918
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 919
    sget-boolean v1, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4d

    .line 920
    const-string v1, "GlobalActions"

    const-string/jumbo v2, "restricted by MDM "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_4d
    :goto_4d
    return-void

    .line 926
    :cond_4e
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isSimReady()Z
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$600(Lcom/android/server/policy/GlobalActions;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string/jumbo v1, "ro.config.donot_nosim"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 927
    :cond_5f
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 928
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->onToggleDatamode()V
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$800(Lcom/android/server/policy/GlobalActions;)V

    goto :goto_4d

    .line 930
    :cond_6b
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const v2, 0x10409af

    const v3, 0x10409b2

    const v4, 0x10409b3

    # invokes: Lcom/android/server/policy/GlobalActions;->confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->access$900(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    goto :goto_4d
.end method

.method onToggle(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 937
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 939
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_32

    .line 940
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v2

    if-nez v2, :cond_32

    .line 942
    :cond_26
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_31

    .line 943
    const-string v2, "GlobalActions"

    const-string v3, "Mobile data is restricted by MDM "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_31
    :goto_31
    return-void

    .line 948
    :cond_32
    sget-boolean v2, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_4f

    .line 949
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in onToggle of DataModeToggle on = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_4f
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->cm:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$1000(Lcom/android/server/policy/GlobalActions;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 959
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 961
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_31
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 967
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 970
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->isDataToggleSupport:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 972
    const/4 v0, 0x1

    .line 1005
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 964
    const/4 v0, 0x1

    return v0
.end method
