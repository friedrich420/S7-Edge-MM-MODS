.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccessibilityInteractionConnectionManager"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    .prologue
    .line 8597
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureConnection()V
    .registers 7

    .prologue
    .line 8617
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_28

    const/4 v0, 0x1

    .line 8619
    .local v0, "registered":Z
    :goto_c
    if-nez v0, :cond_27

    .line 8620
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    new-instance v4, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;

    iget-object v5, p0, this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v4, v5}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I

    move-result v2

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 8624
    :cond_27
    return-void

    .line 8617
    .end local v0    # "registered":Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public ensureNoConnection()V
    .registers 4

    .prologue
    const v2, 0x7fffffff

    .line 8627
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    if-eq v1, v2, :cond_20

    const/4 v0, 0x1

    .line 8629
    .local v0, "registered":Z
    :goto_c
    if-eqz v0, :cond_1f

    .line 8630
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    .line 8631
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 8633
    :cond_1f
    return-void

    .line 8627
    .end local v0    # "registered":Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onAccessibilityStateChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 8601
    if-eqz p1, :cond_32

    .line 8602
    invoke-virtual {p0}, ensureConnection()V

    .line 8603
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_31

    .line 8604
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 8605
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 8606
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_31

    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_31

    .line 8607
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 8614
    .end local v0    # "focusedView":Landroid/view/View;
    :cond_31
    :goto_31
    return-void

    .line 8611
    :cond_32
    invoke-virtual {p0}, ensureNoConnection()V

    .line 8612
    iget-object v1, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_31
.end method