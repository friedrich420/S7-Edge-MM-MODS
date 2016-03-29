.class Lcom/android/systemui/recents/views/TaskStackView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$11;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1496
    instance-of v2, p1, Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1497
    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1498
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1499
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 1500
    .local v1, "target":Lcom/android/systemui/recents/views/TaskView;
    const/4 v2, -0x1

    iput v2, v1, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    .line 1501
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 1504
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v1    # "target":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method
