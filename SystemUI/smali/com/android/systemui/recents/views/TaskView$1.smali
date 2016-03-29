.class Lcom/android/systemui/recents/views/TaskView$1;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$1;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$1;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->requestUpdateStackViewsClip()V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$1;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v1, v1, Lcom/android/systemui/recents/views/TaskView;->mIsTranslationZAnimationStarted:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$1;->this$0:Lcom/android/systemui/recents/views/TaskView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/recents/views/TaskView;->mIsTranslationZAnimationStarted:Z

    .line 158
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$1;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 159
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$1;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskView;->mTempTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 160
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$1;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 161
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 163
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_0
    return-void
.end method
