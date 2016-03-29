.class Lcom/android/settings/nfc/PaymentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentSettings;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PaymentSettings"

    const-string v2, "-------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    sget-boolean v1, Lcom/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PaymentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mReceiver.onReceive / action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    sget-boolean v1, Lcom/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "PaymentSettings"

    const-string v2, "-------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_2
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 128
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 135
    :cond_3
    :goto_0
    return-void

    .line 130
    :cond_4
    const-string v1, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    goto :goto_0

    .line 132
    :cond_5
    const-string v1, "com.android.nfc.cardemulation.UiccAccess.ACTION_RETRY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings$1;->this$0:Lcom/android/settings/nfc/PaymentSettings;

    # getter for: Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;
    invoke-static {v1}, Lcom/android/settings/nfc/PaymentSettings;->access$100(Lcom/android/settings/nfc/PaymentSettings;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->ActionRetry()V

    goto :goto_0
.end method
