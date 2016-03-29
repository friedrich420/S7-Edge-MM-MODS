.class public Lcom/android/settings/IntervalSeekBar;
.super Landroid/widget/SeekBar;
.source "IntervalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/IntervalSeekBar$Pointer;,
        Lcom/android/settings/IntervalSeekBar$Line;,
        Lcom/android/settings/IntervalSeekBar$Marker;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDisableAnimator:Landroid/animation/ValueAnimator;

.field public mDisableDuration:I

.field public mDisableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field public mEnableAnimator:Landroid/animation/ValueAnimator;

.field public mEnableDuration:I

.field public mEnableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mIsAnimating:Ljava/lang/Boolean;

.field public mLine:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/settings/IntervalSeekBar$Line;",
            ">;"
        }
    .end annotation
.end field

.field public mMarkers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/settings/IntervalSeekBar$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint1:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field public mPointer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/settings/IntervalSeekBar$Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/IntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/IntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/IntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v2, 0x1f4

    const/4 v1, 0x2

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    .line 93
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    .line 94
    iput v2, p0, Lcom/android/settings/IntervalSeekBar;->mEnableDuration:I

    .line 96
    new-instance v0, Lcom/android/settings/IntervalSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IntervalSeekBar$1;-><init>(Lcom/android/settings/IntervalSeekBar;)V

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mEnableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 104
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mDisableAnimator:Landroid/animation/ValueAnimator;

    .line 105
    iput v2, p0, Lcom/android/settings/IntervalSeekBar;->mDisableDuration:I

    .line 107
    new-instance v0, Lcom/android/settings/IntervalSeekBar$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IntervalSeekBar$2;-><init>(Lcom/android/settings/IntervalSeekBar;)V

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mDisableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 133
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    .line 134
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mLine:Ljava/util/Vector;

    .line 135
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    .line 45
    iput-object p1, p0, Lcom/android/settings/IntervalSeekBar;->mContext:Landroid/content/Context;

    .line 46
    const v0, 0x7f020334

    invoke-virtual {p0, v0}, Lcom/android/settings/IntervalSeekBar;->setDrawable(I)V

    .line 47
    return-void

    .line 93
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/IntervalSeekBar;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/IntervalSeekBar;
    .param p1, "x1"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/IntervalSeekBar;->animateMarkers(F)V

    return-void
.end method

