.class Lcom/android/keyguard/securityview/KeyguardAccountView$5;
.super Landroid/os/CountDownTimer;
.source "KeyguardAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardAccountView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardAccountView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$800(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$700(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 413
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1800(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    return-void
.end method

.method public onTick(J)V
    .locals 13
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v12, 0x3c

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 332
    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    long-to-int v3, v6

    .line 333
    .local v3, "secondsRemaining":I
    div-int/lit8 v1, v3, 0x3c

    .line 334
    .local v1, "minutesRemaining":I
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1000(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 335
    .local v0, "attemps":I
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$300(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v2

    .line 336
    .local v2, "remainingAttemptsBeforeWipe":I
    const-string v4, ""

    .line 338
    .local v4, "securityDisplay":Ljava/lang/String;
    const/4 v5, 0x5

    if-ge v2, v5, :cond_d

    .line 339
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mCurrentMobileKeyboardState:I
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1100(Lcom/android/keyguard/securityview/KeyguardAccountView;)I

    move-result v5

    if-nez v5, :cond_8

    .line 340
    if-ne v2, v10, :cond_4

    .line 341
    if-le v3, v12, :cond_1

    .line 342
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_mins_with_auto_wipe:I

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    if-ne v3, v12, :cond_2

    .line 345
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_1_min_with_auto_wipe:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_2
    if-le v3, v10, :cond_3

    .line 348
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_secs_with_auto_wipe:I

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_1_sec_with_auto_wipe:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    :cond_4
    if-le v3, v12, :cond_5

    .line 356
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_mins_with_auto_wipe:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_5
    if-ne v3, v12, :cond_6

    .line 359
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_1_min_with_auto_wipe:I

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 361
    :cond_6
    if-le v3, v10, :cond_7

    .line 362
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_secs_with_auto_wipe:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 365
    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_1_sec_with_auto_wipe:I

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 369
    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mCurrentMobileKeyboardState:I
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1100(Lcom/android/keyguard/securityview/KeyguardAccountView;)I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 370
    if-ne v2, v10, :cond_9

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1200(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_too_many_failed_1_attempt_remaining_with_auto_wipe_mobile_keyboard:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 376
    :goto_1
    if-le v3, v12, :cond_a

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1400(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_too_many_failed_countdown_mins_with_auto_wipe:I

    new-array v8, v10, [Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    invoke-interface {v5, v4, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 373
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1300(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_remaining_with_auto_wipe_mobile_keyboard:I

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 379
    :cond_a
    if-ne v3, v12, :cond_b

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_too_many_failed_countdown_1_min_with_auto_wipe:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 382
    :cond_b
    if-le v3, v10, :cond_c

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1600(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_too_many_failed_countdown_secs_with_auto_wipe:I

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 386
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$1700(Lcom/android/keyguard/securityview/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_too_many_failed_countdown_1_sec_with_auto_wipe:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 391
    :cond_d
    if-ne v3, v12, :cond_e

    .line 392
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_min:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 394
    :cond_e
    if-le v3, v12, :cond_f

    .line 395
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_mins:I

    new-array v7, v10, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 397
    :cond_f
    if-le v3, v10, :cond_10

    .line 398
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v5, v6, v10, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 401
    :cond_10
    iget-object v5, p0, Lcom/android/keyguard/securityview/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v5}, Lcom/android/keyguard/securityview/KeyguardAccountView;->access$500(Lcom/android/keyguard/securityview/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-interface {v5, v6, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_0
.end method
