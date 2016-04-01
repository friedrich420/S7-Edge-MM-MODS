.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final HYPHEN:I = 0x3

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBottomPadding:I

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 748
    sput-object v0, sStaticLayout:Landroid/text/StaticLayout;

    .line 749
    sput-object v0, sBuilder:Landroid/text/StaticLayout$Builder;

    .line 751
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 17
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 20
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 64
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 25
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 81
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V
    .registers 33
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "breakStrategy"    # I
    .param p11, "hyphenationFrequency"    # I
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p13, "ellipsizedWidth"    # I

    .prologue
    .line 102
    if-nez p12, :cond_fe

    move-object/from16 v3, p2

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 109
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mBase:Ljava/lang/CharSequence;

    .line 110
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mDisplay:Ljava/lang/CharSequence;

    .line 112
    if-eqz p12, :cond_116

    .line 113
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, mInts:Landroid/text/PackedIntVector;

    .line 114
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, mEllipsizedWidth:I

    .line 115
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 122
    :goto_39
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, mObjects:Landroid/text/PackedObjectVector;

    .line 124
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIncludePad:Z

    .line 125
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, mBreakStrategy:I

    .line 126
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, mHyphenationFrequency:I

    .line 136
    if-eqz p12, :cond_6e

    .line 137
    invoke-virtual/range {p0 .. p0}, getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 139
    .local v13, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 140
    move/from16 v0, p13

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 141
    move-object/from16 v0, p12

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 142
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mEllipsize:Z

    .line 151
    .end local v13    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_6e
    if-eqz p12, :cond_12d

    .line 152
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 153
    .local v18, "start":[I
    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    aput v3, v18, v2

    .line 158
    :goto_7a
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v12, v2

    .line 160
    .local v12, "dirs":[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 161
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 162
    .local v10, "asc":I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 164
    .local v11, "desc":I
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v18, v2

    .line 165
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 166
    const/4 v2, 0x2

    aput v11, v18, v2

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 169
    const/4 v2, 0x1

    sub-int v3, v11, v10

    aput v3, v18, v2

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 175
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, reflow(Ljava/lang/CharSequence;III)V

    .line 177
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_145

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_db

    .line 179
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_db
    move-object/from16 v16, p1

    .line 182
    check-cast v16, Landroid/text/Spannable;

    .line 183
    .local v16, "sp":Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 184
    .local v17, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_ef
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_134

    .line 185
    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 184
    add-int/lit8 v15, v15, 0x1

    goto :goto_ef

    .line 102
    .end local v10    # "asc":I
    .end local v11    # "desc":I
    .end local v12    # "dirs":[Landroid/text/Layout$Directions;
    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18    # "start":[I
    :cond_fe
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_10d

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_10d
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 117
    :cond_116
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, mInts:Landroid/text/PackedIntVector;

    .line 118
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mEllipsizedWidth:I

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_39

    .line 155
    :cond_12d
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18    # "start":[I
    goto/16 :goto_7a

    .line 187
    .restart local v10    # "asc":I
    .restart local v11    # "desc":I
    .restart local v12    # "dirs":[Landroid/text/Layout$Directions;
    .restart local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15    # "i":I
    .restart local v16    # "sp":Landroid/text/Spannable;
    .restart local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_134
    move-object/from16 v0, p0

    iget-object v2, v0, mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 191
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_145
    return-void
.end method

.method static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .registers 5
    .param p0, "x0"    # Landroid/text/DynamicLayout;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .registers 6
    .param p1, "offset"    # I

    .prologue
    .line 416
    invoke-virtual {p0, p1}, getLineForOffset(I)I

    move-result v0

    .line 418
    .local v0, "line":I
    iget-object v2, p0, mBlockEndLines:[I

    if-nez v2, :cond_1c

    .line 420
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, mBlockEndLines:[I

    .line 421
    iget-object v2, p0, mBlockEndLines:[I

    iget v3, p0, mNumberOfBlocks:I

    aput v0, v2, v3

    .line 422
    iget v2, p0, mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNumberOfBlocks:I

    .line 431
    :cond_1b
    :goto_1b
    return-void

    .line 426
    :cond_1c
    iget-object v2, p0, mBlockEndLines:[I

    iget v3, p0, mNumberOfBlocks:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .line 427
    .local v1, "previousBlockEndLine":I
    if-le v0, v1, :cond_1b

    .line 428
    iget-object v2, p0, mBlockEndLines:[I

    iget v3, p0, mNumberOfBlocks:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, mBlockEndLines:[I

    .line 429
    iget v2, p0, mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNumberOfBlocks:I

    goto :goto_1b
.end method

.method private createBlocks()V
    .registers 6

    .prologue
    .line 388
    const/16 v1, 0x190

    .line 389
    .local v1, "offset":I
    const/4 v3, 0x0

    iput v3, p0, mNumberOfBlocks:I

    .line 390
    iget-object v2, p0, mDisplay:Ljava/lang/CharSequence;

    .line 393
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_7
    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 394
    if-gez v1, :cond_2b

    .line 395
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v3}, addBlockAtOffset(I)V

    .line 404
    iget-object v3, p0, mBlockEndLines:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, mBlockIndices:[I

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v3, p0, mBlockEndLines:[I

    array-length v3, v3

    if-ge v0, v3, :cond_31

    .line 406
    iget-object v3, p0, mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 398
    .end local v0    # "i":I
    :cond_2b
    invoke-direct {p0, v1}, addBlockAtOffset(I)V

    .line 399
    add-int/lit16 v1, v1, 0x190

    goto :goto_7

    .line 408
    .restart local v0    # "i":I
    :cond_31
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .registers 40
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, mBase:Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_d

    .line 381
    :goto_c
    return-void

    .line 197
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplay:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    .line 198
    .local v29, "text":Ljava/lang/CharSequence;
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 202
    .local v20, "len":I
    const/16 v32, 0xa

    add-int/lit8 v33, p2, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v14

    .line 203
    .local v14, "find":I
    if-gez v14, :cond_a7

    .line 204
    const/4 v14, 0x0

    .line 209
    :goto_28
    sub-int v10, p2, v14

    .line 210
    .local v10, "diff":I
    add-int p3, p3, v10

    .line 211
    add-int p4, p4, v10

    .line 212
    sub-int p2, p2, v10

    .line 217
    const/16 v32, 0xa

    add-int v33, p2, p4

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v21

    .line 218
    .local v21, "look":I
    if-gez v21, :cond_ab

    .line 219
    move/from16 v21, v20

    .line 223
    :goto_42
    add-int v32, p2, p4

    sub-int v8, v21, v32

    .line 224
    .local v8, "change":I
    add-int p3, p3, v8

    .line 225
    add-int p4, p4, v8

    .line 229
    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v32, v0

    if-eqz v32, :cond_b0

    move-object/from16 v25, v29

    .line 230
    check-cast v25, Landroid/text/Spanned;

    .line 234
    .local v25, "sp":Landroid/text/Spanned;
    :cond_56
    const/4 v5, 0x0

    .line 236
    .local v5, "again":Z
    add-int v32, p2, p4

    const-class v33, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v25

    move/from16 v1, p2

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    .line 239
    .local v15, "force":[Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_69
    array-length v0, v15

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_ae

    .line 240
    aget-object v32, v15, v17

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 241
    .local v26, "st":I
    aget-object v32, v15, v17

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 243
    .local v11, "en":I
    move/from16 v0, v26

    move/from16 v1, p2

    if-ge v0, v1, :cond_95

    .line 244
    const/4 v5, 0x1

    .line 246
    sub-int v10, p2, v26

    .line 247
    add-int p3, p3, v10

    .line 248
    add-int p4, p4, v10

    .line 249
    sub-int p2, p2, v10

    .line 252
    :cond_95
    add-int v32, p2, p4

    move/from16 v0, v32

    if-le v11, v0, :cond_a4

    .line 253
    const/4 v5, 0x1

    .line 255
    add-int v32, p2, p4

    sub-int v10, v11, v32

    .line 256
    add-int p3, p3, v10

    .line 257
    add-int p4, p4, v10

    .line 239
    :cond_a4
    add-int/lit8 v17, v17, 0x1

    goto :goto_69

    .line 206
    .end local v5    # "again":Z
    .end local v8    # "change":I
    .end local v10    # "diff":I
    .end local v11    # "en":I
    .end local v15    # "force":[Ljava/lang/Object;
    .end local v17    # "i":I
    .end local v21    # "look":I
    .end local v25    # "sp":Landroid/text/Spanned;
    .end local v26    # "st":I
    :cond_a7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_28

    .line 221
    .restart local v10    # "diff":I
    .restart local v21    # "look":I
    :cond_ab
    add-int/lit8 v21, v21, 0x1

    goto :goto_42

    .line 260
    .restart local v5    # "again":Z
    .restart local v8    # "change":I
    .restart local v15    # "force":[Ljava/lang/Object;
    .restart local v17    # "i":I
    .restart local v25    # "sp":Landroid/text/Spanned;
    :cond_ae
    if-nez v5, :cond_56

    .line 265
    .end local v5    # "again":Z
    .end local v15    # "force":[Ljava/lang/Object;
    .end local v17    # "i":I
    .end local v25    # "sp":Landroid/text/Spanned;
    :cond_b0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, getLineForOffset(I)I

    move-result v27

    .line 266
    .local v27, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, getLineTop(I)I

    move-result v28

    .line 268
    .local v28, "startv":I
    add-int v32, p2, p3

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, getLineForOffset(I)I

    move-result v12

    .line 269
    .local v12, "endline":I
    add-int v32, p2, p4

    move/from16 v0, v32

    move/from16 v1, v20

    if-ne v0, v1, :cond_d6

    .line 270
    invoke-virtual/range {p0 .. p0}, getLineCount()I

    move-result v12

    .line 271
    :cond_d6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, getLineTop(I)I

    move-result v13

    .line 272
    .local v13, "endv":I
    invoke-virtual/range {p0 .. p0}, getLineCount()I

    move-result v32

    move/from16 v0, v32

    if-ne v12, v0, :cond_2f3

    const/16 v19, 0x1

    .line 279
    .local v19, "islast":Z
    :goto_e6
    sget-object v33, sLock:[Ljava/lang/Object;

    monitor-enter v33

    .line 280
    :try_start_e9
    sget-object v24, sStaticLayout:Landroid/text/StaticLayout;

    .line 281
    .local v24, "reflowed":Landroid/text/StaticLayout;
    sget-object v6, sBuilder:Landroid/text/StaticLayout$Builder;

    .line 282
    .local v6, "b":Landroid/text/StaticLayout$Builder;
    const/16 v32, 0x0

    sput-object v32, sStaticLayout:Landroid/text/StaticLayout;

    .line 283
    const/16 v32, 0x0

    sput-object v32, sBuilder:Landroid/text/StaticLayout$Builder;

    .line 284
    monitor-exit v33
    :try_end_f6
    .catchall {:try_start_e9 .. :try_end_f6} :catchall_2f7

    .line 286
    if-nez v24, :cond_11b

    .line 287
    new-instance v24, Landroid/text/StaticLayout;

    .end local v24    # "reflowed":Landroid/text/StaticLayout;
    const/16 v32, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    .restart local v24    # "reflowed":Landroid/text/StaticLayout;
    add-int v32, p2, p4

    invoke-virtual/range {p0 .. p0}, getPaint()Landroid/text/TextPaint;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v34

    move-object/from16 v0, v29

    move/from16 v1, p2

    move/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 291
    :cond_11b
    add-int v32, p2, p4

    move-object/from16 v0, v29

    move/from16 v1, p2

    move/from16 v2, v32

    invoke-virtual {v6, v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, getPaint()Landroid/text/TextPaint;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, getSpacingAdd()F

    move-result v33

    invoke-virtual/range {p0 .. p0}, getSpacingMultiplier()F

    move-result v34

    invoke-virtual/range {v32 .. v34}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, mEllipsizedWidth:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, mBreakStrategy:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, mHyphenationFrequency:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 300
    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v6, v1, v2}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 301
    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v22

    .line 307
    .local v22, "n":I
    add-int v32, p2, p4

    move/from16 v0, v32

    move/from16 v1, v20

    if-eq v0, v1, :cond_19f

    add-int/lit8 v32, v22, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v32

    add-int v33, p2, p4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_19f

    .line 308
    add-int/lit8 v22, v22, -0x1

    .line 311
    :cond_19f
    move-object/from16 v0, p0

    iget-object v0, v0, mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    sub-int v33, v12, v27

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, mObjects:Landroid/text/PackedObjectVector;

    move-object/from16 v32, v0

    sub-int v33, v12, v27

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 316
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v16

    .line 317
    .local v16, "ht":I
    const/16 v31, 0x0

    .local v31, "toppad":I
    const/4 v7, 0x0

    .line 319
    .local v7, "botpad":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1e2

    if-nez v27, :cond_1e2

    .line 320
    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v31

    .line 321
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, mTopPadding:I

    .line 322
    sub-int v16, v16, v31

    .line 324
    :cond_1e2
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1f6

    if-eqz v19, :cond_1f6

    .line 325
    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v7

    .line 326
    move-object/from16 v0, p0

    iput v7, v0, mBottomPadding:I

    .line 327
    add-int v16, v16, v7

    .line 330
    :cond_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    sub-int v34, p4, p3

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sub-int v34, v28, v13

    add-int v34, v34, v16

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 337
    move-object/from16 v0, p0

    iget-boolean v0, v0, mEllipsize:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2fa

    .line 338
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 339
    .local v18, "ints":[I
    const/16 v32, 0x4

    const/high16 v33, -0x80000000

    aput v33, v18, v32

    .line 344
    :goto_238
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v23, v0

    .line 346
    .local v23, "objects":[Landroid/text/Layout$Directions;
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_242
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_308

    .line 347
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v32

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v34

    shl-int/lit8 v34, v34, 0x1e

    or-int v34, v34, v32

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v32

    if-eqz v32, :cond_304

    const/high16 v32, 0x20000000

    :goto_26a
    or-int v32, v32, v34

    aput v32, v18, v33

    .line 351
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v32

    add-int v30, v32, v28

    .line 352
    .local v30, "top":I
    if-lez v17, :cond_27c

    .line 353
    sub-int v30, v30, v31

    .line 354
    :cond_27c
    const/16 v32, 0x1

    aput v30, v18, v32

    .line 356
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v9

    .line 357
    .local v9, "desc":I
    add-int/lit8 v32, v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_291

    .line 358
    add-int/2addr v9, v7

    .line 360
    :cond_291
    const/16 v32, 0x2

    aput v9, v18, v32

    .line 361
    const/16 v32, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v33

    aput-object v33, v23, v32

    .line 363
    const/16 v32, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getHyphen(I)I

    move-result v33

    aput v33, v18, v32

    .line 365
    move-object/from16 v0, p0

    iget-boolean v0, v0, mEllipsize:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2cd

    .line 366
    const/16 v32, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v33

    aput v33, v18, v32

    .line 367
    const/16 v32, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v33

    aput v33, v18, v32

    .line 370
    :cond_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    add-int v33, v27, v17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, mObjects:Landroid/text/PackedObjectVector;

    move-object/from16 v32, v0

    add-int v33, v27, v17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 346
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_242

    .line 272
    .end local v6    # "b":Landroid/text/StaticLayout$Builder;
    .end local v7    # "botpad":I
    .end local v9    # "desc":I
    .end local v16    # "ht":I
    .end local v17    # "i":I
    .end local v18    # "ints":[I
    .end local v19    # "islast":Z
    .end local v22    # "n":I
    .end local v23    # "objects":[Landroid/text/Layout$Directions;
    .end local v24    # "reflowed":Landroid/text/StaticLayout;
    .end local v30    # "top":I
    .end local v31    # "toppad":I
    :cond_2f3
    const/16 v19, 0x0

    goto/16 :goto_e6

    .line 284
    .restart local v19    # "islast":Z
    :catchall_2f7
    move-exception v32

    :try_start_2f8
    monitor-exit v33
    :try_end_2f9
    .catchall {:try_start_2f8 .. :try_end_2f9} :catchall_2f7

    throw v32

    .line 341
    .restart local v6    # "b":Landroid/text/StaticLayout$Builder;
    .restart local v7    # "botpad":I
    .restart local v16    # "ht":I
    .restart local v22    # "n":I
    .restart local v24    # "reflowed":Landroid/text/StaticLayout;
    .restart local v31    # "toppad":I
    :cond_2fa
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .restart local v18    # "ints":[I
    goto/16 :goto_238

    .line 347
    .restart local v17    # "i":I
    .restart local v23    # "objects":[Landroid/text/Layout$Directions;
    :cond_304
    const/16 v32, 0x0

    goto/16 :goto_26a

    .line 374
    :cond_308
    add-int/lit8 v32, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v32

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, updateBlocks(III)V

    .line 376
    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->finish()V

    .line 377
    sget-object v33, sLock:[Ljava/lang/Object;

    monitor-enter v33

    .line 378
    :try_start_31b
    sput-object v24, sStaticLayout:Landroid/text/StaticLayout;

    .line 379
    sput-object v6, sBuilder:Landroid/text/StaticLayout$Builder;

    .line 380
    monitor-exit v33

    goto/16 :goto_c

    :catchall_322
    move-exception v32

    monitor-exit v33
    :try_end_324
    .catchall {:try_start_31b .. :try_end_324} :catchall_322

    throw v32
.end method


# virtual methods
.method public getBlockEndLines()[I
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndices()[I
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, mBlockIndices:[I

    return-object v0
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 637
    iget v0, p0, mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 710
    iget-object v0, p0, mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 711
    const/4 v0, 0x0

    .line 714
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_5
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 701
    iget-object v0, p0, mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 702
    const/4 v0, 0x0

    .line 705
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_5
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 650
    iget v0, p0, mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 645
    iget-object v0, p0, mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .registers 2

    .prologue
    .line 585
    iget v0, p0, mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 5
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 617
    iget-object v1, p0, mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 607
    iget-object v0, p0, mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 627
    iget-object v0, p0, mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 612
    iget-object v0, p0, mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 602
    iget-object v0, p0, mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .registers 2

    .prologue
    .line 578
    iget v0, p0, mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 622
    iget-object v0, p0, mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 632
    iget v0, p0, mTopPadding:I

    return v0
.end method

.method setBlocksDataForTest([I[II)V
    .registers 7
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I

    .prologue
    const/4 v2, 0x0

    .line 553
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, mBlockEndLines:[I

    .line 554
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, mBlockIndices:[I

    .line 555
    iget-object v0, p0, mBlockEndLines:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 556
    iget-object v0, p0, mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 557
    iput p3, p0, mNumberOfBlocks:I

    .line 558
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 592
    iput p1, p0, mIndexFirstChangedBlock:I

    .line 593
    return-void
.end method

.method updateBlocks(III)V
    .registers 28
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    if-nez v19, :cond_c

    .line 454
    invoke-direct/range {p0 .. p0}, createBlocks()V

    .line 546
    :cond_b
    :goto_b
    return-void

    .line 458
    :cond_c
    const/4 v11, -0x1

    .line 459
    .local v11, "firstBlock":I
    const/4 v13, -0x1

    .line 460
    .local v13, "lastBlock":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_28

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p1

    if-lt v0, v1, :cond_a7

    .line 462
    move v11, v12

    .line 466
    :cond_28
    move v12, v11

    :goto_29
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_42

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p2

    if-lt v0, v1, :cond_ab

    .line 468
    move v13, v12

    .line 472
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v14, v19, v13

    .line 474
    .local v14, "lastBlockEndLine":I
    if-nez v11, :cond_af

    const/16 v19, 0x0

    :goto_4e
    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_bc

    const/4 v9, 0x1

    .line 476
    .local v9, "createBlockBefore":Z
    :goto_55
    if-lez p3, :cond_be

    const/4 v7, 0x1

    .line 477
    .local v7, "createBlock":Z
    :goto_58
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v13

    move/from16 v0, p2

    move/from16 v1, v19

    if-ge v0, v1, :cond_c0

    const/4 v8, 0x1

    .line 479
    .local v8, "createBlockAfter":Z
    :goto_67
    const/16 v17, 0x0

    .line 480
    .local v17, "numAddedBlocks":I
    if-eqz v9, :cond_6d

    add-int/lit8 v17, v17, 0x1

    .line 481
    :cond_6d
    if-eqz v7, :cond_71

    add-int/lit8 v17, v17, 0x1

    .line 482
    :cond_71
    if-eqz v8, :cond_75

    add-int/lit8 v17, v17, 0x1

    .line 484
    :cond_75
    sub-int v19, v13, v11

    add-int/lit8 v18, v19, 0x1

    .line 485
    .local v18, "numRemovedBlocks":I
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfBlocks:I

    move/from16 v19, v0

    add-int v19, v19, v17

    sub-int v16, v19, v18

    .line 487
    .local v16, "newNumberOfBlocks":I
    if-nez v16, :cond_c2

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, -0x1

    aput v21, v19, v20

    .line 491
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNumberOfBlocks:I

    goto/16 :goto_b

    .line 460
    .end local v7    # "createBlock":Z
    .end local v8    # "createBlockAfter":Z
    .end local v9    # "createBlockBefore":Z
    .end local v14    # "lastBlockEndLine":I
    .end local v16    # "newNumberOfBlocks":I
    .end local v17    # "numAddedBlocks":I
    .end local v18    # "numRemovedBlocks":I
    :cond_a7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_f

    .line 466
    :cond_ab
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_29

    .line 474
    .restart local v14    # "lastBlockEndLine":I
    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, -0x1

    aget v19, v19, v20

    add-int/lit8 v19, v19, 0x1

    goto :goto_4e

    :cond_bc
    const/4 v9, 0x0

    goto :goto_55

    .line 476
    .restart local v9    # "createBlockBefore":Z
    :cond_be
    const/4 v7, 0x0

    goto :goto_58

    .line 477
    .restart local v7    # "createBlock":Z
    :cond_c0
    const/4 v8, 0x0

    goto :goto_67

    .line 495
    .restart local v8    # "createBlockAfter":Z
    .restart local v16    # "newNumberOfBlocks":I
    .restart local v17    # "numAddedBlocks":I
    .restart local v18    # "numRemovedBlocks":I
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_189

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 498
    .local v4, "blockEndLines":[I
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v6, v0, [I

    .line 499
    .local v6, "blockIndices":[I
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 505
    move-object/from16 v0, p0

    iput-object v4, v0, mBlockEndLines:[I

    .line 506
    move-object/from16 v0, p0

    iput-object v6, v0, mBlockIndices:[I

    .line 514
    .end local v4    # "blockEndLines":[I
    .end local v6    # "blockIndices":[I
    :goto_15f
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, mNumberOfBlocks:I

    .line 516
    sub-int v19, p2, p1

    add-int/lit8 v19, v19, 0x1

    sub-int v10, p3, v19

    .line 517
    .local v10, "deltaLines":I
    if-eqz v10, :cond_1c4

    .line 520
    add-int v15, v11, v17

    .line 521
    .local v15, "newFirstChangedBlock":I
    move v12, v15

    :goto_170
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_1c8

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v20, v19, v12

    add-int v20, v20, v10

    aput v20, v19, v12

    .line 521
    add-int/lit8 v12, v12, 0x1

    goto :goto_170

    .line 508
    .end local v10    # "deltaLines":I
    .end local v15    # "newFirstChangedBlock":I
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, mBlockIndices:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_15f

    .line 525
    .restart local v10    # "deltaLines":I
    :cond_1c4
    move-object/from16 v0, p0

    iget v15, v0, mNumberOfBlocks:I

    .line 527
    .restart local v15    # "newFirstChangedBlock":I
    :cond_1c8
    move-object/from16 v0, p0

    iget v0, v0, mIndexFirstChangedBlock:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mIndexFirstChangedBlock:I

    .line 529
    move v5, v11

    .line 530
    .local v5, "blockIndex":I
    if-eqz v9, :cond_1f3

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, p1, -0x1

    aput v20, v19, v5

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    .line 533
    add-int/lit8 v5, v5, 0x1

    .line 536
    :cond_1f3
    if-eqz v7, :cond_20d

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, p1, p3

    add-int/lit8 v20, v20, -0x1

    aput v20, v19, v5

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    .line 539
    add-int/lit8 v5, v5, 0x1

    .line 542
    :cond_20d
    if-eqz v8, :cond_b

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, v14, v10

    aput v20, v19, v5

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    goto/16 :goto_b
.end method
