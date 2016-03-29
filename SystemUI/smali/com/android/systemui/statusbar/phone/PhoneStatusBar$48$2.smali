.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clockOriginalScaleX:F

.field clockOriginalScaleY:F

.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

.field final synthetic val$bottomArea:Landroid/view/View;

.field final synthetic val$clock:Landroid/view/View;

.field final synthetic val$keyguardHeader:Landroid/view/View;

.field final synthetic val$noti:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5016
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$clock:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$noti:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$keyguardHeader:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$bottomArea:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5017
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->clockOriginalScaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->clockOriginalScaleY:F

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 5054
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$clock:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$clock:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->clockOriginalScaleX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 5034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$clock:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->clockOriginalScaleY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 5035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$noti:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$noti:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 5037
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$noti:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 5038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$keyguardHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$bottomArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5043
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 5045
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 5046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onLaunchTransitionFadingEnded()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 5047
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 5048
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockAnimationSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 5049
    return-void

    .line 5042
    :cond_0
    const-string v0, "PhoneStatusBar"

    const-string v1, "bottomArea is null because of DCM - setAlpha"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 5028
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 5021
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$clock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->clockOriginalScaleX:F

    .line 5022
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->val$clock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48$2;->clockOriginalScaleY:F

    .line 5023
    return-void
.end method
