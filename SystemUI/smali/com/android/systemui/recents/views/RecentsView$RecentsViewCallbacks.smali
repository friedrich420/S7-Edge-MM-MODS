.class public interface abstract Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
.super Ljava/lang/Object;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentsViewCallbacks"
.end annotation


# virtual methods
.method public abstract clearDeferSurfaceDestroyFlag()V
.end method

.method public abstract dismiss()V
.end method

.method public abstract dismissToApp(Lcom/android/systemui/recents/model/Task;)V
.end method

.method public abstract onAllTaskViewsDismissed()V
.end method

.method public abstract onCloseAllButtonClicked()V
.end method

.method public abstract onExitToHomeAnimationTriggered()V
.end method

.method public abstract onScreenPinningRequest(Lcom/android/systemui/recents/model/Task;)V
.end method

.method public abstract onTaskLaunchFailed()V
.end method

.method public abstract onTaskResize(Lcom/android/systemui/recents/model/Task;)V
.end method

.method public abstract onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
.end method

.method public abstract onTaskViewFixBtnClicked(Lcom/android/systemui/recents/model/Task;)V
.end method

.method public abstract onTaskViewMoved()V
.end method

.method public abstract requestUpdateRecentsLayout()V
.end method

.method public abstract runAfterPause(Ljava/lang/Runnable;)V
.end method
