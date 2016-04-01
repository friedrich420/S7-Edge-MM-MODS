.class Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .registers 2

    .prologue
    .line 569
    iput-object p1, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 570
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    .line 571
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$300(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 576
    iget-object v0, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$300(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 578
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected onForwardingStarted()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-object v2, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$100(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v2, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$100(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-static {v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$200(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 585
    invoke-virtual {p0}, getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 586
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    .line 588
    .end local v0    # "popup":Landroid/widget/ListPopupWindow;
    :cond_28
    return v1
.end method

.method protected onForwardingStopped()Z
    .registers 3

    .prologue
    .line 593
    invoke-virtual {p0}, getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 594
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_b

    .line 595
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 596
    const/4 v1, 0x1

    .line 598
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method
