.class Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;
.super Ljava/lang/Object;
.source "KeyguardAlphaAffordanceAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlpha:F
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;F)F

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlpha:F
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlpha:F
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;F)F

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mView:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->mAlpha:F
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;->setAlphaByAffordance(F)V

    .line 64
    return-void
.end method
