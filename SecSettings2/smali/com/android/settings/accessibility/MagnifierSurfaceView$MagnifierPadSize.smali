.class public Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;
.super Ljava/lang/Object;
.source "MagnifierSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagnifierPadSize"
.end annotation


# instance fields
.field x:[I

.field y:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    .line 570
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 574
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 575
    .local v2, "widthPixels":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 576
    .local v1, "heightPixels":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 577
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 578
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 580
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 581
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    const/4 v4, 0x0

    int-to-double v6, v2

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 582
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    const/4 v4, 0x1

    int-to-double v6, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 583
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    const/4 v4, 0x2

    int-to-double v6, v2

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 584
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    const/4 v4, 0x3

    int-to-double v6, v2

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 585
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    const/4 v4, 0x4

    aput v2, v3, v4

    .line 587
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    const/4 v4, 0x0

    int-to-double v6, v1

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 588
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    const/4 v4, 0x1

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 589
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    const/4 v4, 0x2

    int-to-double v6, v1

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 590
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    const/4 v4, 0x3

    int-to-double v6, v1

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 591
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    const/4 v4, 0x4

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 601
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    const/4 v4, 0x0

    int-to-double v6, v2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 594
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    const/4 v4, 0x1

    int-to-double v6, v2

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 595
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    const/4 v4, 0x2

    aput v2, v3, v4

    .line 597
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    const/4 v4, 0x0

    int-to-double v6, v1

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 598
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    const/4 v4, 0x1

    int-to-double v6, v1

    const-wide v8, 0x3fd3d70a3d70a3d7L    # 0.31

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    .line 599
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    const/4 v4, 0x2

    int-to-double v6, v1

    const-wide v8, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aput v5, v3, v4

    goto :goto_0

    .line 569
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 570
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
