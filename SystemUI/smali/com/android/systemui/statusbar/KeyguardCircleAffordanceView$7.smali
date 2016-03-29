.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->releaseShader()V

    .line 270
    return-void
.end method
