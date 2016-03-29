.class Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;
.super Landroid/os/Handler;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 446
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->clearDots()V
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    .line 448
    iget v6, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->WRONG_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$500()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 449
    const-string v6, "KeyguardUniversalLockView"

    const-string v7, "In handleMessage()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isChecking:Z
    invoke-static {v6, v9}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$402(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z

    .line 453
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 454
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 455
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # operator++ for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1708(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)I

    .line 456
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    invoke-interface {v6, v9, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 457
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z

    move-result v1

    .line 459
    .local v1, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v1, :cond_4

    .line 460
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 462
    .local v0, "attempts":I
    rsub-int/lit8 v4, v0, 0x5

    .line 464
    .local v4, "remaining":I
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->updateErrorText(I)Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;I)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2002(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v5

    .line 466
    .local v5, "remainingAttemptsBeforeWipe":I
    const/4 v6, 0x5

    if-eq v0, v6, :cond_0

    const/16 v6, 0x9

    if-le v0, v6, :cond_2

    :cond_0
    if-eqz v5, :cond_2

    .line 467
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 468
    .local v2, "deadline":J
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->handleAttemptLockout(J)V
    invoke-static {v6, v2, v3}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2300(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;J)V

    .line 470
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-virtual {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->reset()V

    .line 490
    .end local v0    # "attempts":I
    .end local v1    # "lDeviceDisableForMaxFailedAttempt":Z
    .end local v2    # "deadline":J
    .end local v4    # "remaining":I
    .end local v5    # "remainingAttemptsBeforeWipe":I
    :cond_1
    :goto_0
    return-void

    .line 473
    .restart local v0    # "attempts":I
    .restart local v1    # "lDeviceDisableForMaxFailedAttempt":Z
    .restart local v4    # "remaining":I
    .restart local v5    # "remainingAttemptsBeforeWipe":I
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->playVoice:Z
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2500(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 475
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2700(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/speech/tts/TextToSpeech;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2600(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v6, v7, v9, v8}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 477
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;
    invoke-static {v7}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2800(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardMessageArea;->startAnimation(Landroid/view/animation/Animation;)V

    .line 478
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mVibraterService:Landroid/os/Vibrator;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$2900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/os/Vibrator;

    move-result-object v6

    const v7, 0xc371

    const/4 v8, -0x1

    const/4 v9, 0x0

    sget-object v10, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    goto :goto_0

    .line 482
    .end local v0    # "attempts":I
    .end local v4    # "remaining":I
    .end local v5    # "remainingAttemptsBeforeWipe":I
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->disableDevicePermanently()V
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    goto :goto_0

    .line 484
    .end local v1    # "lDeviceDisableForMaxFailedAttempt":Z
    :cond_5
    iget v6, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->RIGHT_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$600()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 486
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    invoke-interface {v6, v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(ZI)V

    .line 487
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static {v6, v9}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1702(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;I)I

    .line 488
    iget-object v6, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v6}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0
.end method
