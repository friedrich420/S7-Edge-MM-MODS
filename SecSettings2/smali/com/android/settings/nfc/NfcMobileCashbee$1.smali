.class Lcom/android/settings/nfc/NfcMobileCashbee$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcMobileCashbee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcMobileCashbee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcMobileCashbee;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcMobileCashbee;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/nfc/NfcMobileCashbee$1;->this$0:Lcom/android/settings/nfc/NfcMobileCashbee;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "[NfcMobileCashbee]"

    const-string v3, "[*] onReceive : ACTION_NFCADAPTER_STATE_CHANGE is received"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, "State":I
    const-string v2, "[NfcMobileCashbee]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[*] onReceive : State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/settings/nfc/NfcMobileCashbee$1;->this$0:Lcom/android/settings/nfc/NfcMobileCashbee;

    # getter for: Lcom/android/settings/nfc/NfcMobileCashbee;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcMobileCashbee;->access$000(Lcom/android/settings/nfc/NfcMobileCashbee;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 81
    .end local v0    # "State":I
    :cond_0
    return-void
.end method
