.class Lcom/android/settings/fmm/SimChangeAlert$4;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 272
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 267
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x12

    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$300(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$300(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$400(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    iget-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Lcom/android/settings/fmm/SimChangeAlert;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e1321

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Lcom/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/settings/fmm/SimChangeAlert;->access$402(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 257
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$400(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$400(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$400(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$400(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
