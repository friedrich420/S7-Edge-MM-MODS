.class Lcom/android/internal/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field final synthetic this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 193
    iput-object p1, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    iget-object v1, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;
    invoke-static {v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$100(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v1, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_49

    iget-object v1, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z
    invoke-static {v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$300(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 200
    iget-object v1, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$400(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 201
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 202
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3e

    iget-object v1, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;
    invoke-static {v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/ToolbarWidgetWrapper$1$1;

    iget-object v3, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/widget/Toolbar;
    invoke-static {v3}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/ToolbarWidgetWrapper$1$1;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper$1;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 207
    :cond_3e
    iget-object v1, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v1

    iget-object v2, p0, mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-interface {v1, v4, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 215
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_49
    :goto_49
    return-void

    .line 212
    :cond_4a
    iget-object v1, p0, this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v1

    iget-object v2, p0, mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-interface {v1, v4, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    goto :goto_49
.end method
