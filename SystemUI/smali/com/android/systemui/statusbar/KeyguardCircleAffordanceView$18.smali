.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowBlinker()V
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
    .line 494
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 497
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 498
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 499
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    .line 500
    return-void
.end method
