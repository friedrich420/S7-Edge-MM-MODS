.class Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/widget/Toolbar;)V
    .registers 2

    .prologue
    .line 2560
    iput-object p1, p0, this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Toolbar;
    .param p2, "x1"    # Landroid/widget/Toolbar$1;

    .prologue
    .line 2560
    invoke-direct {p0, p1}, <init>(Landroid/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v2, 0x0

    .line 2651
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_12

    .line 2652
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2655
    :cond_12
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2656
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/widget/Toolbar;->access$800(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2657
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    iput-object v2, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2659
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2660
    iput-object v2, p0, mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 2661
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 2662
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2664
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 7
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x1

    .line 2622
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    # invokes: Landroid/widget/Toolbar;->ensureCollapseButtonView()V
    invoke-static {v1}, Landroid/widget/Toolbar;->access$700(Landroid/widget/Toolbar;)V

    .line 2623
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/widget/Toolbar;->access$800(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/widget/Toolbar;

    if-eq v1, v2, :cond_1f

    .line 2624
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    iget-object v2, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v2}, Landroid/widget/Toolbar;->access$800(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2626
    :cond_1f
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2627
    iput-object p2, p0, mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 2628
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/widget/Toolbar;

    if-eq v1, v2, :cond_5c

    .line 2629
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 2630
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mButtonGravity:I
    invoke-static {v2}, Landroid/widget/Toolbar;->access$900(Landroid/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2631
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2632
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2633
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    iget-object v2, p0, this$0:Landroid/widget/Toolbar;

    iget-object v2, v2, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2636
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_5c
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2637
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->requestLayout()V

    .line 2638
    invoke-virtual {p2, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2640
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_7a

    .line 2641
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2644
    :cond_7a
    return v3
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 2617
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 2669
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 2575
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 2567
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_f

    iget-object v0, p0, mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_f

    .line 2568
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 2570
    :cond_f
    iput-object p2, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 2571
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 2613
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2679
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 2674
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 2608
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 2604
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 8
    .param p1, "cleared"    # Z

    .prologue
    .line 2581
    iget-object v4, p0, mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_26

    .line 2582
    const/4 v1, 0x0

    .line 2584
    .local v1, "found":Z
    iget-object v4, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1d

    .line 2585
    iget-object v4, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 2586
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_1d

    .line 2587
    iget-object v4, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2588
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_27

    .line 2589
    const/4 v1, 0x1

    .line 2595
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_1d
    if-nez v1, :cond_26

    .line 2597
    iget-object v4, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 2600
    .end local v1    # "found":Z
    :cond_26
    return-void

    .line 2586
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method