.method private animateMarkers(F)V
    .locals 8
    .param p1, "ratio"    # F

    .prologue
    .line 220
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/IntervalSeekBar$Marker;

    .line 222
    .local v2, "tempMarker":Lcom/android/settings/IntervalSeekBar$Marker;
    iget v4, v2, Lcom/android/settings/IntervalSeekBar$Marker;->mStartMarkerX:F

    iget v5, v2, Lcom/android/settings/IntervalSeekBar$Marker;->mTargetMarkerX:F

    iget v6, v2, Lcom/android/settings/IntervalSeekBar$Marker;->mStartMarkerX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v2, Lcom/android/settings/IntervalSeekBar$Marker;->mMarkerX:F

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "tempMarker":Lcom/android/settings/IntervalSeekBar$Marker;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/IntervalSeekBar$Line;

    .line 227
    .local v1, "tempLine":Lcom/android/settings/IntervalSeekBar$Line;
    iget v4, v1, Lcom/android/settings/IntervalSeekBar$Line;->mStartLineX:F

    iget v5, v1, Lcom/android/settings/IntervalSeekBar$Line;->mTargetLineX:F

    iget v6, v1, Lcom/android/settings/IntervalSeekBar$Line;->mStartLineX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v1, Lcom/android/settings/IntervalSeekBar$Line;->mLineX:F

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    .end local v1    # "tempLine":Lcom/android/settings/IntervalSeekBar$Line;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 231
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/IntervalSeekBar$Pointer;

    .line 232
    .local v3, "tempPointer":Lcom/android/settings/IntervalSeekBar$Pointer;
    iget v4, v3, Lcom/android/settings/IntervalSeekBar$Pointer;->mStartPointerX:F

    iget v5, v3, Lcom/android/settings/IntervalSeekBar$Pointer;->mTargetPointerX:F

    iget v6, v3, Lcom/android/settings/IntervalSeekBar$Pointer;->mStartPointerX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/settings/IntervalSeekBar$Pointer;->mPointerX:F

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 235
    .end local v3    # "tempPointer":Lcom/android/settings/IntervalSeekBar$Pointer;
    :cond_2
    float-to-double v4, p1

    const-wide v6, 0x3fee666666666666L    # 0.95

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 236
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    .line 237
    invoke-direct {p0}, Lcom/android/settings/IntervalSeekBar;->resetMarkers()V

    .line 239
    :cond_3
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 80
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private drawMarkers(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingTop:I

    add-int v11, v1, v2

    .line 193
    .local v11, "markerHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingTop:I

    add-int/2addr v1, v2

    int-to-float v3, v1

    .line 197
    .local v3, "lineHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingLeft:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    .line 198
    .local v4, "lineWidth":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    const-string v1, "IntervalSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawMarkers canvas.getHeight() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", lineHeight : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mPaddingTop : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mPaddingBottom : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/IntervalSeekBar;->mPaddingBottom:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mDrawable.getIntrinsicHeight()"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/IntervalSeekBar$Line;

    .line 203
    .local v14, "tempLine":Lcom/android/settings/IntervalSeekBar$Line;
    iget v8, v14, Lcom/android/settings/IntervalSeekBar$Line;->mLineX:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v4

    move v7, v3

    move v9, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 206
    .end local v14    # "tempLine":Lcom/android/settings/IntervalSeekBar$Line;
    :cond_0
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v13, v1, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/IntervalSeekBar$Pointer;

    .line 208
    .local v16, "tempPointer":Lcom/android/settings/IntervalSeekBar$Pointer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 209
    .local v12, "markerRadius":I
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/settings/IntervalSeekBar$Pointer;->mPointerX:F

    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 206
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 212
    .end local v12    # "markerRadius":I
    .end local v16    # "tempPointer":Lcom/android/settings/IntervalSeekBar$Pointer;
    :cond_1
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v13, v1, :cond_2

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/IntervalSeekBar$Marker;

    .line 214
    .local v15, "tempMarker":Lcom/android/settings/IntervalSeekBar$Marker;
    iget v1, v15, Lcom/android/settings/IntervalSeekBar$Marker;->mMarkerX:F

    float-to-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 217
    .end local v15    # "tempMarker":Lcom/android/settings/IntervalSeekBar$Marker;
    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 50
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mRect:Landroid/graphics/Rect;

    .line 52
    iget-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/IntervalSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 55
    .local v1, "tint_list":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v1}, Lcom/android/settings/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 58
    .local v0, "strokeWidth":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060117

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    .line 63
    iget-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    const v3, 0x7f0a011d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mPaint1:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    .line 67
    iget-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    const v3, 0x106011d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v2, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 71
    return-void
.end method

