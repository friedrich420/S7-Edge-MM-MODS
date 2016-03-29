.class Lcom/android/systemui/recents/views/TaskStackView$10;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->hideDismissAllButton(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$postAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->val$postAnimRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButtonAnimating:Z

    .line 1432
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButton:Lcom/android/systemui/statusbar/DismissView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->val$postAnimRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$10;->val$postAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1436
    :cond_0
    return-void
.end method
