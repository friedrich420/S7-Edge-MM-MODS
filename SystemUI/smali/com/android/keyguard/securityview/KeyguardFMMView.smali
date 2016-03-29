.class public Lcom/android/keyguard/securityview/KeyguardFMMView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardFMMView.java"


# static fields
.field private static final DEBUG_SECURE:Z


# instance fields
.field private mFMMCallButton:Landroid/widget/ImageButton;

.field private mFMMPhoneNumber:Ljava/lang/String;

.field private mFMMTitle:Landroid/widget/TextView;

.field private mOwnerContactInfo:Landroid/widget/TextView;

.field private mOwnerMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG_SECURE:Z

    sput-boolean v0, Lcom/android/keyguard/securityview/KeyguardFMMView;->DEBUG_SECURE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardFMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardFMMView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardFMMView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardFMMView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardFMMView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardFMMView;)Lcom/android/keyguard/PasswordTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardFMMView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardFMMView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardFMMView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/securityview/KeyguardFMMView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardFMMView;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private setFMMInfo()V
    .locals 5

    .prologue
    .line 144
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_phone_locked:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/securityview/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMTitle:Landroid/widget/TextView;

    .line 145
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_message:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/securityview/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    .line 146
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_owner_phone_num:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/securityview/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    .line 147
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_emergency_btn:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/securityview/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMCallButton:Landroid/widget/ImageButton;

    .line 148
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMTitle:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_fmm_Message"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "fmmMessage":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 156
    const-string v2, "\\r\\n|\\r|\\n"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_fmm_phone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->keyguard_fmm_owner_phone:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "fmmOwnerContact":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_3
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/keyguard/R$id;->fmmEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 1
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;->handleAttemptLockout(J)V

    .line 125
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 63
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardFMMView;->setFMMInfo()V

    .line 67
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 70
    .local v1, "isVoiceCapacity":Z
    const/4 v0, 0x0

    .line 71
    .local v0, "disableCallButton":Z
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x1

    .line 74
    :cond_1
    const-string v3, "KeyguardFMMView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoiceCapacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disableCallButton = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 77
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 79
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMCallButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/keyguard/securityview/KeyguardFMMView$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/securityview/KeyguardFMMView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardFMMView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :goto_0
    sget v3, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/securityview/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "ok":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 100
    new-instance v3, Lcom/android/keyguard/securityview/KeyguardFMMView$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/securityview/KeyguardFMMView$2;-><init>(Lcom/android/keyguard/securityview/KeyguardFMMView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_2
    return-void

    .line 94
    .end local v2    # "ok":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mFMMCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPasswordChecked(ZIZ)V
    .locals 8
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 202
    if-eqz p1, :cond_1

    .line 203
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.SEND_SMS"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 208
    const-string v4, "KeyguardFMMView"

    const-string v5, "send Broadcast (UNLOCK_FMM_ALERT_ACTION)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v6, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 211
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/keyguard/securityview/KeyguardFMMView;->resetPasswordText(Z)V

    .line 227
    return-void

    .line 213
    :cond_1
    if-eqz p3, :cond_3

    .line 214
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v7, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 215
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 216
    .local v0, "attempts":I
    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    const/16 v4, 0x9

    if-le v0, v4, :cond_3

    .line 217
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 219
    .local v2, "deadline":J
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/securityview/KeyguardFMMView;->handleAttemptLockout(J)V

    .line 222
    .end local v0    # "attempts":I
    .end local v2    # "deadline":J
    :cond_3
    if-nez p2, :cond_0

    .line 223
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onPause()V

    .line 140
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardFMMView;->setFMMInfo()V

    .line 141
    return-void
.end method

.method protected resetState()V
    .locals 4

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->resetState()V

    .line 114
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardFMMView;->setFMMInfo()V

    .line 115
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 117
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/securityview/KeyguardFMMView;->handleAttemptLockout(J)V

    .line 120
    :cond_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardFMMView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/keyguard/securityview/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/securityview/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    .line 179
    invoke-virtual {p0, v4, v4, v4}, Lcom/android/keyguard/securityview/KeyguardFMMView;->onPasswordChecked(ZIZ)V

    .line 198
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-boolean v1, Lcom/android/keyguard/securityview/KeyguardFMMView;->DEBUG_SECURE:Z

    if-eqz v1, :cond_2

    const-string v1, "KeyguardFMMView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock(entry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardFMMView$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/securityview/KeyguardFMMView$3;-><init>(Lcom/android/keyguard/securityview/KeyguardFMMView;)V

    invoke-static {v1, v4, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0
.end method
