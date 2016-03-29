.class Lcom/android/keyguard/KeyguardAbsKeyInputView$6$1;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardAbsKeyInputView$6;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView$6;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6$1;->this$1:Lcom/android/keyguard/KeyguardAbsKeyInputView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 648
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6$1;->this$1:Lcom/android/keyguard/KeyguardAbsKeyInputView$6;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6$1;->this$1:Lcom/android/keyguard/KeyguardAbsKeyInputView$6;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBounceInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 651
    return-void
.end method
