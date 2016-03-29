.class public Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
.super Landroid/view/View;
.source "KeyguardEffectViewLayered.java"

# interfaces
.implements Lcom/android/keyguard/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;,
        Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;
    }
.end annotation


# static fields
.field private static final DEBUG_COORDINATE:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_INIT:Z = true

.field private static final DENSITY:F = 1.0f

.field private static final DRAW_RECT:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewLayered"


# instance fields
.field private imageRectBottom:Landroid/graphics/RectF;

.field private imageRectLeft:Landroid/graphics/RectF;

.field private imageRectRight:Landroid/graphics/RectF;

.field private imageRectTop:Landroid/graphics/RectF;

.field private mBackgroundColor:Ljava/lang/String;

.field private mBitmapImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mCancelScaleAnimator:Landroid/animation/ValueAnimator;

.field private mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDownTouchX:F

.field private mDownTouchY:F

.field private mFirstBorder:I

.field private mLastBottom:I

.field private mLastParsedXml:I

.field private mLastRight:I

.field private mMatricsHeight:I

.field private mMatricsWidth:I

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOriginScale:F

.field mPaint:Landroid/graphics/Paint;

.field private mResumed:Z

.field mSolidColorPaint:Landroid/graphics/Paint;

.field private mStatusBarHeight:I

.field private mUnlockStarted:Z

.field private mViewHeight:I

.field private mViewWidth:I

.field private trimRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    .line 56
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mSolidColorPaint:Landroid/graphics/Paint;

    .line 75
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 79
    iput v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mLastParsedXml:I

    .line 1428
    new-instance v1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$8;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 96
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    .line 97
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mStatusBarHeight:I

    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mFirstBorder:I

    .line 101
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 102
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDisplay:Landroid/view/Display;

    .line 104
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsWidth:I

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsHeight:I

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 117
    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x450c0000    # 2240.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F

    .line 118
    const-string v1, "KeyguardEffectViewLayered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOriginScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->updateWallpaper()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mLastParsedXml:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    .param p2, "x2"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mLastParsedXml:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleY(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->imageRectLeft:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->imageRectRight:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->imageRectTop:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->imageRectBottom:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->setPreloadWallpaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->init()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentRotateY(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateAlpha(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->updateWallpaper()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Landroid/graphics/RectF;
    .param p2, "x2"    # Landroid/graphics/RectF;
    .param p3, "x3"    # Landroid/graphics/Rect;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mFirstBorder:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered;
    .param p1, "x1"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    return-void
.end method

