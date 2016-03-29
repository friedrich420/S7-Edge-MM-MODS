.class public Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
.super Landroid/view/View;
.source "CaptureEffectViewForShutterAndMove.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private imageview:Landroid/widget/ImageView;

.field private mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const-string v0, "CaptureEffectViewForShutterAndMove"

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    .line 68
    iput p2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    return-object v0
.end method


# virtual methods
.method public getScaleAnimation()Landroid/view/animation/ScaleAnimation;
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    .line 180
    const/4 v6, 0x0

    .local v6, "pivotX":F
    const/4 v8, 0x0

    .line 181
    .local v8, "pivotY":F
    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 213
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 215
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 216
    new-instance v1, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 217
    return-object v0

    .line 189
    .end local v0    # "sa":Landroid/view/animation/ScaleAnimation;
    :pswitch_0
    const/high16 v6, 0x3f000000    # 0.5f

    .line 190
    const/high16 v8, 0x3f000000    # 0.5f

    .line 191
    goto :goto_0

    .line 194
    :pswitch_1
    const/4 v6, 0x0

    .line 195
    const/high16 v8, 0x3f000000    # 0.5f

    .line 196
    goto :goto_0

    .line 201
    :pswitch_2
    const/high16 v6, 0x3f800000    # 1.0f

    .line 202
    const/high16 v8, 0x3f000000    # 0.5f

    .line 203
    goto :goto_0

    .line 205
    :pswitch_3
    const/high16 v6, 0x3f000000    # 0.5f

    .line 206
    const/high16 v8, 0x3f800000    # 1.0f

    .line 207
    goto :goto_0

    .line 209
    :pswitch_4
    const/high16 v6, 0x3f000000    # 0.5f

    .line 210
    const/4 v8, 0x0

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTranslateAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 12

    .prologue
    const-wide/16 v10, 0x14d

    const/4 v1, 0x2

    .line 122
    const/4 v2, 0x0

    .local v2, "fromX":F
    const/4 v4, 0x0

    .local v4, "toX":F
    const/4 v6, 0x0

    .local v6, "fromY":F
    const/4 v8, 0x0

    .line 123
    .local v8, "toY":F
    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 149
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 151
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 152
    iget v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v1, :pswitch_data_1

    .line 175
    :goto_1
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 176
    return-object v0

    .line 129
    .end local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    :pswitch_0
    const/high16 v8, -0x40800000    # -1.0f

    .line 130
    goto :goto_0

    .line 136
    :pswitch_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 137
    goto :goto_0

    .line 141
    :pswitch_2
    const/high16 v4, -0x40800000    # -1.0f

    .line 142
    goto :goto_0

    .line 145
    :pswitch_3
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    .line 160
    .restart local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    :pswitch_4
    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 170
    :pswitch_5
    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V
    .locals 0
    .param p1, "onCaptureAnimationListener"    # Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    .line 73
    return-void
.end method

.method public show(Landroid/widget/ImageView;)V
    .locals 12
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    const-wide/16 v10, 0x14d

    const/4 v8, 0x1

    const v6, 0x3f333333    # 0.7f

    .line 76
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->imageview:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->getScaleAnimation()Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    .line 79
    .local v3, "sa":Landroid/view/animation/ScaleAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 80
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 81
    new-instance v5, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->getTranslateAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    .line 85
    .local v4, "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    .local v1, "aa2":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x74

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 87
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 88
    new-instance v5, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 90
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 91
    .local v2, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 92
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 93
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 96
    new-instance v5, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 118
    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    return-void
.end method
