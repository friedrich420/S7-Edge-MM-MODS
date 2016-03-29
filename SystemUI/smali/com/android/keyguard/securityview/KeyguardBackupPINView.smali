.class public Lcom/android/keyguard/securityview/KeyguardBackupPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardBackupPINView.java"


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mDivider:Landroid/view/View;

.field private mEcaButton:Landroid/view/View;

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mIsUnlockSuccess:Z

.field private mKeyguardBouncerFrame:Landroid/view/ViewGroup;

.field private mPasswordTimeTick:I

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mPasswordTimeTick:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 102
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 103
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setMaxLength(I)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardBackupPINView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPINView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->setPasswordEntryInputEnabled(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/securityview/KeyguardBackupPINView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPINView;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardBackupPINView;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardBackupPINView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->onPasswordChecked(ZIZ)V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 1
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->handleAttemptLockout(J)V

    .line 133
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "KeyguardBackupPINView"

    const-string v1, "mCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedStrongAuthUnlockAttempt()V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 253
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 144
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    .line 145
    sget v0, Lcom/android/keyguard/R$id;->row0:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mRow0:Landroid/view/ViewGroup;

    .line 146
    sget v0, Lcom/android/keyguard/R$id;->row1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mRow1:Landroid/view/ViewGroup;

    .line 147
    sget v0, Lcom/android/keyguard/R$id;->row2:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mRow2:Landroid/view/ViewGroup;

    .line 148
    sget v0, Lcom/android/keyguard/R$id;->row3:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mRow3:Landroid/view/ViewGroup;

    .line 149
    sget v0, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mDivider:Landroid/view/View;

    .line 150
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mEcaButton:Landroid/view/View;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 156
    new-instance v0, Lcom/android/keyguard/util/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/keyguard/util/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 157
    return-void
.end method

.method protected resetState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 107
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 108
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 109
    .local v0, "attempts":I
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v1

    .line 110
    .local v1, "remainingAttemptsBeforeWipe":I
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    if-le v0, v4, :cond_2

    if-lez v1, :cond_2

    .line 112
    if-ne v1, v8, :cond_1

    .line 113
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->kg_backup_pin_instructions:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 122
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 124
    .local v2, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 125
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->handleAttemptLockout(J)V

    .line 127
    :cond_0
    return-void

    .line 116
    .end local v2    # "deadline":J
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_backup_pin_instructions:I

    sget v6, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    invoke-virtual {v4, v5, v6, v1, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IIIZ)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v5, Lcom/android/keyguard/R$string;->kg_backup_pin_instructions:I

    invoke-virtual {v4, v5, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 262
    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string v1, "KeyguardBackupPINView"

    const-string v2, "verifyPasswordAndUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->setPasswordEntryInputEnabled(Z)V

    .line 190
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 194
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 197
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->setPasswordEntryInputEnabled(Z)V

    .line 198
    invoke-virtual {p0, v3, v3, v3}, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->onPasswordChecked(ZIZ)V

    .line 214
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardBackupPINView$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/securityview/KeyguardBackupPINView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardBackupPINView;)V

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkBackupPin(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0
.end method
