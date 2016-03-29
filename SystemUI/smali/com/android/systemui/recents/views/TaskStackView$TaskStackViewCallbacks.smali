.class interface abstract Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;
.super Ljava/lang/Object;
.source "TaskStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TaskStackViewCallbacks"
.end annotation


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract onAllTaskViewsDismissed(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTaskResize(Lcom/android/systemui/recents/model/Task;)V
.end method

.method public abstract onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V
.end method

.method public abstract onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZZ)V
.end method

.method public abstract onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V
.end method

.method public abstract onTaskViewMoved()V
.end method

.method public abstract onToggleRecentsBottomContainer(Z)V
.end method
