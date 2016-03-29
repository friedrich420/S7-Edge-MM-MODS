.class public Lcom/android/systemui/qs/QSTileIconBackground;
.super Landroid/graphics/drawable/LayerDrawable;
.source "QSTileIconBackground.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x1f4

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "QSTileIconBackground"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAnim:Landroid/animation/ValueAnimator;

.field private mIsOpenTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "QSTileIconBackground"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTileIconBackground;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 48
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mIsOpenTheme:Z

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileIconBackground;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSTileIconBackground;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileIconBackground;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private startBackgroundAnimation()V
    .locals 8

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x40000000    # 2.0f

    .line 84
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mBackgroundAnim:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_0

    .line 85
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileIconBackground;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 87
    .local v3, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v4, v5

    .line 88
    .local v1, "dx":F
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v4, v5

    .line 89
    .local v2, "dy":F
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 90
    .local v0, "dstRect2":Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v1, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 91
    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float v5, v2, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 92
    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float v5, v1, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 93
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float v5, v2, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 95
    new-instance v4, Landroid/animation/RectEvaluator;

    invoke-direct {v4}, Landroid/animation/RectEvaluator;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mBackgroundAnim:Landroid/animation/ValueAnimator;

    .line 96
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mBackgroundAnim:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/qs/QSTileIconBackground$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/QSTileIconBackground$1;-><init>(Lcom/android/systemui/qs/QSTileIconBackground;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mBackgroundAnim:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mBackgroundAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 106
    .end local v0    # "dstRect2":Landroid/graphics/Rect;
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "srcRect":Landroid/graphics/Rect;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mBackgroundAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    const v1, 0x7f020634

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileIconBackground;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-static {p1}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mIsOpenTheme:Z

    .line 64
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileIconBackground;->mIsOpenTheme:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 6
    .param p1, "state"    # [I

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v3

    .line 75
    .local v3, "ret":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 76
    .local v4, "s":I
    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileIconBackground;->startBackgroundAnimation()V

    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "s":I
    :cond_1
    return v3
.end method
