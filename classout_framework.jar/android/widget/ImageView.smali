.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ScaleType;,
        Landroid/widget/ImageView$ImageViewBitmapDrawable;
    }
.end annotation


# static fields
.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAdjustViewBoundsCompat:Z

.field private mAlpha:I

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableTintList:Landroid/content/res/ColorStateList;

.field private mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mDrawableWidth:I

.field private mHasColorFilter:Z

.field private mHasDrawableTint:Z

.field private mHasDrawableTintMode:Z

.field private mHaveFrame:Z

.field private mImagePath:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "paths"
    .end annotation
.end field

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 954
    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v6

    sput-object v0, sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    iput v1, p0, mResource:I

    .line 81
    iput-boolean v1, p0, mHaveFrame:Z

    .line 82
    iput-boolean v1, p0, mAdjustViewBounds:Z

    .line 83
    iput v0, p0, mMaxWidth:I

    .line 84
    iput v0, p0, mMaxHeight:I

    .line 87
    iput-object v2, p0, mColorFilter:Landroid/graphics/ColorFilter;

    .line 88
    iput-boolean v1, p0, mHasColorFilter:Z

    .line 90
    const/16 v0, 0xff

    iput v0, p0, mAlpha:I

    .line 91
    const/16 v0, 0x100

    iput v0, p0, mViewAlphaScale:I

    .line 92
    iput-boolean v1, p0, mColorMod:Z

    .line 94
    iput-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object v2, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    .line 96
    iput-object v2, p0, mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 97
    iput-object v2, p0, mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 98
    iput-boolean v1, p0, mHasDrawableTint:Z

    .line 99
    iput-boolean v1, p0, mHasDrawableTintMode:Z

    .line 101
    iput-object v2, p0, mState:[I

    .line 102
    iput-boolean v1, p0, mMergeState:Z

    .line 103
    iput v1, p0, mLevel:I

    .line 106
    iput-object v2, p0, mDrawMatrix:Landroid/graphics/Matrix;

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, mTempSrc:Landroid/graphics/RectF;

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, mTempDst:Landroid/graphics/RectF;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, mBaseline:I

    .line 115
    iput-boolean v1, p0, mBaselineAlignBottom:Z

    .line 122
    iput-boolean v1, p0, mAdjustViewBoundsCompat:Z

    .line 137
    invoke-direct {p0}, initImageView()V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v10, 0x7fffffff

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    iput v7, p0, mResource:I

    .line 81
    iput-boolean v7, p0, mHaveFrame:Z

    .line 82
    iput-boolean v7, p0, mAdjustViewBounds:Z

    .line 83
    iput v10, p0, mMaxWidth:I

    .line 84
    iput v10, p0, mMaxHeight:I

    .line 87
    iput-object v6, p0, mColorFilter:Landroid/graphics/ColorFilter;

    .line 88
    iput-boolean v7, p0, mHasColorFilter:Z

    .line 90
    const/16 v5, 0xff

    iput v5, p0, mAlpha:I

    .line 91
    const/16 v5, 0x100

    iput v5, p0, mViewAlphaScale:I

    .line 92
    iput-boolean v7, p0, mColorMod:Z

    .line 94
    iput-object v6, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object v6, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    .line 96
    iput-object v6, p0, mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 97
    iput-object v6, p0, mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 98
    iput-boolean v7, p0, mHasDrawableTint:Z

    .line 99
    iput-boolean v7, p0, mHasDrawableTintMode:Z

    .line 101
    iput-object v6, p0, mState:[I

    .line 102
    iput-boolean v7, p0, mMergeState:Z

    .line 103
    iput v7, p0, mLevel:I

    .line 106
    iput-object v6, p0, mDrawMatrix:Landroid/graphics/Matrix;

    .line 109
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, mTempSrc:Landroid/graphics/RectF;

    .line 110
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, mTempDst:Landroid/graphics/RectF;

    .line 114
    iput v8, p0, mBaseline:I

    .line 115
    iput-boolean v7, p0, mBaselineAlignBottom:Z

    .line 122
    iput-boolean v7, p0, mAdjustViewBoundsCompat:Z

    .line 152
    invoke-direct {p0}, initImageView()V

    .line 154
    sget-object v5, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 158
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_69

    .line 159
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_66

    .line 160
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 161
    .local v3, "image":Landroid/util/TypedValue;
    if-eqz v3, :cond_66

    .line 162
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setImagePath(Landroid/util/TypedValue;)V

    .line 165
    .end local v3    # "image":Landroid/util/TypedValue;
    :cond_66
    invoke-virtual {p0, v2}, setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_69
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, mBaselineAlignBottom:Z

    .line 171
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, mBaseline:I

    .line 174
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, setAdjustViewBounds(Z)V

    .line 178
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, setMaxWidth(I)V

    .line 181
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, setMaxHeight(I)V

    .line 184
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 185
    .local v4, "index":I
    if-ltz v4, :cond_9d

    .line 186
    sget-object v5, sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    :cond_9d
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 190
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 191
    iput-boolean v9, p0, mHasDrawableTint:Z

    .line 195
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v5, p0, mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 196
    iput-boolean v9, p0, mHasDrawableTintMode:Z

    .line 199
    :cond_b3
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 200
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iget-object v6, p0, mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, p0, mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 202
    iput-boolean v9, p0, mHasDrawableTintMode:Z

    .line 205
    :cond_cb
    invoke-direct {p0}, applyImageTint()V

    .line 207
    const/16 v5, 0xa

    const/16 v6, 0xff

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 208
    .local v1, "alpha":I
    const/16 v5, 0xff

    if-eq v1, v5, :cond_dd

    .line 209
    invoke-virtual {p0, v1}, setAlpha(I)V

    .line 212
    :cond_dd
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, mCropToPadding:Z

    .line 215
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    return-void
.end method

.method private applyColorMod()V
    .registers 4

    .prologue
    .line 1449
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, mColorMod:Z

    if-eqz v0, :cond_2e

    .line 1450
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1451
    iget-boolean v0, p0, mHasColorFilter:Z

    if-eqz v0, :cond_1b

    .line 1452
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1454
    :cond_1b
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 1455
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, mAlpha:I

    iget v2, p0, mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1457
    :cond_2e
    return-void
.end method

.method private applyImageTint()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, mHasDrawableTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, mHasDrawableTintMode:Z

    if-eqz v0, :cond_3b

    .line 576
    :cond_c
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 578
    iget-boolean v0, p0, mHasDrawableTint:Z

    if-eqz v0, :cond_1f

    .line 579
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 582
    :cond_1f
    iget-boolean v0, p0, mHasDrawableTintMode:Z

    if-eqz v0, :cond_2a

    .line 583
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 588
    :cond_2a
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 589
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 592
    :cond_3b
    return-void
.end method

.method private configureBounds()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    .line 1120
    iget-object v9, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_d

    iget-boolean v9, p0, mHaveFrame:Z

    if-nez v9, :cond_e

    .line 1202
    :cond_d
    :goto_d
    return-void

    .line 1124
    :cond_e
    iget v1, p0, mDrawableWidth:I

    .line 1125
    .local v1, "dwidth":I
    iget v0, p0, mDrawableHeight:I

    .line 1127
    .local v0, "dheight":I
    invoke-virtual {p0}, getWidth()I

    move-result v9

    iget v10, p0, mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, mPaddingRight:I

    sub-int v7, v9, v10

    .line 1128
    .local v7, "vwidth":I
    invoke-virtual {p0}, getHeight()I

    move-result v9

    iget v10, p0, mPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, mPaddingBottom:I

    sub-int v6, v9, v10

    .line 1130
    .local v6, "vheight":I
    if-ltz v1, :cond_2c

    if-ne v7, v1, :cond_43

    :cond_2c
    if-ltz v0, :cond_30

    if-ne v6, v0, :cond_43

    :cond_30
    const/4 v4, 0x1

    .line 1133
    .local v4, "fits":Z
    :goto_31
    if-lez v1, :cond_3b

    if-lez v0, :cond_3b

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v10, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v9, v10, :cond_45

    .line 1137
    :cond_3b
    iget-object v9, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8, v8, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1138
    iput-object v13, p0, mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_d

    .end local v4    # "fits":Z
    :cond_43
    move v4, v8

    .line 1130
    goto :goto_31

    .line 1142
    .restart local v4    # "fits":Z
    :cond_45
    iget-object v9, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1144
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_60

    .line 1146
    iget-object v8, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 1147
    iput-object v13, p0, mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_d

    .line 1149
    :cond_5b
    iget-object v8, p0, mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_d

    .line 1151
    :cond_60
    if-eqz v4, :cond_65

    .line 1153
    iput-object v13, p0, mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_d

    .line 1154
    :cond_65
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_87

    .line 1156
    iget-object v8, p0, mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    .line 1157
    iget-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v9, v7, v1

    int-to-float v9, v9

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    sub-int v10, v6, v0

    int-to-float v10, v10

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_d

    .line 1159
    :cond_87
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_c4

    .line 1160
    iget-object v8, p0, mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    .line 1163
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 1165
    .local v3, "dy":F
    mul-int v8, v1, v6

    mul-int v9, v7, v0

    if-le v8, v9, :cond_b9

    .line 1166
    int-to-float v8, v6

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 1167
    .local v5, "scale":F
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v2, v8, v11

    .line 1173
    :goto_a3
    iget-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1174
    iget-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_d

    .line 1169
    .end local v5    # "scale":F
    :cond_b9
    int-to-float v8, v7

    int-to-float v9, v1

    div-float v5, v8, v9

    .line 1170
    .restart local v5    # "scale":F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v3, v8, v11

    goto :goto_a3

    .line 1175
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_c4
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_ff

    .line 1176
    iget-object v8, p0, mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    .line 1181
    if-gt v1, v7, :cond_f4

    if-gt v0, v6, :cond_f4

    .line 1182
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1188
    .restart local v5    # "scale":F
    :goto_d4
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v2, v8

    .line 1189
    .restart local v2    # "dx":F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v3, v8

    .line 1191
    .restart local v3    # "dy":F
    iget-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1192
    iget-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_d

    .line 1184
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_f4
    int-to-float v8, v7

    int-to-float v9, v1

    div-float/2addr v8, v9

    int-to-float v9, v6

    int-to-float v10, v0

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .restart local v5    # "scale":F
    goto :goto_d4

    .line 1195
    .end local v5    # "scale":F
    :cond_ff
    iget-object v8, p0, mTempSrc:Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v0

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1196
    iget-object v8, p0, mTempDst:Landroid/graphics/RectF;

    int-to-float v9, v7

    int-to-float v10, v6

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1198
    iget-object v8, p0, mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    .line 1199
    iget-object v8, p0, mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, mTempSrc:Landroid/graphics/RectF;

    iget-object v10, p0, mTempDst:Landroid/graphics/RectF;

    iget-object v11, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v11}, scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_d
.end method

.method private initImageView()V
    .registers 3

    .prologue
    .line 221
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    .line 222
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 223
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, mAdjustViewBoundsCompat:Z

    .line 225
    return-void

    .line 223
    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private isFilledByImage()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1468
    iget-object v6, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_8

    .line 1486
    :cond_7
    :goto_7
    return v5

    .line 1472
    :cond_8
    iget-object v6, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1473
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, mDrawMatrix:Landroid/graphics/Matrix;

    .line 1474
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-nez v3, :cond_2e

    .line 1475
    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-gtz v6, :cond_2c

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-gtz v6, :cond_2c

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2c

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, getHeight()I

    move-result v7

    if-lt v6, v7, :cond_2c

    :goto_2a
    move v5, v4

    goto :goto_7

    :cond_2c
    move v4, v5

    goto :goto_2a

    .line 1477
    :cond_2e
    invoke-virtual {v3}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1478
    iget-object v2, p0, mTempSrc:Landroid/graphics/RectF;

    .line 1479
    .local v2, "boundsSrc":Landroid/graphics/RectF;
    iget-object v1, p0, mTempDst:Landroid/graphics/RectF;

    .line 1480
    .local v1, "boundsDst":Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1481
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1482
    iget v6, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_62

    iget v6, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_62

    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_62

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_62

    :goto_60
    move v5, v4

    goto :goto_7

    :cond_62
    move v4, v5

    goto :goto_60
.end method

.method private resizeFromDrawable()V
    .registers 5

    .prologue
    .line 931
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 932
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_23

    .line 933
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 934
    .local v2, "w":I
    if-gez v2, :cond_c

    iget v2, p0, mDrawableWidth:I

    .line 935
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 936
    .local v1, "h":I
    if-gez v1, :cond_14

    iget v1, p0, mDrawableHeight:I

    .line 937
    :cond_14
    iget v3, p0, mDrawableWidth:I

    if-ne v2, v3, :cond_1c

    iget v3, p0, mDrawableHeight:I

    if-eq v1, v3, :cond_23

    .line 938
    :cond_1c
    iput v2, p0, mDrawableWidth:I

    .line 939
    iput v1, p0, mDrawableHeight:I

    .line 940
    invoke-virtual {p0}, requestLayout()V

    .line 943
    .end local v1    # "h":I
    .end local v2    # "w":I
    :cond_23
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .registers 8
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1087
    move v0, p1

    .line 1088
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1089
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1090
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_1e

    .line 1108
    :goto_c
    return v0

    .line 1095
    :sswitch_d
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1096
    goto :goto_c

    .line 1101
    :sswitch_12
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1102
    goto :goto_c

    .line 1105
    :sswitch_1b
    move v0, v2

    goto :goto_c

    .line 1090
    nop

    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_12
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_1b
    .end sparse-switch
.end method

.method private resolveUri()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 814
    iget-object v7, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 882
    :cond_5
    :goto_5
    return-void

    .line 818
    :cond_6
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 819
    .local v4, "rsrc":Landroid/content/res/Resources;
    if-eqz v4, :cond_5

    .line 823
    const/4 v0, 0x0

    .line 825
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v7, p0, mResource:I

    if-eqz v7, :cond_4f

    .line 827
    :try_start_11
    iget-object v7, p0, mContext:Landroid/content/Context;

    iget v8, p0, mResource:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 828
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_2d

    if-eqz v0, :cond_2d

    .line 829
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 830
    .local v2, "image":Landroid/util/TypedValue;
    iget v7, p0, mResource:I

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v2, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 831
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setImagePath(Landroid/util/TypedValue;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2d} :catch_31

    .line 881
    .end local v2    # "image":Landroid/util/TypedValue;
    :cond_2d
    :goto_2d
    invoke-direct {p0, v0}, updateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 833
    :catch_31
    move-exception v1

    .line 834
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mResource:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    iput-object v10, p0, mUri:Landroid/net/Uri;

    goto :goto_2d

    .line 838
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4f
    iget-object v7, p0, mUri:Landroid/net/Uri;

    if-eqz v7, :cond_5

    .line 839
    iget-object v7, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, "scheme":Ljava/lang/String;
    const-string v7, "android.resource"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 843
    :try_start_61
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v3

    .line 845
    .local v3, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v8, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7a} :catch_9b

    move-result-object v0

    .line 870
    .end local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_7b
    :goto_7b
    if-nez v0, :cond_169

    .line 871
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 873
    iput-object v10, p0, mUri:Landroid/net/Uri;

    goto :goto_2d

    .line 846
    :catch_9b
    move-exception v1

    .line 847
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    .line 849
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b7
    const-string v7, "content"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c7

    const-string v7, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15d

    .line 851
    :cond_c7
    const/4 v6, 0x0

    .line 853
    .local v6, "stream":Ljava/io/InputStream;
    :try_start_c8
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 854
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d8} :catch_fb
    .catchall {:try_start_c8 .. :try_end_d8} :catchall_13a

    move-result-object v0

    .line 858
    if-eqz v6, :cond_7b

    .line 860
    :try_start_db
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_7b

    .line 861
    :catch_df
    move-exception v1

    .line 862
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    .line 855
    .end local v1    # "e":Ljava/io/IOException;
    :catch_fb
    move-exception v1

    .line 856
    .local v1, "e":Ljava/lang/Exception;
    :try_start_fc
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_116
    .catchall {:try_start_fc .. :try_end_116} :catchall_13a

    .line 858
    if-eqz v6, :cond_7b

    .line 860
    :try_start_118
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11d

    goto/16 :goto_7b

    .line 861
    :catch_11d
    move-exception v1

    .line 862
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7b

    .line 858
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_13a
    move-exception v7

    if-eqz v6, :cond_140

    .line 860
    :try_start_13d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_140} :catch_141

    .line 863
    :cond_140
    :goto_140
    throw v7

    .line 861
    :catch_141
    move-exception v1

    .line 862
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "ImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to close content: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_140

    .line 867
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_15d
    iget-object v7, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_7b

    .line 874
    :cond_169
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_2d

    .line 875
    iget-object v7, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setImagePath(Ljava/lang/String;)V

    goto/16 :goto_2d
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .registers 3
    .param p0, "st"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 963
    sget-object v0, sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 897
    iget-object v0, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    if-eq p1, v0, :cond_f

    iget-object v0, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    if-eqz v0, :cond_f

    .line 898
    iget-object v0, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView$ImageViewBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 901
    :cond_f
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    .line 902
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 903
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    :cond_1d
    iput-object p1, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 907
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_37

    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isImagePath()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 908
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getImagePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mImagePath:Ljava/lang/String;

    .line 911
    :cond_37
    if-eqz p1, :cond_77

    .line 912
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 913
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 914
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 915
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 917
    :cond_50
    invoke-virtual {p0}, getVisibility()I

    move-result v0

    if-nez v0, :cond_75

    move v0, v1

    :goto_57
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 918
    iget v0, p0, mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 919
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, mDrawableWidth:I

    .line 920
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, mDrawableHeight:I

    .line 921
    invoke-direct {p0}, applyImageTint()V

    .line 922
    invoke-direct {p0}, applyColorMod()V

    .line 924
    invoke-direct {p0}, configureBounds()V

    .line 928
    :goto_74
    return-void

    .line 917
    :cond_75
    const/4 v0, 0x0

    goto :goto_57

    .line 926
    :cond_77
    const/4 v0, -0x1

    iput v0, p0, mDrawableHeight:I

    iput v0, p0, mDrawableWidth:I

    goto :goto_74
