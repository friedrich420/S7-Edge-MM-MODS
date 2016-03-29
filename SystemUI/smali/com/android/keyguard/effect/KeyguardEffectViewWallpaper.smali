.class public Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;
.super Landroid/view/View;
.source "KeyguardEffectViewWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/effect/KeyguardEffectViewBase;


# static fields
.field private static final ALPAH_DELTA:I = 0xc

.field private static final CANCEL_ANIMATION_DURATION:J = 0xfaL

.field private static final DEBUG_COORDINATE:Z = false

.field private static final FADE_DURATION:I = 0x3e8

.field private static final FADE_EACH_DURATION:I = 0x32

.field private static final MAX_SLIDING_DISTANCE_SCALE:F = 0.05f

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewWallpaper"

.field private static final TARGET_SCALE:F = 1.0f

.field private static final TOUCH_SLIDE_SCALE:D = 0.06666666666666667

.field private static final USE_MOVING_WALLPAPER_VI:Z

.field private static mWallpaperOrder:I


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCancelAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mCroppedScale:F

.field private mCurrentAlpha:I

.field private mCurrentUserId:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDownTouchX:F

.field private mDownTouchY:F

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mInterpolator:Landroid/view/animation/interpolator/SineOut33;

.field private mLastBottom:I

.field private mLastRight:I

.field private mMatricsHeight:I

.field private mMatricsWidth:I

.field private mOldBitmap:Landroid/graphics/Bitmap;

.field private mOldDrawMatrix:Landroid/graphics/Matrix;

.field private mOriginDx:I

.field private mOriginDy:I

.field private mOriginScale:F

.field private mRangeBottomX:F

.field private mRangeBottomY:F

.field private mRangeTopX:F

.field private mRangeTopY:F

.field private mResumed:Z

.field private mShouldEnableScreenRotation:Z

.field private mSlidingMarginX:F

.field private mSlidingMarginY:F

.field private mStatusBarHeight:I

