.class public Lcom/android/keyguard/opentheme/xmlparser/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluatorReverse;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluator;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluatorReverse;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluator;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluatorReverse;,
        Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluator;
    }
.end annotation


# instance fields
.field public a:F

.field public adjust:F

.field public b:F

.field public backgroundId:I

.field public delay:J

.field public duration:J

.field public frameSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public from:F

.field public imageView:Landroid/widget/ImageView;

.field public imageViewId:I

.field public imageViewSetId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public interpolator:Landroid/animation/TimeInterpolator;

.field public key:F

.field public length:I

.field public minInterval:I

.field public r:F

.field public ra:F

.field public rb:F

.field public repeatCount:I

.field public repeatMode:I

.field public scale:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public startIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public to:F

.field public top:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public xOffSet:F

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yOffSet:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->r:F

    .line 20
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->a:F

    .line 21
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->b:F

    .line 23
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->ra:F

    .line 24
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->rb:F

    .line 26
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    .line 27
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    .line 28
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    .line 30
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    .line 32
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewId:I

    .line 33
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    .line 35
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->backgroundId:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    .line 42
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->top:I

    .line 43
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->minInterval:I

    .line 45
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 46
    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    .line 47
    iput-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    .line 48
    iput-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    .line 49
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    .line 50
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    .line 53
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    .line 445
    return-void
.end method


# virtual methods
.method public buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "animation"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v3, "round"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 83
    .local v0, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    iget-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->delay:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 84
    iget-wide v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->duration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatCount:I

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 86
    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->repeatMode:I

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 87
    iget-object v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    return-object v0

    .line 61
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    const-string v3, "ellipse"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 63
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-string v3, "parabola"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 65
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    const-string v3, "sinX"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 67
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_3
    const-string v3, "sinY"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/xmlparser/Animation;->buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 69
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_4
    const-string v3, "ImageResource"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 70
    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    new-array v2, v3, [I

    .line 72
    .local v2, "mImageSetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->length:I

    if-ge v1, v3, :cond_5

    .line 74
    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageViewId:I

    aput v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_5
    const-string v3, "ImageResource"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 79
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 80
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "i":I
    .end local v2    # "mImageSetIds":[I
    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    aput v5, v3, v4

    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto/16 :goto_0
.end method

.method public buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 124
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 126
    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 127
    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    .line 129
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 131
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$2;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    return-object v0
.end method

.method public buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 156
    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 158
    new-instance v2, Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluator;

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluator;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFF)V

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 161
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/keyguard/opentheme/xmlparser/Animation$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$3;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v1, v0

    .line 194
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .local v1, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    return-object v1

    .line 178
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-instance v2, Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluatorReverse;

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$ParabolaEvaluatorReverse;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFF)V

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 182
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/keyguard/opentheme/xmlparser/Animation$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$4;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v1, v0

    .line 194
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .restart local v1    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method

.method public buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 94
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 96
    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    .line 97
    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    .line 99
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 101
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$1;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    return-object v0
.end method

.method public buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 11
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 250
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 252
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluator;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluator;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 257
    .local v6, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$5;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    .line 290
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    .local v7, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    return-object v7

    .line 274
    .end local v7    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinXEvaluatorReverse;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 278
    .restart local v6    # "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$6;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    .line 290
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    .restart local v7    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method

.method public buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 11
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 350
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    .line 352
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 353
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluator;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluator;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 356
    .local v6, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$7;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    .line 387
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    .local v7, "animator":Landroid/animation/ValueAnimator;
    :goto_0
    return-object v7

    .line 372
    .end local v7    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->xOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/opentheme/xmlparser/Animation$SinYEvaluatorReverse;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 375
    .restart local v6    # "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/opentheme/xmlparser/Animation$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$8;-><init>(Lcom/android/keyguard/opentheme/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    .line 387
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    .restart local v7    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method
