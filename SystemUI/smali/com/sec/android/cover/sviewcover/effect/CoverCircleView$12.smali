.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$202(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 779
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/high16 v1, -0x40800000    # -1.0f

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$302(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 782
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockExecuted()V

    .line 783
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isSecureLockScreen()Z
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    .line 789
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1402(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 790
    return-void

    .line 787
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$12;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    goto :goto_0
.end method
