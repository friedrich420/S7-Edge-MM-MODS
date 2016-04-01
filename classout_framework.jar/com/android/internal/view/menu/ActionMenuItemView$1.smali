.class Lcom/android/internal/view/menu/ActionMenuItemView$1;
.super Ljava/lang/Object;
.source "ActionMenuItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/ActionMenuItemView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuItemView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .registers 2

    .prologue
    .line 237
    iput-object p1, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$000(Lcom/android/internal/view/menu/ActionMenuItemView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$000(Lcom/android/internal/view/menu/ActionMenuItemView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 247
    :cond_14
    :goto_14
    return-void

    .line 244
    :cond_15
    iget-object v0, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$100(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 245
    iget-object v0, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$100(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-static {v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$200(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    goto :goto_14
.end method
