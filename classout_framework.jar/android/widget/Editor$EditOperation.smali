.class public Landroid/widget/Editor$EditOperation;
.super Landroid/content/UndoOperation;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation",
        "<",
        "Landroid/widget/Editor;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/widget/Editor$EditOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_DELETE:I = 0x1

.field private static final TYPE_INSERT:I = 0x0

.field private static final TYPE_REPLACE:I = 0x2


# instance fields
.field private mNewCursorPos:I

.field private mNewText:Ljava/lang/String;

.field private mNewTextStart:I

.field private mOldCursorPos:I

.field private mOldText:Ljava/lang/String;

.field private mOldTextStart:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6224
    new-instance v0, Landroid/widget/Editor$EditOperation$1;

    invoke-direct {v0}, Landroid/widget/Editor$EditOperation$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 6029
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 6030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mType:I

    .line 6031
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mOldText:Ljava/lang/String;

    .line 6032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mOldTextStart:I

    .line 6033
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mNewText:Ljava/lang/String;

    .line 6034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mNewTextStart:I

    .line 6035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mOldCursorPos:I

    .line 6036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mNewCursorPos:I

    .line 6037
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "oldText"    # Ljava/lang/String;
    .param p3, "dstart"    # I
    .param p4, "newText"    # Ljava/lang/String;

    .prologue
    .line 6004
    # getter for: Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;
    invoke-static {p1}, Landroid/widget/Editor;->access$5600(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 6005
    iput-object p2, p0, mOldText:Ljava/lang/String;

    .line 6006
    iput-object p4, p0, mNewText:Ljava/lang/String;

    .line 6012
    iget-object v0, p0, mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_34

    iget-object v0, p0, mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_34

    .line 6013
    const/4 v0, 0x0

    iput v0, p0, mType:I

    .line 6014
    iput p3, p0, mNewTextStart:I

    .line 6024
    :goto_20
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, mOldCursorPos:I

    .line 6025
    iget-object v0, p0, mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, mNewCursorPos:I

    .line 6026
    return-void

    .line 6015
    :cond_34
    iget-object v0, p0, mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4a

    .line 6016
    const/4 v0, 0x1

    iput v0, p0, mType:I

    .line 6017
    iput p3, p0, mOldTextStart:I

    goto :goto_20

    .line 6019
    :cond_4a
    const/4 v0, 0x2

    iput v0, p0, mType:I

    .line 6020
    iput p3, p0, mNewTextStart:I

    iput p3, p0, mOldTextStart:I

    goto :goto_20
.end method

.method static synthetic access$5700(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/Editor$EditOperation;
    .param p1, "x1"    # Landroid/widget/Editor$EditOperation;

    .prologue
    .line 5985
    invoke-direct {p0, p1}, mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0
.end method

.method private getNewTextEnd()I
    .registers 3

    .prologue
    .line 6051
    iget v0, p0, mNewTextStart:I

    iget-object v1, p0, mNewText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getOldTextEnd()I
    .registers 3

    .prologue
    .line 6055
    iget v0, p0, mOldTextStart:I

    iget-object v1, p0, mOldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6201
    iget v0, p0, mType:I

    packed-switch v0, :pswitch_data_12

    .line 6209
    const-string v0, ""

    :goto_7
    return-object v0

    .line 6203
    :pswitch_8
    const-string v0, "insert"

    goto :goto_7

    .line 6205
    :pswitch_b
    const-string v0, "delete"

    goto :goto_7

    .line 6207
    :pswitch_e
    const-string/jumbo v0, "replace"

    goto :goto_7

    .line 6201
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 6
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6122
    iget v2, p1, mType:I

    if-eq v2, v1, :cond_7

    .line 6132
    :cond_6
    :goto_6
    return v0

    .line 6126
    :cond_7
    iget v2, p0, mOldTextStart:I

    invoke-direct {p1}, getOldTextEnd()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 6129
    iget v0, p1, mOldTextStart:I

    iput v0, p0, mOldTextStart:I

    .line 6130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, mOldText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mOldText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mOldText:Ljava/lang/String;

    .line 6131
    iget v0, p1, mNewCursorPos:I

    iput v0, p0, mNewCursorPos:I

    move v0, v1

    .line 6132
    goto :goto_6
.end method

.method private mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 5
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    const/4 v0, 0x0

    .line 6107
    iget v1, p1, mType:I

    if-eqz v1, :cond_6

    .line 6116
    :cond_5
    :goto_5
    return v0

    .line 6111
    :cond_6
    invoke-direct {p0}, getNewTextEnd()I

    move-result v1

    iget v2, p1, mNewTextStart:I

    if-ne v1, v2, :cond_5

    .line 6114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mNewText:Ljava/lang/String;

    .line 6115
    iget v0, p1, mNewCursorPos:I

    iput v0, p0, mNewCursorPos:I

    .line 6116
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 4
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    .line 6137
    iget v0, p1, mType:I

    if-nez v0, :cond_c

    invoke-direct {p0}, getNewTextEnd()I

    move-result v0

    iget v1, p1, mNewTextStart:I

    if-eq v0, v1, :cond_e

    .line 6138
    :cond_c
    const/4 v0, 0x0

    .line 6143
    :goto_d
    return v0

    .line 6140
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mOldText:Ljava/lang/String;

    .line 6141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mNewText:Ljava/lang/String;

    .line 6142
    iget v0, p1, mNewCursorPos:I

    iput v0, p0, mNewCursorPos:I

    .line 6143
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private mergeWith(Landroid/widget/Editor$EditOperation;)Z
    .registers 3
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    .line 6093
    iget v0, p0, mType:I

    packed-switch v0, :pswitch_data_16

    .line 6101
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 6095
    :pswitch_7
    invoke-direct {p0, p1}, mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    goto :goto_6

    .line 6097
    :pswitch_c
    invoke-direct {p0, p1}, mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    goto :goto_6

    .line 6099
    :pswitch_11
    invoke-direct {p0, p1}, mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    goto :goto_6

    .line 6093
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_7
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method

.method private static modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V
    .registers 8
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "deleteFrom"    # I
    .param p2, "deleteTo"    # I
    .param p3, "newText"    # Ljava/lang/CharSequence;
    .param p4, "newTextInsertAt"    # I
    .param p5, "newCursorPos"    # I

    .prologue
    .line 6183
    # invokes: Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->access$5800(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1d

    .line 6185
    if-eq p1, p2, :cond_14

    .line 6186
    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 6188
    :cond_14
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 6189
    invoke-interface {p0, p4, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 6195
    :cond_1d
    if-ltz p5, :cond_28

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt p5, v0, :cond_28

    .line 6196
    invoke-static {p0, p5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6198
    :cond_28
    return-void
.end method


# virtual methods
.method public commit()V
    .registers 1

    .prologue
    .line 6060
    return-void
.end method

.method public forceMergeWith(Landroid/widget/Editor$EditOperation;)V
    .registers 12
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .prologue
    const/4 v9, 0x0

    .line 6152
    invoke-virtual {p0}, getOwnerData()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/Editor;

    .line 6158
    .local v8, "editor":Landroid/widget/Editor;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Editable;

    .line 6159
    .local v7, "editable":Landroid/text/Editable;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6162
    .local v0, "originalText":Landroid/text/Editable;
    iget v1, p0, mNewTextStart:I

    invoke-direct {p0}, getNewTextEnd()I

    move-result v2

    iget-object v3, p0, mOldText:Ljava/lang/String;

    iget v4, p0, mOldTextStart:I

    iget v5, p0, mOldCursorPos:I

    invoke-static/range {v0 .. v5}, modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 6166
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6167
    .local v1, "finalText":Landroid/text/Editable;
    iget v2, p1, mOldTextStart:I

    invoke-direct {p1}, getOldTextEnd()I

    move-result v3

    iget-object v4, p1, mNewText:Ljava/lang/String;

    iget v5, p1, mNewTextStart:I

    iget v6, p1, mNewCursorPos:I

    invoke-static/range {v1 .. v6}, modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 6171
    const/4 v2, 0x2

    iput v2, p0, mType:I

    .line 6172
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mNewText:Ljava/lang/String;

    .line 6173
    iput v9, p0, mNewTextStart:I

    .line 6174
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mOldText:Ljava/lang/String;

    .line 6175
    iput v9, p0, mOldTextStart:I

    .line 6176
    iget v2, p1, mNewCursorPos:I

    iput v2, p0, mNewCursorPos:I

    .line 6178
    return-void
.end method

.method public redo()V
    .registers 8

    .prologue
    .line 6076
    invoke-virtual {p0}, getOwnerData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Editor;

    .line 6077
    .local v6, "editor":Landroid/widget/Editor;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 6078
    .local v0, "text":Landroid/text/Editable;
    iget v1, p0, mOldTextStart:I

    invoke-direct {p0}, getOldTextEnd()I

    move-result v2

    iget-object v3, p0, mNewText:Ljava/lang/String;

    iget v4, p0, mNewTextStart:I

    iget v5, p0, mNewCursorPos:I

    invoke-static/range {v0 .. v5}, modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 6080
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 6215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOldText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOldTextStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mOldTextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNewText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNewTextStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mNewTextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOldCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mOldCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNewCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mNewCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undo()V
    .registers 8

    .prologue
    .line 6066
    invoke-virtual {p0}, getOwnerData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Editor;

    .line 6067
    .local v6, "editor":Landroid/widget/Editor;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 6068
    .local v0, "text":Landroid/text/Editable;
    iget v1, p0, mNewTextStart:I

    invoke-direct {p0}, getNewTextEnd()I

    move-result v2

    iget-object v3, p0, mOldText:Ljava/lang/String;

    iget v4, p0, mOldTextStart:I

    iget v5, p0, mOldCursorPos:I

    invoke-static/range {v0 .. v5}, modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 6070
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 6041
    iget v0, p0, mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6042
    iget-object v0, p0, mOldText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6043
    iget v0, p0, mOldTextStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6044
    iget-object v0, p0, mNewText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6045
    iget v0, p0, mNewTextStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6046
    iget v0, p0, mOldCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6047
    iget v0, p0, mNewCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6048
    return-void
.end method
