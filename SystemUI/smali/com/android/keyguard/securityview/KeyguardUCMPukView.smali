.class public Lcom/android/keyguard/securityview/KeyguardUCMPukView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardUCMPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;,
        Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;
    }
.end annotation


# instance fields
.field private mCheckUcmPukThread:Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;

.field mKeyguardCSName:Ljava/lang/String;

.field private mPinText:Ljava/lang/String;

.field private mPukText:Ljava/lang/String;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStateMachine:Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;

.field private mUCMCsname:Landroid/widget/TextView;

.field private mUCMMiscTagValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 55
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mStateMachine:Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;

    .line 60
    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mKeyguardCSName:Ljava/lang/String;

    .line 68
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setMaxLength(I)V

    .line 69
    const-string v0, "persist.keyguard.ucs.csname"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mKeyguardCSName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/PasswordTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->resetPasswordText(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/securityview/KeyguardUCMPukView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getPukPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mStateMachine:Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;)Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;
    .param p1, "x1"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mCheckUcmPukThread:Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->updateSim()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->resetPasswordText(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getSimIconResId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPukView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method private checkPin()Z
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 426
    .local v0, "length":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPinText:Ljava/lang/String;

    .line 428
    const/4 v1, 0x1

    .line 430
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPuk()Z
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPukText:Ljava/lang/String;

    .line 418
    const/4 v0, 0x1

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generatePassword()Ljava/lang/String;
    .locals 7

    .prologue
    .line 203
    const-string v5, "com.samsung.ucs.ucsservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 205
    .local v2, "ucmBinder":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getCSUri()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "uri":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 209
    :try_start_0
    invoke-interface {v2, v4}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->generateKeyguardPassword(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 210
    .local v1, "response":Landroid/os/Bundle;
    const-string v5, "stringresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 218
    .end local v1    # "response":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 216
    :cond_0
    const-string v5, "KeyguardUCMPukView"

    const-string v6, "mUcmBinder == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAgentMISC()Ljava/lang/String;
    .locals 9

    .prologue
    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "misc":Ljava/lang/String;
    const-string v6, "com.samsung.ucs.ucsservice"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v4

    .line 307
    .local v4, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v4, :cond_0

    .line 308
    const-string v6, "KeyguardUCMPukView"

    const-string v7, "failed to get UCM service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 328
    .end local v2    # "misc":Ljava/lang/String;
    .local v3, "misc":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 312
    .end local v3    # "misc":Ljava/lang/String;
    .restart local v2    # "misc":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getCSUri()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "uri":Ljava/lang/String;
    invoke-interface {v4, v5}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 314
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "miscInfo"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 319
    :cond_1
    const-string v6, "KeyguardUCMPukView"

    const-string v7, "NO misc info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v3, v2

    .line 323
    .end local v2    # "misc":Ljava/lang/String;
    .restart local v3    # "misc":Ljava/lang/String;
    goto :goto_0

    .line 321
    .end local v3    # "misc":Ljava/lang/String;
    .restart local v2    # "misc":Ljava/lang/String;
    :cond_2
    const-string v6, "KeyguardUCMPukView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "misc : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 324
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v3, v2

    .line 328
    .end local v2    # "misc":Ljava/lang/String;
    .restart local v3    # "misc":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getCSUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "keyguardCSName":Ljava/lang/String;
    const-string v2, "persist.keyguard.ucs.csname"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v2, ""

    invoke-static {v0, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "uri":Ljava/lang/String;
    return-object v1
.end method

.method private getPukPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_password_wrong_puk_code_dead:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string v1, "KeyguardUCMPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v0

    .line 131
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$plurals;->kg_ucm_password_wrong_puk_code:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_password_puk_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSimIconResId()I
    .locals 1

    .prologue
    .line 513
    sget v0, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim:I

    return v0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 223
    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v1

    .line 223
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getVendorID()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 332
    const-string v6, "com.samsung.ucs.ucsservice"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 333
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    const/4 v4, 0x0

    .line 334
    .local v4, "vendorID":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 335
    const-string v6, "KeyguardUCMPukView"

    const-string v7, "failed to get UCM service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    :goto_0
    return-object v5

    .line 339
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getCSUri()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "uri":Ljava/lang/String;
    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 341
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 344
    const-string v6, "id"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_3

    .line 347
    :cond_2
    const-string v6, "KeyguardUCMPukView"

    const-string v7, "NO vendorID info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    .line 358
    goto :goto_0

    .line 350
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "uri":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v5, "KeyguardUCMPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vendorID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v4

    .line 353
    goto :goto_0
.end method

.method private updateSim()V
    .locals 3

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mCheckUcmPukThread:Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPinText:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mCheckUcmPukThread:Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mCheckUcmPukThread:Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->start()V

    .line 495
    :cond_0
    return-void
.end method

.method private verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 16
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v13, "KeyguardUCMPukView"

    const-string v14, "verifyPUK enterd"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v13, 0x3

    new-array v7, v13, [I

    .line 233
    .local v7, "ret":[I
    const/4 v3, 0x0

    .line 235
    .local v3, "csName":Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v7, v13

    .line 236
    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, v7, v13

    .line 237
    const/4 v13, 0x2

    const/4 v14, -0x1

    aput v14, v7, v13

    .line 239
    const-string v13, "persist.keyguard.ucs.csname"

    const-string v14, "none"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    if-eqz v3, :cond_0

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "none"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-object v7

    .line 246
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, "tempPUK":Ljava/lang/String;
    const-string v13, "KeyguardUCMPukView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tempPUK : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "tempPIN":Ljava/lang/String;
    const-string v13, "KeyguardUCMPukView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tempPIN : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v10, :cond_2

    if-nez v9, :cond_3

    .line 252
    :cond_2
    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v7, v13

    goto :goto_0

    .line 256
    :cond_3
    const-string v13, "com.samsung.ucs.ucsservice"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v11

    .line 257
    .local v11, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v11, :cond_4

    .line 258
    const-string v13, "KeyguardUCMPukView"

    const-string v14, "failed to get UCM service"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v7, v13

    goto :goto_0

    .line 272
    :cond_4
    :try_start_0
    const-string v13, ""

    invoke-static {v3, v13}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, "uri":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v12, v0, v1}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 274
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v13, "state"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 275
    .local v8, "state":I
    const-string v13, "remainCnt"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 276
    .local v6, "pukRemainCnt":I
    const-string v13, "errorresponse"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 277
    .local v5, "errorCode":I
    const-string v13, "KeyguardUCMPukView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "state : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v13, "KeyguardUCMPukView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "remainCnt : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v13, "KeyguardUCMPukView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "errorCode : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v13, 0x84

    if-ne v8, v13, :cond_6

    .line 282
    const-string v13, "KeyguardUCMPukView"

    const-string v14, "PUK verfication succeed : LOCKED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_5
    :goto_1
    const/4 v13, 0x0

    aput v8, v7, v13

    .line 294
    const/4 v13, 0x1

    aput v6, v7, v13

    .line 295
    const/4 v13, 0x2

    aput v5, v7, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 297
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "errorCode":I
    .end local v6    # "pukRemainCnt":I
    .end local v8    # "state":I
    .end local v12    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 299
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 283
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "errorCode":I
    .restart local v6    # "pukRemainCnt":I
    .restart local v8    # "state":I
    .restart local v12    # "uri":Ljava/lang/String;
    :cond_6
    const/16 v13, 0x83

    if-ne v8, v13, :cond_7

    .line 284
    :try_start_1
    const-string v13, "KeyguardUCMPukView"

    const-string v14, "PUK verfication succeed : UNLOCKED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    :cond_7
    const-string v13, "KeyguardUCMPukView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Remain count : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v13, "KeyguardUCMPukView"

    const-string v14, "PUK verfication failed : BLOCKED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-nez v6, :cond_5

    .line 289
    const-string v13, "KeyguardUCMPukView"

    const-string v14, "PUK verfication failed : BLOCKED and PUK Remain count is 0"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPinText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 162
    sget v0, Lcom/android/keyguard/R$id;->ucmPukEntry:I

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 178
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 168
    sget v0, Lcom/android/keyguard/R$id;->ucm_csname:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mUCMCsname:Landroid/widget/TextView;

    .line 169
    sget v0, Lcom/android/keyguard/R$id;->ucm_misctag:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mUCMMiscTagValue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getAgentMISC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mUCMCsname:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getVendorID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 173
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 191
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 145
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mStateMachine:Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->reset()V

    .line 146
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_enter_puk_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getSimIconResId()I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 149
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 151
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 152
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mStateMachine:Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->next()V

    .line 500
    return-void
.end method
