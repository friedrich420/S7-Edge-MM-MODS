.class final Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;
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
    name = "LogDecelerateInterpolator"
.end annotation


# instance fields
.field private final mBase:F

.field private final mDrift:F

.field private final mOutputScale:F

.field private final mTimeScale:F


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 268
    const/high16 v0, 0x43c80000    # 400.0f

    const v1, 0x3fb33333    # 1.4f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>(FFF)V

    .line 269
    return-void
.end method

.method private constructor <init>(FFF)V
    .locals 2
    .param p1, "base"    # F
    .param p2, "timeScale"    # F
    .param p3, "drift"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mBase:F

    .line 273
    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mDrift:F

    .line 274
    div-float v0, v1, p2

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mTimeScale:F

    .line 276
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->computeLog(F)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mOutputScale:F

    .line 277
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialogMotion$1;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>()V

    return-void
.end method

.method private computeLog(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 280
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mBase:F

    float-to-double v2, v1

    neg-float v1, p1

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mTimeScale:F

    mul-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mDrift:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->computeLog(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mOutputScale:F

    mul-float/2addr v0, v1

    return v0
.end method
