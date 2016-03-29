.class Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;
.super Ljava/lang/Object;
.source "KeyguardUCMPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->onSimLockChangedResponse(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$errorCode:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;III)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iput p2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$errorCode:I

    iput p4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 445
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1200(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 446
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1200(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    .line 448
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->resetPasswordText(Z)V
    invoke-static {v3, v6}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1300(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Z)V

    .line 449
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$result:I

    const/16 v4, 0x83

    if-ne v3, v4, :cond_2

    .line 451
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->generatePassword()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "password":Ljava/lang/String;
    const/4 v2, 0x0

    .line 454
    .local v2, "ret":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 461
    :goto_0
    if-eqz v2, :cond_1

    .line 462
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1500(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-interface {v3, v6, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 463
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1600(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 488
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "ret":Z
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    const/4 v4, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mCheckUcmPukThread:Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;
    invoke-static {v3, v4}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$2402(Lcom/android/keyguard/securityview/KeyguardUCMPukView;Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;)Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;

    .line 489
    return-void

    .line 456
    .restart local v1    # "password":Ljava/lang/String;
    .restart local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->printStackTrace()V

    .line 458
    const/4 v2, 0x0

    goto :goto_0

    .line 465
    .end local v0    # "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1700(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    invoke-virtual {v4}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_ucm_password_not_matching:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 470
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "ret":Z
    :cond_2
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$result:I

    const/16 v4, 0x85

    if-ne v3, v4, :cond_5

    .line 471
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$errorCode:I

    const/16 v4, 0x21

    if-ne v3, v4, :cond_3

    .line 472
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1900(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    iget v5, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$attemptsRemaining:I

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getPukPasswordErrorMessage(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$1800(Lcom/android/keyguard/securityview/KeyguardUCMPukView;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 483
    :goto_2
    const-string v3, "KeyguardUCMPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyPasswordAndUnlock  UpdateUCM.onUCMCheckResponse:  attemptsRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$attemptsRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mStateMachine:Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$2300(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$StateMachine;->reset()V

    goto :goto_1

    .line 474
    :cond_3
    iget v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$errorCode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 475
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$2000(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->val$errorCode:I

    invoke-static {v4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 477
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$2100(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    invoke-virtual {v4}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_ucm_password_pin_failed:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 481
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v3, v3, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUCMPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->access$2200(Lcom/android/keyguard/securityview/KeyguardUCMPukView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1$1;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;

    iget-object v4, v4, Lcom/android/keyguard/securityview/KeyguardUCMPukView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPukView;

    invoke-virtual {v4}, Lcom/android/keyguard/securityview/KeyguardUCMPukView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_ucm_password_pin_failed:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method
