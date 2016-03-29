.class Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$5;
.super Ljava/lang/Object;
.source "KeyguardSwipeHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->startUnlockViewAnimation(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V
    .locals 1

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$5;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$5;->isCanceled:Z

    .line 720
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$5;->isCanceled:Z

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->makeExpandedInvisible()V

    .line 715
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 708
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 703
    return-void
.end method
