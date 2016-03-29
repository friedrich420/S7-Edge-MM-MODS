.class Lcom/android/settings/DeviceNameSettings$1;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceNameSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceNameSettings;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 147
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 139
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/DeviceNameSettings;->access$402(Lcom/android/settings/DeviceNameSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$000(Lcom/android/settings/DeviceNameSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # setter for: Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z
    invoke-static {v1, v4}, Lcom/android/settings/DeviceNameSettings;->access$002(Lcom/android/settings/DeviceNameSettings;Z)Z

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v1, ""

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$100(Lcom/android/settings/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_3

    .line 101
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mTextInputLayoutId:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-virtual {v2}, Lcom/android/settings/DeviceNameSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 104
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$400(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$100(Lcom/android/settings/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :cond_4
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$400(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$400(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_8

    .line 110
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # setter for: Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z
    invoke-static {v1, v5}, Lcom/android/settings/DeviceNameSettings;->access$002(Lcom/android/settings/DeviceNameSettings;Z)Z

    .line 111
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/DeviceNameSettings;->access$400(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # setter for: Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z
    invoke-static {v1, v4}, Lcom/android/settings/DeviceNameSettings;->access$002(Lcom/android/settings/DeviceNameSettings;Z)Z

    .line 118
    :goto_2
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mTextInputLayoutId:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->isErrorEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 119
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mTextInputLayoutId:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mDeviceNameScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$500(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/ScrollView;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DeviceNameSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DeviceNameSettings$1$1;-><init>(Lcom/android/settings/DeviceNameSettings$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 126
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mTextInputLayoutId:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    const v3, 0x7f0e0406

    invoke-virtual {v2, v3}, Lcom/android/settings/DeviceNameSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 128
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/DeviceNameSettings;->access$400(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    .line 129
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # setter for: Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z
    invoke-static {v1, v5}, Lcom/android/settings/DeviceNameSettings;->access$002(Lcom/android/settings/DeviceNameSettings;Z)Z

    .line 130
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # setter for: Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z
    invoke-static {v1, v4}, Lcom/android/settings/DeviceNameSettings;->access$002(Lcom/android/settings/DeviceNameSettings;Z)Z

    .line 133
    :cond_6
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 98
    :cond_7
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$100(Lcom/android/settings/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 114
    :cond_8
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # setter for: Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z
    invoke-static {v1, v5}, Lcom/android/settings/DeviceNameSettings;->access$002(Lcom/android/settings/DeviceNameSettings;Z)Z

    .line 115
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # getter for: Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/DeviceNameSettings;->access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    # setter for: Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z
    invoke-static {v1, v4}, Lcom/android/settings/DeviceNameSettings;->access$002(Lcom/android/settings/DeviceNameSettings;Z)Z

    goto/16 :goto_2
.end method
