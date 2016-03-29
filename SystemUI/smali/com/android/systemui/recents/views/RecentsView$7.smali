.class Lcom/android/systemui/recents/views/RecentsView$7;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnTransitionStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTriggered:Z

.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->mTriggered:Z

    return-void
.end method


# virtual methods
.method public onTransitionStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1442
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->mTriggered:Z

    if-nez v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->mTriggered:Z

    .line 1447
    :cond_0
    return-void
.end method
