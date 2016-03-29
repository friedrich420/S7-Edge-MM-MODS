.class Lcom/android/settings/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserInfoController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "e"    # Landroid/text/Editable;

    .prologue
    .line 160
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 153
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    # getter for: Lcom/android/settings/users/EditUserInfoController;->USER_NAME_MAX_LENGTH:I
    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->access$000()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/users/EditUserInfoController;->prevText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/users/EditUserInfoController;->access$102(Lcom/android/settings/users/EditUserInfoController;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    const/4 v8, 0x0

    .line 136
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 137
    .local v1, "userName":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    # getter for: Lcom/android/settings/users/EditUserInfoController;->USER_NAME_MAX_LENGTH:I
    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->access$000()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    # getter for: Lcom/android/settings/users/EditUserInfoController;->USER_NAME_MAX_LENGTH:I
    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->access$000()I

    move-result v3

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0406

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    # getter for: Lcom/android/settings/users/EditUserInfoController;->USER_NAME_MAX_LENGTH:I
    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->access$000()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    .line 142
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 146
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 148
    :cond_1
    return-void

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
