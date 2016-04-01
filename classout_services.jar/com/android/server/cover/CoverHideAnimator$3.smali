.class Lcom/android/server/cover/CoverHideAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverHideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverHideAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverHideAnimator;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, this$0:Lcom/android/server/cover/CoverHideAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 110
    iget-object v0, p0, this$0:Lcom/android/server/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/cover/CoverHideAnimator;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$000(Lcom/android/server/cover/CoverHideAnimator;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onFadeOutAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, this$0:Lcom/android/server/cover/CoverHideAnimator;

    # invokes: Lcom/android/server/cover/CoverHideAnimator;->removeViewFromWindow()V
    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->access$800(Lcom/android/server/cover/CoverHideAnimator;)V

    .line 114
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 115
    return-void
.end method
