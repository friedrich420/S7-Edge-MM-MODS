.class public Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mCurrent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;",
            ">;"
        }
    .end annotation
.end field

.field private static mSmartcardAuthProgress:Z


# instance fields
.field private mEntry:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mVerifyPasswordWithCACTask:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "KeyguardSmartcardPINView"

    sput-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;

    .line 90
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSmartcardPINView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    .line 92
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 74
    sput-boolean p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;ZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private verifyPasswordAndUnlock(ZLjava/lang/String;I)V
    .locals 4
    .param p1, "status"    # Z
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "errorMsgId"    # I

    .prologue
    const/4 v3, 0x0

    .line 299
    sput-boolean v3, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    .line 300
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyPasswordAndUnlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyPasswordAndUnlock : KeygueardSmartcardPINView object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 307
    :cond_0
    if-eqz p1, :cond_1

    .line 308
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "verifyPasswordAndUnlock: with mPendingLockCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    new-instance v2, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$2;-><init>(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)V

    invoke-static {v0, p2, v1, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 324
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    sget v0, Lcom/android/keyguard/R$string;->lockscreen_smartcard_invalid_pin:I

    if-ne p3, v0, :cond_2

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p3, v0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->onPasswordChecked(ZIZ)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0, v3, p3, v3}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->onPasswordChecked(ZIZ)V

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    .line 135
    sget-boolean v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    .line 138
    :cond_0
    sget-boolean v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->resetPasswordText(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 147
    return-void
.end method

.method protected onPasswordChecked(ZIZ)V
    .locals 8
    .param p1, "matched"    # Z
    .param p2, "errorMsgId"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 328
    sget-object v1, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPasswordChecked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz p1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-interface {v1, v6, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 332
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 347
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->resetPasswordText(Z)V

    .line 348
    sget-object v1, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v4, "verifyPasswordAndUnlock before setText to empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->getKeepScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p0, v7}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    .line 352
    :cond_0
    return-void

    .line 334
    :cond_1
    if-eqz p3, :cond_3

    .line 336
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-interface {v1, v7, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 337
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 338
    .local v0, "attempts":I
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 340
    .local v2, "deadline":J
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->handleAttemptLockout(J)V

    .line 342
    .end local v2    # "deadline":J
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->getWrongPasswordStringId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_0

    .line 344
    .end local v0    # "attempts":I
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, p2, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-boolean v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_0

    .line 105
    sput-boolean v2, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->cancel(Z)Z

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    .line 111
    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x1

    .line 115
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mSmartcardAuthProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-boolean v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume if loop. mSmartcardAuthProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->onResume(I)V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_instruction:I

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "resetState "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    .line 156
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "verifyPasswordAndUnlock: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    sget-object v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "Using Smartcard(CAC) authentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$1;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    :cond_0
    return-void
.end method
