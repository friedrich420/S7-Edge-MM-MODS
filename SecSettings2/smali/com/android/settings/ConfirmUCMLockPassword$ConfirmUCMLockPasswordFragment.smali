.class public Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.super Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmUCMLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmUCMLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;
    }
.end annotation


# instance fields
.field public MaxLengthFilter:Landroid/text/InputFilter;

.field private external:Z

.field private mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mBlockImm:Z

.field private mContinueButton:Landroid/widget/Button;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mEffectiveUserId:I

.field private mErrorTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNumWrongConfirmAttempts:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordMaxLength:I

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private mUsingFingerprint:Z

.field private mVendorIDView:Landroid/widget/TextView;

.field private mforLockPatternBackupPin:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 127
    iput-boolean v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUsingFingerprint:Z

    .line 132
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    .line 137
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordMaxLength:I

    .line 260
    new-instance v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;-><init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    .line 635
    new-instance v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;-><init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 141
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/CharSequence;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # J

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 109
    iget v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsAlpha:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    return v0
.end method

.method private getDefaultDetails()I
    .locals 3

    .prologue
    .line 280
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    .line 281
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 294
    const v1, 0x7f0e1707

    :goto_0
    return v1

    .line 283
    :pswitch_0
    const v1, 0x7f0e07b6

    goto :goto_0

    .line 285
    :pswitch_1
    const v1, 0x7f0e1705

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f0e1702

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 288
    const v1, 0x7f0e1703

    goto :goto_0

    .line 290
    :pswitch_3
    const v1, 0x7f0e1706

    goto :goto_0

    .line 292
    :pswitch_4
    const v1, 0x7f0e1708

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 276
    const v0, 0x7f0e07b4

    return v0
.end method

.method private getVendorID()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 299
    const-string v5, "com.samsung.ucs.ucsservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 300
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    const/4 v3, 0x0

    .line 301
    .local v3, "vendorID":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 302
    const-string v5, "ConfirmUCMLockPassword"

    const-string v6, "failed to get UCM service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    :goto_0
    return-object v4

    .line 306
    :cond_1
    :try_start_0
    # getter for: Lcom/android/settings/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 307
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 310
    const-string v5, "vendorId"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3

    .line 313
    :cond_2
    const-string v5, "ConfirmUCMLockPassword"

    const-string v6, "NO vendorID info"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    .line 322
    goto :goto_0

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    :try_start_1
    const-string v4, "ConfirmUCMLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vendorID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v3

    .line 318
    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const/4 v1, 0x0

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 562
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    new-instance v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;-><init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 616
    return-void
.end method

