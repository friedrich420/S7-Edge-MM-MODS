.class Lcom/android/keyguard/effect/KeyguardEffectViewLayered$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardEffectViewLayered.java"


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


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$3;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$3;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mCancelAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$2102(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 932
    return-void
.end method
