.class public Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final DEBUG:Ljava/lang/Boolean;


# instance fields
.field private countryCode:Ljava/lang/String;

.field private deadline:J

.field imm:Landroid/view/inputmethod/InputMethodManager;

.field private mBackupPin:Landroid/widget/EditText;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFailedAttempts:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mOk:Landroid/widget/Button;

.field protected mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->deadline:J

    .line 73
    iput v2, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mFailedAttempts:I

    .line 250
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$4;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 95
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 99
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->onPasswordChecked(ZIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method private getCarrierLockoutAttemptDeadline(I)J
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 374
    const-string v6, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v6, v4, v5, p1}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 375
    .local v0, "deadline":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 376
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    move-wide v0, v4

    .line 379
    .end local v0    # "deadline":J
    :cond_0
    return-wide v0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    .line 342
    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 344
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 346
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 352
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 354
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 353
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 354
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 323
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$5;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 338
    return-void
.end method

.method private onPasswordChecked(ZIZ)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    .line 232
    sget-object v1, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardCarrierPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    if-eqz p1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.FindingLostPhonePlus.RELEASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "IntentForDM":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MASTER_CLEAR"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 248
    .end local v0    # "IntentForDM":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 241
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mFailedAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mFailedAttempts:I

    .line 243
    iget v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mFailedAttempts:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 244
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->setCarrierLockoutAttemptDeadline(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->deadline:J

    .line 245
    iget-wide v2, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    goto :goto_0
.end method

.method private setCarrierLockoutAttemptDeadline(I)J
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long v0, v2, v4

    .line 369
    .local v0, "deadline":J
    const-string v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->setLong(Ljava/lang/String;JI)V

    .line 370
    return-wide v0
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 360
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 363
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "KeyguardCarrierPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 212
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    new-instance v4, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$3;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 229
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 160
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 163
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->verifyPasswordAndUnlock()V

    .line 208
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    if-nez p3, :cond_3

    if-eqz p2, :cond_0

    const/4 v4, 0x6

    if-eq p2, v4, :cond_0

    const/4 v4, 0x5

    if-ne p2, v4, :cond_3

    :cond_0
    move v1, v3

    .line 299
    .local v1, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    move v0, v3

    .line 302
    .local v0, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->verifyPasswordAndUnlock()V

    move v2, v3

    .line 307
    :cond_2
    return v2

    .end local v0    # "isKeyboardEnterKey":Z
    .end local v1    # "isSoftImeEvent":Z
    :cond_3
    move v1, v2

    .line 295
    goto :goto_0

    .restart local v1    # "isSoftImeEvent":Z
    :cond_4
    move v0, v2

    .line 299
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 107
    sget v0, Lcom/android/keyguard/R$id;->carrierlock_password:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 111
    sget v0, Lcom/android/keyguard/R$id;->ok:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView$2;-><init>(Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->reset()V

    .line 144
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 268
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->reset()V

    .line 277
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 169
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 186
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->getCarrierLockoutAttemptDeadline(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->deadline:J

    .line 187
    iget-wide v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 188
    iget-wide v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 148
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 152
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(I)V

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 287
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 281
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method
