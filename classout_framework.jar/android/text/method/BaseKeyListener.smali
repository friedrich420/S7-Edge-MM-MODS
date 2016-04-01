.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/BaseKeyListener$1;
    }
.end annotation


# static fields
.field static final OLD_SEL_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, OLD_SEL_START:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 202
    return-void
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 69
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    and-int/lit16 v7, v7, -0x70f4

    invoke-static {v7}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v7

    if-nez v7, :cond_f

    .line 109
    :cond_e
    :goto_e
    return v6

    .line 75
    :cond_f
    invoke-direct {p0, p1, p2}, deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v7

    if-eqz v7, :cond_17

    move v6, v5

    .line 76
    goto :goto_e

    .line 80
    :cond_17
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_3a

    move v2, v5

    .line 81
    .local v2, "isCtrlActive":Z
    :goto_20
    invoke-static {p2, v5, p4}, getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v7

    if-ne v7, v5, :cond_3c

    move v3, v5

    .line 82
    .local v3, "isShiftActive":Z
    :goto_27
    const/4 v7, 0x2

    invoke-static {p2, v7, p4}, getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v7

    if-ne v7, v5, :cond_3e

    move v1, v5

    .line 84
    .local v1, "isAltActive":Z
    :goto_2f
    if-eqz v2, :cond_40

    .line 85
    if-nez v1, :cond_e

    if-nez v3, :cond_e

    .line 89
    invoke-direct {p0, p1, p2, p5}, deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v6

    goto :goto_e

    .end local v1    # "isAltActive":Z
    .end local v2    # "isCtrlActive":Z
    .end local v3    # "isShiftActive":Z
    :cond_3a
    move v2, v6

    .line 80
    goto :goto_20

    .restart local v2    # "isCtrlActive":Z
    :cond_3c
    move v3, v6

    .line 81
    goto :goto_27

    .restart local v3    # "isShiftActive":Z
    :cond_3e
    move v1, v6

    .line 82
    goto :goto_2f

    .line 93
    .restart local v1    # "isAltActive":Z
    :cond_40
    if-eqz v1, :cond_4a

    invoke-direct {p0, p1, p2}, deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v7

    if-eqz v7, :cond_4a

    move v6, v5

    .line 94
    goto :goto_e

    .line 98
    :cond_4a
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 100
    .local v4, "start":I
    if-eqz p5, :cond_63

    .line 101
    invoke-static {p2, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 105
    .local v0, "end":I
    :goto_54
    if-eq v4, v0, :cond_e

    .line 106
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v6, v5

    .line 107
    goto :goto_e

    .line 103
    .end local v0    # "end":I
    :cond_63
    invoke-static {p2, v4}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .restart local v0    # "end":I
    goto :goto_54
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    .line 176
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_23

    .line 177
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 178
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_23

    .line 179
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 180
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 181
    .local v3, "start":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 182
    .local v0, "end":I
    if-eq v0, v3, :cond_23

    .line 183
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 184
    const/4 v4, 0x1

    .line 188
    .end local v0    # "end":I
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "start":I
    :goto_22
    return v4

    :cond_23
    const/4 v4, 0x0

    goto :goto_22
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    .line 161
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 162
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 163
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_d

    .line 164
    move v2, v0

    .line 165
    .local v2, "temp":I
    move v0, v1

    .line 166
    move v1, v2

    .line 168
    .end local v2    # "temp":I
    :cond_d
    if-eq v1, v0, :cond_14

    .line 169
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 170
    const/4 v3, 0x1

    .line 172
    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "isForwardDelete"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 113
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 116
    .local v0, "currentCursorOffset":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-eq v0, v5, :cond_d

    .line 157
    .end local p1    # "view":Landroid/view/View;
    :cond_c
    :goto_c
    return v4

    .line 121
    .restart local p1    # "view":Landroid/view/View;
    :cond_d
    if-nez p3, :cond_11

    if-eqz v0, :cond_c

    :cond_11
    if-eqz p3, :cond_19

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v5

    if-eq v0, v5, :cond_c

    .line 126
    :cond_19
    const/4 v3, 0x0

    .line 127
    .local v3, "wordIterator":Landroid/text/method/WordIterator;
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_24

    .line 128
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v3

    .line 131
    :cond_24
    if-nez v3, :cond_2b

    .line 135
    new-instance v3, Landroid/text/method/WordIterator;

    .end local v3    # "wordIterator":Landroid/text/method/WordIterator;
    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    .line 141
    .restart local v3    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_2b
    if-eqz p3, :cond_44

    .line 142
    move v1, v0

    .line 143
    .local v1, "deleteFrom":I
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, p2, v1, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 144
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v2

    .line 145
    .local v2, "deleteTo":I
    if-ne v2, v6, :cond_3f

    .line 146
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 156
    :cond_3f
    :goto_3f
    invoke-interface {p2, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 157
    const/4 v4, 0x1

    goto :goto_c

    .line 149
    .end local v1    # "deleteFrom":I
    .end local v2    # "deleteTo":I
    :cond_44
    move v2, v0

    .line 150
    .restart local v2    # "deleteTo":I
    invoke-virtual {v3, p2, v4, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 151
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v1

    .line 152
    .restart local v1    # "deleteFrom":I
    if-ne v1, v6, :cond_3f

    .line 153
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .registers 5
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    .prologue
    .line 192
    const/4 v0, 0x1

    .line 193
    .local v0, "contentType":I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 204
    :goto_c
    if-eqz p1, :cond_12

    .line 205
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 207
    :cond_12
    return v0

    .line 195
    :pswitch_13
    or-int/lit16 v0, v0, 0x1000

    .line 196
    goto :goto_c

    .line 198
    :pswitch_16
    or-int/lit16 v0, v0, 0x2000

    .line 199
    goto :goto_c

    .line 201
    :pswitch_19
    or-int/lit16 v0, v0, 0x4000

    goto :goto_c

    .line 193
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 63
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 213
    sparse-switch p3, :sswitch_data_18

    .line 221
    const/4 v0, 0x0

    .line 225
    .local v0, "handled":Z
    :goto_4
    if-eqz v0, :cond_9

    .line 226
    invoke-static {p2}, adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 229
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 215
    .end local v0    # "handled":Z
    :sswitch_e
    invoke-virtual {p0, p1, p2, p3, p4}, backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 216
    .restart local v0    # "handled":Z
    goto :goto_4

    .line 218
    .end local v0    # "handled":Z
    :sswitch_13
    invoke-virtual {p0, p1, p2, p3, p4}, forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 219
    .restart local v0    # "handled":Z
    goto :goto_4

    .line 213
    :sswitch_data_18
    .sparse-switch
        0x43 -> :sswitch_e
        0x70 -> :sswitch_13
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 237
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eqz v5, :cond_f

    .line 263
    :cond_e
    :goto_e
    return v4

    .line 243
    :cond_f
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 244
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 245
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_1c

    .line 246
    move v2, v0

    .line 247
    .local v2, "temp":I
    move v0, v1

    .line 248
    move v1, v2

    .line 252
    .end local v2    # "temp":I
    :cond_1c
    if-ltz v1, :cond_20

    if-gez v0, :cond_25

    .line 253
    :cond_20
    const/4 v0, 0x0

    move v1, v0

    .line 254
    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 257
    :cond_25
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_e

    .line 262
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 263
    const/4 v4, 0x1

    goto :goto_e
.end method
