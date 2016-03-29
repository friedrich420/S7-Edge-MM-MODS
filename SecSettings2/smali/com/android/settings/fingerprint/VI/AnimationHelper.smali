.class public Lcom/android/settings/fingerprint/VI/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# direct methods
.method public static fadeAni(Landroid/view/View;FFJJI)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "sine"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p1, v3, v4

    aput p2, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 24
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 25
    .local v1, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/settings/fingerprint/VI/AnimationHelper$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    new-instance v2, Lcom/android/settings/fingerprint/VI/AnimationHelper$2;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/fingerprint/VI/AnimationHelper$2;-><init>(Landroid/view/View;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    const/16 v2, 0x21

    if-ne p7, v2, :cond_0

    .line 63
    new-instance v2, Lcom/android/settings/fingerprint/VI/SineInOut33;

    invoke-direct {v2}, Lcom/android/settings/fingerprint/VI/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    :cond_0
    invoke-virtual {v1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 67
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    return-void
.end method

.method public static fromBottom(Landroid/view/View;JJI)V
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "sine"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 129
    .local v4, "start":F
    const-string v6, "log"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 131
    .local v2, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v6, "trans"

    new-array v7, v9, [F

    aput v4, v7, v10

    const/4 v8, 0x0

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 133
    .local v5, "trans":Landroid/animation/PropertyValuesHolder;
    new-array v6, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v10

    aput-object v5, v6, v11

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 134
    .local v3, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/settings/fingerprint/VI/AnimationHelper$5;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    new-instance v6, Lcom/android/settings/fingerprint/VI/AnimationHelper$6;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$6;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    const/16 v6, 0x46

    move/from16 v0, p5

    if-ne v0, v6, :cond_1

    .line 178
    new-instance v6, Lcom/android/settings/fingerprint/VI/SineInOut70;

    invoke-direct {v6}, Lcom/android/settings/fingerprint/VI/SineInOut70;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    :cond_0
    :goto_0
    new-instance v6, Lcom/android/settings/fingerprint/VI/SineInOut90;

    invoke-direct {v6}, Lcom/android/settings/fingerprint/VI/SineInOut90;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    invoke-virtual {v3, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 188
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 189
    return-void

    .line 179
    :cond_1
    const/16 v6, 0x50

    move/from16 v0, p5

    if-ne v0, v6, :cond_2

    .line 180
    new-instance v6, Lcom/android/settings/fingerprint/VI/SineInOut80;

    invoke-direct {v6}, Lcom/android/settings/fingerprint/VI/SineInOut80;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 181
    :cond_2
    const/16 v6, 0x5a

    move/from16 v0, p5

    if-ne v0, v6, :cond_0

    .line 182
    new-instance v6, Lcom/android/settings/fingerprint/VI/SineInOut90;

    invoke-direct {v6}, Lcom/android/settings/fingerprint/VI/SineInOut90;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 130
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static fromRight(Landroid/view/View;JJ)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 74
    .local v2, "start":F
    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 75
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "trans"

    new-array v5, v7, [F

    aput v2, v5, v8

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 77
    .local v3, "trans":Landroid/animation/PropertyValuesHolder;
    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v8

    aput-object v3, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 78
    .local v1, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/settings/fingerprint/VI/AnimationHelper$3;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    new-instance v4, Lcom/android/settings/fingerprint/VI/AnimationHelper$4;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    new-instance v4, Lcom/android/settings/fingerprint/VI/SineInOut70;

    invoke-direct {v4}, Lcom/android/settings/fingerprint/VI/SineInOut70;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 121
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 122
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 123
    return-void

    .line 74
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
