.class Lcom/android/systemui/recents/views/RecentsView$5$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$5;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsView$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$5;)V
    .locals 0

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$5;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$5$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$5;

    iget-object v1, v1, Lcom/android/systemui/recents/views/RecentsView$5;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onScreenPinningRequest(Lcom/android/systemui/recents/model/Task;)V

    .line 1408
    return-void
.end method
