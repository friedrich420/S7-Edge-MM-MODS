.class public Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
.super Landroid/view/View;
.source "FingerprintLocationAnimationView.java"


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mDotPaint:Landroid/graphics/Paint;

.field private final mDotRadius:I

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFractionCenterX:F

.field private final mFractionCenterY:F

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxPulseRadius:I

.field private final mPulsePaint:Landroid/graphics/Paint;

.field private mPulseRadius:F

.field private mRadiusAnimator:Landroid/animation/ValueAnimator;

.field private final mStartPhaseRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x10c000e

    const/4 v5, 0x1

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    .line 173
    new-instance v2, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$5;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$5;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f120000

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFractionCenterX:F

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFractionCenterY:F

    .line 64
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 65
    .local v1, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010435

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 67
    .local v0, "color":I
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 73
    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startPhase()V

    return-void
.end method

.method private drawDot(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    return-void
.end method

.method private drawPulse(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    return-void
.end method

.method private getCenterX()F
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFractionCenterX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getCenterY()F
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFractionCenterY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private startAlphaAnimation()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 153
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$3;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$4;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 169
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 170
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 171
    return-void

    .line 152
    :array_0
    .array-data 4
        0x3e19999a    # 0.15f
        0x0
    .end array-data
.end method

.method private startPhase()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startRadiusAnimation()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startAlphaAnimation()V

    .line 116
    return-void
.end method

.method private startRadiusAnimation()V
    .locals 4

    .prologue
    .line 119
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 120
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$2;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 145
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 147
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    .line 148
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->drawPulse(Landroid/graphics/Canvas;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->drawDot(Landroid/graphics/Canvas;)V

    .line 81
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startPhase()V

    .line 101
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 111
    :cond_1
    return-void
.end method
