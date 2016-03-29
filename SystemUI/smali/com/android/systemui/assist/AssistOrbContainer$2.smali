.class Lcom/android/systemui/assist/AssistOrbContainer$2;
.super Ljava/lang/Object;
.source "AssistOrbContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbContainer;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbContainer;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbContainer$2;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const-wide/16 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 108
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer$2;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    # getter for: Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbContainer;->access$200(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbContainer$2;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    # getter for: Lcom/android/systemui/assist/AssistOrbContainer;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/systemui/assist/AssistOrbContainer;->access$100(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer$2;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    # getter for: Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbContainer;->access$300(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbContainer$2;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    # getter for: Lcom/android/systemui/assist/AssistOrbContainer;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/systemui/assist/AssistOrbContainer;->access$100(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 118
    return-void
.end method
