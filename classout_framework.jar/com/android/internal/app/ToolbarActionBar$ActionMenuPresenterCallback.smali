.class final Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ToolbarActionBar;)V
    .registers 2

    .prologue
    .line 514
    iput-object p1, p0, this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/app/ToolbarActionBar;
    .param p2, "x1"    # Lcom/android/internal/app/ToolbarActionBar$1;

    .prologue
    .line 514
    invoke-direct {p0, p1}, <init>(Lcom/android/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 528
    iget-boolean v0, p0, mClosingActionMenu:Z

    if-eqz v0, :cond_5

    .line 538
    :goto_4
    return-void

    .line 532
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, mClosingActionMenu:Z

    .line 533
    iget-object v0, p0, this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$400(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 534
    iget-object v0, p0, this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 535
    iget-object v0, p0, this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 537
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, mClosingActionMenu:Z

    goto :goto_4
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 519
    iget-object v0, p0, this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 520
    iget-object v0, p0, this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 521
    const/4 v0, 0x1

    .line 523
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
