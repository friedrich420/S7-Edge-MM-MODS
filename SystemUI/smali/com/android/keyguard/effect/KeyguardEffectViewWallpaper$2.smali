.class Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewWallpaper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->startCancelAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

.field final synthetic val$currentTransX:F

.field final synthetic val$currentTransY:F


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;FF)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    iput p2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->val$currentTransX:F

    iput p3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->val$currentTransY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v9, 0x0

    .line 473
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getCurrentTranslateX()F
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)F

    move-result v2

    .line 474
    .local v2, "currentX":F
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->getCurrentTranslateY()F
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)F

    move-result v3

    .line 475
    .local v3, "currentY":F
    iget v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->val$currentTransX:F

    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDx:I
    invoke-static {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$1400(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->val$currentTransX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 477
    .local v0, "currentAnimatedX":F
    iget v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->val$currentTransY:F

    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mOriginDy:I
    invoke-static {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$1500(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->val$currentTransY:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 480
    .local v1, "currentAnimatedY":F
    sub-float v6, v0, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 481
    .local v4, "targetX":F
    sub-float v6, v1, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 494
    .local v5, "targetY":F
    cmpl-float v6, v4, v9

    if-nez v6, :cond_0

    cmpl-float v6, v5, v9

    if-eqz v6, :cond_1

    .line 495
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 496
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->invalidate()V

    .line 498
    :cond_1
    return-void
.end method
