.class Lcom/android/internal/widget/ToolbarWidgetWrapper$1$1;
.super Landroid/os/ResultReceiver;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/ToolbarWidgetWrapper$1;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper$1;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 202
    iput-object p1, p0, this$1:Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 204
    iget-object v0, p0, this$1:Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    iget-object v0, v0, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    # getter for: Lcom/android/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, this$1:Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    iget-object v2, v2, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 205
    return-void
.end method
