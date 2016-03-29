.class Lcom/android/settings/nfc/NfcListenStatusChange$2;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcListenStatusChange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 210
    const/4 v2, -0x1

    if-ne v2, p2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$100(Lcom/android/settings/nfc/NfcListenStatusChange;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$200(Lcom/android/settings/nfc/NfcListenStatusChange;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$000(Lcom/android/settings/nfc/NfcListenStatusChange;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    .line 214
    .local v1, "setret":Z
    if-eqz v1, :cond_0

    .line 215
    const-string v2, "00001,2"

    invoke-static {v2}, Lcom/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    .line 216
    .local v0, "ret":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    const-string v3, "00001,2"

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$602(Lcom/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .end local v0    # "ret":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # invokes: Lcom/android/settings/nfc/NfcListenStatusChange;->startHandler()V
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$700(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    .line 223
    .end local v1    # "setret":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->finish()V

    .line 225
    :cond_2
    return-void
.end method
