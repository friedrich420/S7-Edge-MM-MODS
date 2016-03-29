.class Lcom/android/systemui/recents/views/SwipeHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/SwipeHelper;->moveChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/SwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 415
    invoke-static {}, Lcom/android/systemui/recents/views/DualScreenViewControl;->getInstance()Lcom/android/systemui/recents/views/DualScreenViewControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    # getter for: Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I
    invoke-static {v2}, Lcom/android/systemui/recents/views/SwipeHelper;->access$200(Lcom/android/systemui/recents/views/SwipeHelper;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    const/4 v5, 0x0

    # invokes: Lcom/android/systemui/recents/views/SwipeHelper;->isValidMoveDirection(Landroid/view/View;F)Z
    invoke-static {v3, v4, v5}, Lcom/android/systemui/recents/views/SwipeHelper;->access$300(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;F)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/DualScreenViewControl;->moveAnimationView(Landroid/view/View;IZ)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    instance-of v0, v0, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 420
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    invoke-static {}, Lcom/android/systemui/recents/views/DualScreenViewControl;->getInstance()Lcom/android/systemui/recents/views/DualScreenViewControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iget-object v1, v1, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v1

    iget-object v2, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-boolean v3, v6, Lcom/android/systemui/recents/model/Task;->isActive:Z

    iget-object v4, v6, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/DualScreenViewControl;->setLaunchTask(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iget-object v0, v0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onChildMoved(Landroid/view/View;)V

    .line 425
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_1

    .line 426
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    # getter for: Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/recents/views/SwipeHelper;->access$100(Lcom/android/systemui/recents/views/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 429
    :cond_1
    return-void

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$5;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    # getter for: Lcom/android/systemui/recents/views/SwipeHelper;->initialAlpha:F
    invoke-static {v0}, Lcom/android/systemui/recents/views/SwipeHelper;->access$000(Lcom/android/systemui/recents/views/SwipeHelper;)F

    move-result v0

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 411
    return-void
.end method
