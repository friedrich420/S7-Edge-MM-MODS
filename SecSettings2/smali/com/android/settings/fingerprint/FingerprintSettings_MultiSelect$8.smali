.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->renameFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$1102(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 805
    return-void
.end method

.method public onPositiveClick()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishSelectMode()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$400(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 795
    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method
