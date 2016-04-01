.class final Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field fullBackground:I

.field gravity:I

.field iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

.field isCompact:Z

.field isHandled:Z

.field isInExpandedMode:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field listPresenterTheme:I

.field menu:Lcom/android/internal/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastExpanded:Z

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 5476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5477
    iput p1, p0, featureId:I

    .line 5479
    const/4 v0, 0x0

    iput-boolean v0, p0, refreshDecorView:Z

    .line 5480
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .registers 3

    .prologue
    .line 5622
    iget-object v0, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_12

    iget-object v0, p0, frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_12

    .line 5623
    iget-object v0, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 5624
    const/4 v0, 0x0

    iput-object v0, p0, frozenMenuState:Landroid/os/Bundle;

    .line 5626
    :cond_12
    return-void
.end method

.method public clearMenuPresenters()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5501
    iget-object v0, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_13

    .line 5502
    iget-object v0, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 5503
    iget-object v0, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 5505
    :cond_13
    iput-object v2, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 5506
    iput-object v2, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 5507
    return-void
.end method

.method getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 5574
    iget-object v1, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 5585
    :goto_5
    return-object v0

    .line 5576
    :cond_6
    iget-object v1, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-nez v1, :cond_25

    .line 5577
    new-instance v1, Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-direct {v1, p1}, Lcom/android/internal/view/menu/IconMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 5578
    iget-object v1, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 5579
    iget-object v1, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    const v2, 0x1020049

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setId(I)V

    .line 5580
    iget-object v1, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 5583
    :cond_25
    iget-object v1, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    iget-object v2, p0, decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .line 5585
    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    goto :goto_5
.end method

.method getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 5540
    iget-object v2, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_6

    const/4 v1, 0x0

    .line 5570
    :goto_5
    return-object v1

    .line 5542
    :cond_6
    iget-boolean v2, p0, isCompact:Z

    if-nez v2, :cond_d

    .line 5543
    invoke-virtual {p0, p1, p2}, getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    .line 5546
    :cond_d
    iget-object v2, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-nez v2, :cond_45

    .line 5548
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 5549
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11600bd

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5550
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_5d

    .line 5551
    new-instance v2, Lcom/android/internal/view/menu/ListMenuPresenter;

    const v3, 0x1090129

    iget v4, p0, listPresenterTheme:I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v2, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 5559
    :goto_31
    iget-object v2, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 5560
    iget-object v2, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    const v3, 0x102004a

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->setId(I)V

    .line 5561
    iget-object v2, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v3, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 5564
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_45
    iget-object v2, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_54

    .line 5565
    iget-object v2, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v3, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/IconMenuPresenter;->getNumActualItemsShown()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->setItemIndexOffset(I)V

    .line 5568
    :cond_54
    iget-object v2, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v3, p0, decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .line 5570
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    goto :goto_5

    .line 5555
    .end local v1    # "result":Lcom/android/internal/view/menu/MenuView;
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_5d
    new-instance v2, Lcom/android/internal/view/menu/ListMenuPresenter;

    const v3, 0x109008a

    iget v4, p0, listPresenterTheme:I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v2, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    goto :goto_31
.end method

.method public hasPanelItems()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5487
    iget-object v0, p0, shownPanelView:Landroid/view/View;

    if-nez v0, :cond_8

    move v1, v2

    .line 5493
    :cond_7
    :goto_7
    return v1

    .line 5488
    :cond_8
    iget-object v0, p0, createdPanelView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 5490
    iget-boolean v0, p0, isCompact:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, isInExpandedMode:Z

    if-eqz v0, :cond_25

    .line 5491
    :cond_14
    iget-object v0, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_23

    move v0, v1

    :goto_21
    move v1, v0

    goto :goto_7

    :cond_23
    move v0, v2

    goto :goto_21

    .line 5493
    :cond_25
    iget-object v0, p0, shownPanelView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_7

    move v1, v2

    goto :goto_7
.end method

.method public isInListMode()Z
    .registers 2

    .prologue
    .line 5483
    iget-boolean v0, p0, isInExpandedMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, isCompact:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 5603
    move-object v0, p1

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    .line 5604
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, featureId:I

    .line 5605
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, wasLastOpen:Z

    .line 5606
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    iput-boolean v1, p0, wasLastExpanded:Z

    .line 5607
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, frozenMenuState:Landroid/os/Bundle;

    .line 5616
    iput-object v2, p0, createdPanelView:Landroid/view/View;

    .line 5617
    iput-object v2, p0, shownPanelView:Landroid/view/View;

    .line 5618
    iput-object v2, p0, decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 5619
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 5589
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>(Lcom/android/internal/policy/PhoneWindow$1;)V

    .line 5590
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, p0, featureId:I

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    .line 5591
    iget-boolean v1, p0, isOpen:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    .line 5592
    iget-boolean v1, p0, isInExpandedMode:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 5594
    iget-object v1, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_24

    .line 5595
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 5596
    iget-object v1, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 5599
    :cond_24
    return-object v0
.end method

.method setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 5526
    iget-object v0, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    .line 5537
    :cond_4
    :goto_4
    return-void

    .line 5528
    :cond_5
    iget-object v0, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_17

    .line 5529
    iget-object v0, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 5530
    iget-object v0, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 5532
    :cond_17
    iput-object p1, p0, menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 5533
    if-eqz p1, :cond_4

    .line 5534
    iget-object v0, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_24

    iget-object v0, p0, iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 5535
    :cond_24
    iget-object v0, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_4

    iget-object v0, p0, listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    goto :goto_4
.end method

.method setStyle(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 5510
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5511
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, background:I

    .line 5513
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, fullBackground:I

    .line 5515
    const/16 v1, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, windowAnimations:I

    .line 5517
    const/16 v1, 0x121

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, isCompact:Z

    .line 5519
    const/16 v1, 0x123

    const v2, 0x1030477

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, listPresenterTheme:I

    .line 5522
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5523
    return-void
.end method
