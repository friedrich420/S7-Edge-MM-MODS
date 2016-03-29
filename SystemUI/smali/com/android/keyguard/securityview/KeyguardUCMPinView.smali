.class public Lcom/android/keyguard/securityview/KeyguardUCMPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;
    }
.end annotation


# instance fields
.field private mCheckUcmPinThread:Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;

.field mKeyguardCSName:Ljava/lang/String;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mUCMAgent:Landroid/widget/TextView;

.field private mUCMMiscTagValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 59
    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mKeyguardCSName:Ljava/lang/String;

    .line 66
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setMaxLength(I)V

    .line 67
    const-string v0, "persist.keyguard.ucs.csname"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mKeyguardCSName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Ljava/lang/String;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->verfiyPassword(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getAgentMISC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;)Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;
    .param p1, "x1"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->resetPasswordText(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getSimIconResId()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method public static generatePassword()Ljava/lang/String;
    .locals 7

    .prologue
    .line 163
    const-string v5, "com.samsung.ucs.ucsservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 165
    .local v2, "ucmBinder":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "uri":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 169
    :try_start_0
    invoke-interface {v2, v4}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->generateKeyguardPassword(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 170
    .local v1, "response":Landroid/os/Bundle;
    const-string v5, "stringresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 178
    .end local v1    # "response":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 176
    :cond_0
    const-string v5, "KeyguardUCMPinView"

    const-string v6, "mUcmBinder == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAgentMISC()Ljava/lang/String;
    .locals 9

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "misc":Ljava/lang/String;
    const-string v6, "com.samsung.ucs.ucsservice"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v4

    .line 229
    .local v4, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v4, :cond_0

    .line 230
    const-string v6, "KeyguardUCMPinView"

    const-string v7, "failed to get UCM service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 251
    .end local v2    # "misc":Ljava/lang/String;
    .local v3, "misc":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 234
    .end local v3    # "misc":Ljava/lang/String;
    .restart local v2    # "misc":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, "uri":Ljava/lang/String;
    invoke-interface {v4, v5}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 236
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "miscInfo"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 240
    :cond_1
    const-string v6, "KeyguardUCMPinView"

    const-string v7, "NO misc info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    move-object v3, v2

    .line 246
    .end local v2    # "misc":Ljava/lang/String;
    .restart local v3    # "misc":Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v3    # "misc":Ljava/lang/String;
    .restart local v2    # "misc":Ljava/lang/String;
    :cond_2
    const-string v6, "KeyguardUCMPinView"

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

    .line 244
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 247
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v3, v2

    .line 251
    .end local v2    # "misc":Ljava/lang/String;
    .restart local v3    # "misc":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getCSUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "keyguardCSName":Ljava/lang/String;
    const-string v2, "persist.keyguard.ucs.csname"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v2, ""

    invoke-static {v0, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "uri":Ljava/lang/String;
    return-object v1
.end method

.method private getSimIconResId()I
    .locals 1

    .prologue
    .line 450
    sget v0, Lcom/android/keyguard/R$drawable;->lock_ic_pin_attempt_sim:I

    return v0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getVendorID()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 255
    const-string v6, "com.samsung.ucs.ucsservice"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 256
    .local v2, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    const/4 v4, 0x0

    .line 257
    .local v4, "vendorID":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 258
    const-string v6, "KeyguardUCMPinView"

    const-string v7, "failed to get UCM service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    return-object v5

    .line 262
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "uri":Ljava/lang/String;
    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 264
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 267
    const-string v6, "id"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_3

    .line 270
    :cond_2
    const-string v6, "KeyguardUCMPinView"

    const-string v7, "NO vendorID info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    .line 281
    goto :goto_0

    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "uri":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v5, "KeyguardUCMPinView"

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

    .line 276
    goto :goto_0
.end method

.method private verfiyPassword(Ljava/lang/String;)[I
    .locals 13
    .param p1, "pw"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 182
    const/4 v8, 0x3

    new-array v4, v8, [I

    .line 183
    .local v4, "retVal":[I
    aput v9, v4, v10

    .line 184
    aput v9, v4, v11

    .line 185
    aput v9, v4, v12

    .line 187
    const-string v8, "com.samsung.ucs.ucsservice"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    .line 188
    .local v6, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v6, :cond_0

    .line 189
    const-string v8, "KeyguardUCMPinView"

    const-string v9, "failed to get UCM service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-object v4

    .line 193
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "uri":Ljava/lang/String;
    invoke-interface {v6, v7, p1}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->verifyPin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 196
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "state"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 197
    .local v5, "state":I
    const-string v8, "remainCnt"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 198
    .local v3, "remainCnt":I
    const-string v8, "errorresponse"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 199
    .local v2, "errorCode":I
    const-string v8, "KeyguardUCMPinView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v8, "KeyguardUCMPinView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remainCnt : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v8, "KeyguardUCMPinView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "errorCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/16 v8, 0x83

    if-ne v5, v8, :cond_2

    .line 206
    const-string v8, "KeyguardUCMPinView"

    const-string v9, "PIN verfication succeed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    :goto_1
    const/4 v8, 0x0

    aput v5, v4, v8

    .line 215
    const/4 v8, 0x1

    aput v3, v4, v8

    .line 216
    const/4 v8, 0x2

    aput v2, v4, v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "errorCode":I
    .end local v3    # "remainCnt":I
    .end local v5    # "state":I
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "errorCode":I
    .restart local v3    # "remainCnt":I
    .restart local v5    # "state":I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "KeyguardUCMPinView"

    const-string v9, "PIN verfication failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-gtz v3, :cond_1

    .line 210
    const-string v8, "KeyguardUCMPinView"

    const-string v9, "PIN verfication failed Remaining count <= 0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private verifyPasswordAndUnlock(Ljava/lang/String;)V
    .locals 4
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 359
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getSimIconResId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v1, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 363
    invoke-virtual {p0, v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->resetPasswordText(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/android/keyguard/R$id;->ucmPinEntry:I

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 138
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 119
    sget v0, Lcom/android/keyguard/R$id;->ucm_misctag:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 120
    sget v0, Lcom/android/keyguard/R$id;->ucm_csname:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getVendorID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 151
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 72
    const-string v2, "KeyguardUCMPinView"

    const-string v3, "Resetting state"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    .local v1, "rez":Landroid/content/res/Resources;
    sget v2, Lcom/android/keyguard/R$string;->lockscreen_ucm_instruction:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getSimIconResId()I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 79
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 80
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 2

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "entry":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->verifyPasswordAndUnlock(Ljava/lang/String;)V

    .line 356
    return-void
.end method