.method private handleNext()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 478
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 479
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v4, :cond_0

    .line 480
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v4, v9}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 483
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, "pin":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->next(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v4

    const v5, 0x10004

    if-ne v4, v5, :cond_1

    .line 486
    const-string v4, "ConfirmUCMLockPassword"

    const-string v5, "handle next state DONE  "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 488
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, ""

    .line 489
    .local v2, "password":Ljava/lang/String;
    # getter for: Lcom/android/settings/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/UCMHelpUtils;->generatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 490
    const-string v4, "type"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v4, "password"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 520
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "password":Ljava/lang/String;
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v4

    const v5, 0x10005

    if-ne v4, v5, :cond_2

    .line 496
    const-string v4, "ConfirmUCMLockPassword"

    const-string v5, "handle next state FAIL "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_1
    invoke-static {v9}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    goto :goto_0

    .line 498
    :cond_2
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getErrorState()I

    move-result v0

    .line 499
    .local v0, "errorState":I
    if-nez v0, :cond_3

    .line 500
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 517
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    goto :goto_1

    .line 502
    :cond_3
    const-string v4, "ConfirmUCMLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Chesta : error state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sparse-switch v0, :sswitch_data_0

    .line 514
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 505
    :sswitch_0
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v5, 0x7f0e07b9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 508
    :sswitch_1
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0e0c14

    invoke-virtual {p0, v6}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0e1701

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 511
    :sswitch_2
    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v5, 0x7f0e1704

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 503
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x10006 -> :sswitch_0
    .end sparse-switch
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 439
    iget-boolean v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getErrorState()I

    move-result v0

    const v1, 0x10006

    if-eq v0, v1, :cond_2

    .line 441
    const-string v0, "ConfirmUCMLockPassword"

    const-string v1, "resetState set the passwordentry as null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 448
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 449
    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private showError(Ljava/lang/CharSequence;J)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "timeout"    # J

    .prologue
    .line 649
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .line 650
    .local v2, "storedQuality":I
    const/high16 v3, 0x40000

    if-eq v3, v2, :cond_0

    const/high16 v3, 0x50000

    if-eq v3, v2, :cond_0

    const/high16 v3, 0x60000

    if-ne v3, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 653
    .local v1, "isAlpha":Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e07b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "headerText":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 661
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1

    .line 662
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 664
    :cond_1
    return-void

    .line 650
    .end local v0    # "headerText":Ljava/lang/String;
    .end local v1    # "isAlpha":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 653
    .restart local v1    # "isAlpha":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e07b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 543
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 692
    return-void

    .line 690
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected authenticationSucceeded()V
    .locals 1

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 684
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 385
    const/16 v0, 0x1e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 629
    :goto_0
    return-void

    .line 621
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 625
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x7f0d00fb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mEffectiveUserId:I

    .line 149
    # setter for: Lcom/android/settings/ConfirmUCMLockPassword;->mFromPersonalPage:Z
    invoke-static {v3}, Lcom/android/settings/ConfirmUCMLockPassword;->access$002(Z)Z

    .line 150
    const/4 v1, 0x1

    # setter for: Lcom/android/settings/ConfirmUCMLockPassword;->mPersonalPage_isPin:Z
    invoke-static {v1}, Lcom/android/settings/ConfirmUCMLockPassword;->access$102(Z)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.ucscredentialstoragenameuri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/ConfirmUCMLockPassword;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forLockPatternBackupPin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 156
    .local v0, "LockPatternBackupPin":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 157
    iput-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    .line 160
    :cond_0
    if-eqz p1, :cond_1

    .line 161
    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 164
    :cond_1
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState()V

    .line 165
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v14

    .line 172
    .local v14, "storedQuality":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 173
    .local v13, "intent":Landroid/content/Intent;
    const/4 v15, 0x0

    .line 174
    .local v15, "view":Landroid/view/View;
    if-eqz v13, :cond_0

    .line 175
    const-string v2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->external:Z

    .line 181
    :cond_0
    const v2, 0x7f040063

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 182
    const v2, 0x7f0d00fb

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v2, 0x7f0d00fc

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    const v2, 0x7f0d00f9

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 191
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordMaxLength:I

    if-lez v2, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordMaxLength:I

    .line 193
    .local v9, "MaxLength":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 195
    .end local v9    # "MaxLength":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 197
    new-instance v2, Lcom/android/internal/widget/TextViewInputDisabler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 198
    const v2, 0x7f0d00f8

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 199
    const v2, 0x7f0d011e

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 201
    const v2, 0x7f0d0122

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    const/high16 v2, 0x40000

    if-eq v2, v14, :cond_2

    const/high16 v2, 0x50000

    if-eq v2, v14, :cond_2

    const/high16 v2, 0x60000

    if-ne v2, v14, :cond_6

    :cond_2
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsAlpha:Z

    .line 218
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsAlpha:Z

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 223
    if-eqz v13, :cond_5

    .line 224
    const-string v2, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 226
    .local v12, "headerMessage":Ljava/lang/CharSequence;
    const-string v2, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 228
    .local v11, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultHeader()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 231
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 234
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .end local v11    # "detailsMessage":Ljava/lang/CharSequence;
    .end local v12    # "headerMessage":Ljava/lang/CharSequence;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getVendorID()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/ConfirmUCMLockPassword;->vendorID:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/ConfirmUCMLockPassword;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    # getter for: Lcom/android/settings/ConfirmUCMLockPassword;->vendorID:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    # getter for: Lcom/android/settings/ConfirmUCMLockPassword;->vendorID:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    # getter for: Lcom/android/settings/ConfirmUCMLockPassword;->vendorID:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v10

    .line 247
    .local v10, "currentType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsAlpha:Z

    if-eqz v3, :cond_8

    .end local v10    # "currentType":I
    :goto_2
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setInputType(I)V

    .line 249
    new-instance v2, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0xdc

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v16, 0x10c000e

    move/from16 v0, v16

    invoke-static {v8, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 253
    new-instance v2, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x6e

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v16, 0x10c000f

    move/from16 v0, v16

    invoke-static {v8, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 258
    return-object v15

    .line 204
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 243
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 247
    .restart local v10    # "currentType":I
    :cond_8
    const/16 v10, 0x12

    goto :goto_2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 673
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 676
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleNext()V

    .line 677
    const/4 v0, 0x1

    .line 679
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUsingFingerprint:Z

    .line 436
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 373
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 375
    iput-object v2, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 379
    iput-object v2, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 381
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 390
    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 391
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 392
    .local v0, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 393
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleAttemptLockout(J)V

    .line 398
    :goto_0
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState()V

    .line 400
    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getErrorState()I

    move-result v2

    .line 401
    .local v2, "errorState":I
    if-nez v2, :cond_1

    .line 402
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 419
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    .line 420
    return-void

    .line 395
    .end local v2    # "errorState":I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    goto :goto_0

    .line 404
    .restart local v2    # "errorState":I
    :cond_1
    const-string v3, "ConfirmUCMLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chesta : error state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sparse-switch v2, :sswitch_data_0

    .line 416
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 407
    :sswitch_0
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v4, 0x7f0e07b9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 410
    :sswitch_1
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0e0c14

    invoke-virtual {p0, v5}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0e1701

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 413
    :sswitch_2
    iget-object v3, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v4, 0x7f0e1704

    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 405
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x10006 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 687
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 459
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;-><init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
