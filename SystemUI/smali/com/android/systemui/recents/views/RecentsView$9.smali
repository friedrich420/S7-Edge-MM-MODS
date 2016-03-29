.class Lcom/android/systemui/recents/views/RecentsView$9;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$launchRunnable:Ljava/lang/Runnable;

.field final synthetic val$lockToTask:Z

.field final synthetic val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V
    .locals 0

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$9;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$launchRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p5, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iput-boolean p6, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$lockToTask:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    if-nez v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$launchRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1597
    :goto_0
    return-void

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$launchRunnable:Ljava/lang/Runnable;

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$lockToTask:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$9;->val$launchRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