.field private mUnlockStarted:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mWallpaperOrder:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCroppedScale:F

    .line 82
    new-instance v1, Landroid/view/animation/interpolator/SineOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineOut33;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mInterpolator:Landroid/view/animation/interpolator/SineOut33;

    .line 86
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 205
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentAlpha:I

    .line 206
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    .line 207
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    .line 212
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentUserId:I

    .line 638
    new-instance v1, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$4;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)V

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 107
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mStatusBarHeight:I

    .line 111
    invoke-static {p1}, Lcom/android/keyguard/util/KeyguardProperties;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mShouldEnableScreenRotation:Z

    .line 113
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 114
    .local v0, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayOfDevice(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDisplay:Landroid/view/Display;

    .line 116
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 119
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsWidth:I

    .line 120
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsHeight:I

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->updateWallpaper()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->init()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getCurrentTranslateX()F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getCurrentTranslateY()F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDx:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDy:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCancelAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mShouldEnableScreenRotation:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCroppedScale:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentAlpha:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private calculateScaledDiffX(F)I
    .locals 6
    .param p1, "currentX"    # F

    .prologue
    .line 521
    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDownTouchX:F

    sub-float/2addr v1, p1

    float-to-double v2, v1

    const-wide v4, 0x3fb1111111111111L    # 0.06666666666666667

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 523
    .local v0, "targetX":F
    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 524
    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mRangeTopX:F

    cmpl-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mRangeBottomX:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 525
    :cond_0
    const/4 v0, 0x0

    .line 532
    :goto_0
    float-to-int v1, v0

    return v1

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getCurrentTranslateX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private calculateScaledDiffY(F)I
    .locals 6
    .param p1, "currentY"    # F

    .prologue
    .line 540
    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDownTouchY:F

    sub-float/2addr v1, p1

    float-to-double v2, v1

    const-wide v4, 0x3fb1111111111111L    # 0.06666666666666667

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 542
    .local v0, "targetY":F
    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDy:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 543
    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mRangeTopY:F

    cmpl-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mRangeBottomY:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 544
    :cond_0
    const/4 v0, 0x0

    .line 550
    :goto_0
    float-to-int v1, v0

    return v1

    .line 547
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getCurrentTranslateY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    .line 298
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    .line 352
    :goto_0
    return-object v9

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 302
    .local v8, "widthOrigin":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 305
    .local v3, "heightOrigin":I
    const/4 v5, 0x0

    .local v5, "startX":F
    const/4 v6, 0x0

    .local v6, "startY":F
    div-int/lit8 v9, v8, 0x2

    int-to-float v0, v9

    .local v0, "centerX":F
    div-int/lit8 v9, v3, 0x2

    int-to-float v1, v9

    .line 306
    .local v1, "centerY":F
    const/4 v7, 0x0

    .local v7, "width":F
    const/4 v2, 0x0

    .line 310
    .local v2, "height":F
    iget v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsHeight:I

    mul-int/2addr v9, v8

    iget v10, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsWidth:I

    mul-int/2addr v10, v3

    if-le v9, v10, :cond_4

    .line 311
    iget v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsHeight:I

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    .line 315
    .local v4, "scale":F
    :goto_1
    iput v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCroppedScale:F

    .line 318
    iget v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v7, v9, v4

    .line 319
    iget v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v2, v9, v4

    .line 321
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float v5, v0, v9

    .line 322
    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-gez v9, :cond_2

    const/4 v5, 0x0

    .line 323
    :cond_2
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v2, v9

    sub-float v6, v1, v9

    .line 324
    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_3

    const/4 v6, 0x0

    .line 339
    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v8, v9, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v3, v9, :cond_5

    .line 341
    const-string v9, "KeyguardEffectViewWallpaper"

    const-string v10, "It doesn\'t need to crop bitmap"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v9, 0x0

    goto :goto_0

    .line 313
    .end local v4    # "scale":F
    :cond_4
    iget v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsWidth:I

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    .restart local v4    # "scale":F
    goto :goto_1

    .line 343
    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    iget v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsWidth:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    iget v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mMatricsHeight:I

    const/4 v10, 0x1

    if-ge v9, v10, :cond_7

    .line 344
    :cond_6
    const-string v9, "KeyguardEffectViewWallpaper"

    const-string v10, "Math.round(width) < 1 || Math.round(height) < 1 || mMatricsWidth < 1 || mMatricsHeight < 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 346
    :cond_7
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-gt v9, v8, :cond_8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-le v9, v3, :cond_9

    .line 348
    :cond_8
    const-string v9, "KeyguardEffectViewWallpaper"

    const-string v10, "Calculated crop size error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 351
    :cond_9
    const-string v9, "KeyguardEffectViewWallpaper"

    const-string v10, "Cropping..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {p1, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentTranslateX()F
    .locals 2

    .prologue
    .line 554
    const/16 v1, 0x9

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 557
    .local v0, "matrix":[F
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 559
    const/4 v1, 0x2

    aget v1, v0, v1

    return v1

    .line 554
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

.method private getCurrentTranslateY()F
    .locals 2

    .prologue
    .line 563
    const/16 v1, 0x9

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 566
    .local v0, "matrix":[F
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 568
    const/4 v1, 0x5

    aget v1, v0, v1

    return v1

    .line 563
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

.method private init()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 127
    const-string v4, "KeyguardEffectViewWallpaper"

    const-string v5, "init()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    :cond_0
    const-string v4, "KeyguardEffectViewWallpaper"

    const-string v5, "mDrawable == null || mBitmap.isRecycled()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return v3

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mStatusBarHeight:I

    if-ne v4, v5, :cond_2

    .line 134
    iput v8, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mLastRight:I

    .line 135
    iput v8, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mLastBottom:I

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mPaddingRight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewWidth:I

    .line 140
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewHeight:I

    .line 141
    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewWidth:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewHeight:I

    if-nez v4, :cond_4

    .line 142
    :cond_3
    const-string v4, "KeyguardEffectViewWallpaper"

    const-string v5, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapWidth:I

    .line 147
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapHeight:I

    .line 151
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 153
    .local v1, "dy":F
    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapWidth:I

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewWidth:I

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapHeight:I

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_5

    .line 154
    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    .line 158
    .local v2, "scale":F
    :goto_1
    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 159
    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    .line 161
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDx:I

    .line 162
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDy:I

    .line 163
    iput v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginScale:F

    .line 165
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginScale:F

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginScale:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 166
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDy:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->invalidate()V

    .line 198
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 156
    .end local v2    # "scale":F
    :cond_5
    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    .restart local v2    # "scale":F
    goto :goto_1
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method private startCancelAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 445
    iget-boolean v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mUnlockStarted:Z

    if-eqz v2, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getCurrentTranslateX()F

    move-result v0

    .line 450
    .local v0, "currentTransX":F
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getCurrentTranslateY()F

    move-result v1

    .line 452
    .local v1, "currentTransY":F
    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDx:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDy:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 456
    :cond_2
    iget v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDx:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDy:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 457
    new-array v2, v6, [F

    aput v0, v2, v4

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDx:I

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCancelAnimator:Landroid/animation/ValueAnimator;

    .line 467
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCancelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 468
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCancelAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mInterpolator:Landroid/view/animation/interpolator/SineOut33;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCancelAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;FF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 500
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCancelAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$3;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 506
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 462
    :cond_3
    new-array v2, v6, [F

    aput v1, v2, v4

    iget v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDy:I

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCancelAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1
.end method

.method private updateMatrixAndInvalidate(II)V
    .locals 3
    .param p1, "diffX"    # I
    .param p2, "diffY"    # I

    .prologue
    .line 510
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 512
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->invalidate()V

    .line 514
    :cond_1
    return-void
.end method

.method private updateWallpaper()V
    .locals 3

    .prologue
    .line 215
    const-string v1, "KeyguardEffectViewWallpaper"

    const-string v2, "updateWallpaper() START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$1;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)V

    .line 291
    .local v0, "wallpaperTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    const-string v1, "KeyguardEffectViewWallpaper"

    const-string v2, "updateWallpaper() END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 608
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 610
    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 614
    iput-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 616
    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 573
    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 578
    const-string v0, "KeyguardEffectViewWallpaper"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mUnlockStarted:Z

    .line 582
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 646
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 647
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 648
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 652
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 653
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 654
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    const-string v0, "KeyguardEffectViewWallpaper"

    const-string v1, "mBitmap == null || mBitmap.isRecycled()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    return-void

    .line 382
    :cond_1
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmapHeight:I

    if-nez v0, :cond_3

    .line 383
    :cond_2
    const-string v0, "KeyguardEffectViewWallpaper"

    const-string v1, "mBitmapWidth == 0 || mBitmapHeight == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_4

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 392
    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentAlpha:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCurrentAlpha:I

    .line 393
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->postInvalidateDelayed(J)V

    .line 401
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 395
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    iput-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 359
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 361
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mLastBottom:I

    if-eq v0, p5, :cond_1

    .line 363
    :cond_0
    const-string v0, "KeyguardEffectViewWallpaper"

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

    .line 364
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->init()Z

    .line 365
    iput p4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mLastRight:I

    .line 366
    iput p5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mLastBottom:I

    .line 367
    iget-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mShouldEnableScreenRotation:Z

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/effect/KeyguardEffectViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    .line 373
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 626
    const-string v0, "KeyguardEffectViewWallpaper"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mResumed:Z

    .line 628
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 620
    const-string v0, "KeyguardEffectViewWallpaper"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mResumed:Z

    .line 622
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 586
    const-string v0, "KeyguardEffectViewWallpaper"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->setAlpha(F)V

    .line 589
    invoke-virtual {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->setScaleX(F)V

    .line 590
    invoke-virtual {p0, v2}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->setScaleY(F)V

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mUnlockStarted:Z

    .line 604
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->updateWallpaper()V

    .line 412
    return-void
.end method
