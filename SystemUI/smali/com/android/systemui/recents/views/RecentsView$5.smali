.class Lcom/android/systemui/recents/views/RecentsView$5;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


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
    .line 1399
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$5;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->mTriggered:Z

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1403
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->mTriggered:Z

    if-nez v0, :cond_1

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$5$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsView$5$1;-><init>(Lcom/android/systemui/recents/views/RecentsView$5;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1411
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$5;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1417
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->mTriggered:Z

    .line 1419
    :cond_1
    return-void
.end method
