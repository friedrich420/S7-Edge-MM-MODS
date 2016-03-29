.class public Lcom/android/settings/wifi/VI/AnimationHelperWifi;
.super Ljava/lang/Object;
.source "AnimationHelperWifi.java"


# direct methods
.method public static animCommonFromRight(Landroid/view/View;JJ)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 390
    const/high16 v1, 0x43480000    # 200.0f

    .line 391
    .local v1, "start":F
    const-string v3, "trans"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 392
    .local v2, "trans":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 393
    .local v0, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/settings/wifi/VI/AnimationHelperWifi$9;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/VI/AnimationHelperWifi$9;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 406
    new-instance v3, Lcom/android/settings/wifi/VI/AnimationHelperWifi$10;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/VI/AnimationHelperWifi$10;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    new-instance v3, Lcom/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v3}, Lcom/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 429
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 430
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 431
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 432
    return-void
.end method

.method public static animTitleFromRight(Landroid/view/View;JJ)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 23
    const/high16 v2, 0x43480000    # 200.0f

    .line 25
    .local v2, "start":F
    const-string v4, "trans"

    new-array v5, v7, [F

    aput v2, v5, v8

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 27
    .local v3, "trans":Landroid/animation/PropertyValuesHolder;
    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 31
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v8

    aput-object v3, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 33
    .local v1, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/settings/wifi/VI/AnimationHelperWifi$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/VI/AnimationHelperWifi$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    new-instance v4, Lcom/android/settings/wifi/VI/AnimationHelperWifi$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/VI/AnimationHelperWifi$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    new-instance v4, Lcom/android/settings/wifi/VI/SineInOut70Wifi;

    invoke-direct {v4}, Lcom/android/settings/wifi/VI/SineInOut70Wifi;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 115
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 117
    return-void

    .line 27
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