.end method


# virtual methods
.method public animateTransform(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 1224
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 1237
    :goto_5
    return-void

    .line 1227
    :cond_6
    if-nez p1, :cond_19

    .line 1228
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getWidth()I

    move-result v1

    invoke-virtual {p0}, getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1236
    :goto_15
    invoke-virtual {p0}, invalidate()V

    goto :goto_5

    .line 1230
    :cond_19
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, mDrawableWidth:I

    iget v2, p0, mDrawableHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1231
    iget-object v0, p0, mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2d

    .line 1232
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mDrawMatrix:Landroid/graphics/Matrix;

    .line 1234
    :cond_2d
    iget-object v0, p0, mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_15
.end method

.method public final clearColorFilter()V
    .registers 2

    .prologue
    .line 1360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1361
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1215
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1217
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1218
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1220
    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 1206
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1207
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1208
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1209
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1211
    :cond_14
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1523
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1524
    const-string v0, "layout:baseline"

    invoke-virtual {p0}, getBaseline()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1525
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1517
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdjustViewBounds()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, mAdjustViewBounds:Z

    return v0
.end method

.method public getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 1285
    iget-boolean v0, p0, mBaselineAlignBottom:Z

    if-eqz v0, :cond_9

    .line 1286
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v0

    .line 1288
    :goto_8
    return v0

    :cond_9
    iget v0, p0, mBaseline:I

    goto :goto_8
.end method

.method public getBaselineAlignBottom()Z
    .registers 2

    .prologue
    .line 1331
    iget-boolean v0, p0, mBaselineAlignBottom:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .prologue
    .line 1383
    iget-object v0, p0, mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getCropToPadding()Z
    .registers 2

    .prologue
    .line 793
    iget-boolean v0, p0, mCropToPadding:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    if-ne v0, v1, :cond_9

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    .line 407
    :cond_9
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageAlpha()I
    .registers 2

    .prologue
    .line 1411
    iget v0, p0, mAlpha:I

    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 755
    iget-object v0, p0, mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_c

    .line 756
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 758
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_b
.end method

.method public getImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, mDrawableTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getMaxHeight()I
    .registers 2

    .prologue
    .line 371
    iget v0, p0, mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .prologue
    .line 333
    iget v0, p0, mMaxWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 270
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 240
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_27

    .line 241
    if-eqz p1, :cond_23

    .line 243
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 244
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 245
    .local v0, "h":I
    iget v2, p0, mDrawableWidth:I

    if-ne v1, v2, :cond_16

    iget v2, p0, mDrawableHeight:I

    if-eq v0, v2, :cond_23

    .line 246
    :cond_16
    iput v1, p0, mDrawableWidth:I

    .line 247
    iput v0, p0, mDrawableHeight:I

    .line 249
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_23

    .line 251
    invoke-direct {p0}, configureBounds()V

    .line 262
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_23
    invoke-virtual {p0}, invalidate()V

    .line 266
    :goto_26
    return-void

    .line 264
    :cond_27
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_26
.end method

.method public isOpaque()Z
    .registers 3

    .prologue
    .line 1461
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    iget-object v0, p0, mXfermode:Landroid/graphics/Xfermode;

    if-nez v0, :cond_2a

    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    iget v0, p0, mAlpha:I

    iget v1, p0, mViewAlphaScale:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2a

    invoke-direct {p0}, isFilledByImage()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 235
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 236
    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1501
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1502
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 1503
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1505
    :cond_14
    return-void

    :cond_15
    move v0, v1

    .line 1503
    goto :goto_11
.end method

.method public onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 886
    iget-object v0, p0, mState:[I

    if-nez v0, :cond_9

    .line 887
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 891
    :goto_8
    return-object v0

    .line 888
    :cond_9
    iget-boolean v0, p0, mMergeState:Z

    if-nez v0, :cond_10

    .line 889
    iget-object v0, p0, mState:[I

    goto :goto_8

    .line 891
    :cond_10
    iget-object v0, p0, mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, mState:[I

    invoke-static {v0, v1}, mergeDrawableStates([I[I)[I

    move-result-object v0

    goto :goto_8
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1509
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1510
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 1511
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1513
    :cond_d
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1241
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1243
    iget-object v3, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_8

    .line 1273
    :cond_7
    :goto_7
    return-void

    .line 1247
    :cond_8
    iget v3, p0, mDrawableWidth:I

    if-eqz v3, :cond_7

    iget v3, p0, mDrawableHeight:I

    if-eqz v3, :cond_7

    .line 1251
    iget-object v3, p0, mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_22

    iget v3, p0, mPaddingTop:I

    if-nez v3, :cond_22

    iget v3, p0, mPaddingLeft:I

    if-nez v3, :cond_22

    .line 1252
    iget-object v3, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1254
    :cond_22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1255
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1257
    iget-boolean v3, p0, mCropToPadding:Z

    if-eqz v3, :cond_4c

    .line 1258
    iget v1, p0, mScrollX:I

    .line 1259
    .local v1, "scrollX":I
    iget v2, p0, mScrollY:I

    .line 1260
    .local v2, "scrollY":I
    iget v3, p0, mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, mRight:I

    add-int/2addr v5, v1

    iget v6, p0, mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1265
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_4c
    iget v3, p0, mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1267
    iget-object v3, p0, mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_5e

    .line 1268
    iget-object v3, p0, mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1270
    :cond_5e
    iget-object v3, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1271
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .registers 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 968
    invoke-direct/range {p0 .. p0}, resolveUri()V

    .line 973
    const/4 v5, 0x0

    .line 976
    .local v5, "desiredAspect":F
    const/16 v17, 0x0

    .line 979
    .local v17, "resizeWidth":Z
    const/16 v16, 0x0

    .line 981
    .local v16, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 982
    .local v20, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 984
    .local v9, "heightSpecMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_10e

    .line 986
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mDrawableWidth:I

    .line 987
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mDrawableHeight:I

    .line 988
    const/4 v7, 0x0

    .local v7, "h":I
    move/from16 v18, v7

    .line 1005
    .local v18, "w":I
    :cond_2b
    :goto_2b
    move-object/from16 v0, p0

    iget v13, v0, mPaddingLeft:I

    .line 1006
    .local v13, "pleft":I
    move-object/from16 v0, p0

    iget v14, v0, mPaddingRight:I

    .line 1007
    .local v14, "pright":I
    move-object/from16 v0, p0

    iget v15, v0, mPaddingTop:I

    .line 1008
    .local v15, "ptop":I
    move-object/from16 v0, p0

    iget v12, v0, mPaddingBottom:I

    .line 1013
    .local v12, "pbottom":I
    if-nez v17, :cond_3f

    if-eqz v16, :cond_14b

    .line 1020
    :cond_3f
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, resolveAdjustedSize(III)I

    move-result v19

    .line 1023
    .local v19, "widthSize":I
    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, resolveAdjustedSize(III)I

    move-result v8

    .line 1025
    .local v8, "heightSize":I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_106

    .line 1027
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v4, v21, v22

    .line 1030
    .local v4, "actualAspect":F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v21, v22, v24

    if-lez v21, :cond_106

    .line 1032
    const/4 v6, 0x0

    .line 1035
    .local v6, "done":Z
    if-eqz v17, :cond_d1

    .line 1036
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 1040
    .local v11, "newWidth":I
    if-nez v16, :cond_ca

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAdjustViewBoundsCompat:Z

    move/from16 v21, v0

    if-nez v21, :cond_ca

    .line 1041
    move-object/from16 v0, p0

    iget v0, v0, mMaxWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v11, v1, v2}, resolveAdjustedSize(III)I

    move-result v19

    .line 1044
    :cond_ca
    move/from16 v0, v19

    if-gt v11, v0, :cond_d1

    .line 1045
    move/from16 v19, v11

    .line 1046
    const/4 v6, 0x1

    .line 1051
    .end local v11    # "newWidth":I
    :cond_d1
    if-nez v6, :cond_106

    if-eqz v16, :cond_106

    .line 1052
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 1056
    .local v10, "newHeight":I
    if-nez v17, :cond_103

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAdjustViewBoundsCompat:Z

    move/from16 v21, v0

    if-nez v21, :cond_103

    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, mMaxHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v10, v1, v2}, resolveAdjustedSize(III)I

    move-result v8

    .line 1061
    :cond_103
    if-gt v10, v8, :cond_106

    .line 1062
    move v8, v10

    .line 1082
    .end local v4    # "actualAspect":F
    .end local v6    # "done":Z
    .end local v10    # "newHeight":I
    :cond_106
    :goto_106
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, setMeasuredDimension(II)V

    .line 1083
    return-void

    .line 990
    .end local v7    # "h":I
    .end local v8    # "heightSize":I
    .end local v12    # "pbottom":I
    .end local v13    # "pleft":I
    .end local v14    # "pright":I
    .end local v15    # "ptop":I
    .end local v18    # "w":I
    .end local v19    # "widthSize":I
    :cond_10e
    move-object/from16 v0, p0

    iget v0, v0, mDrawableWidth:I

    move/from16 v18, v0

    .line 991
    .restart local v18    # "w":I
    move-object/from16 v0, p0

    iget v7, v0, mDrawableHeight:I

    .line 992
    .restart local v7    # "h":I
    if-gtz v18, :cond_11c

    const/16 v18, 0x1

    .line 993
    :cond_11c
    if-gtz v7, :cond_11f

    const/4 v7, 0x1

    .line 997
    :cond_11f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2b

    .line 998
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_145

    const/16 v17, 0x1

    .line 999
    :goto_131
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v9, v0, :cond_148

    const/16 v16, 0x1

    .line 1001
    :goto_139
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_2b

    .line 998
    :cond_145
    const/16 v17, 0x0

    goto :goto_131

    .line 999
    :cond_148
    const/16 v16, 0x0

    goto :goto_139

    .line 1072
    .restart local v12    # "pbottom":I
    .restart local v13    # "pleft":I
    .restart local v14    # "pright":I
    .restart local v15    # "ptop":I
    :cond_14b
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 1073
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 1075
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1076
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1078
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, resolveSizeAndState(III)I

    move-result v19

    .line 1079
    .restart local v19    # "widthSize":I
    const/16 v21, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v7, v0, v1}, resolveSizeAndState(III)I

    move-result v8

    .restart local v8    # "heightSize":I
    goto :goto_106
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 277
    invoke-virtual {p0}, getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 278
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 279
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_14
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 947
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 949
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 950
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 952
    :cond_c
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .registers 3
    .param p1, "adjustViewBounds"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 317
    iput-boolean p1, p0, mAdjustViewBounds:Z

    .line 318
    if-eqz p1, :cond_9

    .line 319
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 321
    :cond_9
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1436
    and-int/lit16 p1, p1, 0xff

    .line 1437
    iget v0, p0, mAlpha:I

    if-eq v0, p1, :cond_11

    .line 1438
    iput p1, p0, mAlpha:I

    .line 1439
    const/4 v0, 0x1

    iput-boolean v0, p0, mColorMod:Z

    .line 1440
    invoke-direct {p0}, applyColorMod()V

    .line 1441
    invoke-virtual {p0}, invalidate()V

    .line 1443
    :cond_11
    return-void
.end method

.method public setBaseline(I)V
    .registers 3
    .param p1, "baseline"    # I

    .prologue
    .line 1303
    iget v0, p0, mBaseline:I

    if-eq v0, p1, :cond_9

    .line 1304
    iput p1, p0, mBaseline:I

    .line 1305
    invoke-virtual {p0}, requestLayout()V

    .line 1307
    :cond_9
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .registers 3
    .param p1, "aligned"    # Z

    .prologue
    .line 1319
    iget-boolean v0, p0, mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_9

    .line 1320
    iput-boolean p1, p0, mBaselineAlignBottom:Z

    .line 1321
    invoke-virtual {p0}, requestLayout()V

    .line 1323
    :cond_9
    return-void
.end method

.method public final setColorFilter(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1356
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1357
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1344
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1345
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v1, 0x1

    .line 1394
    iget-object v0, p0, mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_11

    .line 1395
    iput-object p1, p0, mColorFilter:Landroid/graphics/ColorFilter;

    .line 1396
    iput-boolean v1, p0, mHasColorFilter:Z

    .line 1397
    iput-boolean v1, p0, mColorMod:Z

    .line 1398
    invoke-direct {p0}, applyColorMod()V

    .line 1399
    invoke-virtual {p0}, invalidate()V

    .line 1401
    :cond_11
    return-void
.end method

.method public setCropToPadding(Z)V
    .registers 3
    .param p1, "cropToPadding"    # Z

    .prologue
    .line 806
    iget-boolean v0, p0, mCropToPadding:Z

    if-eq v0, p1, :cond_c

    .line 807
    iput-boolean p1, p0, mCropToPadding:Z

    .line 808
    invoke-virtual {p0}, requestLayout()V

    .line 809
    invoke-virtual {p0}, invalidate()V

    .line 811
    :cond_c
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 1114
    .local v0, "changed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, mHaveFrame:Z

    .line 1115
    invoke-direct {p0}, configureBounds()V

    .line 1116
    return v0
.end method

.method public setImageAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1423
    invoke-virtual {p0, p1}, setAlpha(I)V

    .line 1424
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 615
    iget-object v0, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    if-nez v0, :cond_1a

    .line 616
    new-instance v0, Landroid/widget/ImageView$ImageViewBitmapDrawable;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ImageView$ImageViewBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    .line 621
    :goto_14
    iget-object v0, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    invoke-virtual {p0, v0}, setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    return-void

    .line 619
    :cond_1a
    iget-object v0, p0, mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView$ImageViewBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 481
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_1f

    .line 482
    const/4 v2, 0x0

    iput v2, p0, mResource:I

    .line 483
    const/4 v2, 0x0

    iput-object v2, p0, mUri:Landroid/net/Uri;

    .line 485
    iget v1, p0, mDrawableWidth:I

    .line 486
    .local v1, "oldWidth":I
    iget v0, p0, mDrawableHeight:I

    .line 488
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget v2, p0, mDrawableWidth:I

    if-ne v1, v2, :cond_19

    iget v2, p0, mDrawableHeight:I

    if-eq v0, v2, :cond_1c

    .line 491
    :cond_19
    invoke-virtual {p0}, requestLayout()V

    .line 493
    :cond_1c
    invoke-virtual {p0}, invalidate()V

    .line 495
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_1f
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 512
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    return-void

    .line 512
    :cond_7
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3
.end method

.method public setImageLevel(I)V
    .registers 3
    .param p1, "level"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 647
    iput p1, p0, mLevel:I

    .line 648
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 649
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 650
    invoke-direct {p0}, resizeFromDrawable()V

    .line 652
    :cond_e
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 770
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 771
    const/4 p1, 0x0

    .line 775
    :cond_9
    if-nez p1, :cond_13

    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_13
    if-eqz p1, :cond_28

    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 777
    :cond_1d
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 778
    invoke-direct {p0}, configureBounds()V

    .line 779
    invoke-virtual {p0}, invalidate()V

    .line 781
    :cond_28
    return-void
.end method

.method public setImageResource(I)V
    .registers 5
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 427
    iget v1, p0, mDrawableWidth:I

    .line 428
    .local v1, "oldWidth":I
    iget v0, p0, mDrawableHeight:I

    .line 430
    .local v0, "oldHeight":I
    invoke-direct {p0, v2}, updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iput p1, p0, mResource:I

    .line 432
    iput-object v2, p0, mUri:Landroid/net/Uri;

    .line 434
    invoke-direct {p0}, resolveUri()V

    .line 436
    iget v2, p0, mDrawableWidth:I

    if-ne v1, v2, :cond_17

    iget v2, p0, mDrawableHeight:I

    if-eq v0, v2, :cond_1a

    .line 437
    :cond_17
    invoke-virtual {p0}, requestLayout()V

    .line 439
    :cond_1a
    invoke-virtual {p0}, invalidate()V

    .line 440
    return-void
.end method

.method public setImageState([IZ)V
    .registers 4
    .param p1, "state"    # [I
    .param p2, "merge"    # Z

    .prologue
    .line 625
    iput-object p1, p0, mState:[I

    .line 626
    iput-boolean p2, p0, mMergeState:Z

    .line 627
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 628
    invoke-virtual {p0}, refreshDrawableState()V

    .line 629
    invoke-direct {p0}, resizeFromDrawable()V

    .line 631
    :cond_e
    return-void
.end method

.method public setImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 530
    iput-object p1, p0, mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasDrawableTint:Z

    .line 533
    invoke-direct {p0}, applyImageTint()V

    .line 534
    return-void
.end method

.method public setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 558
    iput-object p1, p0, mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasDrawableTintMode:Z

    .line 561
    invoke-direct {p0}, applyImageTint()V

    .line 562
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 455
    iget v2, p0, mResource:I

    if-nez v2, :cond_16

    iget-object v2, p0, mUri:Landroid/net/Uri;

    if-eq v2, p1, :cond_34

    if-eqz p1, :cond_16

    iget-object v2, p0, mUri:Landroid/net/Uri;

    if-eqz v2, :cond_16

    iget-object v2, p0, mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 458
    :cond_16
    const/4 v2, 0x0

    invoke-direct {p0, v2}, updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    const/4 v2, 0x0

    iput v2, p0, mResource:I

    .line 460
    iput-object p1, p0, mUri:Landroid/net/Uri;

    .line 462
    iget v1, p0, mDrawableWidth:I

    .line 463
    .local v1, "oldWidth":I
    iget v0, p0, mDrawableHeight:I

    .line 465
    .local v0, "oldHeight":I
    invoke-direct {p0}, resolveUri()V

    .line 467
    iget v2, p0, mDrawableWidth:I

    if-ne v1, v2, :cond_2e

    iget v2, p0, mDrawableHeight:I

    if-eq v0, v2, :cond_31

    .line 468
    :cond_2e
    invoke-virtual {p0}, requestLayout()V

    .line 470
    :cond_31
    invoke-virtual {p0}, invalidate()V

    .line 472
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_34
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 396
    iput p1, p0, mMaxHeight:I

    .line 397
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .param p1, "maxWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 358
    iput p1, p0, mMaxWidth:I

    .line 359
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 4
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 722
    if-nez p1, :cond_8

    .line 723
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 726
    :cond_8
    iget-object v0, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1e

    .line 727
    iput-object p1, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 729
    iget-object v0, p0, mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p0, v0}, setWillNotCacheDrawing(Z)V

    .line 731
    invoke-virtual {p0}, requestLayout()V

    .line 732
    invoke-virtual {p0}, invalidate()V

    .line 734
    :cond_1e
    return-void

    .line 729
    :cond_1f
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 636
    invoke-direct {p0}, resizeFromDrawable()V

    .line 637
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1493
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1494
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 1495
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1497
    :cond_10
    return-void

    :cond_11
    move v0, v1

    .line 1495
    goto :goto_d
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 1367
    iget-object v0, p0, mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_f

    .line 1368
    iput-object p1, p0, mXfermode:Landroid/graphics/Xfermode;

    .line 1369
    const/4 v0, 0x1

    iput-boolean v0, p0, mColorMod:Z

    .line 1370
    invoke-direct {p0}, applyColorMod()V

    .line 1371
    invoke-virtual {p0}, invalidate()V

    .line 1373
    :cond_f
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 229
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
