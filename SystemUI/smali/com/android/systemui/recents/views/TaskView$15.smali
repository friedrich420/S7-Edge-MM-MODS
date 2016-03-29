.class Lcom/android/systemui/recents/views/TaskView$15;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$15;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$15;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$15;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    .line 1408
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$15;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$15;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$15;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$15;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$15;->val$v:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$15;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;ZZZ)V

    .line 1414
    :cond_0
    return-void

    :cond_1
    move v3, v4

    .line 1410
    goto :goto_0
.end method
