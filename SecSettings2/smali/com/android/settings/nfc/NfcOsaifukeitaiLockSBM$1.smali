.class Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcOsaifukeitaiLockSBM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    # getter for: Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    .line 91
    .local v1, "clf_lock":I
    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    # getter for: Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v4

    .line 93
    .local v4, "uim_lock":I
    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    # invokes: Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->setLockSwitch(II)V
    invoke-static {v5, v1, v4}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->access$100(Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;II)V

    .line 94
    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    # invokes: Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->setExplainedWord(II)V
    invoke-static {v5, v1, v4}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->access$200(Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;II)V

    .line 114
    .end local v1    # "clf_lock":I
    .end local v4    # "uim_lock":I
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v5, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "responseType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 97
    .local v3, "iresponsetype":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "efLockUser"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, "ilockUser":I
    const-string v5, "[NfcOsaifukeitaiLockSBM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status iresponsetype = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v5, "[NfcOsaifukeitaiLockSBM]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get SIM Lock Status ilockUser = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 104
    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    # getter for: Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    .line 107
    .restart local v1    # "clf_lock":I
    if-eq v1, v8, :cond_2

    if-ne v2, v8, :cond_3

    .line 108
    :cond_2
    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    # setter for: Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z
    invoke-static {v5, v8}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->access$302(Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;Z)Z

    goto :goto_0

    .line 110
    :cond_3
    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    const/4 v6, 0x0

    # setter for: Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->mbSwitchBar:Z
    invoke-static {v5, v6}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;->access$302(Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;Z)Z

    goto :goto_0
.end method
