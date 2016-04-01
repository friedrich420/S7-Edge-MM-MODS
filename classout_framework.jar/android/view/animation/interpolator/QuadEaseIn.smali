.class public Landroid/view/animation/interpolator/QuadEaseIn;
.super Landroid/view/animation/BaseInterpolator;
.source "QuadEaseIn.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 97
    return-void
.end method

.method private in(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 104
    mul-float v0, p1, p1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 100
    invoke-direct {p0, p1}, in(F)F

    move-result v0

    return v0
.end method
