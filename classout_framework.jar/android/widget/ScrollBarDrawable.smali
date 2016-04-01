.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final TABLET_KK:Z

.field private static isDeviceDefault:Ljava/lang/Boolean;

.field private static isThemeHoloDark:Ljava/lang/Boolean;


# instance fields
.field private mAlpha:I

.field private mAlwaysDrawHorizontalTrack:Z

.field private mAlwaysDrawVerticalTrack:Z

.field private mBoundsChanged:Z

.field private mClickableScrollbarTouchArea:I

.field private final mClickableThumbRect:Landroid/graphics/Rect;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mExtent:I

.field private mHasSetAlpha:Z

.field private mHasSetColorFilter:Z

.field private mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field private mOffset:I

.field private mRange:I

.field private mRangeChanged:Z

.field private mTwCMCF:Landroid/graphics/ColorMatrixColorFilter;

.field private mTwParent:Landroid/view/View;

.field private mVertical:Z

.field private mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 69
    const-string v0, "latte"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, TABLET_KK:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 58
    const/16 v1, 0xff

    iput v1, p0, mAlpha:I

    .line 67
    iput v3, p0, mClickableScrollbarTouchArea:I

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mClickableThumbRect:Landroid/graphics/Rect;

    .line 74
    iput-object p1, p0, mTwParent:Landroid/view/View;

    .line 75
    iget-object v1, p0, mTwParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, mClickableScrollbarTouchArea:I

    .line 77
    iget-object v1, p0, mTwParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/16 v1, 0x143

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, isDeviceDefault:Ljava/lang/Boolean;

    .line 79
    const/16 v1, 0x144

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, isThemeHoloDark:Ljava/lang/Boolean;

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "vertical"    # Z

    .prologue
    .line 264
    iget-object v1, p0, mClickableThumbRect:Landroid/graphics/Rect;

    .line 265
    .local v1, "clickableThumbRect":Landroid/graphics/Rect;
    iget-boolean v3, p0, mRangeChanged:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, mBoundsChanged:Z

    if-eqz v3, :cond_3b

    :cond_a
    const/4 v0, 0x1

    .line 266
    .local v0, "changed":Z
    :goto_b
    if-eqz p5, :cond_3d

    .line 267
    iget-object v3, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3a

    .line 268
    iget-object v2, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 269
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_37

    .line 270
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p3

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p3

    add-int/2addr v6, p4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    iget v3, p0, mClickableScrollbarTouchArea:I

    neg-int v3, v3

    iget v4, p0, mClickableScrollbarTouchArea:I

    neg-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 275
    iget-object v3, p0, mTwParent:Landroid/view/View;

    if-eqz v3, :cond_37

    .line 276
    iget-object v3, p0, mTwParent:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mTwVerticalScrollbarRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 288
    :cond_37
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_3a
    :goto_3a
    return-void

    .line 265
    .end local v0    # "changed":Z
    :cond_3b
    const/4 v0, 0x0

    goto :goto_b

    .line 291
    .restart local v0    # "changed":Z
    :cond_3d
    iget-object v3, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3a

    .line 292
    iget-object v2, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 293
    .restart local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_67

    .line 294
    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p3

    add-int/2addr v5, p4

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    iget v3, p0, mClickableScrollbarTouchArea:I

    neg-int v3, v3

    iget v4, p0, mClickableScrollbarTouchArea:I

    neg-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 299
    iget-object v3, p0, mTwParent:Landroid/view/View;

    if-eqz v3, :cond_67

    .line 300
    iget-object v3, p0, mTwParent:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mTwHorizontalScrollbarRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 312
    :cond_67
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3a
.end method

.method private drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "vertical"    # Z

    .prologue
    .line 249
    if-eqz p3, :cond_11

    .line 250
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 255
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_4
    if-eqz v0, :cond_10

    .line 256
    iget-boolean v1, p0, mBoundsChanged:Z

    if-eqz v1, :cond_d

    .line 257
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 259
    :cond_d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    :cond_10
    return-void

    .line 252
    .end local v0    # "track":Landroid/graphics/drawable/Drawable;
    :cond_11
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "track":Landroid/graphics/drawable/Drawable;
    goto :goto_4
.end method

