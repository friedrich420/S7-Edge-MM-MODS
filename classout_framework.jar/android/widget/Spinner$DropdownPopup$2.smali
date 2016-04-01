.class Landroid/widget/Spinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/widget/Spinner$DropdownPopup;)V
    .registers 2

    .prologue
    .line 1384
    iput-object p1, p0, this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 1387
    iget-object v0, p0, this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # invokes: Landroid/widget/Spinner;->isVisibleToUser()Z
    invoke-static {v0}, Landroid/widget/Spinner;->access$700(Landroid/widget/Spinner;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1388
    iget-object v0, p0, this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/Spinner$DropdownPopup;->dismiss()V

    .line 1396
    :goto_f
    return-void

    .line 1390
    :cond_10
    iget-object v0, p0, this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 1394
    iget-object v0, p0, this$1:Landroid/widget/Spinner$DropdownPopup;

    # invokes: Landroid/widget/ListPopupWindow;->show()V
    invoke-static {v0}, Landroid/widget/Spinner$DropdownPopup;->access$801(Landroid/widget/Spinner$DropdownPopup;)V

    goto :goto_f
.end method
