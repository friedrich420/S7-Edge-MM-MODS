.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->stopHintAnimationAndHideShortcut(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field final synthetic val$helper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->val$helper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->val$helper:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->animationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setAlpha(F)V

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1107
    return-void
.end method
