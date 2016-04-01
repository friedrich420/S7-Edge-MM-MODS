.class Landroid/widget/Scroller$ViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViscousFluidInterpolator"
.end annotation


# static fields
.field private static final VISCOUS_FLUID_NORMALIZE:F

.field private static final VISCOUS_FLUID_OFFSET:F

.field private static final VISCOUS_FLUID_SCALE:F = 8.0f


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 607
    invoke-static {v2}, viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    sput v0, VISCOUS_FLUID_NORMALIZE:F

    .line 609
    sget v0, VISCOUS_FLUID_NORMALIZE:F

    invoke-static {v2}, viscousFluid(F)F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    sput v0, VISCOUS_FLUID_OFFSET:F

    .line 610
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static viscousFluid(F)F
    .registers 6
    .param p0, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 613
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr p0, v1

    .line 614
    cmpg-float v1, p0, v4

    if-gez v1, :cond_14

    .line 615
    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    .line 621
    :goto_13
    return p0

    .line 617
    :cond_14
    const v0, 0x3ebc5ab2

    .line 618
    .local v0, "start":F
    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    .line 619
    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_13
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5
    .param p1, "input"    # F

    .prologue
    .line 626
    sget v1, VISCOUS_FLUID_NORMALIZE:F

    invoke-static {p1}, viscousFluid(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 627
    .local v0, "interpolated":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_10

    .line 628
    sget v1, VISCOUS_FLUID_OFFSET:F

    add-float/2addr v0, v1

    .line 630
    .end local v0    # "interpolated":F
    :cond_10
    return v0
.end method
