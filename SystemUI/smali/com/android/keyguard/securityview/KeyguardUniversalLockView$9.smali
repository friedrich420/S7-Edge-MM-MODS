.class Lcom/android/keyguard/securityview/KeyguardUniversalLockView$9;
.super Ljava/lang/Object;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 588
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 592
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 584
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 581
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3200(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$9;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$3100(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 578
    return-void
.end method
