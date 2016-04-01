.class final Landroid/view/ViewRootImpl$ViewPreImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPreImeInputStage"
.end annotation


# instance fields
.field private mNeedBackKey:Z

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .registers 4
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    .line 4922
    iput-object p1, p0, this$0:Landroid/view/ViewRootImpl;

    .line 4923
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 4927
    const/4 v0, 0x0

    iput-boolean v0, p0, mNeedBackKey:Z

    .line 4924
    return-void
.end method

.method private injectBackKeyEvent()V
    .registers 17

    .prologue
    .line 5003
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    .line 5004
    .local v14, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz v14, :cond_3b

    .line 5006
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5007
    .local v0, "downTime":J
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 5009
    .local v13, "down":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v14, v13, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 5010
    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    .line 5013
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5014
    .local v2, "upTime":J
    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 5016
    .local v15, "up":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v14, v15, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 5017
    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    .line 5019
    .end local v0    # "downTime":J
    .end local v2    # "upTime":J
    .end local v13    # "down":Landroid/view/KeyEvent;
    .end local v15    # "up":Landroid/view/KeyEvent;
    :cond_3b
    return-void
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 14
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4939
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/KeyEvent;

    .line 4942
    .local v1, "event":Landroid/view/KeyEvent;
    sget-boolean v8, Landroid/view/ViewRootImpl;->sIsNovelModel:Z

    if-eqz v8, :cond_86

    sget-boolean v8, Landroid/view/ViewRootImpl;->bFactoryBinary:Z

    if-nez v8, :cond_86

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v11, 0x43

    if-ne v8, v11, :cond_86

    .line 4943
    invoke-static {}, Landroid/view/inputmethod/InputMethodManagerWrapper;->getInstance()Landroid/view/inputmethod/InputMethodManagerWrapper;

    move-result-object v3

    .line 4944
    .local v3, "immWrapper":Landroid/view/inputmethod/InputMethodManagerWrapper;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4945
    .local v0, "action":I
    if-nez v0, :cond_56

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_56

    .line 4946
    if-nez v3, :cond_76

    const/4 v4, 0x0

    .line 4956
    .local v4, "inputConnection":Landroid/view/inputmethod/InputConnection;
    :goto_29
    if-eqz v4, :cond_83

    .line 4957
    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 4958
    .local v7, "textBeforeCursor":Ljava/lang/CharSequence;
    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 4959
    .local v6, "textAfterCursor":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManagerWrapper;->getServedView()Landroid/view/View;

    move-result-object v8

    iget-object v11, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    if-ne v8, v11, :cond_80

    .line 4960
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_7d

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_7d

    .line 4961
    invoke-interface {v4, v10}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 4962
    .local v5, "selectedText":Ljava/lang/CharSequence;
    if-nez v5, :cond_7b

    move v8, v9

    :goto_54
    iput-boolean v8, p0, mNeedBackKey:Z

    .line 4978
    .end local v4    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    .end local v6    # "textAfterCursor":Ljava/lang/CharSequence;
    .end local v7    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_56
    :goto_56
    iget-boolean v8, p0, mNeedBackKey:Z

    if-eqz v8, :cond_86

    .line 4979
    if-ne v0, v9, :cond_75

    .line 4980
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 4981
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_70

    iget-object v8, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v2, v8, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v8

    if-nez v8, :cond_73

    .line 4982
    :cond_70
    invoke-direct {p0}, injectBackKeyEvent()V

    .line 4985
    :cond_73
    iput-boolean v10, p0, mNeedBackKey:Z

    .line 4998
    .end local v0    # "action":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "immWrapper":Landroid/view/inputmethod/InputMethodManagerWrapper;
    :cond_75
    :goto_75
    return v9

    .line 4946
    .restart local v0    # "action":I
    .restart local v3    # "immWrapper":Landroid/view/inputmethod/InputMethodManagerWrapper;
    :cond_76
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManagerWrapper;->getServedInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    goto :goto_29

    .restart local v4    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .restart local v5    # "selectedText":Ljava/lang/CharSequence;
    .restart local v6    # "textAfterCursor":Ljava/lang/CharSequence;
    .restart local v7    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_7b
    move v8, v10

    .line 4962
    goto :goto_54

    .line 4965
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_7d
    iput-boolean v10, p0, mNeedBackKey:Z

    goto :goto_56

    .line 4969
    :cond_80
    iput-boolean v9, p0, mNeedBackKey:Z

    goto :goto_56

    .line 4973
    .end local v6    # "textAfterCursor":Ljava/lang/CharSequence;
    .end local v7    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_83
    iput-boolean v9, p0, mNeedBackKey:Z

    goto :goto_56

    .line 4992
    .end local v0    # "action":I
    .end local v3    # "immWrapper":Landroid/view/inputmethod/InputMethodManagerWrapper;
    .end local v4    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :cond_86
    iget-object v8, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z

    move-result v8

    if-nez v8, :cond_75

    .line 4995
    iget-object v8, p0, this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v8

    if-nez v8, :cond_75

    move v9, v10

    .line 4998
    goto :goto_75
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4932
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    .line 4933
    invoke-direct {p0, p1}, processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    .line 4935
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
