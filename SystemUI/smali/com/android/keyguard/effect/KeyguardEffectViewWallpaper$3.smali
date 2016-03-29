.class Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardEffectViewWallpaper.java"


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


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$3;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper$3;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->mCancelAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;->access$1602(Lcom/android/keyguard/effect/KeyguardEffectViewWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 504
    return-void
.end method
