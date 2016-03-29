.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$onTop:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->val$onTop:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 951
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->val$onTop:Z

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    # setter for: Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$302(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 956
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mIsTopOverScrollAnimating:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$502(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)Z

    .line 957
    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    # setter for: Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$402(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method
