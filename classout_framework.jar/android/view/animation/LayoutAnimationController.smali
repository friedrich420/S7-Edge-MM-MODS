.class public Landroid/view/animation/LayoutAnimationController;
.super Ljava/lang/Object;
.source "LayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final ORDER_NORMAL:I = 0x0

.field public static final ORDER_RANDOM:I = 0x2

.field public static final ORDER_REVERSE:I = 0x1


# instance fields
.field protected mAnimation:Landroid/view/animation/Animation;

.field private mDelay:F

.field private mDuration:J

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxDelay:J

.field private mOrder:I

.field protected mRandomizer:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v3, Lcom/android/internal/R$styleable;->LayoutAnimation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 110
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, mDelay:F

    .line 112
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, mOrder:I

    .line 114
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 115
    .local v2, "resource":I
    if-lez v2, :cond_28

    .line 116
    invoke-virtual {p0, p1, v2}, setAnimation(Landroid/content/Context;I)V

    .line 119
    :cond_28
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 120
    if-lez v2, :cond_31

    .line 121
    invoke-virtual {p0, p1, v2}, setInterpolator(Landroid/content/Context;I)V

    .line 124
    :cond_31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 134
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, <init>(Landroid/view/animation/Animation;F)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;F)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "delay"    # F

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p2, p0, mDelay:F

    .line 146
    invoke-virtual {p0, p1}, setAnimation(Landroid/view/animation/Animation;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 323
    invoke-virtual {p0, p1}, getDelayForView(Landroid/view/View;)J

    move-result-wide v4

    iget-object v6, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 324
    .local v2, "delay":J
    iget-wide v4, p0, mMaxDelay:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, mMaxDelay:J

    .line 327
    :try_start_14
    iget-object v4, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    .line 328
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 331
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_1d
    return-object v0

    .line 330
    :catch_1e
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getDelay()F
    .registers 2

    .prologue
    .line 268
    iget v0, p0, mDelay:F

    return v0
.end method

.method protected getDelayForView(Landroid/view/View;)J
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 372
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, v1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 374
    .local v3, "params":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v3, :cond_b

    .line 375
    const-wide/16 v8, 0x0

    .line 389
    :goto_a
    return-wide v8

    .line 378
    :cond_b
    iget v5, p0, mDelay:F

    iget-object v8, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v8

    long-to-float v8, v8

    mul-float v0, v5, v8

    .line 379
    .local v0, "delay":F
    invoke-virtual {p0, v3}, getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-long v6, v5

    .line 380
    .local v6, "viewDelay":J
    iget v5, v3, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float v5, v5

    mul-float v4, v0, v5

    .line 382
    .local v4, "totalDelay":F
    iget-object v5, p0, mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_2d

    .line 383
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 386
    :cond_2d
    long-to-float v5, v6

    div-float v2, v5, v4

    .line 387
    .local v2, "normalizedDelay":F
    iget-object v5, p0, mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 389
    mul-float v5, v2, v4

    float-to-long v8, v5

    goto :goto_a
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, mOrder:I

    return v0
.end method

.method protected getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I
    .registers 4
    .param p1, "params"    # Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .prologue
    .line 404
    invoke-virtual {p0}, getOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 414
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    :goto_9
    return v0

    .line 406
    :pswitch_a
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    sub-int/2addr v0, v1

    goto :goto_9

    .line 408
    :pswitch_12
    iget-object v0, p0, mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_1d

    .line 409
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, mRandomizer:Ljava/util/Random;

    .line 411
    :cond_1d
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float v0, v0

    iget-object v1, p0, mRandomizer:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_9

    .line 404
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method public isDone()Z
    .registers 7

    .prologue
    .line 342
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    iget-wide v4, p0, mMaxDelay:J

    add-long/2addr v2, v4

    iget-wide v4, p0, mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setAnimation(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 186
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, setAnimation(Landroid/view/animation/Animation;)V

    .line 187
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 201
    iput-object p1, p0, mAnimation:Landroid/view/animation/Animation;

    .line 202
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 203
    return-void
.end method

.method public setDelay(F)V
    .registers 2
    .param p1, "delay"    # F

    .prologue
    .line 284
    iput p1, p0, mDelay:F

    .line 285
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 231
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 246
    iput-object p1, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 247
    return-void
.end method

.method public setOrder(I)V
    .registers 2
    .param p1, "order"    # I

    .prologue
    .line 170
    iput p1, p0, mOrder:I

    .line 171
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 301
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, mDuration:J

    .line 302
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mMaxDelay:J

    .line 303
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 304
    return-void
.end method

.method public willOverlap()Z
    .registers 3

    .prologue
    .line 294
    iget v0, p0, mDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
