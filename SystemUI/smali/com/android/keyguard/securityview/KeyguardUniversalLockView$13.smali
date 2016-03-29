.class Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;
.super Landroid/os/CountDownTimer;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1089
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1092
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->displayDefaultSecurityMessage()V
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3800(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    .line 1093
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1094
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1095
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 1097
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->resetmTimer()V
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    .line 1098
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    .line 1101
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIsAccountExist:Z
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3500(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSamsungAccountAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1700(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    sget-object v1, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V

    .line 1110
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$4002(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 1111
    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1700(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    sget-object v1, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    sget-object v1, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Lcom/android/keyguard/securityview/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 11
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x3c

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1033
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1034
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1037
    :cond_0
    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v3, v4

    .line 1038
    .local v3, "secondsRemaining":I
    div-int/lit8 v1, v3, 0x3c

    .line 1039
    .local v1, "minutesRemaining":I
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3700(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 1040
    .local v0, "attemps":I
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v2

    .line 1042
    .local v2, "remainingAttemptsBeforeWipe":I
    const/4 v4, 0x5

    if-ge v2, v4, :cond_8

    .line 1043
    if-ne v2, v8, :cond_4

    .line 1044
    if-le v3, v6, :cond_1

    .line 1045
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_mins_with_auto_wipe:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    .line 1085
    :goto_0
    return-void

    .line 1047
    :cond_1
    if-ne v3, v6, :cond_2

    .line 1048
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_1_min_with_auto_wipe:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 1050
    :cond_2
    if-le v3, v8, :cond_3

    .line 1051
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_secs_with_auto_wipe:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 1054
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_remained_1_attempt_countdown_1_sec_with_auto_wipe:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 1058
    :cond_4
    if-le v3, v6, :cond_5

    .line 1059
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_mins_with_auto_wipe:I

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 1061
    :cond_5
    if-ne v3, v6, :cond_6

    .line 1062
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_1_min_with_auto_wipe:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1064
    :cond_6
    if-le v3, v8, :cond_7

    .line 1065
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_secs_with_auto_wipe:I

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1068
    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_1_sec_with_auto_wipe:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1072
    :cond_8
    if-ne v3, v6, :cond_9

    .line 1073
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_min:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1075
    :cond_9
    if-le v3, v6, :cond_a

    .line 1076
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown_mins:I

    new-array v6, v8, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1078
    :cond_a
    if-le v3, v8, :cond_b

    .line 1079
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1082
    :cond_b
    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-virtual {v4, v5, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    goto/16 :goto_0
.end method
