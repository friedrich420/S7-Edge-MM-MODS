.class Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$1;
.super Ljava/lang/Object;
.source "FingerprintWebSigninDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 85
    const-string v0, "FpstFingerprintWebSigninDialog"

    const-string v1, "NegativeButton Click"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->access$000(Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;)Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->listener:Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;->access$000(Lcom/android/settings/fingerprint/FingerprintWebSigninDialog;)Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintWebSigninDialog$PopupDialogFragmentListener;->onCancelWebSigninDialog()V

    .line 89
    :cond_0
    return-void
.end method
