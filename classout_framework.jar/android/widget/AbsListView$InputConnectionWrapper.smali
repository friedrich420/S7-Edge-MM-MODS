.class Landroid/widget/AbsListView$InputConnectionWrapper;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputConnectionWrapper"
.end annotation


# instance fields
.field private final mOutAttrs:Landroid/view/inputmethod/EditorInfo;

.field private mTarget:Landroid/view/inputmethod/InputConnection;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V
    .registers 3
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7956
    iput-object p1, p0, this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7957
    iput-object p2, p0, mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    .line 7958
    return-void
.end method

.method private getTarget()Landroid/view/inputmethod/InputConnection;
    .registers 3

    .prologue
    .line 7961
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_12

    .line 7962
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5200(Landroid/widget/AbsListView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    .line 7964
    :cond_12
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 2

    .prologue
    .line 8073
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 3
    .param p1, "states"    # I

    .prologue
    .line 8083
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 8053
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 8058
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 8048
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .registers 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 8028
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 8078
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .registers 2

    .prologue
    .line 8043
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getCursorCapsMode(I)I
    .registers 3
    .param p1, "reqModes"    # I

    .prologue
    .line 8017
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_7

    const/16 v0, 0x4000

    .line 8018
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    goto :goto_6
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 4
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 8023
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 8011
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_7

    const-string v0, ""

    .line 8012
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 8005
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_7

    const-string v0, ""

    .line 8006
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "n"    # I
    .param p2, "flags"    # I

    .prologue
    .line 7999
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_7

    const-string v0, ""

    .line 8000
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 8068
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 6
    .param p1, "editorAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 7978
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1e

    .line 7979
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7981
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1d

    .line 7982
    iget-object v2, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7984
    :cond_1d
    const/4 v1, 0x1

    .line 7986
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1e
    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 8088
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 7971
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .registers 3
    .param p1, "cursorUpdateMode"    # I

    .prologue
    .line 8093
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7994
    iget-object v0, p0, this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5300(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8038
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 8033
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8063
    invoke-direct {p0}, getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method
