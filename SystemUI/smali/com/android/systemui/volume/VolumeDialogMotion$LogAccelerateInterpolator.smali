.class final Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogAccelerateInterpolator"
.end annotation


# instance fields
.field private final mBase:I

.field private final mDrift:I

.field private final mLogScale:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 295
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;-><init>(II)V

    .line 296
    return-void
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "base"    # I
    .param p2, "drift"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->mBase:I

    .line 300
    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->mDrift:I

    .line 301
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->mBase:I

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->mDrift:I

    invoke-static {v2, v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->computeLog(FII)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->mLogScale:F

    .line 302
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialogMotion$1;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;-><init>()V

    return-void
.end method

.method private static computeLog(FII)F
    .locals 4
    .param p0, "t"    # F
    .param p1, "base"    # I
    .param p2, "drift"    # I

    .prologue
    .line 305
    int-to-double v0, p1

    neg-float v2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 310
    sub-float v0, v3, p1

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->mBase:I

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->mDrift:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->computeLog(FII)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogAccelerateInterpolator;->mLogScale:F

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    return v0
.end method
