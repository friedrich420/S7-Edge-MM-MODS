.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowAlphaAnimator(ZZ)V
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
    .line 432
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    .line 438
    return-void
.end method
