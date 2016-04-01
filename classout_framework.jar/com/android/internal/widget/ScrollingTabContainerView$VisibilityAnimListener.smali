.class public Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 3

    .prologue
    .line 683
    iput-object p1, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, mCanceled:Z

    .line 710
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 701
    iget-boolean v0, p0, mCanceled:Z

    if-eqz v0, :cond_5

    .line 705
    :goto_4
    return-void

    .line 703
    :cond_5
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 704
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v1, p0, mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 714
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 694
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iput-object p1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 696
    iput-boolean v1, p0, mCanceled:Z

    .line 697
    return-void
.end method

.method public withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 688
    iput p1, p0, mFinalVisibility:I

    .line 689
    return-object p0
.end method
