.class Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;
.super Ljava/lang/Object;
.source "FingerPrintRenameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mIsMaxRename:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$200(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mIsMaxRename:Z
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$202(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;Z)Z

    .line 143
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$300(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, "mContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$400(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$300(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    .end local v0    # "mContext":Landroid/content/Context;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$300(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    .restart local v0    # "mContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$400(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$300(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mIsMaxRename:Z
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$202(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    .end local v0    # "mContext":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 137
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, -0x1

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$000(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$100(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$100(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
