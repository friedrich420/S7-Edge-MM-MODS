.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V
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
    .line 371
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    .line 376
    return-void
.end method
