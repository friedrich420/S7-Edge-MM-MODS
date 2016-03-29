.class Lcom/android/settings/usefulfeature/Usefulfeature$5;
.super Landroid/telephony/PhoneStateListener;
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
    .line 201
    iput-object p1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$5;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 205
    .local v0, "roaming":Z
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 206
    const-string v1, "Usefulfeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged roaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    # invokes: Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$5;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$900(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$5;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$900(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    # invokes: Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_2

    # invokes: Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportMccSmartCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$5;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$900(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
