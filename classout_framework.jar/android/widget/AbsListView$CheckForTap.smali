.class final Landroid/widget/AbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .prologue
    .line 4167
    iput-object p1, p0, this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 4167
    invoke-direct {p0, p1}, <init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4173
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_df

    .line 4174
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iput v8, v5, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4175
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4184
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_df

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_df

    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    if-eqz v5, :cond_df

    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v5, :cond_df

    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    iget-object v6, p0, this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 4185
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iput v9, v5, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4187
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_eb

    .line 4188
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTmpPoint:[F
    invoke-static {v5}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)[F

    move-result-object v4

    .line 4189
    .local v4, "point":[F
    iget v5, p0, x:F

    aput v5, v4, v9

    .line 4190
    iget v5, p0, y:F

    aput v5, v4, v8

    .line 4191
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4192
    aget v5, v4, v9

    aget v6, v4, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4193
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4194
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4195
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4196
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v5, v6, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4197
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 4199
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 4200
    .local v3, "longPressTimeout":I
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    .line 4202
    .local v2, "longClickable":Z
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b3

    .line 4203
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4204
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_a8

    instance-of v5, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_a8

    .line 4205
    if-eqz v2, :cond_e0

    .line 4206
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 4211
    :cond_a8
    :goto_a8
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v6, p0, x:F

    iget v7, p0, y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4214
    :cond_b3
    if-eqz v2, :cond_e6

    .line 4215
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;
    invoke-static {v5}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    if-nez v5, :cond_ca

    .line 4216
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    new-instance v6, Landroid/widget/AbsListView$CheckForLongPress;

    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    # setter for: Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;
    invoke-static {v5, v6}, Landroid/widget/AbsListView;->access$1302(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;

    .line 4218
    :cond_ca
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;
    invoke-static {v5}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 4219
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;
    invoke-static {v6}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v6

    int-to-long v8, v3

    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4228
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "point":[F
    :cond_df
    :goto_df
    return-void

    .line 4208
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    .restart local v4    # "point":[F
    :cond_e0
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_a8

    .line 4221
    :cond_e6
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iput v10, v5, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_df

    .line 4224
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "point":[F
    :cond_eb
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    iput v10, v5, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_df
.end method
