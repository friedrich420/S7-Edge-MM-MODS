.class public Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;
.super Landroid/view/View;
.source "AnimatedBrightnessIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private animationEnableValue:I

.field private bmIcon:Landroid/graphics/Bitmap;

.field private brightnessValueMax:I

.field private brightnessValueMin:I

.field private cx:F

.field private cy:F

.field private defaultCircleRadius:F

.field private defaultCircleX:F

.field private defaultCircleY:F

.field private defaultImageHeight:I

.field private defaultImageWidth:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mbmIconPaint:Landroid/graphics/Paint;

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;

.field private radius:F

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v2, 0x14

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    .line 40
    iput v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    .line 41
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    .line 43
    iput v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->animationEnableValue:I

    .line 50
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimationValue:F

    .line 51
    const-string v1, "AnimatedBrightnessIconView"

    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->TAG:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->init()V

    .line 65
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 66
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    .line 67
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    .line 68
    return-void
.end method

.method private changeValue()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->bmIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageWidth:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 132
    .local v0, "value":F
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    .line 133
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    .line 134
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    .line 135
    return-void
.end method

.method private getIconRGBColor(I)I
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 204
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v3, v4, 0xff

    .local v3, "red":I
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v2, v4, 0xff

    .local v2, "green":I
    and-int/lit16 v1, p1, 0xff

    .local v1, "blue":I
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v0, v4, 0xff

    .line 205
    .local v0, "alpha":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v1

    return v4
.end method

.method private getValue()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    int-to-float v0, v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0252

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageWidth:I

    .line 74
    const v1, 0x7f0c0253

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultImageHeight:I

    .line 77
    const v1, 0x7f0c0254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    .line 78
    const v1, 0x7f0c0255

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    .line 79
    const v1, 0x7f0c0256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    .line 81
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    .line 82
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleX:F

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    .line 83
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->defaultCircleY:F

    iput v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    .line 85
    const v1, 0x7f0201de

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setValue(I)V

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mbmIconPaint:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->updateIconTintColor()V

    .line 94
    return-void
.end method

.method private setAnimation(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->getValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$1;-><init>(Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 111
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimationValue:F

    .line 115
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimationValue:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->invalidate()V

    .line 117
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->bmIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mbmIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 125
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cx:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->cy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->radius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 127
    return-void
.end method

.method public setIcon(IZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "needChange"    # Z

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->bmIcon:Landroid/graphics/Bitmap;

    .line 144
    if-eqz p2, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->changeValue()V

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->invalidate()V

    .line 148
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x64

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 177
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMax:I

    iget v2, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->brightnessValueMin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 179
    if-le p1, v3, :cond_2

    .line 180
    const/16 p1, 0x64

    .line 188
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->animationEnableValue:I

    if-le v0, v1, :cond_5

    .line 189
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setAnimation(I)V

    .line 195
    :goto_1
    return-void

    .line 181
    :cond_2
    const/16 v0, 0x60

    if-lt p1, v0, :cond_3

    if-ge p1, v3, :cond_3

    .line 182
    const/16 p1, 0x60

    goto :goto_0

    .line 183
    :cond_3
    const/4 v0, 0x6

    if-le p1, v0, :cond_4

    const/16 v0, 0xa

    if-gt p1, v0, :cond_4

    .line 184
    const/16 p1, 0xa

    goto :goto_0

    .line 185
    :cond_4
    if-gez p1, :cond_1

    .line 186
    const/4 p1, 0x0

    goto :goto_0

    .line 193
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->value:I

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->invalidate()V

    goto :goto_1
.end method

.method public updateIconTintColor()V
    .locals 4

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->getIconRGBColor(I)I

    move-result v0

    .line 199
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->mbmIconPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 201
    return-void
.end method
