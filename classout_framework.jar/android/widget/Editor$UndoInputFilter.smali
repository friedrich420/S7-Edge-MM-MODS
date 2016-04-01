.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mHasComposition:Z

.field private mIsUserEdit:Z


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .registers 2
    .param p1, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 5801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5802
    iput-object p1, p0, mEditor:Landroid/widget/Editor;

    .line 5803
    return-void
.end method

.method private canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .registers 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v0, 0x0

    .line 5936
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v1, :cond_8

    .line 5961
    :cond_7
    :goto_7
    return v0

    .line 5941
    :cond_8
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;
    invoke-static {v1}, Landroid/widget/Editor;->access$5500(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v1

    if-nez v1, :cond_7

    .line 5949
    # invokes: Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->access$5800(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_7

    # invokes: Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z
    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->access$5800(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5956
    if-ne p2, p3, :cond_24

    if-eq p5, p6, :cond_7

    .line 5961
    :cond_24
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private handleCompositionEdit(Ljava/lang/CharSequence;III)Z
    .registers 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dstart"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5857
    invoke-direct {p0, p1}, isComposition(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5858
    iput-boolean v3, p0, mHasComposition:Z

    .line 5879
    :cond_a
    :goto_a
    return v3

    .line 5861
    :cond_b
    iget-boolean v1, p0, mHasComposition:Z

    .line 5862
    .local v1, "hadComposition":Z
    iput-boolean v4, p0, mHasComposition:Z

    .line 5865
    if-eqz v1, :cond_24

    .line 5867
    if-eq p2, p3, :cond_a

    .line 5872
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 5873
    .local v2, "newText":Ljava/lang/String;
    new-instance v0, Landroid/widget/Editor$EditOperation;

    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    const-string v6, ""

    invoke-direct {v0, v5, v6, p4, v2}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V

    .line 5874
    .local v0, "edit":Landroid/widget/Editor$EditOperation;
    invoke-direct {p0, v0, v4}, recordEdit(Landroid/widget/Editor$EditOperation;Z)V

    goto :goto_a

    .end local v0    # "edit":Landroid/widget/Editor$EditOperation;
    .end local v2    # "newText":Ljava/lang/String;
    :cond_24
    move v3, v4

    .line 5879
    goto :goto_a
.end method

.method private handleKeyboardEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)V
    .registers 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 5888
    invoke-direct {p0}, isInTextWatcher()Z

    move-result v1

    .line 5891
    .local v1, "forceMerge":Z
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 5892
    .local v2, "newText":Ljava/lang/String;
    invoke-static {p4, p5, p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 5893
    .local v3, "oldText":Ljava/lang/String;
    new-instance v0, Landroid/widget/Editor$EditOperation;

    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    invoke-direct {v0, v4, v3, p5, v2}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V

    .line 5894
    .local v0, "edit":Landroid/widget/Editor$EditOperation;
    invoke-direct {p0, v0, v1}, recordEdit(Landroid/widget/Editor$EditOperation;Z)V

    .line 5895
    return-void
.end method

.method private isComposition(Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 5965
    instance-of v4, p1, Landroid/text/Spannable;

    if-nez v4, :cond_6

    .line 5972
    :cond_5
    :goto_5
    return v3

    :cond_6
    move-object v2, p1

    .line 5969
    check-cast v2, Landroid/text/Spannable;

    .line 5970
    .local v2, "text":Landroid/text/Spannable;
    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 5971
    .local v0, "composeBegin":I
    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 5972
    .local v1, "composeEnd":I
    if-ge v0, v1, :cond_5

    const/4 v3, 0x1

    goto :goto_5
.end method

.method private isInTextWatcher()Z
    .registers 3

    .prologue
    .line 5976
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5977
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_18

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result v1

    if-lez v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private recordEdit(Landroid/widget/Editor$EditOperation;Z)V
    .registers 9
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;
    .param p2, "forceMerge"    # Z

    .prologue
    const/4 v5, 0x0

    .line 5903
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;
    invoke-static {v2}, Landroid/widget/Editor;->access$5500(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    .line 5904
    .local v1, "um":Landroid/content/UndoManager;
    const-string v2, "Edit text"

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 5905
    const-class v2, Landroid/widget/Editor$EditOperation;

    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;
    invoke-static {v3}, Landroid/widget/Editor;->access$5600(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$EditOperation;

    .line 5907
    .local v0, "lastEdit":Landroid/widget/Editor$EditOperation;
    if-nez v0, :cond_24

    .line 5910
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 5931
    :cond_20
    :goto_20
    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    .line 5932
    return-void

    .line 5911
    :cond_24
    if-eqz p2, :cond_2a

    .line 5915
    invoke-virtual {v0, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_20

    .line 5916
    :cond_2a
    iget-boolean v2, p0, mIsUserEdit:Z

    if-nez v2, :cond_3b

    .line 5920
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;
    invoke-static {v2}, Landroid/widget/Editor;->access$5600(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 5921
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_20

    .line 5922
    :cond_3b
    # invokes: Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z
    invoke-static {v0, p1}, Landroid/widget/Editor$EditOperation;->access$5700(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 5928
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;
    invoke-static {v2}, Landroid/widget/Editor;->access$5600(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 5929
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_20
.end method


# virtual methods
.method public beginBatchEdit()V
    .registers 2

    .prologue
    .line 5820
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsUserEdit:Z

    .line 5821
    return-void
.end method

.method public endBatchEdit()V
    .registers 2

    .prologue
    .line 5825
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsUserEdit:Z

    .line 5826
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v1, 0x0

    .line 5837
    invoke-direct/range {p0 .. p6}, canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5848
    :cond_7
    :goto_7
    return-object v1

    .line 5842
    :cond_8
    invoke-direct {p0, p1, p2, p3, p5}, handleCompositionEdit(Ljava/lang/CharSequence;III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5847
    invoke-direct/range {p0 .. p6}, handleKeyboardEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)V

    goto :goto_7
.end method

.method public restoreInstanceState(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_9
    iput-boolean v0, p0, mIsUserEdit:Z

    .line 5812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    :goto_11
    iput-boolean v1, p0, mHasComposition:Z

    .line 5813
    return-void

    :cond_14
    move v0, v2

    .line 5811
    goto :goto_9

    :cond_16
    move v1, v2

    .line 5812
    goto :goto_11
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5806
    iget-boolean v0, p0, mIsUserEdit:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5807
    iget-boolean v0, p0, mHasComposition:Z

    if-eqz v0, :cond_14

    :goto_e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5808
    return-void

    :cond_12
    move v0, v2

    .line 5806
    goto :goto_7

    :cond_14
    move v1, v2

    .line 5807
    goto :goto_e
.end method
