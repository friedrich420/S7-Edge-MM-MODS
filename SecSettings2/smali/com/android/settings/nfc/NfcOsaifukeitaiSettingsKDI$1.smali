.class Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcOsaifukeitaiSettingsKDI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    const-string v3, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v4, "[S] onReceiveKDI"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    # getter for: Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    .line 111
    .local v1, "clfLock":I
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    # getter for: Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v2

    .line 113
    .local v2, "uimLock":I
    const-string v3, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[*] onReceive : [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ] is received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    # invokes: Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->list_items_update(II)V
    invoke-static {v3, v1, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->access$100(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;II)V

    .line 116
    const-string v3, "[NfcOsaifukeitaiSettingsKDI]"

    const-string v4, "[E] onReceiveKDI"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
