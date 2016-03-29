.class Lcom/android/settings/usefulfeature/Usefulfeature$6;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$6;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 547
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Usefulfeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$6;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$900(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 551
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$1300()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$6;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$900(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$1300()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    # invokes: Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportMccSmartCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 557
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$6;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$900(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 559
    :cond_2
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$6;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$900(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
