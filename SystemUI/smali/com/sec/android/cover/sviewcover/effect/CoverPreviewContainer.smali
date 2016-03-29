.class public Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;
.super Landroid/widget/FrameLayout;
.source "CoverPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$4;,
        Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;
    }
.end annotation


# instance fields
.field private mCameraPreview:Landroid/view/View;

.field private mDistance:I

.field private mFirstBorder:I

.field private mIsMultiTouch:Z

.field private mIsSecure:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhonePreview:Landroid/view/View;

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

.field private mPreviewEnabled:Z

.field private mPreviewView:Landroid/view/View;

.field private mShowing:Z

.field private mStartX:I

.field private mStartY:I

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method private getMaxCircleSize()F
    .locals 8

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 351
    .local v1, "rootWidth":F
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 352
    .local v2, "width":F
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    int-to-float v0, v3

    .line 353
    .local v0, "height":F
    float-to-double v4, v2

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method private isSecure()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 171
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 172
    iput-boolean v9, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    goto :goto_0

    .line 174
    :cond_1
    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    goto :goto_0

    .line 179
    :pswitch_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v2, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 181
    const-string v3, "CoverPreviewContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempRect.left ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTempRect.top ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    .line 185
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    .line 187
    iput v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    goto :goto_0

    .line 191
    .end local v2    # "visibleRect":Landroid/graphics/Rect;
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 192
    .local v0, "diffX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 193
    .local v1, "diffY":I
    int-to-double v4, v0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    .line 196
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mFirstBorder:I

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    if-gt v3, v4, :cond_4

    .line 197
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsSecure:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    if-eqz v3, :cond_4

    .line 199
    :cond_3
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mFirstBorder:I

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    .line 203
    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewEnabled:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    if-nez v3, :cond_6

    .line 204
    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewEnabled(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->invalidate()V

    .line 213
    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewEnabled:Z

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    iget v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    iget v7, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    iget v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->setPreviewRect(IIII)V

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->invalidate()V

    goto/16 :goto_0

    .line 206
    :cond_6
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    if-lez v3, :cond_5

    .line 207
    invoke-virtual {p0, v9}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewEnabled(Z)V

    goto :goto_1

    .line 223
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gt v3, v9, :cond_7

    .line 224
    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    .line 226
    :cond_7
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mFirstBorder:I

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    if-ge v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    if-eqz v3, :cond_0

    .line 227
    :cond_8
    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewEnabled(Z)V

    .line 228
    iput v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->invalidate()V

    goto/16 :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 364
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 365
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 371
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 372
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->isShaderReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    :cond_0
    return-void
.end method

.method public resetPreviewView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 318
    const-string v0, "CoverPreviewContainer"

    const-string v1, "resetPreviewView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_0
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    .line 323
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->setPreViewBitmap(Landroid/graphics/Bitmap;)V

    .line 325
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mShowing:Z

    .line 326
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 328
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    .line 330
    :cond_1
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 160
    const-string v0, "CoverPreviewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewEnabled() isEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewEnabled:Z

    .line 162
    return-void
.end method

.method public setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V
    .locals 4
    .param p1, "type"    # Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    .prologue
    .line 291
    const-string v1, "CoverPreviewContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewView() type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$4;->$SwitchMap$com$sec$android$cover$sviewcover$effect$PreviewAnimationController$PreviewType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 300
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    .line 303
    :goto_0
    const/4 v0, 0x0

    .line 304
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 307
    :cond_0
    const-string v2, "CoverPreviewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap == null-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->setPreViewBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->isSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsSecure:Z

    .line 314
    return-void

    .line 294
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhonePreview:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    goto :goto_0

    .line 307
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 5
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 334
    const-string v0, "CoverPreviewContainer"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mShowing:Z

    .line 337
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->getMaxCircleSize()F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    .line 340
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 341
    if-eqz p1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut60;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 347
    :cond_1
    return-void
.end method
