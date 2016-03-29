.class public Lcom/android/keyguard/securityview/KeyguardAccountView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAccountView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;
    }
.end annotation


# instance fields
.field private final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I

.field cm:Landroid/net/ConnectivityManager;

.field private deadline:J

.field private isNetworkConnected:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentMobileKeyboardState:I

.field private mISaService:Lcom/msc/sa/aidl/ISAService;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mRegistertCode:Ljava/lang/String;

.field private mRequestID:I

.field private mSACallback:Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field private mShowImeAtScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    iput-boolean v2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->isNetworkConnected:Z

    .line 99
    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCurrentMobileKeyboardState:I

    .line 107
    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 108
    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->deadline:J

    .line 113
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I

    .line 114
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->cm:Landroid/net/ConnectivityManager;

    .line 131
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 132
    iput-boolean v2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mShowImeAtScreenOn:Z

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardAccountView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/securityview/KeyguardAccountView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCurrentMobileKeyboardState:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/securityview/KeyguardAccountView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->destroySAConnect()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/keyguard/securityview/KeyguardAccountView;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;
    .param p1, "x1"    # Lcom/msc/sa/aidl/ISAService;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/keyguard/securityview/KeyguardAccountView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mRequestID:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/keyguard/securityview/KeyguardAccountView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mRequestID:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/keyguard/securityview/KeyguardAccountView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/keyguard/securityview/KeyguardAccountView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/securityview/KeyguardAccountView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->isNetworkConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->isNetworkConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/securityview/KeyguardAccountView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardAccountView;
    .param p1, "x1"    # J

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/securityview/KeyguardAccountView;->handleAttemptLockout(J)V

    return-void
.end method

.method private asyncCheckSAPassword()V
    .locals 8

    .prologue
    .line 482
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.osp.app.signin"

    new-instance v6, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 485
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "login":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/keyguard/securityview/KeyguardAccountView;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 488
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 489
    const-string v4, "KeyguardAccountView"

    const-string v5, "asyncCheckPassword accoun t== null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/keyguard/securityview/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    array-length v4, v1

    if-lez v4, :cond_0

    .line 495
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.osp.app.signin"

    const-string v6, "com.msc.sa.service.RequestService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 497
    new-instance v4, Lcom/android/keyguard/securityview/KeyguardAccountView$6;

    invoke-direct {v4, p0}, Lcom/android/keyguard/securityview/KeyguardAccountView$6;-><init>(Lcom/android/keyguard/securityview/KeyguardAccountView;)V

    iput-object v4, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 522
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_0
.end method

.method private destroySAConnect()V
    .locals 3

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z

    .line 529
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 530
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 531
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private dissmissProgressDialog()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 638
    :cond_0
    return-void
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 14
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 551
    iget-object v10, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.osp.app.signin"

    new-instance v12, Landroid/os/UserHandle;

    iget-object v13, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v11, v12}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 553
    .local v2, "accounts":[Landroid/accounts/Account;
    const-string v10, "KeyguardAccountView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findIntendedAccount(), accounts.length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, "bestAccount":Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 561
    .local v5, "bestScore":I
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v0, v3, v7

    .line 562
    .local v0, "a":Landroid/accounts/Account;
    const/4 v9, 0x0

    .line 563
    .local v9, "score":I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 564
    const/4 v9, 0x4

    .line 578
    :cond_0
    :goto_1
    if-le v9, v5, :cond_5

    .line 579
    move-object v4, v0

    .line 580
    move v5, v9

    .line 561
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 565
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 566
    const/4 v9, 0x3

    goto :goto_1

    .line 567
    :cond_3
    const/16 v10, 0x40

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_0

    .line 568
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 569
    .local v6, "i":I
    if-ltz v6, :cond_0

    .line 570
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "aUsername":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 572
    const/4 v9, 0x2

    goto :goto_1

    .line 573
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 574
    const/4 v9, 0x1

    goto :goto_1

    .line 581
    .end local v1    # "aUsername":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_5
    if-ne v9, v5, :cond_1

    .line 582
    const/4 v4, 0x0

    goto :goto_2

    .line 585
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v9    # "score":I
    :cond_6
    return-object v4
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 624
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_login_checking_password:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 626
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 326
    .local v6, "elapsedRealtime":J
    const-string v0, "KeyguardAccountView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAttemptLockout() elapsedRealtimeDeadline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/securityview/KeyguardAccountView$5;-><init>(Lcom/android/keyguard/securityview/KeyguardAccountView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 417
    return-void
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->dissmissProgressDialog()V

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardAccountView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/securityview/KeyguardAccountView$4;-><init>(Lcom/android/keyguard/securityview/KeyguardAccountView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 189
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 192
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 428
    :cond_0
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 260
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 261
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mOk:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 263
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_login_invalid_input:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 277
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 271
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 272
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->asyncCheckSAPassword()V

    goto :goto_0

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->no_network_connection:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 653
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 654
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->dissmissProgressDialog()V

    .line 655
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 139
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 140
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;

    invoke-direct {v0, p0}, Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;-><init>(Lcom/android/keyguard/securityview/KeyguardAccountView;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/securityview/KeyguardAccountView$SACallback;

    .line 141
    sget v0, Lcom/android/keyguard/R$id;->login:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardAccountView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardAccountView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardAccountView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 156
    sget v0, Lcom/android/keyguard/R$id;->password:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardAccountView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardAccountView$2;-><init>(Lcom/android/keyguard/securityview/KeyguardAccountView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 168
    sget v0, Lcom/android/keyguard/R$id;->ok:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mOk:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 172
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 173
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->reset()V

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 643
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->dissmissProgressDialog()V

    .line 644
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->reset()V

    .line 649
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 198
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 218
    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 221
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 225
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 228
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked(I)Z

    move-result v0

    .line 230
    .local v0, "permLocked":Z
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v4, Lcom/android/keyguard/R$string;->kg_login_instructions:I

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v3, v4, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 232
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->deadline:J

    .line 233
    iget-wide v4, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->deadline:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 234
    iget-wide v2, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->deadline:J

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/securityview/KeyguardAccountView;->handleAttemptLockout(J)V

    .line 239
    :goto_1
    new-instance v1, Lcom/android/keyguard/securityview/KeyguardAccountView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/securityview/KeyguardAccountView$3;-><init>(Lcom/android/keyguard/securityview/KeyguardAccountView;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/securityview/KeyguardAccountView;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void

    .line 230
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v3, ""

    invoke-interface {v1, v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 675
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(I)V

    .line 686
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 687
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 681
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 668
    const/4 v0, 0x0

    return v0
.end method
