.class public Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintSamsungAccountDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;)Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->listener:Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 96
    const-string v0, "FpstFingerprintSamsungAccountDialog"

    const-string v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->listener:Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;->onCancelSamsungAccountDialog()V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->context:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 56
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_samsungaccount_noti"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const-string v0, "FpstFingerprintSamsungAccountDialog"

    const-string v1, "onCreateDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e120f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e1210

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 87
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "FpstFingerprintSamsungAccountDialog"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 103
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 108
    return-void
.end method
