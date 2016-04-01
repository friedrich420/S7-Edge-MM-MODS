.class Landroid/view/View$ScrollabilityCache;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final FADING:I = 0x2

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final OPAQUE:[F

.field private static final TRANSPARENT:[F


# instance fields
.field public fadeScrollBars:Z

.field public fadeStartTime:J

.field public fadingEdgeLength:I

.field public host:Landroid/view/View;

.field public interpolatorValues:[F

.field private mLastColor:I

.field public final matrix:Landroid/graphics/Matrix;

.field public final paint:Landroid/graphics/Paint;

.field public scrollBar:Landroid/widget/ScrollBarDrawable;

.field public scrollBarDefaultDelayBeforeFade:I

.field public scrollBarFadeDuration:I

.field public final scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public scrollBarSize:I

.field public shader:Landroid/graphics/Shader;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23344
    new-array v0, v3, [F

    const/high16 v1, 0x437f0000    # 255.0f

    aput v1, v0, v2

    sput-object v0, OPAQUE:[F

    .line 23345
    new-array v0, v3, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    sput-object v0, TRANSPARENT:[F

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .registers 11
    .param p1, "configuration"    # Landroid/view/ViewConfiguration;
    .param p2, "host"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 23361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23342
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 23357
    iput v6, p0, state:I

    .line 23362
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, fadingEdgeLength:I

    .line 23363
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, scrollBarSize:I

    .line 23364
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, scrollBarDefaultDelayBeforeFade:I

    .line 23365
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, scrollBarFadeDuration:I

    .line 23367
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, paint:Landroid/graphics/Paint;

    .line 23368
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, matrix:Landroid/graphics/Matrix;

    .line 23371
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, shader:Landroid/graphics/Shader;

    .line 23372
    iget-object v0, p0, paint:Landroid/graphics/Paint;

    iget-object v1, p0, shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 23373
    iget-object v0, p0, paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 23375
    iput-object p2, p0, host:Landroid/view/View;

    .line 23376
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 23397
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 23398
    .local v4, "now":J
    iget-wide v6, p0, fadeStartTime:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_26

    .line 23403
    long-to-int v3, v4

    .line 23404
    .local v3, "nextFrame":I
    const/4 v0, 0x0

    .line 23406
    .local v0, "framesCount":I
    iget-object v2, p0, scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 23409
    .local v2, "interpolator":Landroid/graphics/Interpolator;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "framesCount":I
    .local v1, "framesCount":I
    sget-object v6, OPAQUE:[F

    invoke-virtual {v2, v0, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 23412
    iget v6, p0, scrollBarFadeDuration:I

    add-int/2addr v3, v6

    .line 23413
    sget-object v6, TRANSPARENT:[F

    invoke-virtual {v2, v1, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 23415
    const/4 v6, 0x2

    iput v6, p0, state:I

    .line 23418
    iget-object v6, p0, host:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Z)V

    .line 23420
    .end local v1    # "framesCount":I
    .end local v2    # "interpolator":Landroid/graphics/Interpolator;
    .end local v3    # "nextFrame":I
    :cond_26
    return-void
.end method

.method public setFadeColor(I)V
    .registers 10
    .param p1, "color"    # I

    .prologue
    const/high16 v5, -0x1000000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 23379
    iget v0, p0, mLastColor:I

    if-eq p1, v0, :cond_2b

    .line 23380
    iput p1, p0, mLastColor:I

    .line 23382
    if-eqz p1, :cond_2c

    .line 23383
    new-instance v0, Landroid/graphics/LinearGradient;

    or-int/2addr v5, p1

    const v2, 0xffffff

    and-int v6, p1, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, shader:Landroid/graphics/Shader;

    .line 23385
    iget-object v0, p0, paint:Landroid/graphics/Paint;

    iget-object v1, p0, shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 23387
    iget-object v0, p0, paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 23394
    :cond_2b
    :goto_2b
    return-void

    .line 23389
    :cond_2c
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, shader:Landroid/graphics/Shader;

    .line 23390
    iget-object v0, p0, paint:Landroid/graphics/Paint;

    iget-object v1, p0, shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 23391
    iget-object v0, p0, paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2b
.end method
