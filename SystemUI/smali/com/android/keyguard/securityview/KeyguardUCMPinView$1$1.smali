.class Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->onSimCheckResponse(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$errorCode:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;III)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iput p2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$errorCode:I

    iput p4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 377
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$100(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$100(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->resetPasswordText(Z)V
    invoke-static {v3, v7}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$200(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Z)V

    .line 381
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$result:I

    const/16 v4, 0x83

    if-ne v3, v4, :cond_3

    .line 383
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->generatePassword()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "password":Ljava/lang/String;
    const/4 v2, 0x0

    .line 386
    .local v2, "ret":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$300(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 393
    :goto_0
    if-eqz v2, :cond_2

    .line 394
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$400(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-interface {v3, v7, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 395
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$500(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 427
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "ret":Z
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1700(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1800(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 430
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    const/4 v4, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;
    invoke-static {v3, v4}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1902(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;)Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;

    .line 431
    return-void

    .line 388
    .restart local v1    # "password":Ljava/lang/String;
    .restart local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->printStackTrace()V

    .line 390
    const/4 v2, 0x0

    goto :goto_0

    .line 397
    .end local v0    # "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$600(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    invoke-virtual {v4}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_ucm_password_not_matching:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 401
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "ret":Z
    :cond_3
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$result:I

    const/16 v4, 0x84

    if-ne v3, v4, :cond_7

    .line 402
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$errorCode:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 403
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$attemptsRemaining:I

    if-ne v3, v7, :cond_4

    .line 404
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$800(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getSimIconResId()I
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$700(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)I

    move-result v4

    invoke-virtual {v3, v4, v8, v8, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 405
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$900(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_ucm_password_wrong_pin_code_one:I

    invoke-virtual {v3, v4, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 422
    :goto_2
    const-string v3, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyPasswordAndUnlock  CheckUCMPin.onUCMCheckResponse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$result:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attemptsRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$attemptsRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 407
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1000(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getSimIconResId()I
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$700(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)I

    move-result v4

    invoke-virtual {v3, v4, v8, v8, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 408
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1100(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_ucm_password_wrong_pin_code_other:I

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$attemptsRemaining:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v7, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_2

    .line 411
    :cond_5
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$errorCode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 412
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1200(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$errorCode:I

    invoke-static {v4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 414
    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1300(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    invoke-virtual {v4}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_ucm_password_pin_failed:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 417
    :cond_7
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->val$result:I

    const/16 v4, 0x85

    if-ne v3, v4, :cond_8

    .line 418
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1500(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getAgentMISC()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 420
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$1600(Lcom/android/keyguard/securityview/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    invoke-virtual {v4}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_ucm_password_pin_failed:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2
.end method