.method private calculateAlpha(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 10
    .param p1, "bitmapImage"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .prologue
    .line 811
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->getDistance()F

    move-result v1

    float-to-double v2, v1

    .line 812
    .local v2, "distance":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getAlpha()F

    move-result v6

    sub-float/2addr v1, v6

    float-to-double v6, v1

    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mFirstBorder:I

    int-to-double v8, v1

    div-double v8, v2, v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v0, v4

    .line 813
    .local v0, "calculatedAlpha":F
    invoke-virtual {p1, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->setCalculatedAlpha(F)V

    .line 814
    return-void
.end method

.method private calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V
    .locals 14
    .param p1, "bitmapImage"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    .param p2, "distance"    # F

    .prologue
    .line 865
    iget v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F

    iget v8, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mFirstBorder:I

    int-to-float v8, v8

    div-float v8, p2, v8

    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getScale()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float v6, v7, v8

    .line 867
    .local v6, "targetScale":F
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F

    move-result v7

    float-to-double v8, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentRotateY(Landroid/graphics/Matrix;)F

    move-result v7

    float-to-double v10, v7

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 869
    .local v1, "currentScale":F
    div-float v3, v6, v1

    .line 871
    .local v3, "deltaScale":F
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v7

    mul-float v2, v7, v1

    .line 872
    .local v2, "currentWidth":F
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v7

    mul-float v0, v7, v1

    .line 875
    .local v0, "currentHeight":F
    iget v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v4, v7

    .line 876
    .local v4, "px":F
    iget v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v5, v7

    .line 888
    .local v5, "py":F
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 889
    return-void
.end method

.method private calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    .locals 18
    .param p1, "bitmapImage"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    .param p2, "movedX"    # F
    .param p3, "movedY"    # F

    .prologue
    .line 817
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getRate()F

    move-result v12

    mul-float v10, p2, v12

    .line 818
    .local v10, "targetTranslateX":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getRate()F

    move-result v12

    mul-float v11, p3, v12

    .line 820
    .local v11, "targetTranslateY":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getDirection()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 821
    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v10, v12

    .line 822
    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v11, v12

    .line 826
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getOriginMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 827
    .local v7, "targetMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 830
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 832
    .local v8, "targetPivotX":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 836
    .local v9, "targetPivotY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentRotateY(Landroid/graphics/Matrix;)F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v4, v12

    .line 840
    .local v4, "currentScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getWidth()F

    move-result v13

    mul-float/2addr v13, v4

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 842
    .local v2, "currentPivotX":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getHeight()F

    move-result v13

    mul-float/2addr v13, v4

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 846
    .local v3, "currentPivotY":I
    sub-int v5, v8, v2

    .line 847
    .local v5, "deltaX":I
    sub-int v6, v9, v3

    .line 861
    .local v6, "deltaY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    int-to-float v13, v5

    int-to-float v14, v6

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 862
    return-void
.end method

.method private calculateTrimRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 9
    .param p1, "imageRect"    # Landroid/graphics/RectF;
    .param p2, "trimRect"    # Landroid/graphics/RectF;
    .param p3, "screenRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    .line 620
    iget v2, p2, Landroid/graphics/RectF;->left:F

    .line 621
    .local v2, "left":F
    iget v3, p2, Landroid/graphics/RectF;->right:F

    .line 622
    .local v3, "right":F
    iget v4, p2, Landroid/graphics/RectF;->top:F

    .line 623
    .local v4, "top":F
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 624
    .local v0, "bottom":F
    const/4 v1, 0x0

    .line 627
    .local v1, "candidate":F
    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget v6, p3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    .line 628
    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 629
    iget v5, p1, Landroid/graphics/RectF;->left:F

    mul-float v1, v5, v7

    .line 630
    cmpg-float v5, v1, v2

    if-gez v5, :cond_0

    cmpl-float v5, v1, v8

    if-gez v5, :cond_1

    :cond_0
    cmpl-float v5, v2, v7

    if-nez v5, :cond_2

    cmpl-float v5, v1, v8

    if-ltz v5, :cond_2

    .line 631
    :cond_1
    move v2, v1

    .line 634
    :cond_2
    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_8

    .line 635
    iget v5, p3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v5, v6

    .line 636
    cmpl-float v5, v1, v3

    if-lez v5, :cond_3

    .line 637
    move v3, v1

    .line 670
    :cond_3
    :goto_0
    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_c

    .line 671
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 672
    iget v5, p1, Landroid/graphics/RectF;->top:F

    mul-float v1, v5, v7

    .line 673
    cmpg-float v5, v1, v4

    if-gez v5, :cond_4

    cmpl-float v5, v1, v8

    if-gez v5, :cond_5

    :cond_4
    cmpl-float v5, v4, v7

    if-nez v5, :cond_6

    cmpl-float v5, v1, v8

    if-ltz v5, :cond_6

    .line 674
    :cond_5
    move v4, v1

    .line 677
    :cond_6
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_b

    .line 678
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v5, v6

    .line 679
    cmpl-float v5, v1, v0

    if-lez v5, :cond_7

    .line 680
    move v0, v1

    .line 711
    :cond_7
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 716
    return-object p2

    .line 640
    :cond_8
    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v5, v6

    .line 641
    cmpl-float v5, v1, v3

    if-lez v5, :cond_3

    .line 642
    move v3, v1

    goto :goto_0

    .line 648
    :cond_9
    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget v6, p3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_3

    .line 655
    const/4 v2, 0x0

    .line 656
    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    .line 657
    iget v5, p3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v5, v6

    .line 658
    cmpl-float v5, v1, v3

    if-lez v5, :cond_3

    .line 659
    move v3, v1

    goto :goto_0

    .line 662
    :cond_a
    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v5, v6

    .line 663
    cmpl-float v5, v1, v3

    if-lez v5, :cond_3

    .line 664
    move v3, v1

    goto/16 :goto_0

    .line 683
    :cond_b
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v5, v6

    .line 684
    cmpl-float v5, v1, v0

    if-lez v5, :cond_7

    .line 685
    move v0, v1

    goto :goto_1

    .line 691
    :cond_c
    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget v6, p3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_7

    .line 698
    const/4 v4, 0x0

    .line 699
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_d

    .line 700
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v5, v6

    .line 701
    cmpl-float v5, v1, v0

    if-lez v5, :cond_7

    .line 702
    move v0, v1

    goto :goto_1

    .line 705
    :cond_d
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v5, v6

    .line 706
    cmpl-float v5, v1, v0

    if-lez v5, :cond_7

    .line 707
    move v0, v1

    goto/16 :goto_1
.end method

.method private getCurrentRotateY(Landroid/graphics/Matrix;)F
    .locals 2
    .param p1, "drawMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1076
    const/16 v1, 0x9

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1079
    .local v0, "matrix":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1081
    const/4 v1, 0x3

    aget v1, v0, v1

    return v1

    .line 1076
    :array_0
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
    .end array-data
.end method

.method private getCurrentScaleX(Landroid/graphics/Matrix;)F
    .locals 2
    .param p1, "drawMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1058
    const/16 v1, 0x9

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1061
    .local v0, "matrix":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1063
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 1058
    :array_0
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
    .end array-data
.end method

.method private getCurrentScaleY(Landroid/graphics/Matrix;)F
    .locals 2
    .param p1, "drawMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1067
    const/16 v1, 0x9

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1070
    .local v0, "matrix":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1072
    const/4 v1, 0x4

    aget v1, v0, v1

    return v1

    .line 1067
    :array_0
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
    .end array-data
.end method

.method private getCurrentTranslateX(Landroid/graphics/Matrix;)F
    .locals 2
    .param p1, "drawMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1085
    const/16 v1, 0x9

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1088
    .local v0, "matrix":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1090
    const/4 v1, 0x2

    aget v1, v0, v1

    return v1

    .line 1085
    :array_0
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
    .end array-data
.end method

.method private getCurrentTranslateY(Landroid/graphics/Matrix;)F
    .locals 2
    .param p1, "drawMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1094
    const/16 v1, 0x9

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 1097
    .local v0, "matrix":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1099
    const/4 v1, 0x5

    aget v1, v0, v1

    return v1

    .line 1094
    :array_0
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
    .end array-data
.end method

.method private init()V
    .locals 5

    .prologue
    .line 137
    const-string v2, "KeyguardEffectViewLayered"

    const-string v3, "init()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 139
    :cond_0
    const-string v2, "KeyguardEffectViewLayered"

    const-string v3, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 143
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 144
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    iget-boolean v2, v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmapLoaded:Z

    if-nez v2, :cond_2

    .line 145
    const-string v2, "KeyguardEffectViewLayered"

    const-string v3, "bitmapLoaded == false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mViewWidth:I

    .line 152
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mViewHeight:I

    .line 154
    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mViewWidth:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mViewHeight:I

    if-nez v2, :cond_5

    .line 155
    :cond_4
    const-string v2, "KeyguardEffectViewLayered"

    const-string v3, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_5
    const-string v2, "KeyguardEffectViewLayered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mViewWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mViewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mViewHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mViewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v2, "KeyguardEffectViewLayered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBitmapImageList size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v2, "KeyguardEffectViewLayered"

    const-string v3, "DENSITY = 1.0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBackgroundColor:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 166
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBackgroundColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->setBackgroundColor(I)V

    .line 169
    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 170
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->init()V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->invalidate()V

    goto/16 :goto_0
.end method

.method private isCancelAnimationRunning()Z
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    const/4 v2, 0x0

    .line 560
    .local v2, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 561
    .local v1, "eventType":I
    const/4 v0, 0x0

    .line 563
    .local v0, "currentLayer":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_a

    .line 564
    const/4 v3, 0x0

    .line 565
    .local v3, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 603
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 604
    goto :goto_0

    .line 567
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 568
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .restart local v2    # "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;>;"
    goto :goto_1

    .line 571
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 572
    const-string v4, "background_color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 573
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBackgroundColor:Ljava/lang/String;

    goto :goto_1

    .line 574
    :cond_1
    const-string v4, "layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 575
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .end local v0    # "currentLayer":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    .restart local v0    # "currentLayer":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    goto :goto_1

    .line 576
    :cond_2
    if-eqz v0, :cond_0

    .line 577
    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 578
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    goto :goto_1

    .line 579
    :cond_3
    const-string v4, "id_path_color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 580
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->id_path_color:Ljava/lang/String;

    goto :goto_1

    .line 581
    :cond_4
    const-string v4, "origin_point_x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 582
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originX:F

    goto :goto_1

    .line 583
    :cond_5
    const-string v4, "origin_point_y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 584
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originY:F

    goto :goto_1

    .line 585
    :cond_6
    const-string v4, "alpha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 586
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->alpha:F

    .line 587
    iget v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->alpha:F

    invoke-virtual {v0, v4}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->setCalculatedAlpha(F)V

    goto/16 :goto_1

    .line 588
    :cond_7
    const-string v4, "rate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 589
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->rate:F

    goto/16 :goto_1

    .line 590
    :cond_8
    const-string v4, "scale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 591
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->scale:F

    goto/16 :goto_1

    .line 592
    :cond_9
    const-string v4, "direction"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->direction:I

    goto/16 :goto_1

    .line 598
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 599
    const-string v4, "layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 606
    .end local v3    # "name":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->printLayers(Ljava/util/ArrayList;)V

    .line 608
    return-object v2

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private printLayers(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1032
    .local p1, "layers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;>;"
    const-string v0, ""

    .line 1033
    .local v0, "content":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1034
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1035
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;>;"
    const-string v5, "ekim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "it = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1037
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .line 1038
    .local v1, "currLayer":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "URL :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OriginX :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OriginY :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->originY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1043
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Alpha :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->alpha:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1044
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Rate :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->rate:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Direction :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->direction:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Scale :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->scale:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1048
    const-string v5, "KeyguardEffectViewLayered"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1049
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 1051
    .end local v1    # "currLayer":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    :cond_0
    return-void
.end method

.method private setPreloadWallpaper()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1413
    const/4 v3, 0x2

    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    .line 1416
    .local v0, "newVal":[Z
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v1

    .line 1417
    .local v1, "oldValStatusBar":Z
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v2

    .line 1418
    .local v2, "oldValWallpaper":Z
    aget-boolean v3, v0, v5

    if-eq v1, v3, :cond_0

    .line 1419
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_lockscreen_statusbar"

    aget-boolean v3, v0, v5

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1420
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v6

    aget-boolean v3, v0, v5

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->setWhiteKeyguardStatusBar(I)V

    .line 1422
    :cond_0
    aget-boolean v3, v0, v4

    if-eq v2, v3, :cond_1

    .line 1423
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_lockscreen_wallpaper"

    aget-boolean v3, v0, v4

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1424
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v3

    aget-boolean v6, v0, v4

    if-eqz v6, :cond_5

    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->setWhiteKeyguardWallpaper(I)V

    .line 1426
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 1419
    goto :goto_0

    :cond_3
    move v3, v5

    .line 1420
    goto :goto_1

    :cond_4
    move v3, v5

    .line 1423
    goto :goto_2

    :cond_5
    move v4, v5

    .line 1424
    goto :goto_3

    .line 1413
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private startCancalAlphaAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 4
    .param p1, "bitmapImage"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .prologue
    .line 914
    move-object v0, p1

    .line 916
    .local v0, "bitmap":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCalcualatedAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 918
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 920
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$2;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$2;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 928
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$3;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 934
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 935
    return-void
.end method

.method private startCancelAnimator()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 893
    const-string v2, "KeyguardEffectViewLayered"

    const-string v3, "startCancelAnimator()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 895
    :cond_0
    const-string v2, "KeyguardEffectViewLayered"

    const-string v3, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :goto_0
    return-void

    .line 898
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 899
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .line 900
    .local v0, "bitmapImage":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    .line 901
    invoke-direct {p0, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->startCancalAlphaAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 903
    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getRate()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    .line 904
    invoke-direct {p0, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->startCancelTranslateAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 906
    :cond_3
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getScale()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    .line 907
    invoke-direct {p0, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->startCancelScaleAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 898
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 910
    .end local v0    # "bitmapImage":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->invalidate()V

    goto :goto_0
.end method

.method private startCancelScaleAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 8
    .param p1, "bitmapImage"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 989
    const-string v2, "KeyguardEffectViewLayered"

    const-string v3, "startCancelScaleAnimator()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    move-object v0, p1

    .line 992
    .local v0, "bitmap":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentRotateY(Landroid/graphics/Matrix;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 995
    .local v1, "currentScale":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mOriginScale:F

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelScaleAnimator:Landroid/animation/ValueAnimator;

    .line 997
    const-string v2, "KeyguardEffectViewLayered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1001
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1022
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$7;

    invoke-direct {v3, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$7;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1028
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1029
    return-void
.end method

.method private startCancelTranslateAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 8
    .param p1, "bitmapImage"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 938
    const-string v3, "KeyguardEffectViewLayered"

    const-string v4, "startCancelTranslateAnimator()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    move-object v0, p1

    .line 942
    .local v0, "bitmap":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    .line 943
    .local v1, "currentTransX":F
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F

    move-result v2

    .line 945
    .local v2, "currentTransY":F
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getOriginDx()F

    move-result v3

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getOriginDy()F

    move-result v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 946
    new-array v3, v7, [F

    aput v1, v3, v5

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getOriginDx()F

    move-result v4

    aput v4, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 951
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 953
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 979
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$5;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 985
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 986
    return-void

    .line 948
    :cond_0
    new-array v3, v7, [F

    aput v2, v3, v5

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getOriginDy()F

    move-result v4

    aput v4, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelTranslateAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method private updateMatrix(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 7
    .param p1, "bitmapImage"    # Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 784
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v0

    .line 785
    .local v0, "curPoint":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v1

    .line 795
    .local v1, "prevPoint":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 796
    invoke-direct {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateAlpha(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 799
    :cond_0
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getRate()F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    if-eq v2, v6, :cond_1

    .line 800
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateTranslate(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V

    .line 805
    :cond_1
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getScale()F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    if-eq v2, v6, :cond_2

    .line 806
    invoke-virtual {p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->getDistance()F

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->calculateScale(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;F)V

    .line 808
    :cond_2
    return-void
.end method

.method private updateWallpaper()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V

    .line 547
    .local v0, "wallpaperTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/ArrayList<Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;>;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 549
    const-string v1, "KeyguardEffectViewLayered"

    const-string v2, "PARSE START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 1389
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1390
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1391
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1392
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmapLoaded:Z

    .line 1393
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    iget-object v2, v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1394
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    iget-object v2, v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1391
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1398
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 1362
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 1279
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1280
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1281
    :cond_0
    const-string v2, "KeyguardEffectViewLayered"

    const-string v4, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1350
    :goto_0
    return v2

    .line 1284
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1285
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    iget-boolean v2, v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmapLoaded:Z

    if-nez v2, :cond_2

    .line 1286
    const-string v2, "KeyguardEffectViewLayered"

    const-string v4, "bitmapLoaded == false"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1287
    goto :goto_0

    .line 1284
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1290
    :cond_3
    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_2
    move v2, v4

    .line 1350
    goto :goto_0

    .line 1292
    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->isCancelAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    .line 1294
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    .line 1296
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1297
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    invoke-virtual {v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setX(F)V

    .line 1298
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    invoke-virtual {v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setY(F)V

    .line 1299
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    invoke-virtual {v2, v3, v5}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->calculateDistance(FF)V

    .line 1296
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1302
    :cond_5
    iput v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    .line 1303
    iput v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    goto :goto_2

    .line 1307
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mUnlockStarted:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->isCancelAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1308
    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_6

    .line 1309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    .line 1310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    .line 1312
    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1313
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    invoke-virtual {v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setX(F)V

    .line 1314
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    invoke-virtual {v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setY(F)V

    .line 1315
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    invoke-virtual {v2, v3, v5}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->calculateDistance(FF)V

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1319
    :cond_6
    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1320
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setX(F)V

    .line 1321
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setY(F)V

    .line 1322
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    invoke-virtual {v2, v3, v5}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->calculateDistance(FF)V

    .line 1324
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-direct {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->updateMatrix(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1326
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->invalidate()V

    goto/16 :goto_2

    .line 1332
    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->isCancelAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1334
    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    move v2, v4

    .line 1335
    goto/16 :goto_0

    .line 1337
    :cond_8
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1338
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setX(F)V

    .line 1339
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setY(F)V

    .line 1340
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchX:F

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mDownTouchY:F

    invoke-virtual {v2, v3, v5}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->calculateDistance(FF)V

    .line 1337
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1342
    :cond_9
    iget-boolean v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mUnlockStarted:Z

    if-nez v2, :cond_4

    .line 1343
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->startCancelAnimator()V

    goto/16 :goto_2

    .line 1290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1367
    const-string v0, "KeyguardEffectViewLayered"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mUnlockStarted:Z

    .line 1369
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1444
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1445
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1450
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1451
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 724
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 725
    :cond_0
    const-string v3, "KeyguardEffectViewLayered"

    const-string v4, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 729
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 730
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    iget-boolean v3, v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->bitmapLoaded:Z

    if-nez v3, :cond_2

    .line 731
    const-string v3, "KeyguardEffectViewLayered"

    const-string v4, "bitmapLoaded == false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 729
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 736
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 747
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 748
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    .line 749
    .local v0, "bImage":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    iget v3, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 753
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mSolidColorPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->id_path_color:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 754
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_4

    .line 755
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mSolidColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCalcualatedAlpha()F

    move-result v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 757
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mSolidColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 767
    :goto_3
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setX(F)V

    .line 768
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setY(F)V

    .line 769
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getPrevPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCurPoint()Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->getDistance()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$FPoint;->setDistance(F)V

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 759
    :cond_5
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_6

    .line 760
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getCalcualatedAlpha()F

    move-result v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 764
    :goto_4
    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getLayer()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 762
    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 780
    .end local v0    # "bImage":Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 125
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 127
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mStatusBarHeight:I

    if-eq v0, p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mLastBottom:I

    if-eq v0, p5, :cond_1

    .line 129
    :cond_0
    const-string v0, "KeyguardEffectViewLayered"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout called init() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->init()V

    .line 131
    iput p4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mLastRight:I

    .line 132
    iput p5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mLastBottom:I

    .line 134
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1408
    const-string v0, "KeyguardEffectViewLayered"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mResumed:Z

    .line 1410
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1402
    const-string v0, "KeyguardEffectViewLayered"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mResumed:Z

    .line 1404
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1373
    const-string v0, "KeyguardEffectViewLayered"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->setAlpha(F)V

    .line 1376
    invoke-virtual {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->setScaleX(F)V

    .line 1377
    invoke-virtual {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->setScaleY(F)V

    .line 1378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mUnlockStarted:Z

    .line 1380
    iget-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mResumed:Z

    if-eqz v0, :cond_0

    .line 1381
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->startCancelAnimator()V

    .line 1385
    :goto_0
    return-void

    .line 1383
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->init()V

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->updateWallpaper()V

    .line 1275
    return-void
.end method
