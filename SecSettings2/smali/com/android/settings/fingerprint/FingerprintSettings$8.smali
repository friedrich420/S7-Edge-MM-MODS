.class Lcom/android/settings/fingerprint/FingerprintSettings$8;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;->renameFingerPrint(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$1602(Lcom/android/settings/fingerprint/FingerprintSettings;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 1656
    return-void
.end method

.method public onPositiveClick()V
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->updatePreferences()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$1500(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    .line 1645
    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    .prologue
    .line 1638
    return-void
.end method
