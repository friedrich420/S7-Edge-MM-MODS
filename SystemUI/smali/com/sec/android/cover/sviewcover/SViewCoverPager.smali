.class public Lcom/sec/android/cover/sviewcover/SViewCoverPager;
.super Lcom/sec/android/cover/widget/PagedView;
.source "SViewCoverPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    }
.end annotation


# instance fields
.field private mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mEnableTouch:Z

.field private mLastRegisteredPage:I

.field private mSnapTo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    .line 43
    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 44
    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    .line 57
    return-void
.end method

.method private isBlockedKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 89
    .local v0, "action":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    .line 91
    :cond_0
    const-string v1, "SViewCoverPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not blocked, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x0

    .line 95
    :goto_0
    return v1

    .line 94
    :cond_1
    const-string v1, "SViewCoverPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blocked, action= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, -0x1

    .line 105
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    if-lt v0, p2, :cond_0

    .line 113
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    .line 115
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 81
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->isBlockedKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraPage(I)Z
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_camera_layout:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyPageSwitching(I)V
    .locals 4
    .param p1, "whichPage"    # I

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitching(I)V

    .line 187
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    if-eq v3, p1, :cond_2

    .line 188
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, "oldView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "newView":Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 193
    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    .line 194
    .local v0, "callback":Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;->onActive(Z)V

    .line 197
    .end local v0    # "callback":Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    :cond_0
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 198
    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;

    .line 199
    .restart local v0    # "callback":Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;->onActive(Z)V

    .line 202
    .end local v0    # "callback":Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;
    :cond_1
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mLastRegisteredPage:I

    .line 204
    .end local v1    # "newView":Landroid/view/View;
    .end local v2    # "oldView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 182
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 226
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, -0x1

    .line 155
    invoke-super/range {p0 .. p5}, Lcom/sec/android/cover/widget/PagedView;->onLayout(ZIIII)V

    .line 156
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 157
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->snapToPage(I)V

    .line 158
    iput v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mSnapTo:I

    .line 160
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 131
    const-string v0, "SViewCoverPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[widthMeasureSpec, heightMeasureSpec] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0, p1, p2}, Lcom/sec/android/cover/widget/PagedView;->onMeasure(II)V

    .line 134
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 174
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 65
    const-string v2, "SViewCoverPager"

    const-string v3, "onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 68
    .local v0, "action":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 70
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    if-nez v2, :cond_1

    .line 74
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 139
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 140
    const-string v1, "SViewCoverPager"

    const-string v2, "The view was already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 148
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCurrentPage:I

    .line 150
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setEnableTouchEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mEnableTouch:Z

    .line 208
    return-void
.end method

.method public setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "sview"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 61
    return-void
.end method
