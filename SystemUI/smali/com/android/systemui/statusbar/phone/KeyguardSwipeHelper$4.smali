.class Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->prepareTapAffordance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 439
    const-string v0, "KeyguardSwipeHelper"

    const-string v1, "Tap Animation cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimationCancelled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$502(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;Z)Z

    .line 441
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 442
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 445
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimationCancelled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 449
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 450
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mClockView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 452
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 453
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 454
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v11, [F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotiView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 456
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mBottomViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 457
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 459
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 460
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v11, [F

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 463
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimSet2:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mTapAnimationCancelled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$502(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;Z)Z

    .line 434
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 435
    return-void
.end method
