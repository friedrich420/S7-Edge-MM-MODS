.class Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;
.super Ljava/lang/Object;
.source "FingerprintDisclaimerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;

    const-string v1, "fingerprint_disclaimer_noti"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->setPreferences(Ljava/lang/String;Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->access$000(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;->startDisclaimerFromRegister()V

    .line 129
    return-void
.end method
