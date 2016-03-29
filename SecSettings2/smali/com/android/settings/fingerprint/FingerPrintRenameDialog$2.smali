.class Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "FingerPrintRenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 167
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .local v0, "rst":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mIsMaxRename:Z
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$202(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;Z)Z

    .line 171
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$400(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_0
    return-object v0
.end method