.method private initEnableMarkers(Z)V
    .locals 14
    .param p1, "enable"    # Z

    .prologue
    const/high16 v13, 0x40400000    # 3.0f

    const/4 v12, 0x0

    .line 138
    iget v10, p0, Lcom/android/settings/IntervalSeekBar;->mWidth:I

    iget v11, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v10, v11

    int-to-float v9, v10

    .line 143
    .local v9, "totalLength":F
    if-eqz p1, :cond_0

    .line 144
    const/4 v0, 0x6

    .line 145
    .local v0, "initialCount":I
    const/16 v7, 0xa

    .line 151
    .local v7, "targetCount":I
    :goto_0
    int-to-float v10, v0

    div-float v1, v9, v10

    .line 152
    .local v1, "initialDistance":F
    int-to-float v10, v7

    div-float v8, v9, v10

    .line 154
    .local v8, "targetDistance":F
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_1
    if-ge v5, v7, :cond_1

    .line 155
    new-instance v4, Lcom/android/settings/IntervalSeekBar$Marker;

    invoke-direct {v4, v12}, Lcom/android/settings/IntervalSeekBar$Marker;-><init>(Lcom/android/settings/IntervalSeekBar$1;)V

    .line 156
    .local v4, "marker":Lcom/android/settings/IntervalSeekBar$Marker;
    iput v1, v4, Lcom/android/settings/IntervalSeekBar$Marker;->mStartMarkerX:F

    iput v1, v4, Lcom/android/settings/IntervalSeekBar$Marker;->mMarkerX:F

    .line 157
    iput v8, v4, Lcom/android/settings/IntervalSeekBar$Marker;->mTargetMarkerX:F

    .line 158
    iget-object v10, p0, Lcom/android/settings/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    .end local v0    # "initialCount":I
    .end local v1    # "initialDistance":F
    .end local v4    # "marker":Lcom/android/settings/IntervalSeekBar$Marker;
    .end local v5    # "n":I
    .end local v7    # "targetCount":I
    .end local v8    # "targetDistance":F
    :cond_0
    const/16 v0, 0xa

    .line 148
    .restart local v0    # "initialCount":I
    const/4 v7, 0x6

    .restart local v7    # "targetCount":I
    goto :goto_0

    .line 161
    .restart local v1    # "initialDistance":F
    .restart local v5    # "n":I
    .restart local v8    # "targetDistance":F
    :cond_1
    new-instance v2, Lcom/android/settings/IntervalSeekBar$Line;

    invoke-direct {v2, v12}, Lcom/android/settings/IntervalSeekBar$Line;-><init>(Lcom/android/settings/IntervalSeekBar$1;)V

    .line 162
    .local v2, "line":Lcom/android/settings/IntervalSeekBar$Line;
    if-eqz p1, :cond_2

    .line 163
    iput v9, v2, Lcom/android/settings/IntervalSeekBar$Line;->mStartLineX:F

    iput v9, v2, Lcom/android/settings/IntervalSeekBar$Line;->mLineX:F

    .line 164
    mul-float v10, v13, v8

    sub-float v10, v9, v10

    iput v10, v2, Lcom/android/settings/IntervalSeekBar$Line;->mTargetLineX:F

    .line 169
    :goto_2
    iget-object v10, p0, Lcom/android/settings/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v10, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v6, Lcom/android/settings/IntervalSeekBar$Pointer;

    invoke-direct {v6, v12}, Lcom/android/settings/IntervalSeekBar$Pointer;-><init>(Lcom/android/settings/IntervalSeekBar$1;)V

    .line 172
    .local v6, "pointer":Lcom/android/settings/IntervalSeekBar$Pointer;
    iget-object v10, p0, Lcom/android/settings/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 173
    sget v3, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    .line 177
    .local v3, "mSelectedFontSize":I
    :goto_3
    int-to-float v10, v3

    mul-float/2addr v10, v1

    iput v10, v6, Lcom/android/settings/IntervalSeekBar$Pointer;->mStartPointerX:F

    iput v10, v6, Lcom/android/settings/IntervalSeekBar$Pointer;->mPointerX:F

    .line 178
    int-to-float v10, v3

    mul-float/2addr v10, v8

    iput v10, v6, Lcom/android/settings/IntervalSeekBar$Pointer;->mTargetPointerX:F

    .line 179
    iget-object v10, p0, Lcom/android/settings/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v10, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 180
    return-void

    .line 166
    .end local v3    # "mSelectedFontSize":I
    .end local v6    # "pointer":Lcom/android/settings/IntervalSeekBar$Pointer;
    :cond_2
    mul-float v10, v13, v1

    sub-float v10, v9, v10

    iput v10, v2, Lcom/android/settings/IntervalSeekBar$Line;->mStartLineX:F

    iput v10, v2, Lcom/android/settings/IntervalSeekBar$Line;->mLineX:F

    .line 167
    iput v9, v2, Lcom/android/settings/IntervalSeekBar$Line;->mTargetLineX:F

    goto :goto_2

    .line 175
    .restart local v6    # "pointer":Lcom/android/settings/IntervalSeekBar$Pointer;
    :cond_3
    sget v3, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    .restart local v3    # "mSelectedFontSize":I
    goto :goto_3
.end method

.method private resetMarkers()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mMarkers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mLine:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mPointer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 186
    return-void
.end method


# virtual methods
.method public animationStart(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/IntervalSeekBar;->initEnableMarkers(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/settings/IntervalSeekBar;->mEnableDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    iget-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/settings/IntervalSeekBar;->mEnableListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mEnableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    .line 89
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/settings/IntervalSeekBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 245
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mIsAnimating:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 247
    invoke-direct {p0, p1}, Lcom/android/settings/IntervalSeekBar;->drawMarkers(Landroid/graphics/Canvas;)V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :goto_0
    monitor-exit p0

    return-void

    .line 250
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingTop:I

    add-int v3, v4, v5

    .line 254
    .local v3, "translate_dx":I
    iget v4, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingLeft:I

    iget-object v5, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    const-string v4, "IntervalSeekBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDraw canvas.getHeight() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", translate_dx : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPaddingTop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingTop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPaddingBottom : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingBottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDrawable.getIntrinsicHeight()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/IntervalSeekBar;->getMax()I

    move-result v2

    .line 260
    .local v2, "num_of_interval":I
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    const/4 v2, 0x2

    .line 263
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/IntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v2

    div-float v1, v4, v5

    .line 264
    .local v1, "interval":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/settings/IntervalSeekBar;->mWidth:I

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 267
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    iget-object v4, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 273
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 243
    .end local v0    # "i":I
    .end local v1    # "interval":F
    .end local v2    # "num_of_interval":I
    .end local v3    # "translate_dx":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setDrawable(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Lcom/android/settings/IntervalSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/IntervalSeekBar;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method
