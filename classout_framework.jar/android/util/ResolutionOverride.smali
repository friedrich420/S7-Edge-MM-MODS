.class public Landroid/util/ResolutionOverride;
.super Ljava/lang/Object;
.source "ResolutionOverride.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final RES_OVERRIDE:Ljava/lang/String; = "persist.debug.app_res_override"

.field private static final TAG:Ljava/lang/String; = "ResolutionOverride"


# instance fields
.field private mIsEnabled:Z

.field private mOverrideXres:I

.field private mOverrideYres:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .registers 13
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    const/16 v10, 0x78

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, mIsEnabled:Z

    .line 50
    iput v0, p0, mOverrideXres:I

    .line 51
    iput v0, p0, mOverrideYres:I

    .line 55
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->canOverrideRes()I

    move-result v7

    if-ne v7, v6, :cond_1d

    move v0, v6

    .line 56
    .local v0, "enable":Z
    :cond_1d
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v2, v7, Landroid/content/res/Configuration;->orientation:I

    .line 58
    .local v2, "orientation":I
    if-eqz v0, :cond_78

    if-eq v2, v6, :cond_2d

    if-ne v2, v9, :cond_78

    .line 60
    :cond_2d
    const-string/jumbo v7, "persist.debug.app_res_override"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "resStr":Ljava/lang/String;
    if-eqz v4, :cond_64

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_64

    .line 63
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 65
    .local v3, "pos":I
    if-lez v3, :cond_64

    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ne v7, v3, :cond_64

    .line 67
    const/4 v7, 0x0

    :try_start_4e
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, mOverrideXres:I

    .line 68
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, mOverrideYres:I
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_64} :catch_79

    .line 75
    .end local v3    # "pos":I
    :cond_64
    :goto_64
    if-ne v2, v9, :cond_6e

    .line 76
    iget v5, p0, mOverrideXres:I

    .line 77
    .local v5, "tmp":I
    iget v7, p0, mOverrideYres:I

    iput v7, p0, mOverrideXres:I

    .line 78
    iput v5, p0, mOverrideYres:I

    .line 81
    .end local v5    # "tmp":I
    :cond_6e
    iget v7, p0, mOverrideXres:I

    if-lez v7, :cond_78

    iget v7, p0, mOverrideYres:I

    if-lez v7, :cond_78

    .line 82
    iput-boolean v6, p0, mIsEnabled:Z

    .line 88
    .end local v4    # "resStr":Ljava/lang/String;
    :cond_78
    return-void

    .line 69
    .restart local v3    # "pos":I
    .restart local v4    # "resStr":Ljava/lang/String;
    :catch_79
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v7, "ResolutionOverride"

    const-string v8, "Error in extracting the overriding xres and yres"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method


# virtual methods
.method public handleResize(Landroid/view/SurfaceView;)V
    .registers 6
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 118
    iget-boolean v0, p0, mIsEnabled:Z

    if-nez v0, :cond_5

    .line 139
    :goto_4
    return-void

    .line 126
    :cond_5
    new-instance v0, Landroid/util/ResolutionOverride$1;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$1;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 133
    new-instance v0, Landroid/util/ResolutionOverride$2;

    invoke-direct {v0, p0, p1}, Landroid/util/ResolutionOverride$2;-><init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method public handleTouch(Landroid/view/SurfaceView;Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "view"    # Landroid/view/SurfaceView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 101
    iget-boolean v3, p0, mIsEnabled:Z

    if-nez v3, :cond_7

    .line 114
    :goto_6
    return-void

    .line 105
    :cond_7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 107
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, mOverrideXres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 108
    .local v1, "xscale":F
    iget v3, p0, mOverrideYres:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 111
    .local v2, "yscale":F
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    goto :goto_6
.end method

.method public setFixedSize(Landroid/view/SurfaceView;)V
    .registers 5
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    .line 92
    iget-boolean v0, p0, mIsEnabled:Z

    if-nez v0, :cond_5

    .line 97
    :goto_4
    return-void

    .line 96
    :cond_5
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, mOverrideXres:I

    iget v2, p0, mOverrideYres:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_4
.end method
