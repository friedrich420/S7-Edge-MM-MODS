.class public Lcom/android/keyguard/securityview/KeyguardSimPersoView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;
    }
.end annotation


# static fields
.field private static mNumRetry:I


# instance fields
.field private mCheckSimPersoThread:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

.field private volatile mSimCheckInProgress:Z

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mNumRetry:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimCheckInProgress:Z

    .line 55
    new-instance v1, Lcom/android/keyguard/securityview/KeyguardSimPersoView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)V

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 69
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->getSimPersoLockPasswordLength()I

    move-result v0

    .line 70
    .local v0, "maxLen":I
    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setMaxLength(I)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->resetPasswordText(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimCheckInProgress:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;)Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;
    .param p1, "x1"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    return-object p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mNumRetry:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 42
    sput p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mNumRetry:I

    return p0
.end method

.method static synthetic access$204()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mNumRetry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mNumRetry:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSubId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/securityview/KeyguardSimPersoView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSimPersoView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method private getSimIconResId()I
    .locals 1

    .prologue
    .line 282
    sget v0, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim:I

    return v0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_kor_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/android/keyguard/R$id;->simPersoEntry:I

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 112
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 118
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 131
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 75
    const-string v0, "KeyguardSimPersoView"

    const-string v1, "Resetting state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSubId:I

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getSimIconResId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v1, Lcom/android/keyguard/R$string;->kg_ktt_sim_perso_instructions:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 83
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 184
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "entry":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isUseKTTSimText()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mNumRetry:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 187
    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->resetPasswordText(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_perso_max_failed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 189
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getSimIconResId()I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 195
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v2, Lcom/android/keyguard/R$string;->kg_empty_sim_perso_hint:I

    invoke-virtual {v1, v2, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 196
    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->resetPasswordText(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 201
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getSimIconResId()I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 205
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v2, Lcom/android/keyguard/R$string;->kg_ktt_sim_perso_instructions:I

    invoke-virtual {v1, v2, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 206
    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->resetPasswordText(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0

    .line 211
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 213
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->getPasswordText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/securityview/KeyguardSimPersoView$2;-><init>(Lcom/android/keyguard/securityview/KeyguardSimPersoView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    .line 264
    iget-boolean v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimCheckInProgress:Z

    if-nez v1, :cond_0

    .line 265
    iput-boolean v4, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mSimCheckInProgress:Z

    .line 266
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;

    invoke-virtual {v1}, Lcom/android/keyguard/securityview/KeyguardSimPersoView$CheckSimPerso;->start()V

    goto :goto_0
.end method
