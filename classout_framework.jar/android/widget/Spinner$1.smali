.class Landroid/widget/Spinner$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Spinner;

.field final synthetic val$popup:Landroid/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V
    .registers 4
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 300
    iput-object p1, p0, this$0:Landroid/widget/Spinner;

    iput-object p3, p0, val$popup:Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, val$popup:Landroid/widget/Spinner$DropdownPopup;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .registers 4

    .prologue
    .line 308
    iget-object v0, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;
    invoke-static {v0}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_21

    .line 309
    iget-object v0, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;
    invoke-static {v0}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    move-result-object v0

    iget-object v1, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v1

    iget-object v2, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 311
    :cond_21
    const/4 v0, 0x1

    return v0
.end method
