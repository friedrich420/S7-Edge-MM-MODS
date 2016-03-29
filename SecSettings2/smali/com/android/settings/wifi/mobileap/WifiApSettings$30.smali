.class Lcom/android/settings/wifi/mobileap/WifiApSettings$30;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 2400
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$5400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 2428
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2422
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 2423
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$5302(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 2424
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v1, 0x3f

    .line 2402
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_3

    .line 2403
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$5300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$5300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 2405
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempPassworld:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$5300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2410
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTextInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTextInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 2412
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTextInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0406

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 2414
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2419
    :cond_1
    :goto_1
    return-void

    .line 2407
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2415
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-ge v0, v1, :cond_1

    .line 2416
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTextInputLayoutPassword:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 2417
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method
