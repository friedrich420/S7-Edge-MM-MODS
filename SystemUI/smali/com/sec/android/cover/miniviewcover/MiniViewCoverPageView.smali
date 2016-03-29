.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;
.super Lcom/sec/android/cover/widget/PagedView;
.source "MiniViewCoverPageView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

.field private mEnableTouch:Z

.field private mLatestPage:I

.field private mSnapTo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    .line 22
    iput v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mLatestPage:I

    .line 203
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    .line 35
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, -0x1

    .line 89
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    if-lt v0, p2, :cond_0

    .line 97
    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    .line 99
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 213
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
    .line 76
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 78
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 166
    return-void
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

    .line 139
    invoke-super/range {p0 .. p5}, Lcom/sec/android/cover/widget/PagedView;->onLayout(ZIIII)V

    .line 140
    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 141
    iget v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->snapToPage(I)V

    .line 142
    iput v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mSnapTo:I

    .line 144
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 115
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

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

    .line 117
    invoke-super {p0, p1, p2}, Lcom/sec/android/cover/widget/PagedView;->onMeasure(II)V

    .line 118
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 158
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 43
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    const-string v2, "onTouchEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-nez p1, :cond_0

    .line 45
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    const-string v1, "event is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 71
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 51
    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 55
    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 59
    :pswitch_2
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 63
    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    if-nez v1, :cond_1

    .line 64
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_MOVE return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 123
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 124
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->TAG:Ljava/lang/String;

    const-string v2, "The view was already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 127
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 132
    iget v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCurrentPage:I

    .line 134
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setEnableTouchEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mEnableTouch:Z

    .line 207
    return-void
.end method

.method public setSViewCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p1, "sview"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->mCoverView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .line 39
    return-void
.end method
