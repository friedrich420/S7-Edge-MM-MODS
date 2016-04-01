.class public Landroid/text/MultiSelection;
.super Ljava/lang/Object;
.source "MultiSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MultiSelection$1;,
        Landroid/text/MultiSelection$END;,
        Landroid/text/MultiSelection$START;
    }
.end annotation


# static fields
.field public static final CURRENT_SELECTION_END:Ljava/lang/Object;

.field public static final CURRENT_SELECTION_START:Ljava/lang/Object;

.field private static mHoveredIcon:I

.field private static mIsSelecting:Z

.field private static mIsTextViewHovered:Z

.field private static mNeedToScroll:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 326
    new-instance v0, Landroid/text/MultiSelection$START;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$1;)V

    sput-object v0, CURRENT_SELECTION_START:Ljava/lang/Object;

    .line 327
    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$1;)V

    sput-object v0, CURRENT_SELECTION_END:Ljava/lang/Object;

    .line 329
    sput-boolean v1, mIsSelecting:Z

    .line 330
    sput-boolean v1, mIsTextViewHovered:Z

    .line 331
    sput-boolean v1, mNeedToScroll:Z

    .line 332
    const/4 v0, -0x1

    sput v0, mHoveredIcon:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addMultiSelection(Landroid/text/Spannable;II)V
    .registers 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    const/4 v2, 0x0

    .line 170
    if-ltz p1, :cond_5

    if-gez p2, :cond_6

    .line 179
    :cond_5
    :goto_5
    return-void

    .line 172
    :cond_6
    new-instance v1, Landroid/text/MultiSelection$START;

    invoke-direct {v1, v2}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$1;)V

    .line 173
    .local v1, "penStart":Landroid/text/MultiSelection$START;
    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$1;)V

    .line 175
    .local v0, "penEnd":Landroid/text/MultiSelection$END;
    const/16 v2, 0x222

    invoke-interface {p0, v1, p1, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 177
    const/16 v2, 0x22

    invoke-interface {p0, v0, p2, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5
.end method

.method public static final clearMultiSelection(Landroid/text/Spannable;)V
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    const/4 v5, 0x0

    .line 208
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$START;

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$START;

    .line 209
    .local v2, "spansStarts":[Landroid/text/MultiSelection$START;
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    .line 211
    .local v1, "spansEnds":[Landroid/text/MultiSelection$END;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    array-length v3, v2

    if-ge v0, v3, :cond_2a

    .line 212
    aget-object v3, v2, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 213
    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 215
    :cond_2a
    return-void
.end method

.method public static final getHoveredIcon()I
    .registers 1

    .prologue
    .line 300
    sget v0, mHoveredIcon:I

    return v0
.end method

.method public static final getIsMultiSelectingText()Z
    .registers 1

    .prologue
    .line 267
    sget-boolean v0, mIsSelecting:Z

    return v0
.end method

.method public static final getMultiSelectionCount(Landroid/text/Spannable;)I
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 250
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/MultiSelection$START;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    .line 251
    .local v0, "spans":[Landroid/text/MultiSelection$START;
    array-length v1, v0

    return v1
.end method

.method public static final getMultiSelectionEnd(Landroid/text/Spannable;)[I
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 236
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$END;

    .line 237
    .local v2, "spans":[Landroid/text/MultiSelection$END;
    array-length v3, v2

    new-array v0, v3, [I

    .line 239
    .local v0, "ends":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v3, v2

    if-ge v1, v3, :cond_1f

    .line 240
    aget-object v3, v2, v1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 242
    :cond_1f
    return-object v0
.end method

.method public static final getMultiSelectionStart(Landroid/text/Spannable;)[I
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 222
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/MultiSelection$START;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$START;

    .line 223
    .local v1, "spans":[Landroid/text/MultiSelection$START;
    array-length v3, v1

    new-array v2, v3, [I

    .line 225
    .local v2, "starts":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v3, v1

    if-ge v0, v3, :cond_1f

    .line 226
    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 228
    :cond_1f
    return-object v2
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 55
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 57
    :goto_c
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 43
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 45
    :goto_c
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static final isNeedToScroll()Z
    .registers 1

    .prologue
    .line 316
    sget-boolean v0, mNeedToScroll:Z

    return v0
.end method

.method public static final isTextViewHovered()Z
    .registers 1

    .prologue
    .line 292
    sget-boolean v0, mIsTextViewHovered:Z

    return v0
.end method

.method public static final removeCurSelection(Landroid/text/Spannable;)V
    .registers 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 152
    sget-object v0, CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 153
    sget-object v0, CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public static final removeMultiSelection(Landroid/text/Spannable;II)Z
    .registers 9
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    const-class v3, Landroid/text/MultiSelection$START;

    invoke-interface {p0, p1, p1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$START;

    .line 187
    .local v2, "spansStarts":[Landroid/text/MultiSelection$START;
    const-class v3, Landroid/text/MultiSelection$END;

    invoke-interface {p0, p2, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    .line 188
    .local v1, "spansEnds":[Landroid/text/MultiSelection$END;
    const/4 v0, 0x1

    .line 190
    .local v0, "ret":Z
    array-length v3, v2

    if-ne v3, v5, :cond_24

    .line 191
    aget-object v3, v2, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 195
    :goto_1b
    array-length v3, v1

    if-ne v3, v5, :cond_26

    .line 196
    aget-object v3, v1, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 200
    :goto_23
    return v0

    .line 193
    :cond_24
    const/4 v0, 0x0

    goto :goto_1b

    .line 198
    :cond_26
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .registers 3
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, setSelection(Landroid/text/Spannable;II)V

    .line 162
    return-void
.end method

.method public static final setIsMultiSelectingText(Z)V
    .registers 1
    .param p0, "bSelecting"    # Z

    .prologue
    .line 259
    sput-boolean p0, mIsSelecting:Z

    .line 260
    return-void
.end method

.method public static final setNeedToScroll(Z)V
    .registers 1
    .param p0, "bflag"    # Z

    .prologue
    .line 308
    sput-boolean p0, mNeedToScroll:Z

    .line 309
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .registers 25
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 75
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_a

    if-ltz p1, :cond_a

    if-gez p2, :cond_b

    .line 145
    :cond_a
    :goto_a
    return-void

    .line 77
    :cond_b
    invoke-static/range {p0 .. p0}, getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 78
    .local v17, "ostart":I
    invoke-static/range {p0 .. p0}, getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v16

    .line 83
    .local v16, "oend":I
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 84
    .local v6, "len":I
    if-lez p1, :cond_1d

    move/from16 v0, p1

    if-lt v0, v6, :cond_23

    :cond_1d
    if-lez p2, :cond_d1

    move/from16 v0, p2

    if-ge v0, v6, :cond_d1

    .line 85
    :cond_23
    const/4 v15, 0x0

    .line 87
    .local v15, "needCheckPosition":Z
    if-lez p1, :cond_36

    move/from16 v0, p1

    if-ge v0, v6, :cond_36

    .line 88
    invoke-interface/range {p0 .. p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v18

    .line 89
    .local v18, "startChar":C
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 90
    add-int/lit8 p1, p1, 0x1

    .line 97
    .end local v18    # "startChar":C
    :cond_36
    :goto_36
    if-lez p2, :cond_4c

    move/from16 v0, p2

    if-ge v0, v6, :cond_4c

    .line 98
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v21

    .line 99
    .local v21, "stopChar":C
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 100
    add-int/lit8 p2, p2, 0x1

    .line 109
    .end local v21    # "stopChar":C
    :cond_4c
    :goto_4c
    if-eqz v15, :cond_d1

    .line 110
    new-array v10, v6, [F

    .line 111
    .local v10, "widths":[F
    new-array v4, v6, [C

    .line 112
    .local v4, "chars":[C
    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 114
    .local v3, "p":Landroid/graphics/Paint;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v4, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 115
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v8, v6

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 117
    :goto_67
    move/from16 v0, p1

    if-ge v0, v6, :cond_bd

    aget v5, v10, p1

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_bd

    aget-char v5, v4, p1

    const/16 v7, 0xa

    if-eq v5, v7, :cond_bd

    .line 118
    add-int/lit8 p1, p1, 0x1

    goto :goto_67

    .line 92
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "chars":[C
    .end local v10    # "widths":[F
    .restart local v18    # "startChar":C
    :cond_7b
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_99

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_99

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_99

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_99

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 94
    :cond_99
    const/4 v15, 0x1

    goto :goto_36

    .line 102
    .end local v18    # "startChar":C
    .restart local v21    # "stopChar":C
    :cond_9b
    if-nez v15, :cond_4c

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_bb

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_bb

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_bb

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_bb

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 105
    :cond_bb
    const/4 v15, 0x1

    goto :goto_4c

    .line 120
    .end local v21    # "stopChar":C
    .restart local v3    # "p":Landroid/graphics/Paint;
    .restart local v4    # "chars":[C
    .restart local v10    # "widths":[F
    :cond_bd
    :goto_bd
    move/from16 v0, p2

    if-ge v0, v6, :cond_d1

    aget v5, v10, p2

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_d1

    aget-char v5, v4, p2

    const/16 v7, 0xa

    if-eq v5, v7, :cond_d1

    .line 121
    add-int/lit8 p2, p2, 0x1

    goto :goto_bd

    .line 126
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "chars":[C
    .end local v10    # "widths":[F
    .end local v15    # "needCheckPosition":Z
    :cond_d1
    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_dd

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_a

    .line 127
    :cond_dd
    const/4 v5, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/MultiSelection$START;

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/MultiSelection$START;

    .line 128
    .local v19, "startSpans":[Landroid/text/MultiSelection$START;
    const/4 v5, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/MultiSelection$END;

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/MultiSelection$END;

    .line 130
    .local v12, "endSpans":[Landroid/text/MultiSelection$END;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_fc
    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v14, v5, :cond_136

    .line 131
    aget-object v5, v19, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 132
    .local v20, "starts":I
    aget-object v5, v12, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 134
    .local v13, "ends":I
    move/from16 v0, v20

    move/from16 v1, p1

    if-gt v0, v1, :cond_11b

    move/from16 v0, p1

    if-lt v0, v13, :cond_125

    :cond_11b
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_133

    move/from16 v0, p2

    if-gt v0, v13, :cond_133

    .line 135
    :cond_125
    aget-object v5, v19, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 136
    aget-object v5, v12, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 130
    :cond_133
    add-int/lit8 v14, v14, 0x1

    goto :goto_fc

    .line 140
    .end local v13    # "ends":I
    .end local v20    # "starts":I
    :cond_136
    sget-object v5, CURRENT_SELECTION_START:Ljava/lang/Object;

    const/16 v7, 0x222

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p1

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 142
    sget-object v5, CURRENT_SELECTION_END:Ljava/lang/Object;

    const/16 v7, 0x22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_a
.end method

.method public static final setTextViewHovered(Z)V
    .registers 2
    .param p0, "bSelecting"    # Z

    .prologue
    .line 275
    const/4 v0, -0x1

    invoke-static {p0, v0}, setTextViewHovered(ZI)V

    .line 276
    return-void
.end method

.method public static final setTextViewHovered(ZI)V
    .registers 2
    .param p0, "bSelecting"    # Z
    .param p1, "type"    # I

    .prologue
    .line 283
    sput-boolean p0, mIsTextViewHovered:Z

    .line 284
    sput p1, mHoveredIcon:I

    .line 285
    return-void
.end method
