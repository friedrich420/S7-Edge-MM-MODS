.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1629
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1630
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 1631
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1633
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    const-string v3, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getPreferenceThroughSystemProcess(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1634
    .local v0, "checked":Z
    :goto_0
    if-nez v0, :cond_2

    .line 1635
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showDragAndDropHelpDialog()V
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1640
    :goto_1
    return-void

    .line 1633
    .end local v0    # "checked":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1637
    .restart local v0    # "checked":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawDragAndDrop()V

    .line 1638
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$13;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startDragAndDrop()V
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    goto :goto_1
.end method
