.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColorRevealer(FF)V
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
    .line 511
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 516
    .local v0, "distance":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewClipRect(F)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 518
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColor(F)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 520
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    .line 521
    return-void
.end method
