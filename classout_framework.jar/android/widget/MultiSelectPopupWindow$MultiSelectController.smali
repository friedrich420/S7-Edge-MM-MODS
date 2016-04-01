.class Landroid/widget/MultiSelectPopupWindow$MultiSelectController;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectController"
.end annotation


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

.field private mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .registers 2

    .prologue
    .line 889
    iput-object p1, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p2, "x1"    # Landroid/widget/MultiSelectPopupWindow$1;

    .prologue
    .line 889
    invoke-direct {p0, p1}, <init>(Landroid/widget/MultiSelectPopupWindow;)V

    return-void
.end method

.method private initDrawables()V
    .registers 4

    .prologue
    .line 901
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$900(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_23

    .line 902
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$902(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 904
    :cond_23
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$1000(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_46

    .line 905
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$1002(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 907
    :cond_46
    return-void
.end method

.method private initHandles()V
    .registers 5

    .prologue
    .line 910
    iget-object v0, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-nez v0, :cond_19

    .line 911
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    iget-object v1, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    iget-object v2, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->access$900(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$1000(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    .line 913
    :cond_19
    iget-object v0, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-nez v0, :cond_32

    .line 914
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    iget-object v1, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    iget-object v2, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->access$1000(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$900(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    .line 917
    :cond_32
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 918
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->show()V

    .line 920
    :cond_43
    iget-object v0, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->show()V

    .line 921
    iget-object v0, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->show()V

    .line 923
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 926
    iget-object v0, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_9

    .line 927
    iget-object v0, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->hide()V

    .line 929
    :cond_9
    iget-object v0, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_12

    .line 930
    iget-object v0, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->hide()V

    .line 932
    :cond_12
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 933
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->hide()V

    .line 935
    :cond_23
    return-void
.end method

.method public initPreviousOffset()V
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_9

    .line 972
    iget-object v0, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->initPreviousOffset()V

    .line 974
    :cond_9
    iget-object v0, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_12

    .line 975
    iget-object v0, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->initPreviousOffset()V

    .line 977
    :cond_12
    return-void
.end method

.method public isSelectionEndDragged()Z
    .registers 2

    .prologue
    .line 950
    iget-object v0, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_e

    iget-object v0, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSelectionStartDragged()Z
    .registers 2

    .prologue
    .line 942
    iget-object v0, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_e

    iget-object v0, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onDetached()V
    .registers 3

    .prologue
    .line 961
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 962
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 964
    iget-object v1, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v1, :cond_14

    .line 965
    iget-object v1, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->onDetached()V

    .line 966
    :cond_14
    iget-object v1, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v1, :cond_1d

    .line 967
    iget-object v1, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->onDetached()V

    .line 968
    :cond_1d
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 954
    if-nez p1, :cond_5

    .line 955
    invoke-virtual {p0}, hide()V

    .line 957
    :cond_5
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow()V
    .registers 6

    .prologue
    .line 983
    invoke-virtual {p0}, isSelectionStartDragged()Z

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {p0}, isSelectionEndDragged()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v3, :cond_43

    iget-object v3, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v3, :cond_43

    .line 984
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    .line 985
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_25

    .line 986
    const-string v3, "MultiSelectPopupWindow"

    const-string v4, "getTextFormultiSelection() text is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move-object v3, v2

    .line 989
    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 990
    .local v1, "selStart":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 992
    .local v0, "selEnd":I
    iget-object v3, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 993
    iget-object v3, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    .line 1004
    .end local v0    # "selEnd":I
    .end local v1    # "selStart":I
    :cond_43
    :goto_43
    return-void

    .line 994
    .restart local v0    # "selEnd":I
    .restart local v1    # "selStart":I
    :cond_44
    iget-object v3, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 995
    iget-object v3, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_43

    .line 996
    :cond_56
    iget-object v3, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 997
    iget-object v3, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_43

    .line 998
    :cond_70
    iget-object v3, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_86

    iget-object v3, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_86

    .line 999
    iget-object v3, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->hideMultiSelectQuickPopupWindow()V

    goto :goto_43

    .line 1000
    :cond_86
    iget-object v3, p0, mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_43

    .line 1001
    iget-object v3, p0, mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->hideMultiSelectQuickPopupWindow()V

    goto :goto_43
.end method

.method public show()V
    .registers 1

    .prologue
    .line 896
    invoke-direct {p0}, initDrawables()V

    .line 897
    invoke-direct {p0}, initHandles()V

    .line 898
    return-void
.end method
