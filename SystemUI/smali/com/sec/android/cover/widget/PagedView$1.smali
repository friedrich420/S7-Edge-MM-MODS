.class Lcom/sec/android/cover/widget/PagedView$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/widget/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/widget/PagedView;

.field final synthetic val$dragViewIndex:I

.field final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PagedView;II)V
    .locals 0

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iput p2, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$dragViewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v14, 0x0

    .line 1536
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget-object v11, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget v12, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v11, v12}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget v13, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v12, v13}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    # setter for: Lcom/sec/android/cover/widget/PagedView;->mDownScrollX:F
    invoke-static {v10, v11}, Lcom/sec/android/cover/widget/PagedView;->access$002(Lcom/sec/android/cover/widget/PagedView;F)F

    .line 1540
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v10, v11}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    .line 1545
    iget v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$dragViewIndex:I

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    if-ge v10, v11, :cond_1

    move v5, v8

    .line 1546
    .local v5, "shiftDelta":I
    :goto_0
    iget v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$dragViewIndex:I

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    if-ge v10, v11, :cond_2

    iget v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v2, v10, 0x1

    .line 1548
    .local v2, "lowerIndex":I
    :goto_1
    iget v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$dragViewIndex:I

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    if-le v10, v11, :cond_3

    iget v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v6, v10, -0x1

    .line 1550
    .local v6, "upperIndex":I
    :goto_2
    move v1, v2

    .local v1, "i":I
    :goto_3
    if-gt v1, v6, :cond_4

    .line 1551
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-virtual {v10, v1}, Lcom/sec/android/cover/widget/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1555
    .local v7, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-virtual {v10}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-virtual {v11, v1}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v11

    add-int v4, v10, v11

    .line 1556
    .local v4, "oldX":I
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-virtual {v10}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    add-int v12, v1, v5

    invoke-virtual {v11, v12}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v11

    add-int v3, v10, v11

    .line 1561
    .local v3, "newX":I
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1562
    .local v0, "anim":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1566
    :cond_0
    sub-int v10, v4, v3

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1567
    new-instance v0, Landroid/animation/AnimatorSet;

    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1568
    .restart local v0    # "anim":Landroid/animation/AnimatorSet;
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget v10, v10, Lcom/sec/android/cover/widget/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1569
    new-array v10, v9, [Landroid/animation/Animator;

    const-string v11, "translationX"

    new-array v12, v9, [F

    const/4 v13, 0x0

    aput v13, v12, v14

    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1571
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1572
    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1550
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "i":I
    .end local v2    # "lowerIndex":I
    .end local v3    # "newX":I
    .end local v4    # "oldX":I
    .end local v5    # "shiftDelta":I
    .end local v6    # "upperIndex":I
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    move v5, v9

    .line 1545
    goto :goto_0

    .line 1546
    .restart local v5    # "shiftDelta":I
    :cond_2
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    goto :goto_1

    .line 1548
    .restart local v2    # "lowerIndex":I
    :cond_3
    iget v6, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    goto :goto_2

    .line 1575
    .restart local v1    # "i":I
    .restart local v6    # "upperIndex":I
    :cond_4
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget-object v10, v10, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/widget/PagedView;->removeView(Landroid/view/View;)V

    .line 1576
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget-object v10, v10, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v10, v14}, Lcom/sec/android/cover/widget/PagedView;->onRemoveView(Landroid/view/View;Z)V

    .line 1577
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget-object v10, v10, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/cover/widget/PagedView;->addView(Landroid/view/View;I)V

    .line 1578
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    iget-object v10, v10, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/cover/widget/PagedView;->onAddView(Landroid/view/View;I)V

    .line 1579
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView$1;->this$0:Lcom/sec/android/cover/widget/PagedView;

    # setter for: Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I
    invoke-static {v9, v8}, Lcom/sec/android/cover/widget/PagedView;->access$102(Lcom/sec/android/cover/widget/PagedView;I)I

    .line 1580
    return-void
.end method
