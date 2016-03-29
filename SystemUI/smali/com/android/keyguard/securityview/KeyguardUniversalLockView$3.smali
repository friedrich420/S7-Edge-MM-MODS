.class Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;
.super Ljava/lang/Object;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Lcom/android/internal/widget/DirectionLockTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
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
    .line 298
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionDetected(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "curDirection"    # Ljava/lang/String;
    .param p2, "isDirectionDetected"    # Z

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 317
    const-string v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 318
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLastPokeTime:J
    invoke-static {v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 329
    .local v0, "elapsed":J
    const-wide/16 v2, 0x1b58

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mLastPokeTime:J
    invoke-static {v2, v4, v5}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1302(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;J)J

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->resetmTimer()V
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    .line 334
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardMessageArea;->clearAnimation()V

    .line 335
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 336
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 339
    const-string v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    iget-object v4, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;)V

    iput-object v3, v2, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    .line 341
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    iget-object v2, v2, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v2, :cond_2

    .line 342
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    iget-object v2, v2, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->start()V

    .line 346
    :cond_2
    if-eqz p2, :cond_3

    const-string v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x16

    if-gt v2, v3, :cond_3

    .line 349
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->handleAndPerformDotAnimations()V
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1600(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    .line 350
    :cond_3
    return-void

    .line 321
    .end local v0    # "elapsed":J
    :cond_4
    if-eqz p2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;
    invoke-static {v3}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$1200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public onDirectionStarted()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isChecking:Z
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$400(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    .line 310
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isSleeping:Z
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$300(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    goto :goto_0
.end method
