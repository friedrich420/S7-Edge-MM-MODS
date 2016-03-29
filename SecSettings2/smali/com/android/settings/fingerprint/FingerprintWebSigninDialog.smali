.class public Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintWebSigninDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;)Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 101
    const-string v0, "FpstFingerprintWebSigninDialog"

    const-string v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;->onCancelWebSigninDialog()V

    .line 105
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 49
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_websignin_noti"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const-string v1, "FpstFingerprintWebSigninDialog"

    const-string v2, "onCreateDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v0, ""

    .line 65
    .local v0, "webDescription":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e120a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n1. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e120b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n2. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e120c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n3. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e120d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e1209

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 92
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "FpstFingerprintWebSigninDialog"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 110
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 115
    return-void
.end method
