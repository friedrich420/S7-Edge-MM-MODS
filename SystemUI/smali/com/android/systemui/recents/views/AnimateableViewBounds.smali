.class public Lcom/android/systemui/recents/views/AnimateableViewBounds;
.super Landroid/view/ViewOutlineProvider;
.source "AnimateableViewBounds.java"


# instance fields
.field mAlpha:F

.field mClipBounds:Landroid/graphics/Rect;

.field mClipRect:Landroid/graphics/Rect;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mCornerRadius:I

.field final mMinAlpha:F

.field mSourceView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;I)V
    .locals 2
    .param p1, "source"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "cornerRadius"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    .line 39
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mMinAlpha:F

    .line 49
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    .line 52
    iput p2, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mCornerRadius:I

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getClipBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getClipRight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    .line 57
    return-void
.end method

.method private updateClipBounds()V
    .locals 6

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 120
    return-void
.end method


# virtual methods
.method public getClipBottom()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 61
    const/high16 v0, 0x3e800000    # 0.25f

    iget v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v3

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v4

    iget v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mCornerRadius:I

    int-to-float v5, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 66
    return-void
.end method

.method setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 70
    iget v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput p1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    .line 72
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    .line 74
    :cond_0
    return-void
.end method

.method public setClip(II)V
    .locals 3
    .param p1, "bottom"    # I
    .param p2, "right"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eq p2, v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 84
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 85
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->updateClipBounds()V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getPaddingRight()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailVisibility(II)V

    .line 93
    :cond_1
    return-void
.end method
