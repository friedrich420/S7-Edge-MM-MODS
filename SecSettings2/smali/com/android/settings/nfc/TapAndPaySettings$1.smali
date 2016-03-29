.class Lcom/android/settings/nfc/TapAndPaySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "TapAndPaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/TapAndPaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/TapAndPaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/TapAndPaySettings;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "TapAndPaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver.onReceive / action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/nfc/TapAndPaySettings;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentSettings;

    # setter for: Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;
    invoke-static {v2, v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$002(Lcom/android/settings/nfc/TapAndPaySettings;Lcom/android/settings/nfc/PaymentSettings;)Lcom/android/settings/nfc/PaymentSettings;

    .line 77
    iget-object v2, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/nfc/TapAndPaySettings;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/OtherSettings;

    # setter for: Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;
    invoke-static {v2, v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$202(Lcom/android/settings/nfc/TapAndPaySettings;Lcom/android/settings/nfc/OtherSettings;)Lcom/android/settings/nfc/OtherSettings;

    .line 79
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    const-string v1, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$400(Lcom/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I
    invoke-static {}, Lcom/android/settings/nfc/TapAndPaySettings;->access$500()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$000(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/PaymentSettings;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$000(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/PaymentSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    goto :goto_0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$400(Lcom/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I
    invoke-static {}, Lcom/android/settings/nfc/TapAndPaySettings;->access$600()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$200(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/OtherSettings;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$200(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/OtherSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/nfc/OtherSettings;->refresh()V

    goto :goto_0

    .line 88
    :cond_4
    const-string v1, "com.samsung.nfc.action.LMRT_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const-string v1, "lmrt_result"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$400(Lcom/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I
    invoke-static {}, Lcom/android/settings/nfc/TapAndPaySettings;->access$500()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$000(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/PaymentSettings;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 91
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$000(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/PaymentSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentSettings;->restoreDefaultApp()Z

    goto :goto_0

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$400(Lcom/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I
    invoke-static {}, Lcom/android/settings/nfc/TapAndPaySettings;->access$600()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$200(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/OtherSettings;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings$1;->this$0:Lcom/android/settings/nfc/TapAndPaySettings;

    # getter for: Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;
    invoke-static {v1}, Lcom/android/settings/nfc/TapAndPaySettings;->access$200(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/OtherSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/nfc/OtherSettings;->restoreDefaultOtherApp()Z

    goto/16 :goto_0
.end method
