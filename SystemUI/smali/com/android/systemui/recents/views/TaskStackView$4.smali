.class Lcom/android/systemui/recents/views/TaskStackView$4;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$animateFocusedState:Z

.field final synthetic val$t:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->val$t:Lcom/android/systemui/recents/model/Task;

    iput-boolean p3, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->val$animateFocusedState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->val$t:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 657
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_0

    .line 658
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView$4;->val$animateFocusedState:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    .line 659
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 661
    :cond_0
    return-void
.end method
