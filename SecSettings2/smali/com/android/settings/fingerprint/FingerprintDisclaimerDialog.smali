.class public Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintDisclaimerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field isAlipayInstalled:Z

.field isFidoInstalled:Z

.field isKioskMode:Z

.field isSamsungpayInstalled:Z

.field isSbrowserInstalled:Z

.field private listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDoNotShow:Landroid/widget/CheckBox;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isFidoInstalled:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSbrowserInstalled:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isAlipayInstalled:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSamsungpayInstalled:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isKioskMode:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

    return-object v0
.end method

.method private makeFingerPrintDescString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSbrowserInstalled:Z

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isAlipayInstalled:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.samsungpay"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.spay"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSamsungpayInstalled:Z

    .line 177
    const-string v0, "&#8226 "

    .line 179
    .local v0, "bullet":Ljava/lang/String;
    const-string v1, ""

    .line 180
    .local v1, "s":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isKioskMode:Z

    if-nez v2, :cond_0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e11ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSbrowserInstalled:Z

    if-eqz v2, :cond_1

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e1209

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e120f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSamsungpayInstalled:Z

    if-eqz v2, :cond_2

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e14a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isAlipayInstalled:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e122e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_3
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 143
    const-string v0, "FpstFingerprintDisclaimerDialog"

    const-string v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;->onCanceDisclaimerDialog()V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 70
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 79
    const-string v8, "FpstFingerprintDisclaimerDialog"

    const-string v9, "onCreateDialog"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 84
    .local v1, "dialogLayout":Landroid/view/LayoutInflater;
    if-nez v1, :cond_0

    .line 85
    const-string v8, "FpstFingerprintDisclaimerDialog"

    const-string v9, "onCreateDialog: dialogLayout is null!!"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return-object v7

    .line 89
    :cond_0
    const v8, 0x7f0400d3

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    const v7, 0x7f0d01ef

    :try_start_0
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mDoNotShow:Landroid/widget/CheckBox;

    .line 94
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mDoNotShow:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$1;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    const v7, 0x7f0d029a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 105
    .local v4, "mMessage":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->makeFingerPrintDescString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const-string v7, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 108
    const v7, 0x7f0d029b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 109
    .local v5, "mVZWDisclaimer":Landroid/widget/TextView;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v7

    if-nez v7, :cond_1

    .line 110
    const v7, 0x7f0e14a6

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 112
    const v7, 0x7f0d0299

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 113
    .local v6, "mVzwDisclaimerMsg":Landroid/widget/TextView;
    const v7, 0x7f0e14a4

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .end local v6    # "mVzwDisclaimerMsg":Landroid/widget/TextView;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    .end local v5    # "mVZWDisclaimer":Landroid/widget/TextView;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0e11de

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v7, 0x7f0e1499

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 134
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 100
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "mMessage":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "FpstFingerprintDisclaimerDialog"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 150
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 155
    return-void
.end method

.method public setPreferences(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
