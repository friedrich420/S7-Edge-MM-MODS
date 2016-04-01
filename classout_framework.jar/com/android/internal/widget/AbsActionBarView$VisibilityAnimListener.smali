.class public Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/android/internal/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/widget/AbsActionBarView;)V
    .registers 3

    .prologue
    .line 287
    iput-object p1, p0, this$0:Lcom/android/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, mCanceled:Z

    .line 317
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 305
    iget-boolean v0, p0, mCanceled:Z

    if-eqz v0, :cond_5

    .line 312
    :cond_4
    :goto_4
    return-void

    .line 307
    :cond_5
    iget-object v0, p0, this$0:Lcom/android/internal/widget/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 308
    iget-object v0, p0, this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget v1, p0, mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    iget v1, p0, mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 321
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, this$0:Lcom/android/internal/widget/AbsActionBarView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, this$0:Lcom/android/internal/widget/AbsActionBarView;

    iput-object p1, v0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 300
    iput-boolean v1, p0, mCanceled:Z

    .line 301
    return-void
.end method

.method public withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 292
    iput p1, p0, mFinalVisibility:I

    .line 293
    return-object p0
.end method
