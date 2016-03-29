.class public Lcom/android/settings/DeviceNameSettings;
.super Landroid/app/DialogFragment;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeviceNameScrollView:Landroid/widget/ScrollView;

.field private mEditText:Landroid/widget/EditText;

.field private mResetTextAction:Z

.field private mTempName:Ljava/lang/String;

.field private mTextInputLayoutId:Landroid/support/design/widget/TextInputLayout;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceNameSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameSettings;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/DeviceNameSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DeviceNameSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings/DeviceNameSettings;->mResetTextAction:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceNameSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DeviceNameSettings;)Landroid/support/design/widget/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mTextInputLayoutId:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DeviceNameSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/DeviceNameSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DeviceNameSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/DeviceNameSettings;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mDeviceNameScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 155
    .local v3, "res":Landroid/content/ContentResolver;
    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "deviceName":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/settings/DeviceNameSettings;->mTempName:Ljava/lang/String;

    .line 157
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mView:Landroid/view/View;

    const v5, 0x7f0d01ea

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mDeviceNameScrollView:Landroid/widget/ScrollView;

    .line 158
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mView:Landroid/view/View;

    const v5, 0x7f0d01ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TextInputLayout;

    iput-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mTextInputLayoutId:Landroid/support/design/widget/TextInputLayout;

    .line 159
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mTextInputLayoutId:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    .line 160
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 169
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 170
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/android/settings/DeviceNameSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/DeviceNameSettings$2;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 180
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    const-string v5, "disableAutoReplacement=true"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    const-string v5, "disableEmoticonInput=true"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "maxLength"

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/DeviceNameSettings;->showInputMethod()V

    .line 185
    return-void

    .line 164
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "DeviceNameSettings"

    const-string v5, "Caught Exception setSelection"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/android/settings/DeviceNameSettings;
    .locals 3
    .param p0, "title"    # I

    .prologue
    .line 67
    new-instance v1, Lcom/android/settings/DeviceNameSettings;

    invoke-direct {v1}, Lcom/android/settings/DeviceNameSettings;-><init>()V

    .line 68
    .local v1, "frag":Lcom/android/settings/DeviceNameSettings;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceNameSettings;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 216
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameSettings$3;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameSettings$4;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 194
    packed-switch p2, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 196
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameSettings;->saveToDb()V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    .line 204
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;->onNegativeClick()V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400b2

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mView:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceNameSettings;->initView(Landroid/view/View;)V

    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceNameSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0f74

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 86
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameSettings$1;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 261
    const-string v1, "DeviceNameSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 263
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;->onDismiss()V

    .line 268
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 269
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 245
    invoke-direct {p0}, Lcom/android/settings/DeviceNameSettings;->showInputMethod()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameSettings$5;-><init>(Lcom/android/settings/DeviceNameSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 256
    return-void
.end method

.method saveToDb()V
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 274
    .local v1, "res":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    const-string v2, "device_name"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    :cond_0
    return-void
.end method

.method public setConfirmationDialogFragmentListener(Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings/DeviceNameSettings;->listener:Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;

    .line 190
    return-void
.end method
