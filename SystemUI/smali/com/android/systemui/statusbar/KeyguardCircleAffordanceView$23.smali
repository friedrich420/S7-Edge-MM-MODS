.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field final synthetic val$background:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;->val$background:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 956
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 957
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;->val$background:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;->val$background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(I)V

    .line 960
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setArrowImageAlpha(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)V

    .line 961
    return-void
.end method
