.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28$1;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->onStartedWakingUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28$1;->this$1:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28$1;->this$1:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVisualCuePlaying:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1440
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1435
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28$1;->this$1:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVisualCuePlaying:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1431
    return-void
.end method
