.class Lcom/android/keyguard/effect/KeyguardEffectViewController$5;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewController;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 529
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 530
    .local v0, "value":F
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnimationValue:F
    invoke-static {v2, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$702(Lcom/android/keyguard/effect/KeyguardEffectViewController;F)F

    .line 531
    const v2, 0x3db851f0    # 0.09000003f

    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnimationValue:F
    invoke-static {v3}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$700(Lcom/android/keyguard/effect/KeyguardEffectViewController;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v1, v2, v3

    .line 532
    .local v1, "wallpaperScale":F
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;
    invoke-static {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$800(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;
    invoke-static {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$800(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 534
    iget-object v2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;
    invoke-static {v2}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$800(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 536
    :cond_0
    return-void
.end method
