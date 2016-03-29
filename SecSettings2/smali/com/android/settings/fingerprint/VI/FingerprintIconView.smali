.class public Lcom/android/settings/fingerprint/VI/FingerprintIconView;
.super Landroid/view/View;
.source "FingerprintIconView.java"


# instance fields
.field bgPaint:Landroid/graphics/Paint;

.field height:I

.field linePaint:Landroid/graphics/Paint;

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fingerprint/VI/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private final mSvg:Lcom/android/settings/fingerprint/VI/SvgHelper;

.field public percent:F

.field private phoneBit:Landroid/graphics/Bitmap;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->bgPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Lcom/android/settings/fingerprint/VI/SvgHelper;

    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/android/settings/fingerprint/VI/SvgHelper;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mSvg:Lcom/android/settings/fingerprint/VI/SvgHelper;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mPaths:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->bgPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Lcom/android/settings/fingerprint/VI/SvgHelper;

    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/android/settings/fingerprint/VI/SvgHelper;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mSvg:Lcom/android/settings/fingerprint/VI/SvgHelper;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mPaths:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->bgPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Lcom/android/settings/fingerprint/VI/SvgHelper;

    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/android/settings/fingerprint/VI/SvgHelper;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mSvg:Lcom/android/settings/fingerprint/VI/SvgHelper;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mPaths:Ljava/util/List;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/VI/FingerprintIconView;)Lcom/android/settings/fingerprint/VI/SvgHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mSvg:Lcom/android/settings/fingerprint/VI/SvgHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/VI/FingerprintIconView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mPaths:Ljava/util/List;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 62
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    const-string v2, "#fedf4d"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->bgPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->bgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->percent:F

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 76
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView$1;-><init>(Lcom/android/settings/fingerprint/VI/FingerprintIconView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e4

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->phoneBit:Landroid/graphics/Bitmap;

    .line 99
    return-void
.end method


# virtual methods
.method public beginAnimation(Z)V
    .locals 8
    .param p1, "forword"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    const/high16 v3, 0x3f800000    # 1.0f

    .line 104
    .local v3, "start":F
    const/4 v1, 0x0

    .line 106
    .local v1, "end":F
    if-nez p1, :cond_0

    .line 107
    const/4 v3, 0x0

    .line 108
    const/high16 v1, 0x3f800000    # 1.0f

    .line 111
    :cond_0
    const-string v4, "current"

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v6

    aput v1, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 113
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 114
    .local v2, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/settings/fingerprint/VI/FingerprintIconView$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/VI/FingerprintIconView$2;-><init>(Lcom/android/settings/fingerprint/VI/FingerprintIconView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    const-wide/16 v4, 0x320

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    new-instance v4, Lcom/android/settings/fingerprint/VI/SineInOut90;

    invoke-direct {v4}, Lcom/android/settings/fingerprint/VI/SineInOut90;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 130
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    iget-object v5, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->phoneBit:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    iget-object v5, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mPaths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 139
    iget v5, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->width:I

    int-to-float v5, v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->height:I

    int-to-float v6, v6

    const v7, 0x3db851ec    # 0.09f

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mPaths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 143
    iget-object v5, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->mPaths:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/VI/SvgHelper$SvgPath;

    .line 144
    .local v0, "aPath":Lcom/android/settings/fingerprint/VI/SvgHelper$SvgPath;
    new-instance v4, Landroid/graphics/PathMeasure;

    iget-object v5, v0, Lcom/android/settings/fingerprint/VI/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    invoke-direct {v4, v5, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 145
    .local v4, "measure":Landroid/graphics/PathMeasure;
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    .line 146
    .local v3, "length":F
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v8

    const/4 v6, 0x1

    aput v3, v5, v6

    iget v6, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->percent:F

    mul-float/2addr v6, v3

    invoke-direct {v1, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 147
    .local v1, "effect":Landroid/graphics/PathEffect;
    iget-object v5, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 148
    iget-object v5, v0, Lcom/android/settings/fingerprint/VI/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "aPath":Lcom/android/settings/fingerprint/VI/SvgHelper$SvgPath;
    .end local v1    # "effect":Landroid/graphics/PathEffect;
    .end local v2    # "i":I
    .end local v3    # "length":F
    .end local v4    # "measure":Landroid/graphics/PathMeasure;
    :cond_0
    return-void
.end method
