.class Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcOsaifukeitaiLockKDI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    # getter for: Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    .line 93
    .local v1, "clf_lock":I
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    # getter for: Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v2

    .line 95
    .local v2, "uim_lock":I
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    # invokes: Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setLockSwitch(II)V
    invoke-static {v3, v1, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->access$100(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;II)V

    .line 96
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    # invokes: Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setExplainedWord(II)V
    invoke-static {v3, v1, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->access$200(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;II)V

    .line 98
    .end local v1    # "clf_lock":I
    .end local v2    # "uim_lock":I
    :cond_0
    return-void
.end method
