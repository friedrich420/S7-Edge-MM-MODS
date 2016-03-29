.class Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$2;
.super Ljava/lang/Object;
.source "FingerprintSamsungAccountDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 75
    const-string v0, "FpstFingerprintSamsungAccountDialog"

    const-string v1, "PositiveButton Click"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->listener:Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;->access$000(Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog;)Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintSamsungAccountDialog$SamsungAccountDialogFragmentListener;->onStartDisclaimerFromSamsungAccountDialog()V

    .line 77
    return-void
.end method
