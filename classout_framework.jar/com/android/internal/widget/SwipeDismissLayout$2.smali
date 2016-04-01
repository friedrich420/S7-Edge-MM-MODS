.class Lcom/android/internal/widget/SwipeDismissLayout$2;
.super Landroid/content/BroadcastReceiver;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SwipeDismissLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    iget-object v0, p0, this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    # getter for: Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$100(Lcom/android/internal/widget/SwipeDismissLayout;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 95
    iget-object v0, p0, this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    # invokes: Lcom/android/internal/widget/SwipeDismissLayout;->dismiss()V
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$200(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 99
    :goto_d
    iget-object v0, p0, this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    # invokes: Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V
    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->access$300(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 100
    return-void

    .line 97
    :cond_13
    iget-object v0, p0, this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    goto :goto_d
.end method
