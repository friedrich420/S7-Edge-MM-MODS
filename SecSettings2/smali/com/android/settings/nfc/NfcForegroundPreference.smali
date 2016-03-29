.class public Lcom/android/settings/nfc/NfcForegroundPreference;
.super Lcom/android/settings/DropDownPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# instance fields
.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/nfc/PaymentBackend;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 29
    invoke-virtual {p0, p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    .line 31
    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method refresh()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 34
    iget-object v4, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 35
    .local v0, "defaultApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v4, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v3

    .line 36
    .local v3, "foregroundMode":Z
    invoke-virtual {p0, v8}, Lcom/android/settings/nfc/NfcForegroundPreference;->setPersistent(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0d4c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->clearItems()V

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0d4e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "favorOpen":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0d50

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "favorDefault":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/nfc/NfcForegroundPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/nfc/NfcForegroundPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    if-eqz v3, :cond_1

    .line 51
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/NfcForegroundPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 55
    :goto_1
    return-void

    .line 45
    .end local v1    # "favorDefault":Ljava/lang/CharSequence;
    .end local v2    # "favorOpen":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0d4d

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .restart local v2    # "favorOpen":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0d4f

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "favorDefault":Ljava/lang/CharSequence;
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/NfcForegroundPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_1
.end method
