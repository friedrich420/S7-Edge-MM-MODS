.class Lcom/sec/android/cover/widget/PagedView$9$1$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/widget/PagedView$9$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/cover/widget/PagedView$9$1;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PagedView$9$1;)V
    .locals 0

    .prologue
    .line 2566
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView$9$1$1;->this$2:Lcom/sec/android/cover/widget/PagedView$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$9$1$1;->this$2:Lcom/sec/android/cover/widget/PagedView$9$1;

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView$9$1;->this$1:Lcom/sec/android/cover/widget/PagedView$9;

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView$9;->this$0:Lcom/sec/android/cover/widget/PagedView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->access$802(Lcom/sec/android/cover/widget/PagedView;Z)Z

    .line 2570
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$9$1$1;->this$2:Lcom/sec/android/cover/widget/PagedView$9$1;

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView$9$1;->this$1:Lcom/sec/android/cover/widget/PagedView$9;

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView$9;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/PagedView;->onEndReordering()V

    .line 2571
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$9$1$1;->this$2:Lcom/sec/android/cover/widget/PagedView$9$1;

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView$9$1;->this$1:Lcom/sec/android/cover/widget/PagedView$9;

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView$9;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/PagedView;->onRemoveViewAnimationCompleted()V

    .line 2572
    return-void
.end method
