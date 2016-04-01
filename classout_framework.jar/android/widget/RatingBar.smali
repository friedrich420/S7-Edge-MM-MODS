.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private mNumStars:I

.field private mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private mProgressOnStartTracking:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const v0, 0x101007c

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    const/4 v6, 0x5

    iput v6, p0, mNumStars:I

    .line 89
    sget-object v6, Lcom/android/internal/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v6, p0, mNumStars:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 92
    .local v1, "numStars":I
    const/4 v6, 0x3

    iget-boolean v7, p0, mIsUserSeekable:Z

    if-nez v7, :cond_1d

    move v4, v5

    :cond_1d
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, setIsIndicator(Z)V

    .line 93
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 94
    .local v2, "rating":F
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 95
    .local v3, "stepSize":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    if-lez v1, :cond_39

    iget v4, p0, mNumStars:I

    if-eq v1, v4, :cond_39

    .line 98
    invoke-virtual {p0, v1}, setNumStars(I)V

    .line 101
    :cond_39
    cmpl-float v4, v3, v9

    if-ltz v4, :cond_4d

    .line 102
    invoke-virtual {p0, v3}, setStepSize(F)V

    .line 107
    :goto_40
    cmpl-float v4, v2, v9

    if-ltz v4, :cond_47

    .line 108
    invoke-virtual {p0, v2}, setRating(F)V

    .line 113
    :cond_47
    const v4, 0x3f8ccccd    # 1.1f

    iput v4, p0, mTouchProgressOffset:F

    .line 114
    return-void

    .line 104
    :cond_4d
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v4}, setStepSize(F)V

    goto :goto_40
.end method

.method private getProgressPerStar()F
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 237
    iget v1, p0, mNumStars:I

    if-lez v1, :cond_10

    .line 238
    invoke-virtual {p0}, getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, mNumStars:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 240
    :cond_10
    return v0
.end method

.method private updateSecondaryProgress(I)V
    .registers 10
    .param p1, "progress"    # I

    .prologue
    .line 271
    invoke-direct {p0}, getProgressPerStar()F

    move-result v1

    .line 272
    .local v1, "ratio":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_17

    .line 273
    int-to-float v3, p1

    div-float v0, v3, v1

    .line 274
    .local v0, "progressInStars":F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 275
    .local v2, "secondaryProgress":I
    invoke-virtual {p0, v2}, setSecondaryProgress(I)V

    .line 277
    .end local v0    # "progressInStars":F
    .end local v2    # "secondaryProgress":I
    :cond_17
    return-void
.end method


# virtual methods
.method dispatchRatingChange(Z)V
    .registers 4
    .param p1, "fromUser"    # Z

    .prologue
    .line 315
    iget-object v0, p0, mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_d

    .line 316
    iget-object v0, p0, mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {p0}, getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 319
    :cond_d
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 333
    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 2

    .prologue
    .line 247
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object v0
.end method

.method public getNumStars()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, mNumStars:I

    return v0
.end method

.method public getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-object v0
.end method

.method public getRating()F
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0}, getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, getProgressPerStar()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getStepSize()F
    .registers 3

    .prologue
    .line 230
    invoke-virtual {p0}, getNumStars()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isIndicator()Z
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, mIsUserSeekable:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method onKeyChange()V
    .registers 2

    .prologue
    .line 310
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, dispatchRatingChange(Z)V

    .line 312
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 281
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 283
    iget-object v1, p0, mSampleTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1e

    .line 286
    iget-object v1, p0, mSampleTile:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, mNumStars:I

    mul-int v0, v1, v2

    .line 287
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, setMeasuredDimension(II)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 290
    .end local v0    # "width":I
    :cond_1e
    monitor-exit p0

    return-void

    .line 281
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method onProgressRefresh(FZI)V
    .registers 5
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZI)V

    .line 255
    invoke-direct {p0, p3}, updateSecondaryProgress(I)V

    .line 257
    if-nez p2, :cond_c

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, dispatchRatingChange(Z)V

    .line 261
    :cond_c
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 294
    invoke-virtual {p0}, getProgress()I

    move-result v0

    iput v0, p0, mProgressOnStartTracking:I

    .line 296
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 297
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 3

    .prologue
    .line 301
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 303
    invoke-virtual {p0}, getProgress()I

    move-result v0

    iget v1, p0, mProgressOnStartTracking:I

    if-eq v0, v1, :cond_f

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, dispatchRatingChange(Z)V

    .line 306
    :cond_f
    return-void
.end method

.method public setIsIndicator(Z)V
    .registers 5
    .param p1, "isIndicator"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    if-nez p1, :cond_d

    move v0, v1

    :goto_5
    iput-boolean v0, p0, mIsUserSeekable:Z

    .line 151
    if-nez p1, :cond_f

    :goto_9
    invoke-virtual {p0, v1}, setFocusable(Z)V

    .line 152
    return-void

    :cond_d
    move v0, v2

    .line 150
    goto :goto_5

    :cond_f
    move v1, v2

    .line 151
    goto :goto_9
.end method

.method public declared-synchronized setMax(I)V
    .registers 3
    .param p1, "max"    # I

    .prologue
    .line 324
    monitor-enter p0

    if-gtz p1, :cond_5

    .line 329
    :goto_3
    monitor-exit p0

    return-void

    .line 328
    :cond_5
    :try_start_5
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_3

    .line 324
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNumStars(I)V
    .registers 2
    .param p1, "numStars"    # I

    .prologue
    .line 171
    if-gtz p1, :cond_3

    .line 179
    :goto_2
    return-void

    .line 175
    :cond_3
    iput p1, p0, mNumStars:I

    .line 178
    invoke-virtual {p0}, requestLayout()V

    goto :goto_2
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .prologue
    .line 130
    iput-object p1, p0, mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 131
    return-void
.end method

.method public setRating(F)V
    .registers 3
    .param p1, "rating"    # F

    .prologue
    .line 195
    invoke-direct {p0}, getProgressPerStar()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, setProgress(I)V

    .line 196
    return-void
.end method

.method public setStepSize(F)V
    .registers 6
    .param p1, "stepSize"    # F

    .prologue
    .line 214
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_6

    .line 222
    :goto_5
    return-void

    .line 218
    :cond_6
    iget v2, p0, mNumStars:I

    int-to-float v2, v2

    div-float v0, v2, p1

    .line 219
    .local v0, "newMax":F
    invoke-virtual {p0}, getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {p0}, getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 220
    .local v1, "newProgress":I
    float-to-int v2, v0

    invoke-virtual {p0, v2}, setMax(I)V

    .line 221
    invoke-virtual {p0, v1}, setProgress(I)V

    goto :goto_5
.end method
