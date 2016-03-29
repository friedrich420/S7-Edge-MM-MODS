.class public Lcom/android/settings/CryptKeeperInterstitial;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CryptKeeperInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChangePWButton:Landroid/widget/Button;

.field private mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mEncryptionMessage:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordRequired:Z

.field private mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mSelectOptionLayout:Landroid/widget/LinearLayout;

.field private ucmPasswordcsName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v2, 0x1

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 268
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 270
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 277
    :goto_0
    return v2

    :cond_0
    const v3, 0x7f0e022f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private setRequirePasswordState(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    .line 230
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 231
    iget-object v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 235
    .local v1, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v0

    .line 236
    .local v0, "resultIntentData":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 237
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .restart local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsActivity;->setResultIntentData(Landroid/content/Intent;)V

    .line 240
    :cond_0
    const-string v2, "extra_require_password"

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    return-void

    .line 231
    .end local v0    # "resultIntentData":Landroid/content/Intent;
    .end local v1    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v3, "CryptKeeperInterstitial"

    const-string v4, "change encryption password"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 306
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 307
    const-string v3, "CryptKeeperInterstitial"

    const-string v4, "Could not find the mount service to update the encryption password"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 313
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CryptKeeperInterstitial"

    const-string v4, "Error changing encryption password"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x30

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 283
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 284
    const/16 v2, 0x37

    if-eq p1, v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    .line 291
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 292
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_2

    const-string v2, "type"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, "type":I
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_3

    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "password":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/settings/CryptKeeperInterstitial;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0

    .line 292
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 295
    .restart local v1    # "type":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 245
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    iget-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 161
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->runKeyguardConfirmation(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const-string v1, "CryptKeeperInterstitial"

    const-string v2, "Alert::Keyguard confirmation failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-ne p1, v1, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 166
    .local v0, "accEn":Z
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-nez v1, :cond_2

    .line 167
    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeperInterstitial;->showDialog(I)V

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto :goto_1

    .line 175
    .end local v0    # "accEn":Z
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 183
    packed-switch p1, :pswitch_data_0

    .line 224
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 185
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    .line 188
    .local v3, "quality":I
    sparse-switch v3, :sswitch_data_0

    .line 199
    const v4, 0x7f0e0ebd

    .line 200
    .local v4, "titleId":I
    const v2, 0x7f0e0ec0

    .line 204
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 209
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    const-string v0, ""

    .line 216
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {p0, v2, v6}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 190
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_0
    const v4, 0x7f0e0ebc

    .line 191
    .restart local v4    # "titleId":I
    const v2, 0x7f0e0ebf

    .line 192
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 195
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_1
    const v4, 0x7f0e0ebb

    .line 196
    .restart local v4    # "titleId":I
    const v2, 0x7f0e0ebe

    .line 197
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 213
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    const v0, 0x7f040073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string v1, "selected_button"

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    const v6, 0x7f0d0140

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    iput-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    .line 95
    const v6, 0x7f0d0141

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    iput-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    .line 97
    const v6, 0x7f0d013e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    .line 99
    const v6, 0x7f0d0142

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    .line 100
    const v6, 0x7f0d013f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    .line 101
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v9, "for_fingerprint"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 105
    .local v2, "forFingerprint":Z
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    .line 110
    .local v4, "quality":I
    packed-switch v4, :pswitch_data_0

    .line 120
    const v1, 0x7f0e0eb3

    .line 121
    .local v1, "enableId":I
    const v0, 0x7f0e0eb7

    .line 122
    .local v0, "disableId":I
    const v3, 0x7f0e0eaa

    .line 125
    .local v3, "msgId":I
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 129
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 132
    if-eqz p2, :cond_4

    .line 133
    const-string v6, "selected_button"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v5, v7

    .line 134
    .local v5, "value":Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 135
    iget-object v9, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-nez v5, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 136
    invoke-direct {p0, v5}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 141
    .end local v5    # "value":Z
    :goto_2
    const-string v6, "persist.keyguard.ucs.csname"

    const-string v9, "none"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    .line 142
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    const-string v9, "none"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 143
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 144
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 145
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 146
    invoke-direct {p0, v8}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 149
    :cond_0
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 151
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 152
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 153
    invoke-direct {p0, v7}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 156
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    :cond_1
    :goto_3
    return-void

    .line 112
    .end local v3    # "msgId":I
    :pswitch_0
    const v3, 0x7f0e0eab

    .line 113
    .restart local v3    # "msgId":I
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .restart local v0    # "disableId":I
    .restart local v1    # "enableId":I
    :cond_2
    move v5, v8

    .line 133
    goto :goto_0

    .restart local v5    # "value":Z
    :cond_3
    move v6, v8

    .line 135
    goto :goto_1

    .line 138
    .end local v5    # "value":Z
    :cond_4
    iget-object v6, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto :goto_2

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
