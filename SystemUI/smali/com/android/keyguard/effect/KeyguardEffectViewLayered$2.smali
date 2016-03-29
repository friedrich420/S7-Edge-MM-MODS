.class Lcom/android/keyguard/effect/KeyguardEffectViewLayered$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewLayered.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->startCancalAlphaAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

.field final synthetic val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    iput-object p2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$2;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 923
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 924
    .local v0, "animatedAlpha":F
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$2;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->setCalculatedAlpha(F)V

    .line 925
    iget-object v1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-virtual {v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->invalidate()V

    .line 926
    return-void
.end method