.method private propagateCurrentState(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 354
    if-eqz p1, :cond_25

    .line 355
    iget-boolean v0, p0, mMutated:Z

    if-eqz v0, :cond_9

    .line 356
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 359
    :cond_9
    invoke-virtual {p0}, getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 360
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 362
    iget-boolean v0, p0, mHasSetAlpha:Z

    if-eqz v0, :cond_1c

    .line 363
    iget v0, p0, mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 366
    :cond_1c
    iget-boolean v0, p0, mHasSetColorFilter:Z

    if-eqz v0, :cond_25

    .line 367
    iget-object v0, p0, mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 370
    :cond_25
    return-void
.end method

.method private twMakeColorFilter()V
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 84
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 85
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    .line 86
    .local v1, "mat":[F
    sget-boolean v2, TABLET_KK:Z

    if-eqz v2, :cond_2c

    sget-object v2, isDeviceDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, isThemeHoloDark:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 87
    new-array v1, v3, [F

    .end local v1    # "mat":[F
    fill-array-data v1, :array_4c

    .line 106
    .restart local v1    # "mat":[F
    :goto_21
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 107
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, mTwCMCF:Landroid/graphics/ColorMatrixColorFilter;

    .line 108
    return-void

    .line 92
    :cond_2c
    sget-boolean v2, TABLET_KK:Z

    if-eqz v2, :cond_46

    sget-object v2, isDeviceDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, isThemeHoloDark:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_46

    .line 93
    new-array v1, v3, [F

    .end local v1    # "mat":[F
    fill-array-data v1, :array_78

    .restart local v1    # "mat":[F
    goto :goto_21

    .line 99
    :cond_46
    new-array v1, v3, [F

    .end local v1    # "mat":[F
    fill-array-data v1, :array_a4

    .restart local v1    # "mat":[F
    goto :goto_21

    .line 87
    :array_4c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x41980000    # 19.0f
        0x0
        0x0
        0x0
        0x0
        0x430b0000    # 139.0f
        0x0
        0x0
        0x0
        0x0
        0x433c0000    # 188.0f
        0x0
        0x0
        0x0
        0x40a00000    # 5.0f
        0x0
    .end array-data

    .line 93
    :array_78
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x41980000    # 19.0f
        0x0
        0x0
        0x0
        0x0
        0x430b0000    # 139.0f
        0x0
        0x0
        0x0
        0x0
        0x433c0000    # 188.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 99
    :array_a4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x432e0000    # 174.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-boolean v0, v0, mVertical:Z

    move/from16 v17, v0

    .line 174
    .local v17, "vertical":Z
    move-object/from16 v0, p0

    iget v11, v0, mExtent:I

    .line 175
    .local v11, "extent":I
    move-object/from16 v0, p0

    iget v14, v0, mRange:I

    .line 177
    .local v14, "range":I
    const/4 v10, 0x1

    .line 178
    .local v10, "drawTrack":Z
    const/4 v9, 0x1

    .line 179
    .local v9, "drawThumb":Z
    if-lez v11, :cond_14

    if-gt v14, v11, :cond_1b

    .line 180
    :cond_14
    if-eqz v17, :cond_36

    move-object/from16 v0, p0

    iget-boolean v10, v0, mAlwaysDrawVerticalTrack:Z

    .line 181
    :goto_1a
    const/4 v9, 0x0

    .line 184
    :cond_1b
    invoke-virtual/range {p0 .. p0}, getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 185
    .local v13, "r":Landroid/graphics/Rect;
    iget v3, v13, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v3, v13, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v13, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    sget-object v8, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 212
    :cond_35
    :goto_35
    return-void

    .line 180
    .end local v13    # "r":Landroid/graphics/Rect;
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v10, v0, mAlwaysDrawHorizontalTrack:Z

    goto :goto_1a

    .line 189
    .restart local v13    # "r":Landroid/graphics/Rect;
    :cond_3b
    if-eqz v10, :cond_46

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v13, v2}, drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 193
    :cond_46
    if-eqz v9, :cond_35

    .line 194
    if-eqz v17, :cond_84

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 195
    .local v15, "size":I
    :goto_4e
    if-eqz v17, :cond_89

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 196
    .local v16, "thickness":I
    :goto_54
    mul-int/lit8 v12, v16, 0x2

    .line 199
    .local v12, "minLength":I
    int-to-float v3, v15

    int-to-float v4, v11

    mul-float/2addr v3, v4

    int-to-float v4, v14

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 200
    .local v7, "length":I
    if-ge v7, v12, :cond_62

    .line 201
    move v7, v12

    .line 205
    :cond_62
    sub-int v3, v15, v7

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, mOffset:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-int v4, v14, v11

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 206
    .local v6, "offset":I
    sub-int v3, v15, v7

    if-le v6, v3, :cond_79

    .line 207
    sub-int v6, v15, v7

    :cond_79
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v13

    move/from16 v8, v17

    .line 210
    invoke-direct/range {v3 .. v8}, drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    goto :goto_35

    .line 194
    .end local v6    # "offset":I
    .end local v7    # "length":I
    .end local v12    # "minLength":I
    .end local v15    # "size":I
    .end local v16    # "thickness":I
    :cond_84
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v15

    goto :goto_4e

    .line 195
    .restart local v15    # "size":I
    :cond_89
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v16

    goto :goto_54
.end method

.method public getAlpha()I
    .registers 2

    .prologue
    .line 423
    iget v0, p0, mAlpha:I

    return v0
.end method

.method public getAlwaysDrawHorizontalTrack()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public getAlwaysDrawVerticalTrack()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 452
    const/4 v0, -0x3

    return v0
.end method

.method public getSize(Z)I
    .registers 4
    .param p1, "vertical"    # Z

    .prologue
    const/4 v0, 0x0

    .line 373
    if-eqz p1, :cond_19

    .line 374
    iget-object v1, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 377
    :cond_d
    :goto_d
    return v0

    .line 374
    :cond_e
    iget-object v1, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_d

    .line 377
    :cond_19
    iget-object v1, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_24

    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_d

    :cond_24
    iget-object v1, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_d
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 457
    invoke-virtual {p0}, invalidateSelf()V

    .line 458
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_c
    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_18
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_24
    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_30

    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_30
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_36
    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, mutate()Landroid/widget/ScrollBarDrawable;

    move-result-object v0

    return-object v0
.end method

.method public mutate()Landroid/widget/ScrollBarDrawable;
    .registers 2

    .prologue
    .line 384
    iget-boolean v0, p0, mMutated:Z

    if-nez v0, :cond_31

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_31

    .line 385
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 386
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 388
    :cond_13
    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 389
    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 391
    :cond_1c
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    .line 392
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 394
    :cond_25
    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    .line 395
    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 397
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, mMutated:Z

    .line 399
    :cond_31
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, mBoundsChanged:Z

    .line 218
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 4
    .param p1, "state"    # [I

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 232
    .local v0, "changed":Z
    iget-object v1, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 233
    iget-object v1, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 235
    :cond_f
    iget-object v1, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    .line 236
    iget-object v1, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 238
    :cond_1a
    iget-object v1, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_25

    .line 239
    iget-object v1, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 241
    :cond_25
    iget-object v1, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_30

    .line 242
    iget-object v1, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 244
    :cond_30
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 462
    invoke-virtual {p0, p2, p3, p4}, scheduleSelf(Ljava/lang/Runnable;J)V

    .line 463
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 404
    iput p1, p0, mAlpha:I

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasSetAlpha:Z

    .line 407
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 408
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 410
    :cond_e
    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 411
    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 413
    :cond_17
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 414
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 416
    :cond_20
    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    .line 417
    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 419
    :cond_29
    return-void
.end method

.method public setAlwaysDrawHorizontalTrack(Z)V
    .registers 2
    .param p1, "alwaysDrawTrack"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, mAlwaysDrawHorizontalTrack:Z

    .line 121
    return-void
.end method

.method public setAlwaysDrawVerticalTrack(Z)V
    .registers 2
    .param p1, "alwaysDrawTrack"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, mAlwaysDrawVerticalTrack:Z

    .line 133
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 428
    iput-object p1, p0, mColorFilter:Landroid/graphics/ColorFilter;

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasSetColorFilter:Z

    .line 431
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 432
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 434
    :cond_e
    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 435
    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 437
    :cond_17
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 438
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 440
    :cond_20
    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    .line 441
    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 443
    :cond_29
    return-void
.end method

.method public setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 336
    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 337
    iget-object v0, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 340
    :cond_a
    invoke-direct {p0, p1}, propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iput-object p1, p0, mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 342
    return-void
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 345
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 346
    iget-object v0, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 349
    :cond_a
    invoke-direct {p0, p1}, propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iput-object p1, p0, mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 351
    return-void
.end method

.method public setParameters(IIIZ)V
    .registers 7
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I
    .param p4, "vertical"    # Z

    .prologue
    const/4 v1, 0x1

    .line 156
    iget-boolean v0, p0, mVertical:Z

    if-eq v0, p4, :cond_9

    .line 157
    iput-boolean p4, p0, mVertical:Z

    .line 159
    iput-boolean v1, p0, mBoundsChanged:Z

    .line 162
    :cond_9
    iget v0, p0, mRange:I

    if-ne v0, p1, :cond_15

    iget v0, p0, mOffset:I

    if-ne v0, p2, :cond_15

    iget v0, p0, mExtent:I

    if-eq v0, p3, :cond_1d

    .line 163
    :cond_15
    iput p1, p0, mRange:I

    .line 164
    iput p2, p0, mOffset:I

    .line 165
    iput p3, p0, mExtent:I

    .line 167
    iput-boolean v1, p0, mRangeChanged:Z

    .line 169
    :cond_1d
    return-void
.end method

.method public setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 318
    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 319
    iget-object v0, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 322
    :cond_a
    invoke-direct {p0, p1}, propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iput-object p1, p0, mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 324
    return-void
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 327
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 328
    iget-object v0, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 331
    :cond_a
    invoke-direct {p0, p1}, propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iput-object p1, p0, mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 333
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, mVertical:Z

    if-eqz v0, :cond_38

    const-string v0, " V"

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const-string v0, " H"

    goto :goto_2f
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 467
    invoke-virtual {p0, p2}, unscheduleSelf(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method
