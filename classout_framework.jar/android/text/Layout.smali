.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$1;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field static final MAX_EMOJI:I

.field static final MIN_EMOJI:I

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 103
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 106
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 110
    sget-object v0, EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_46

    .line 111
    sget-object v0, EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, MIN_EMOJI:I

    .line 112
    sget-object v0, EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, MAX_EMOJI:I

    .line 2062
    :goto_26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, sTempRect:Landroid/graphics/Rect;

    .line 2092
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_4c

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2094
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_54

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 114
    :cond_46
    sput v1, MIN_EMOJI:I

    .line 115
    sput v1, MAX_EMOJI:I

    goto :goto_26

    .line 2092
    nop

    :array_4c
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    .line 2094
    :array_54
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .prologue
    .line 175
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 177
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2059
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, mAlignment:Landroid/text/Layout$Alignment;

    .line 198
    if-gez p3, :cond_29

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_29
    if-eqz p2, :cond_2f

    .line 206
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 207
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 210
    :cond_2f
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    .line 211
    iput-object p2, p0, mPaint:Landroid/text/TextPaint;

    .line 212
    iput p3, p0, mWidth:I

    .line 213
    iput-object p4, p0, mAlignment:Landroid/text/Layout$Alignment;

    .line 214
    iput p6, p0, mSpacingMult:F

    .line 215
    iput p7, p0, mSpacingAdd:F

    .line 216
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, mSpannedText:Z

    .line 217
    iput-object p5, p0, mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 218
    return-void
.end method

.method static synthetic access$000(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 7
    .param p0, "x0"    # Landroid/text/Layout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [C
    .param p5, "x5"    # I
    .param p6, "x6"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p6}, ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .registers 26
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1464
    invoke-virtual/range {p0 .. p1}, getLineStart(I)I

    move-result v16

    .line 1465
    .local v16, "linestart":I
    invoke-virtual/range {p0 .. p1}, getLineEnd(I)I

    move-result v15

    .line 1466
    .local v15, "lineend":I
    invoke-virtual/range {p0 .. p1}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1468
    .local v9, "dirs":Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_20

    .line 1469
    add-int/lit8 v15, v15, -0x1

    .line 1471
    :cond_20
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_21
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_88

    .line 1472
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 1473
    .local v13, "here":I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 1475
    .local v18, "there":I
    move/from16 v0, v18

    if-le v0, v15, :cond_3e

    .line 1476
    move/from16 v18, v15

    .line 1478
    :cond_3e
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_85

    move/from16 v0, p3

    if-lt v0, v13, :cond_85

    .line 1479
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1480
    .local v17, "st":I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1482
    .local v10, "en":I
    move/from16 v0, v17

    if-eq v0, v10, :cond_85

    .line 1483
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v5}, getHorizontal(IZIZ)F

    move-result v11

    .line 1484
    .local v11, "h1":F
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1, v5}, getHorizontal(IZIZ)F

    move-result v12

    .line 1486
    .local v12, "h2":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1487
    .local v4, "left":F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1489
    .local v6, "right":F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1471
    .end local v4    # "left":F
    .end local v6    # "right":F
    .end local v10    # "en":I
    .end local v11    # "h1":F
    .end local v12    # "h2":F
    .end local v17    # "st":I
    :cond_85
    add-int/lit8 v14, v14, 0x2

    goto :goto_21

    .line 1493
    .end local v13    # "here":I
    .end local v18    # "there":I
    :cond_88
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 14
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1906
    invoke-virtual {p0, p3}, getEllipsisCount(I)I

    move-result v2

    .line 1908
    .local v2, "ellipsisCount":I
    if-nez v2, :cond_7

    .line 1930
    :cond_6
    return-void

    .line 1912
    :cond_7
    invoke-virtual {p0, p3}, getEllipsisStart(I)I

    move-result v3

    .line 1913
    .local v3, "ellipsisStart":I
    invoke-virtual {p0, p3}, getLineStart(I)I

    move-result v5

    .line 1915
    .local v5, "linestart":I
    move v4, v3

    .local v4, "i":I
    :goto_10
    add-int v6, v3, v2

    if-ge v4, v6, :cond_6

    .line 1918
    if-ne v4, v3, :cond_28

    .line 1919
    invoke-direct {p0, p6}, getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v1

    .line 1924
    .local v1, "c":C
    :goto_1a
    add-int v0, v4, v5

    .line 1926
    .local v0, "a":I
    if-lt v0, p1, :cond_25

    if-ge v0, p2, :cond_25

    .line 1927
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1915
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1921
    .end local v0    # "a":I
    .end local v1    # "c":C
    :cond_28
    const v1, 0xfeff

    .restart local v1    # "c":C
    goto :goto_1a
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 9
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 141
    .local v1, "need":F
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-gt v0, p2, :cond_1a

    .line 142
    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 144
    .local v2, "next":I
    if-gez v2, :cond_d

    .line 145
    move v2, p2

    .line 148
    :cond_d
    invoke-static {p3, p0, v0, v2}, measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    .line 150
    .local v3, "w":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_16

    .line 151
    move v1, v3

    .line 153
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 141
    move v0, v2

    goto :goto_2

    .line 156
    .end local v2    # "next":I
    .end local v3    # "w":F
    :cond_1a
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 126
    invoke-virtual {p1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 128
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .registers 4
    .param p1, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, 0x0

    .line 1899
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_a

    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    aget-char v0, v0, v1

    :goto_9
    return v0

    :cond_a
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    aget-char v0, v0, v1

    goto :goto_9
.end method

.method private getHorizontal(IZIZ)F
    .registers 19
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 914
    move/from16 v0, p3

    invoke-virtual {p0, v0}, getLineStart(I)I

    move-result v4

    .line 915
    .local v4, "start":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, getLineEnd(I)I

    move-result v5

    .line 916
    .local v5, "end":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, getParagraphDirection(I)I

    move-result v6

    .line 917
    .local v6, "dir":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, getLineContainsTab(I)Z

    move-result v8

    .line 918
    .local v8, "hasTabOrEmoji":Z
    move/from16 v0, p3

    invoke-virtual {p0, v0}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 920
    .local v7, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    .line 921
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_3d

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_3d

    .line 924
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 925
    .local v12, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    if-lez v2, :cond_3d

    .line 926
    new-instance v9, Landroid/text/Layout$TabStops;

    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 930
    .end local v12    # "tabs":[Landroid/text/style/TabStopSpan;
    .restart local v9    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_3d
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 931
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 932
    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 933
    .local v13, "wid":F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 935
    if-eqz p4, :cond_60

    iget v2, p0, mWidth:I

    int-to-float v2, v2

    cmpl-float v2, v13, v2

    if-lez v2, :cond_60

    .line 936
    iget v2, p0, mWidth:I

    int-to-float v13, v2

    .line 938
    :cond_60
    move/from16 v0, p3

    invoke-virtual {p0, v0}, getParagraphLeft(I)I

    move-result v10

    .line 939
    .local v10, "left":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, getParagraphRight(I)I

    move-result v11

    .line 941
    .local v11, "right":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getHorizontal(IZZ)F
    .registers 6
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .prologue
    .line 908
    invoke-virtual {p0, p1}, getLineForOffset(I)I

    move-result v0

    .line 910
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .registers 14
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .prologue
    .line 1070
    invoke-virtual {p0, p1}, getLineStart(I)I

    move-result v3

    .line 1071
    .local v3, "start":I
    if-eqz p3, :cond_2b

    invoke-virtual {p0, p1}, getLineEnd(I)I

    move-result v4

    .line 1072
    .local v4, "end":I
    :goto_a
    invoke-virtual {p0, p1}, getLineContainsTab(I)Z

    move-result v7

    .line 1073
    .local v7, "hasTabsOrEmoji":Z
    invoke-virtual {p0, p1}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1074
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, getParagraphDirection(I)I

    move-result v5

    .line 1076
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1077
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1078
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 1079
    .local v9, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1080
    return v9

    .line 1071
    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v4    # "end":I
    .end local v5    # "dir":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    .end local v9    # "width":F
    :cond_2b
    invoke-virtual {p0, p1}, getLineVisibleEnd(I)I

    move-result v4

    goto :goto_a
.end method

.method private getLineExtent(IZ)F
    .registers 14
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .prologue
    .line 1034
    invoke-virtual {p0, p1}, getLineStart(I)I

    move-result v3

    .line 1035
    .local v3, "start":I
    if-eqz p2, :cond_35

    invoke-virtual {p0, p1}, getLineEnd(I)I

    move-result v4

    .line 1037
    .local v4, "end":I
    :goto_a
    invoke-virtual {p0, p1}, getLineContainsTab(I)Z

    move-result v7

    .line 1038
    .local v7, "hasTabsOrEmoji":Z
    const/4 v8, 0x0

    .line 1039
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_2d

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_2d

    .line 1042
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 1043
    .local v9, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_2d

    .line 1044
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1047
    .end local v9    # "tabs":[Landroid/text/style/TabStopSpan;
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_2d
    invoke-virtual {p0, p1}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1049
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_3a

    .line 1050
    const/4 v10, 0x0

    .line 1058
    :goto_34
    return v10

    .line 1035
    .end local v4    # "end":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_35
    invoke-virtual {p0, p1}, getLineVisibleEnd(I)I

    move-result v4

    goto :goto_a

    .line 1052
    .restart local v4    # "end":I
    .restart local v6    # "directions":Landroid/text/Layout$Directions;
    .restart local v7    # "hasTabsOrEmoji":Z
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_3a
    invoke-virtual {p0, p1}, getParagraphDirection(I)I

    move-result v5

    .line 1054
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1055
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1056
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 1057
    .local v10, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_34
.end method

.method private getLineStartPos(III)I
    .registers 16
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    const/4 v11, 0x1

    .line 539
    invoke-virtual {p0, p1}, getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 540
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, getParagraphDirection(I)I

    move-result v1

    .line 542
    .local v1, "dir":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_23

    .line 543
    if-ne v1, v11, :cond_20

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 549
    :cond_11
    :goto_11
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_38

    .line 550
    if-ne v1, v11, :cond_2f

    .line 551
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p2, v9

    .line 581
    .local v8, "x":I
    :goto_1f
    return v8

    .line 543
    .end local v8    # "x":I
    :cond_20
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_11

    .line 544
    :cond_23
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_11

    .line 545
    if-ne v1, v11, :cond_2c

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_2b
    goto :goto_11

    :cond_2c
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2b

    .line 553
    :cond_2f
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p3, v9

    .restart local v8    # "x":I
    goto :goto_1f

    .line 556
    .end local v8    # "x":I
    :cond_38
    const/4 v7, 0x0

    .line 557
    .local v7, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, mSpannedText:Z

    if-eqz v9, :cond_67

    invoke-virtual {p0, p1}, getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 558
    iget-object v4, p0, mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 559
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, getLineStart(I)I

    move-result v5

    .line 560
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 562
    .local v3, "spanEnd":I
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 564
    .local v6, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_67

    .line 565
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 568
    .end local v3    # "spanEnd":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "tabSpans":[Landroid/text/style/TabStopSpan;
    .restart local v7    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_67
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 569
    .local v2, "max":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_89

    .line 570
    if-ne v1, v11, :cond_7e

    .line 571
    sub-int v9, p3, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1f

    .line 574
    .end local v8    # "x":I
    :cond_7e
    sub-int v9, p2, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1f

    .line 577
    .end local v8    # "x":I
    :cond_89
    and-int/lit8 v2, v2, -0x2

    .line 578
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    shr-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1f
.end method

.method private getLineVisibleEnd(III)I
    .registers 7
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1223
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    .line 1225
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_e

    move v2, p3

    .line 1245
    :goto_b
    return v2

    .line 1229
    .local v0, "ch":C
    :cond_c
    add-int/lit8 p3, p3, -0x1

    .end local v0    # "ch":C
    :cond_e
    if-le p3, p2, :cond_3d

    .line 1230
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1232
    .restart local v0    # "ch":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1d

    .line 1233
    add-int/lit8 v2, p3, -0x1

    goto :goto_b

    .line 1237
    :cond_1d
    const/16 v2, 0x20

    if-eq v0, v2, :cond_c

    const/16 v2, 0x9

    if-eq v0, v2, :cond_c

    const/16 v2, 0x1680

    if-eq v0, v2, :cond_c

    const/16 v2, 0x2000

    if-gt v2, v0, :cond_35

    const/16 v2, 0x200a

    if-gt v0, v2, :cond_35

    const/16 v2, 0x2007

    if-ne v0, v2, :cond_c

    :cond_35
    const/16 v2, 0x205f

    if-eq v0, v2, :cond_c

    const/16 v2, 0x3000

    if-eq v0, v2, :cond_c

    .end local v0    # "ch":C
    :cond_3d
    move v2, p3

    .line 1245
    goto :goto_b
.end method

.method private getOffsetAtStartOf(I)I
    .registers 11
    .param p1, "offset"    # I

    .prologue
    .line 1335
    if-nez p1, :cond_4

    .line 1336
    const/4 v7, 0x0

    .line 1361
    :goto_3
    return v7

    .line 1338
    :cond_4
    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    .line 1339
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1341
    .local v0, "c":C
    const v7, 0xdc00

    if-lt v0, v7, :cond_26

    const v7, 0xdfff

    if-gt v0, v7, :cond_26

    .line 1342
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1344
    .local v1, "c1":C
    const v7, 0xd800

    if-lt v1, v7, :cond_26

    const v7, 0xdbff

    if-gt v1, v7, :cond_26

    .line 1345
    add-int/lit8 p1, p1, -0x1

    .line 1348
    .end local v1    # "c1":C
    :cond_26
    iget-boolean v7, p0, mSpannedText:Z

    if-eqz v7, :cond_53

    move-object v7, v6

    .line 1349
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1352
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    array-length v7, v4

    if-ge v3, v7, :cond_53

    move-object v7, v6

    .line 1353
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v7, v6

    .line 1354
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1356
    .local v2, "end":I
    if-ge v5, p1, :cond_50

    if-le v2, p1, :cond_50

    .line 1357
    move p1, v5

    .line 1352
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    :cond_53
    move v7, p1

    .line 1361
    goto :goto_3
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .registers 18
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .prologue
    .line 1281
    invoke-virtual/range {p0 .. p1}, getLineForOffset(I)I

    move-result v12

    .line 1282
    .local v12, "line":I
    invoke-virtual {p0, v12}, getLineStart(I)I

    move-result v4

    .line 1283
    .local v4, "lineStart":I
    invoke-virtual {p0, v12}, getLineEnd(I)I

    move-result v5

    .line 1284
    .local v5, "lineEnd":I
    invoke-virtual {p0, v12}, getParagraphDirection(I)I

    move-result v6

    .line 1286
    .local v6, "lineDir":I
    const/4 v13, 0x0

    .line 1287
    .local v13, "lineChanged":Z
    const/4 v2, -0x1

    if-ne v6, v2, :cond_62

    const/4 v2, 0x1

    :goto_15
    move/from16 v0, p2

    if-ne v0, v2, :cond_64

    const/4 v10, 0x1

    .line 1289
    .local v10, "advance":Z
    :goto_1a
    if-eqz v10, :cond_69

    .line 1290
    move/from16 v0, p1

    if-ne v0, v5, :cond_2b

    .line 1291
    invoke-virtual {p0}, getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_66

    .line 1292
    const/4 v13, 0x1

    .line 1293
    add-int/lit8 v12, v12, 0x1

    .line 1309
    :cond_2b
    :goto_2b
    if-eqz v13, :cond_40

    .line 1310
    invoke-virtual {p0, v12}, getLineStart(I)I

    move-result v4

    .line 1311
    invoke-virtual {p0, v12}, getLineEnd(I)I

    move-result v5

    .line 1312
    invoke-virtual {p0, v12}, getParagraphDirection(I)I

    move-result v14

    .line 1313
    .local v14, "newDir":I
    if-eq v14, v6, :cond_40

    .line 1317
    if-nez p2, :cond_76

    const/16 p2, 0x1

    .line 1318
    :goto_3f
    move v6, v14

    .line 1322
    .end local v14    # "newDir":I
    :cond_40
    invoke-virtual {p0, v12}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1324
    .local v7, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1326
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1327
    sub-int v2, p1, v4

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v2

    add-int p1, v4, v2

    .line 1328
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v1

    move/from16 v11, p1

    .line 1329
    .end local v1    # "tl":Landroid/text/TextLine;
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local p1    # "caret":I
    .local v11, "caret":I
    :goto_61
    return v11

    .line 1287
    .end local v10    # "advance":Z
    .end local v11    # "caret":I
    .restart local p1    # "caret":I
    :cond_62
    const/4 v2, 0x0

    goto :goto_15

    :cond_64
    const/4 v10, 0x0

    goto :goto_1a

    .restart local v10    # "advance":Z
    :cond_66
    move/from16 v11, p1

    .line 1295
    .end local p1    # "caret":I
    .restart local v11    # "caret":I
    goto :goto_61

    .line 1299
    .end local v11    # "caret":I
    .restart local p1    # "caret":I
    :cond_69
    move/from16 v0, p1

    if-ne v0, v4, :cond_2b

    .line 1300
    if-lez v12, :cond_73

    .line 1301
    const/4 v13, 0x1

    .line 1302
    add-int/lit8 v12, v12, -0x1

    goto :goto_2b

    :cond_73
    move/from16 v11, p1

    .line 1304
    .end local p1    # "caret":I
    .restart local v11    # "caret":I
    goto :goto_61

    .line 1317
    .end local v11    # "caret":I
    .restart local v14    # "newDir":I
    .restart local p1    # "caret":I
    :cond_76
    const/16 p2, 0x0

    goto :goto_3f
.end method

.method private getParagraphLeadingMargin(I)I
    .registers 18
    .param p1, "line"    # I

    .prologue
    .line 1666
    move-object/from16 v0, p0

    iget-boolean v14, v0, mSpannedText:Z

    if-nez v14, :cond_8

    .line 1667
    const/4 v6, 0x0

    .line 1701
    :cond_7
    :goto_7
    return v6

    .line 1669
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 1671
    .local v11, "spanned":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, getLineStart(I)I

    move-result v5

    .line 1672
    .local v5, "lineStart":I
    invoke-virtual/range {p0 .. p1}, getLineEnd(I)I

    move-result v4

    .line 1673
    .local v4, "lineEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1675
    .local v9, "spanEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 1677
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_29

    .line 1678
    const/4 v6, 0x0

    goto :goto_7

    .line 1681
    :cond_29
    const/4 v6, 0x0

    .line 1683
    .local v6, "margin":I
    if-eqz v5, :cond_36

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_61

    :cond_36
    const/4 v3, 0x1

    .line 1686
    .local v3, "isFirstParaLine":Z
    :goto_37
    move v13, v3

    .line 1687
    .local v13, "useFirstLineMargin":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    array-length v14, v12

    if-ge v2, v14, :cond_65

    .line 1688
    aget-object v14, v12, v2

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_5e

    .line 1689
    aget-object v14, v12, v2

    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1690
    .local v7, "spStart":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getLineForOffset(I)I

    move-result v10

    .line 1691
    .local v10, "spanLine":I
    aget-object v14, v12, v2

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 1693
    .local v1, "count":I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_63

    const/4 v14, 0x1

    :goto_5d
    or-int/2addr v13, v14

    .line 1687
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 1683
    .end local v2    # "i":I
    .end local v3    # "isFirstParaLine":Z
    .end local v13    # "useFirstLineMargin":Z
    :cond_61
    const/4 v3, 0x0

    goto :goto_37

    .line 1693
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "isFirstParaLine":Z
    .restart local v7    # "spStart":I
    .restart local v10    # "spanLine":I
    .restart local v13    # "useFirstLineMargin":Z
    :cond_63
    const/4 v14, 0x0

    goto :goto_5d

    .line 1696
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_65
    const/4 v2, 0x0

    :goto_66
    array-length v14, v12

    if-ge v2, v14, :cond_7

    .line 1697
    aget-object v8, v12, v2

    .line 1698
    .local v8, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 1696
    add-int/lit8 v2, v2, 0x1

    goto :goto_66
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1891
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_9

    if-lez p1, :cond_9

    .line 1892
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1895
    :goto_8
    return-object v0

    :cond_9
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .registers 29
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1707
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1708
    .local v3, "mt":Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v24

    .line 1710
    .local v24, "tl":Landroid/text/TextLine;
    :try_start_8
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1713
    iget-boolean v4, v3, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v4, :cond_5a

    .line 1714
    sget-object v10, DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1715
    .local v10, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x1

    .line 1721
    .local v9, "dir":I
    :goto_1b
    iget-object v14, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1722
    .local v14, "chars":[C
    iget v0, v3, Landroid/text/MeasuredText;->mLen:I

    move/from16 v17, v0

    .line 1723
    .local v17, "len":I
    const/4 v11, 0x0

    .line 1724
    .local v11, "hasTabs":Z
    const/4 v12, 0x0

    .line 1726
    .local v12, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v20, 0x0

    .line 1727
    .local v20, "margin":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_6b

    .line 1728
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v22, v0

    .line 1729
    .local v22, "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v22

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/text/style/LeadingMarginSpan;

    .line 1731
    .local v23, "spans":[Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v13, v23

    .local v13, "arr$":[Landroid/text/style/LeadingMarginSpan;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_46
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_6b

    aget-object v19, v13, v16

    .line 1732
    .local v19, "lms":Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v20, v20, v4

    .line 1731
    add-int/lit8 v16, v16, 0x1

    goto :goto_46

    .line 1717
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "arr$":[Landroid/text/style/LeadingMarginSpan;
    .end local v14    # "chars":[C
    .end local v16    # "i$":I
    .end local v17    # "len":I
    .end local v18    # "len$":I
    .end local v19    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v20    # "margin":I
    .end local v22    # "spanned":Landroid/text/Spanned;
    .end local v23    # "spans":[Landroid/text/style/LeadingMarginSpan;
    :cond_5a
    iget v4, v3, Landroid/text/MeasuredText;->mDir:I

    iget-object v5, v3, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v6, 0x0

    iget-object v7, v3, Landroid/text/MeasuredText;->mChars:[C

    const/4 v8, 0x0

    iget v9, v3, Landroid/text/MeasuredText;->mLen:I

    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 1719
    .restart local v10    # "directions":Landroid/text/Layout$Directions;
    iget v9, v3, Landroid/text/MeasuredText;->mDir:I

    .restart local v9    # "dir":I
    goto :goto_1b

    .line 1735
    .restart local v11    # "hasTabs":Z
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v14    # "chars":[C
    .restart local v17    # "len":I
    .restart local v20    # "margin":I
    :cond_6b
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_6c
    move/from16 v0, v17

    if-ge v15, v0, :cond_ab

    .line 1736
    aget-char v4, v14, v15

    const/16 v5, 0x9

    if-ne v4, v5, :cond_ce

    .line 1737
    const/4 v11, 0x1

    .line 1738
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_ab

    .line 1739
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v22, v0

    .line 1740
    .restart local v22    # "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v22

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v21

    .line 1742
    .local v21, "spanEnd":I
    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v22

    move/from16 v1, p2

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/text/style/TabStopSpan;

    .line 1744
    .local v23, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v23

    array-length v4, v0

    if-lez v4, :cond_ab

    .line 1745
    new-instance v12, Landroid/text/Layout$TabStops;

    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v4, 0x14

    move-object/from16 v0, v23

    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .end local v21    # "spanEnd":I
    .end local v22    # "spanned":Landroid/text/Spanned;
    .end local v23    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_ab
    move-object/from16 v4, v24

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1751
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1752
    move/from16 v0, v20

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F
    :try_end_c5
    .catchall {:try_start_8 .. :try_end_c5} :catchall_d1

    move-result v5

    add-float/2addr v4, v5

    .line 1754
    invoke-static/range {v24 .. v24}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1755
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return v4

    .line 1735
    :cond_ce
    add-int/lit8 v15, v15, 0x1

    goto :goto_6c

    .line 1754
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v14    # "chars":[C
    .end local v15    # "i":I
    .end local v17    # "len":I
    .end local v20    # "margin":I
    :catchall_d1
    move-exception v4

    invoke-static/range {v24 .. v24}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1755
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v4
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 1834
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1835
    .local v2, "nh":F
    const/4 v0, 0x0

    .line 1837
    .local v0, "alltabs":Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_41

    .line 1838
    if-nez p4, :cond_15

    .line 1839
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1840
    const/4 v0, 0x1

    .line 1843
    :cond_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    array-length v4, p4

    if-ge v1, v4, :cond_38

    .line 1844
    if-nez v0, :cond_24

    .line 1845
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_24

    .line 1843
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1849
    :cond_24
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1851
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_21

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_21

    .line 1852
    int-to-float v2, v3

    goto :goto_21

    .line 1855
    .end local v3    # "where":I
    :cond_38
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_41

    move v4, v2

    .line 1859
    .end local v1    # "i":I
    :goto_40
    return v4

    :cond_41
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_40
.end method

.method private primaryIsTrailingPrevious(I)Z
    .registers 15
    .param p1, "offset"    # I

    .prologue
    const v12, 0x3ffffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 821
    invoke-virtual {p0, p1}, getLineForOffset(I)I

    move-result v4

    .line 822
    .local v4, "line":I
    invoke-virtual {p0, v4}, getLineStart(I)I

    move-result v6

    .line 823
    .local v6, "lineStart":I
    invoke-virtual {p0, v4}, getLineEnd(I)I

    move-result v5

    .line 824
    .local v5, "lineEnd":I
    invoke-virtual {p0, v4}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    .line 826
    .local v7, "runs":[I
    const/4 v1, -0x1

    .line 827
    .local v1, "levelAt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v11, v7

    if-ge v0, v11, :cond_39

    .line 828
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 829
    .local v8, "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 830
    .local v3, "limit":I
    if-le v3, v5, :cond_2a

    .line 831
    move v3, v5

    .line 833
    :cond_2a
    if-lt p1, v8, :cond_51

    if-ge p1, v3, :cond_51

    .line 834
    if-le p1, v8, :cond_31

    .line 866
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :goto_30
    return v9

    .line 838
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_31
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    .line 842
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_39
    const/4 v11, -0x1

    if-ne v1, v11, :cond_43

    .line 844
    invoke-virtual {p0, v4}, getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_54

    move v1, v9

    .line 848
    :cond_43
    :goto_43
    const/4 v2, -0x1

    .line 849
    .local v2, "levelBefore":I
    if-ne p1, v6, :cond_58

    .line 850
    invoke-virtual {p0, v4}, getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_56

    move v2, v9

    .line 866
    :cond_4d
    :goto_4d
    if-ge v2, v1, :cond_7c

    :goto_4f
    move v9, v10

    goto :goto_30

    .line 827
    .end local v2    # "levelBefore":I
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_51
    add-int/lit8 v0, v0, 0x2

    goto :goto_19

    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_54
    move v1, v10

    .line 844
    goto :goto_43

    .restart local v2    # "levelBefore":I
    :cond_56
    move v2, v10

    .line 850
    goto :goto_4d

    .line 852
    :cond_58
    add-int/lit8 p1, p1, -0x1

    .line 853
    const/4 v0, 0x0

    :goto_5b
    array-length v11, v7

    if-ge v0, v11, :cond_4d

    .line 854
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 855
    .restart local v8    # "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 856
    .restart local v3    # "limit":I
    if-le v3, v5, :cond_6c

    .line 857
    move v3, v5

    .line 859
    :cond_6c
    if-lt p1, v8, :cond_79

    if-ge p1, v3, :cond_79

    .line 860
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    .line 861
    goto :goto_4d

    .line 853
    :cond_79
    add-int/lit8 v0, v0, 0x2

    goto :goto_5b

    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_7c
    move v10, v9

    .line 866
    goto :goto_4f
.end method


# virtual methods
.method public addSelectionPath(IILandroid/graphics/Path;)V
    .registers 23
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1564
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    .line 1611
    :goto_6
    return-void

    .line 1567
    :cond_7
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_13

    .line 1568
    move/from16 v17, p2

    .line 1569
    .local v17, "temp":I
    move/from16 p2, p1

    .line 1570
    move/from16 p1, v17

    .line 1573
    .end local v17    # "temp":I
    :cond_13
    invoke-virtual/range {p0 .. p1}, getLineForOffset(I)I

    move-result v3

    .line 1574
    .local v3, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, getLineForOffset(I)I

    move-result v15

    .line 1576
    .local v15, "endline":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineTop(I)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    .line 1577
    .local v6, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineBottom(I)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    .line 1579
    .local v7, "bottom":I
    if-ne v3, v15, :cond_3d

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1580
    invoke-direct/range {v2 .. v8}, addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_6

    .line 1582
    :cond_3d
    move-object/from16 v0, p0

    iget v2, v0, mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1584
    .local v18, "width":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineBottom(I)I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, addSelection(IIIIILandroid/graphics/Path;)V

    .line 1587
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a7

    .line 1588
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineBottom(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1594
    :goto_7e
    add-int/lit8 v16, v3, 0x1

    .local v16, "i":I
    :goto_80
    move/from16 v0, v16

    if-ge v0, v15, :cond_c1

    .line 1595
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, getLineTop(I)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    .line 1596
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, getLineBottom(I)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    .line 1597
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1594
    add-int/lit8 v16, v16, 0x1

    goto :goto_80

    .line 1591
    .end local v16    # "i":I
    :cond_a7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineBottom(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_7e

    .line 1600
    .restart local v16    # "i":I
    :cond_c1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineTop(I)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    .line 1601
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineBottom(I)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    .line 1603
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, addSelection(IIIIILandroid/graphics/Path;)V

    .line 1606
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_ff

    .line 1607
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_6

    .line 1609
    :cond_ff
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_6
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 244
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p1}, getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v8

    .line 259
    .local v8, "lineRange":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 260
    .local v5, "firstLine":I
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 261
    .local v6, "lastLine":I
    if-gez v6, :cond_f

    .line 266
    :goto_e
    return-void

    :cond_f
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 263
    invoke-virtual/range {v0 .. v6}, drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 265
    invoke-virtual {p0, p1, v5, v6}, drawText(Landroid/graphics/Canvas;II)V

    goto :goto_e
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .registers 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-boolean v3, v0, mSpannedText:Z

    if-eqz v3, :cond_df

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v3, :cond_17

    .line 435
    new-instance v3, Landroid/text/SpanSet;

    const-class v5, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v3, v5}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 438
    :cond_17
    move-object/from16 v0, p0

    iget-object v10, v0, mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    .line 439
    .local v10, "buffer":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v21

    .line 440
    .local v21, "textLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v10, v5, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_d8

    .line 443
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, getLineTop(I)I

    move-result v16

    .line 444
    .local v16, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, getLineStart(I)I

    move-result v17

    .line 445
    .local v17, "previousLineEnd":I
    sget-object v19, NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 446
    .local v19, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v20, 0x0

    .line 447
    .local v20, "spansLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, mPaint:Landroid/text/TextPaint;

    .line 448
    .local v4, "paint":Landroid/text/TextPaint;
    const/16 v18, 0x0

    .line 449
    .local v18, "spanEnd":I
    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    .line 450
    .local v6, "width":I
    move/from16 v13, p5

    .local v13, "i":I
    :goto_53
    move/from16 v0, p6

    if-gt v13, v0, :cond_d8

    .line 451
    move/from16 v11, v17

    .line 452
    .local v11, "start":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineStart(I)I

    move-result v12

    .line 453
    .local v12, "end":I
    move/from16 v17, v12

    .line 455
    move/from16 v7, v16

    .line 456
    .local v7, "ltop":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineTop(I)I

    move-result v9

    .line 457
    .local v9, "lbottom":I
    move/from16 v16, v9

    .line 458
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 460
    .local v8, "lbaseline":I
    move/from16 v0, v18

    if-lt v11, v0, :cond_c2

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v0, v21

    invoke-virtual {v3, v11, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v18

    .line 465
    const/16 v20, 0x0

    .line 467
    if-ne v11, v12, :cond_8b

    if-nez v11, :cond_c2

    .line 470
    :cond_8b
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_8c
    move-object/from16 v0, p0

    iget-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v14, v3, :cond_c2

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v14

    if-ge v3, v12, :cond_a8

    move-object/from16 v0, p0

    iget-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v14

    if-gt v3, v11, :cond_ab

    .line 470
    :cond_a8
    :goto_a8
    add-int/lit8 v14, v14, 0x1

    goto :goto_8c

    .line 475
    :cond_ab
    move-object/from16 v0, p0

    iget-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/LineBackgroundSpan;

    aget-object v3, v3, v14

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v19, [Landroid/text/style/ParagraphStyle;

    .line 477
    .restart local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v20, v20, 0x1

    goto :goto_a8

    .line 482
    .end local v14    # "j":I
    :cond_c2
    const/4 v15, 0x0

    .local v15, "n":I
    :goto_c3
    move/from16 v0, v20

    if-ge v15, v0, :cond_d4

    .line 483
    aget-object v2, v19, v15

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    .line 484
    .local v2, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 482
    add-int/lit8 v15, v15, 0x1

    goto :goto_c3

    .line 450
    .end local v2    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    :cond_d4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_53

    .line 490
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v6    # "width":I
    .end local v7    # "ltop":I
    .end local v8    # "lbaseline":I
    .end local v9    # "lbottom":I
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "i":I
    .end local v15    # "n":I
    .end local v16    # "previousLineBottom":I
    .end local v17    # "previousLineEnd":I
    .end local v18    # "spanEnd":I
    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v20    # "spansLength":I
    :cond_d8
    move-object/from16 v0, p0

    iget-object v3, v0, mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3}, Landroid/text/SpanSet;->recycle()V

    .line 495
    .end local v10    # "buffer":Landroid/text/Spanned;
    .end local v21    # "textLength":I
    :cond_df
    if-eqz p2, :cond_fb

    .line 496
    if-eqz p4, :cond_ec

    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 497
    :cond_ec
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 498
    if-eqz p4, :cond_fb

    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 500
    :cond_fb
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .registers 51
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .prologue
    .line 272
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, getLineTop(I)I

    move-result v35

    .line 273
    .local v35, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, getLineStart(I)I

    move-result v36

    .line 274
    .local v36, "previousLineEnd":I
    sget-object v39, NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 275
    .local v39, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v38, 0x0

    .line 276
    .local v38, "spanEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, mPaint:Landroid/text/TextPaint;

    .line 277
    .local v5, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v11, v0, mText:Ljava/lang/CharSequence;

    .line 279
    .local v11, "buf":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 280
    .local v34, "paraAlign":Landroid/text/Layout$Alignment;
    const/16 v27, 0x0

    .line 281
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v42, 0x0

    .line 283
    .local v42, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v44

    .line 287
    .local v44, "tl":Landroid/text/TextLine;
    move/from16 v31, p2

    .local v31, "lineNum":I
    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .local v41, "tabStops":Landroid/text/Layout$TabStops;
    :goto_2e
    move/from16 v0, v31

    move/from16 v1, p3

    if-gt v0, v1, :cond_263

    .line 288
    move/from16 v12, v36

    .line 289
    .local v12, "start":I
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getLineStart(I)I

    move-result v36

    .line 290
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v36

    invoke-direct {v0, v1, v12, v2}, getLineVisibleEnd(III)I

    move-result v13

    .line 292
    .local v13, "end":I
    move/from16 v8, v35

    .line 293
    .local v8, "ltop":I
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getLineTop(I)I

    move-result v10

    .line 294
    .local v10, "lbottom":I
    move/from16 v35, v10

    .line 295
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    .line 297
    .local v9, "lbaseline":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, getParagraphDirection(I)I

    move-result v7

    .line 298
    .local v7, "dir":I
    const/16 v18, 0x0

    .line 299
    .local v18, "left":I
    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    .line 301
    .local v6, "right":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, mSpannedText:Z

    if-eqz v4, :cond_14b

    move-object/from16 v37, v11

    .line 302
    check-cast v37, Landroid/text/Spanned;

    .line 303
    .local v37, "sp":Landroid/text/Spanned;
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v43

    .line 304
    .local v43, "textLength":I
    if-eqz v12, :cond_86

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0xa

    if-ne v4, v15, :cond_11f

    :cond_86
    const/4 v14, 0x1

    .line 316
    .local v14, "isFirstParaLine":Z
    :goto_87
    move/from16 v0, v38

    if-lt v12, v0, :cond_c6

    move/from16 v0, v31

    move/from16 v1, p2

    if-eq v0, v1, :cond_93

    if-eqz v14, :cond_c6

    .line 317
    :cond_93
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v38

    .line 319
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v0, v12, v1, v4}, getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v39, [Landroid/text/style/ParagraphStyle;

    .line 321
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 322
    move-object/from16 v0, v39

    array-length v4, v0

    add-int/lit8 v33, v4, -0x1

    .local v33, "n":I
    :goto_b4
    if-ltz v33, :cond_c4

    .line 323
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_122

    .line 324
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v34

    .line 329
    :cond_c4
    const/16 v42, 0x0

    .line 334
    .end local v33    # "n":I
    :cond_c6
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v30, v0

    .line 335
    .local v30, "length":I
    move/from16 v45, v14

    .line 336
    .local v45, "useFirstLineMargin":Z
    const/16 v33, 0x0

    .restart local v33    # "n":I
    :goto_cf
    move/from16 v0, v33

    move/from16 v1, v30

    if-ge v0, v1, :cond_f9

    .line 337
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_125

    .line 338
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v29

    .line 339
    .local v29, "count":I
    aget-object v4, v39, v33

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getLineForOffset(I)I

    move-result v40

    .line 342
    .local v40, "startLine":I
    add-int v4, v40, v29

    move/from16 v0, v31

    if-ge v0, v4, :cond_125

    .line 343
    const/16 v45, 0x1

    .line 348
    .end local v29    # "count":I
    .end local v40    # "startLine":I
    :cond_f9
    const/16 v33, 0x0

    :goto_fb
    move/from16 v0, v33

    move/from16 v1, v30

    if-ge v0, v1, :cond_14b

    .line 349
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_11c

    .line 350
    aget-object v3, v39, v33

    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    .line 351
    .local v3, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v4, -0x1

    if-ne v7, v4, :cond_128

    move-object/from16 v4, p1

    move-object/from16 v15, p0

    .line 352
    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 355
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int/2addr v6, v4

    .line 348
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_11c
    :goto_11c
    add-int/lit8 v33, v33, 0x1

    goto :goto_fb

    .line 304
    .end local v14    # "isFirstParaLine":Z
    .end local v30    # "length":I
    .end local v33    # "n":I
    .end local v45    # "useFirstLineMargin":Z
    :cond_11f
    const/4 v14, 0x0

    goto/16 :goto_87

    .line 322
    .restart local v14    # "isFirstParaLine":Z
    .restart local v33    # "n":I
    :cond_122
    add-int/lit8 v33, v33, -0x1

    goto :goto_b4

    .line 336
    .restart local v30    # "length":I
    .restart local v45    # "useFirstLineMargin":Z
    :cond_125
    add-int/lit8 v33, v33, 0x1

    goto :goto_cf

    .restart local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_128
    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, p0

    .line 357
    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 360
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v18, v18, v4

    goto :goto_11c

    .line 366
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v14    # "isFirstParaLine":Z
    .end local v30    # "length":I
    .end local v33    # "n":I
    .end local v37    # "sp":Landroid/text/Spanned;
    .end local v43    # "textLength":I
    .end local v45    # "useFirstLineMargin":Z
    :cond_14b
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, getLineContainsTab(I)Z

    move-result v26

    .line 368
    .local v26, "hasTabOrEmoji":Z
    if-eqz v26, :cond_267

    if-nez v42, :cond_267

    .line 369
    if-nez v41, :cond_1c8

    .line 370
    new-instance v27, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 374
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_164
    const/16 v42, 0x1

    .line 378
    :goto_166
    move-object/from16 v28, v34

    .line 379
    .local v28, "align":Landroid/text/Layout$Alignment;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_1d7

    .line 380
    const/4 v4, 0x1

    if-ne v7, v4, :cond_1d4

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 388
    :cond_173
    :goto_173
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_1f3

    .line 389
    const/4 v4, 0x1

    if-ne v7, v4, :cond_1e6

    .line 390
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    add-int v46, v18, v4

    .line 409
    .local v46, "x":I
    :goto_188
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, getHyphen(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 410
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v25

    .line 411
    .local v25, "directions":Landroid/text/Layout$Directions;
    sget-object v4, DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_240

    move-object/from16 v0, p0

    iget-boolean v4, v0, mSpannedText:Z

    if-nez v4, :cond_240

    if-nez v26, :cond_240

    .line 413
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 418
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    :goto_1be
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 287
    add-int/lit8 v31, v31, 0x1

    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_2e

    .line 372
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    :cond_1c8
    const/16 v4, 0x14

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v27, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_164

    .line 380
    .restart local v28    # "align":Landroid/text/Layout$Alignment;
    :cond_1d4
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_173

    .line 382
    :cond_1d7
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_173

    .line 383
    const/4 v4, 0x1

    if-ne v7, v4, :cond_1e3

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_1e2
    goto :goto_173

    :cond_1e3
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1e2

    .line 392
    :cond_1e6
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    add-int v46, v6, v4

    .restart local v46    # "x":I
    goto :goto_188

    .line 395
    .end local v46    # "x":I
    :cond_1f3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v0, v4

    move/from16 v32, v0

    .line 396
    .local v32, "max":I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_22a

    .line 397
    const/4 v4, 0x1

    if-ne v7, v4, :cond_21a

    .line 398
    sub-int v4, v6, v32

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v15

    add-int v46, v4, v15

    .restart local v46    # "x":I
    goto/16 :goto_188

    .line 400
    .end local v46    # "x":I
    :cond_21a
    sub-int v4, v18, v32

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v15

    add-int v46, v4, v15

    .restart local v46    # "x":I
    goto/16 :goto_188

    .line 403
    .end local v46    # "x":I
    :cond_22a
    and-int/lit8 v32, v32, -0x2

    .line 404
    add-int v4, v6, v18

    sub-int v4, v4, v32

    shr-int/lit8 v4, v4, 0x1

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v15

    add-int v46, v4, v15

    .restart local v46    # "x":I
    goto/16 :goto_188

    .end local v32    # "max":I
    .restart local v25    # "directions":Landroid/text/Layout$Directions;
    :cond_240
    move-object/from16 v19, v44

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v7

    .line 415
    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 416
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v44

    move-object/from16 v20, p1

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_1be

    .line 421
    .end local v6    # "right":I
    .end local v7    # "dir":I
    .end local v8    # "ltop":I
    .end local v9    # "lbaseline":I
    .end local v10    # "lbottom":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v18    # "left":I
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    .end local v26    # "hasTabOrEmoji":Z
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_263
    invoke-static/range {v44 .. v44}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 422
    return-void

    .restart local v6    # "right":I
    .restart local v7    # "dir":I
    .restart local v8    # "ltop":I
    .restart local v9    # "lbaseline":I
    .restart local v10    # "lbottom":I
    .restart local v12    # "start":I
    .restart local v13    # "end":I
    .restart local v18    # "left":I
    .restart local v26    # "hasTabOrEmoji":Z
    :cond_267
    move-object/from16 v27, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_166
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 16
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 1389
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1391
    invoke-virtual {p0, p1}, getLineForOffset(I)I

    move-result v7

    .line 1392
    .local v7, "line":I
    invoke-virtual {p0, v7}, getLineTop(I)I

    move-result v8

    .line 1393
    .local v8, "top":I
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, getLineTop(I)I

    move-result v0

    .line 1395
    .local v0, "bottom":I
    invoke-virtual {p0, v7}, shouldClampCursor(I)Z

    move-result v2

    .line 1396
    .local v2, "clamped":Z
    invoke-virtual {p0, p1, v2}, getPrimaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v5, v9, v10

    .line 1397
    .local v5, "h1":F
    invoke-virtual {p0, p1}, isLevelBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_a3

    invoke-virtual {p0, p1, v2}, getSecondaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v6, v9, v10

    .line 1399
    .local v6, "h2":F
    :goto_2b
    const/4 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    const/16 v10, 0x800

    invoke-static {p3, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v10

    or-int v1, v9, v10

    .line 1401
    .local v1, "caps":I
    const/4 v9, 0x2

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1402
    .local v4, "fn":I
    const/4 v3, 0x0

    .line 1404
    .local v3, "dist":I
    if-nez v1, :cond_42

    if-eqz v4, :cond_4c

    .line 1405
    :cond_42
    sub-int v9, v0, v8

    shr-int/lit8 v3, v9, 0x2

    .line 1407
    if-eqz v4, :cond_49

    .line 1408
    add-int/2addr v8, v3

    .line 1409
    :cond_49
    if-eqz v1, :cond_4c

    .line 1410
    sub-int/2addr v0, v3

    .line 1413
    :cond_4c
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_54

    .line 1414
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1415
    :cond_54
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v6, v9

    if-gez v9, :cond_5c

    .line 1416
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1418
    :cond_5c
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_a5

    .line 1419
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1420
    int-to-float v9, v0

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1429
    :goto_6a
    const/4 v9, 0x2

    if-ne v1, v9, :cond_be

    .line 1430
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1431
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1432
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1433
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1445
    :cond_86
    :goto_86
    const/4 v9, 0x2

    if-ne v4, v9, :cond_f2

    .line 1446
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1447
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1448
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1449
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1460
    :cond_a2
    :goto_a2
    return-void

    .end local v1    # "caps":I
    .end local v3    # "dist":I
    .end local v4    # "fn":I
    .end local v6    # "h2":F
    :cond_a3
    move v6, v5

    .line 1397
    goto :goto_2b

    .line 1422
    .restart local v1    # "caps":I
    .restart local v3    # "dist":I
    .restart local v4    # "fn":I
    .restart local v6    # "h2":F
    :cond_a5
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1423
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1425
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1426
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_6a

    .line 1434
    :cond_be
    const/4 v9, 0x1

    if-ne v1, v9, :cond_86

    .line 1435
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1436
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1438
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1439
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1441
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1442
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_86

    .line 1450
    :cond_f2
    const/4 v9, 0x1

    if-ne v4, v9, :cond_a2

    .line 1451
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1452
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1454
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1455
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1457
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1458
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_a2
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 612
    iget v0, p0, mWidth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 632
    invoke-virtual {p0}, getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHyphen(I)I
    .registers 3
    .param p1, "line"    # I

    .prologue
    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public final getLineAscent(I)I
    .registers 5
    .param p1, "line"    # I

    .prologue
    .line 1269
    invoke-virtual {p0, p1}, getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 1260
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .registers 3
    .param p1, "line"    # I

    .prologue
    .line 1252
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 678
    if-eqz p2, :cond_17

    .line 679
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 680
    invoke-virtual {p0, p1}, getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 681
    iget v0, p0, mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 682
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 684
    :cond_17
    invoke-virtual {p0, p1}, getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .registers 3
    .param p1, "line"    # I

    .prologue
    .line 1211
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .registers 7
    .param p1, "offset"    # I

    .prologue
    .line 1113
    invoke-virtual {p0}, getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1115
    .local v2, "low":I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 1116
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1118
    .local v0, "guess":I
    invoke-virtual {p0, v0}, getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 1119
    move v1, v0

    goto :goto_5

    .line 1121
    :cond_16
    move v2, v0

    goto :goto_5

    .line 1124
    .end local v0    # "guess":I
    :cond_18
    if-gez v2, :cond_1b

    .line 1125
    const/4 v2, 0x0

    .line 1127
    .end local v2    # "low":I
    :cond_1b
    return v2
.end method

.method public getLineForVertical(I)I
    .registers 7
    .param p1, "vertical"    # I

    .prologue
    .line 1090
    invoke-virtual {p0}, getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1092
    .local v2, "low":I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 1093
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1095
    .local v0, "guess":I
    invoke-virtual {p0, v0}, getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 1096
    move v1, v0

    goto :goto_5

    .line 1098
    :cond_16
    move v2, v0

    goto :goto_5

    .line 1101
    .end local v0    # "guess":I
    :cond_18
    if-gez v2, :cond_1b

    .line 1102
    const/4 v2, 0x0

    .line 1104
    .end local v2    # "low":I
    :cond_1b
    return v2
.end method

.method public getLineLeft(I)F
    .registers 10
    .param p1, "line"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 949
    invoke-virtual {p0, p1}, getParagraphDirection(I)I

    move-result v1

    .line 950
    .local v1, "dir":I
    invoke-virtual {p0, p1}, getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 952
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_f

    .line 971
    :cond_e
    :goto_e
    return v5

    .line 954
    :cond_f
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_20

    .line 955
    if-ne v1, v7, :cond_e

    .line 956
    invoke-virtual {p0, p1}, getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_e

    .line 959
    :cond_20
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2d

    .line 960
    iget v5, p0, mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_e

    .line 961
    :cond_2d
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_3c

    .line 962
    if-eq v1, v7, :cond_e

    .line 965
    iget v5, p0, mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_e

    .line 967
    :cond_3c
    invoke-virtual {p0, p1}, getParagraphLeft(I)I

    move-result v2

    .line 968
    .local v2, "left":I
    invoke-virtual {p0, p1}, getParagraphRight(I)I

    move-result v4

    .line 969
    .local v4, "right":I
    invoke-virtual {p0, p1}, getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 971
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_e
.end method

.method public getLineMax(I)F
    .registers 5
    .param p1, "line"    # I

    .prologue
    .line 1011
    invoke-direct {p0, p1}, getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1012
    .local v0, "margin":F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, getLineExtent(IZ)F

    move-result v1

    .line 1013
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_12

    .end local v1    # "signedExtent":F
    :goto_f
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_12
    neg-float v1, v1

    goto :goto_f
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 510
    sget-object v6, sTempRect:Landroid/graphics/Rect;

    monitor-enter v6

    .line 511
    :try_start_5
    sget-object v4, sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 513
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    monitor-exit v6

    .line 524
    :goto_14
    return-wide v4

    .line 516
    :cond_15
    sget-object v4, sTempRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 517
    .local v2, "dtop":I
    sget-object v4, sTempRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 518
    .local v1, "dbottom":I
    monitor-exit v6
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_35

    .line 520
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 521
    .local v3, "top":I
    invoke-virtual {p0}, getLineCount()I

    move-result v4

    invoke-virtual {p0, v4}, getLineTop(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 523
    .local v0, "bottom":I
    if-lt v3, v0, :cond_38

    invoke-static {v5, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    goto :goto_14

    .line 518
    .end local v0    # "bottom":I
    .end local v1    # "dbottom":I
    .end local v2    # "dtop":I
    .end local v3    # "top":I
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v6
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v4

    .line 524
    .restart local v0    # "bottom":I
    .restart local v1    # "dbottom":I
    .restart local v2    # "dtop":I
    .restart local v3    # "top":I
    :cond_38
    invoke-virtual {p0, v3}, getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v0}, getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    goto :goto_14
.end method

.method public getLineRight(I)F
    .registers 9
    .param p1, "line"    # I

    .prologue
    const/4 v6, -0x1

    .line 980
    invoke-virtual {p0, p1}, getParagraphDirection(I)I

    move-result v1

    .line 981
    .local v1, "dir":I
    invoke-virtual {p0, p1}, getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 983
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_18

    .line 984
    invoke-virtual {p0, p1}, getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 1002
    :goto_17
    return v5

    .line 985
    :cond_18
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2d

    .line 986
    if-ne v1, v6, :cond_22

    .line 987
    iget v5, p0, mWidth:I

    int-to-float v5, v5

    goto :goto_17

    .line 989
    :cond_22
    invoke-virtual {p0, p1}, getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_17

    .line 990
    :cond_2d
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_35

    .line 991
    iget v5, p0, mWidth:I

    int-to-float v5, v5

    goto :goto_17

    .line 992
    :cond_35
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_44

    .line 993
    if-ne v1, v6, :cond_40

    .line 994
    invoke-virtual {p0, p1}, getLineMax(I)F

    move-result v5

    goto :goto_17

    .line 996
    :cond_40
    iget v5, p0, mWidth:I

    int-to-float v5, v5

    goto :goto_17

    .line 998
    :cond_44
    invoke-virtual {p0, p1}, getParagraphLeft(I)I

    move-result v2

    .line 999
    .local v2, "left":I
    invoke-virtual {p0, p1}, getParagraphRight(I)I

    move-result v4

    .line 1000
    .local v4, "right":I
    invoke-virtual {p0, p1}, getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1002
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_17
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 1219
    invoke-virtual {p0, p1}, getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .registers 5
    .param p1, "line"    # I

    .prologue
    .line 1021
    invoke-direct {p0, p1}, getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1022
    .local v0, "margin":F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, getLineExtent(IZ)F

    move-result v1

    .line 1023
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_12

    .end local v1    # "signedExtent":F
    :goto_f
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_12
    neg-float v1, v1

    goto :goto_f
.end method

.method public getOffsetForHorizontal(IF)I
    .registers 23
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .prologue
    .line 1136
    invoke-virtual/range {p0 .. p1}, getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .line 1137
    .local v13, "max":I
    invoke-virtual/range {p0 .. p1}, getLineStart(I)I

    move-result v14

    .line 1138
    .local v14, "min":I
    invoke-virtual/range {p0 .. p1}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1140
    .local v6, "dirs":Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 1141
    add-int/lit8 v13, v13, 0x1

    .line 1143
    :cond_1c
    move v4, v14

    .line 1144
    .local v4, "best":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1146
    .local v5, "bestdist":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2a
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_fb

    .line 1147
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 1148
    .local v9, "here":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 1149
    .local v17, "there":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x4000000

    and-int v18, v18, v19

    if-eqz v18, :cond_9a

    const/16 v16, -0x1

    .line 1151
    .local v16, "swap":I
    :goto_5e
    move/from16 v0, v17

    if-le v0, v13, :cond_64

    .line 1152
    move/from16 v17, v13

    .line 1153
    :cond_64
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    .local v10, "high":I
    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    .line 1155
    .local v12, "low":I
    :goto_6c
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9f

    .line 1156
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 1157
    .local v8, "guess":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, getOffsetAtStartOf(I)I

    move-result v2

    .line 1159
    .local v2, "adguess":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_9d

    .line 1160
    move v10, v8

    goto :goto_6c

    .line 1149
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    :cond_9a
    const/16 v16, 0x1

    goto :goto_5e

    .line 1162
    .restart local v2    # "adguess":I
    .restart local v8    # "guess":I
    .restart local v10    # "high":I
    .restart local v12    # "low":I
    .restart local v16    # "swap":I
    :cond_9d
    move v12, v8

    goto :goto_6c

    .line 1165
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    :cond_9f
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_a7

    .line 1166
    add-int/lit8 v12, v9, 0x1

    .line 1168
    :cond_a7
    move/from16 v0, v17

    if-ge v12, v0, :cond_e5

    .line 1169
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, getOffsetAtStartOf(I)I

    move-result v12

    .line 1171
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1173
    .local v7, "dist":F
    move-object/from16 v0, p0

    iget-object v0, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1174
    .local v3, "aft":I
    move/from16 v0, v17

    if-ge v3, v0, :cond_df

    .line 1175
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1177
    .local v15, "other":F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_df

    .line 1178
    move v7, v15

    .line 1179
    move v12, v3

    .line 1183
    .end local v15    # "other":F
    :cond_df
    cmpg-float v18, v7, v5

    if-gez v18, :cond_e5

    .line 1184
    move v5, v7

    .line 1185
    move v4, v12

    .line 1189
    .end local v3    # "aft":I
    .end local v7    # "dist":F
    :cond_e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1191
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_f7

    .line 1192
    move v5, v7

    .line 1193
    move v4, v9

    .line 1146
    :cond_f7
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_2a

    .line 1197
    .end local v7    # "dist":F
    .end local v9    # "here":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    .end local v17    # "there":I
    :cond_fb
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1199
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gtz v18, :cond_10d

    .line 1200
    move v5, v7

    .line 1201
    move v4, v13

    .line 1204
    :cond_10d
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 1273
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 1277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 9
    .param p1, "line"    # I

    .prologue
    .line 1618
    iget-object v0, p0, mAlignment:Landroid/text/Layout$Alignment;

    .line 1620
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, mSpannedText:Z

    if-eqz v4, :cond_25

    .line 1621
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1622
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1626
    .local v3, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1627
    .local v2, "spanLength":I
    if-lez v2, :cond_25

    .line 1628
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1632
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spanLength":I
    .end local v3    # "spans":[Landroid/text/style/AlignmentSpan;
    :cond_25
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .registers 5
    .param p1, "line"    # I

    .prologue
    .line 1639
    const/4 v1, 0x0

    .line 1640
    .local v1, "left":I
    invoke-virtual {p0, p1}, getParagraphDirection(I)I

    move-result v0

    .line 1641
    .local v0, "dir":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    iget-boolean v2, p0, mSpannedText:Z

    if-nez v2, :cond_d

    .line 1644
    .end local v1    # "left":I
    :cond_c
    :goto_c
    return v1

    .restart local v1    # "left":I
    :cond_d
    invoke-direct {p0, p1}, getParagraphLeadingMargin(I)I

    move-result v1

    goto :goto_c
.end method

.method public final getParagraphRight(I)I
    .registers 5
    .param p1, "line"    # I

    .prologue
    .line 1651
    iget v1, p0, mWidth:I

    .line 1652
    .local v1, "right":I
    invoke-virtual {p0, p1}, getParagraphDirection(I)I

    move-result v0

    .line 1653
    .local v0, "dir":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    iget-boolean v2, p0, mSpannedText:Z

    if-nez v2, :cond_e

    .line 1656
    .end local v1    # "right":I
    :cond_d
    :goto_d
    return v1

    .restart local v1    # "right":I
    :cond_e
    invoke-direct {p0, p1}, getParagraphLeadingMargin(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_d
.end method

.method public getPrimaryHorizontal(I)F
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .registers 5
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 884
    invoke-direct {p0, p1}, primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 885
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getSecondaryHorizontal(I)F
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 894
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .registers 5
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 903
    invoke-direct {p0, p1}, primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 904
    .local v0, "trailing":Z
    if-nez v0, :cond_c

    const/4 v1, 0x1

    :goto_7
    invoke-direct {p0, p1, v1, p2}, getHorizontal(IZZ)F

    move-result v1

    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .registers 23
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1502
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1504
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    .line 1551
    :goto_9
    return-void

    .line 1507
    :cond_a
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_16

    .line 1508
    move/from16 v17, p2

    .line 1509
    .local v17, "temp":I
    move/from16 p2, p1

    .line 1510
    move/from16 p1, v17

    .line 1513
    .end local v17    # "temp":I
    :cond_16
    invoke-virtual/range {p0 .. p1}, getLineForOffset(I)I

    move-result v3

    .line 1514
    .local v3, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, getLineForOffset(I)I

    move-result v15

    .line 1516
    .local v15, "endline":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineTop(I)I

    move-result v6

    .line 1517
    .local v6, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineBottom(I)I

    move-result v7

    .line 1519
    .local v7, "bottom":I
    if-ne v3, v15, :cond_3c

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1520
    invoke-direct/range {v2 .. v8}, addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_9

    .line 1522
    :cond_3c
    move-object/from16 v0, p0

    iget v2, v0, mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1524
    .local v18, "width":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, addSelection(IIIIILandroid/graphics/Path;)V

    .line 1527
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_9e

    .line 1528
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1534
    :goto_79
    add-int/lit8 v16, v3, 0x1

    .local v16, "i":I
    :goto_7b
    move/from16 v0, v16

    if-ge v0, v15, :cond_b6

    .line 1535
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, getLineTop(I)I

    move-result v6

    .line 1536
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, getLineBottom(I)I

    move-result v7

    .line 1537
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1534
    add-int/lit8 v16, v16, 0x1

    goto :goto_7b

    .line 1531
    .end local v16    # "i":I
    :cond_9e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_79

    .line 1540
    .restart local v16    # "i":I
    :cond_b6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineTop(I)I

    move-result v6

    .line 1541
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineBottom(I)I

    move-result v7

    .line 1543
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, addSelection(IIIIILandroid/graphics/Path;)V

    .line 1546
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_f0

    .line 1547
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9

    .line 1549
    :cond_f0
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9
.end method

.method public final getSpacingAdd()F
    .registers 2

    .prologue
    .line 653
    iget v0, p0, mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .registers 2

    .prologue
    .line 646
    iget v0, p0, mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 604
    iget v0, p0, mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .registers 4
    .param p1, "wid"    # I

    .prologue
    .line 621
    iget v0, p0, mWidth:I

    if-ge p1, v0, :cond_c

    .line 622
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_c
    iput p1, p0, mWidth:I

    .line 626
    return-void
.end method

.method public isLevelBoundary(I)Z
    .registers 13
    .param p1, "offset"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 768
    invoke-virtual {p0, p1}, getLineForOffset(I)I

    move-result v2

    .line 769
    .local v2, "line":I
    invoke-virtual {p0, v2}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 770
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_12

    sget-object v10, DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_13

    .line 789
    :cond_12
    :goto_12
    return v8

    .line 774
    :cond_13
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 775
    .local v7, "runs":[I
    invoke-virtual {p0, v2}, getLineStart(I)I

    move-result v4

    .line 776
    .local v4, "lineStart":I
    invoke-virtual {p0, v2}, getLineEnd(I)I

    move-result v3

    .line 777
    .local v3, "lineEnd":I
    if-eq p1, v4, :cond_21

    if-ne p1, v3, :cond_3d

    .line 778
    :cond_21
    invoke-virtual {p0, v2}, getParagraphDirection(I)I

    move-result v10

    if-ne v10, v9, :cond_37

    move v5, v8

    .line 779
    .local v5, "paraLevel":I
    :goto_28
    if-ne p1, v4, :cond_39

    move v6, v8

    .line 780
    .local v6, "runIndex":I
    :goto_2b
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_12

    move v8, v9

    goto :goto_12

    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_37
    move v5, v9

    .line 778
    goto :goto_28

    .line 779
    .restart local v5    # "paraLevel":I
    :cond_39
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_2b

    .line 783
    .end local v5    # "paraLevel":I
    :cond_3d
    sub-int/2addr p1, v4

    .line 784
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3f
    array-length v10, v7

    if-ge v1, v10, :cond_12

    .line 785
    aget v10, v7, v1

    if-ne p1, v10, :cond_48

    move v8, v9

    .line 786
    goto :goto_12

    .line 784
    :cond_48
    add-int/lit8 v1, v1, 0x2

    goto :goto_3f
.end method

.method public isRtlCharAt(I)Z
    .registers 14
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 798
    invoke-virtual {p0, p1}, getLineForOffset(I)I

    move-result v4

    .line 799
    .local v4, "line":I
    invoke-virtual {p0, v4}, getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 800
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_f

    .line 817
    :cond_e
    :goto_e
    return v9

    .line 803
    :cond_f
    sget-object v10, DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_15

    move v9, v8

    .line 804
    goto :goto_e

    .line 806
    :cond_15
    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 807
    .local v6, "runs":[I
    invoke-virtual {p0, v4}, getLineStart(I)I

    move-result v5

    .line 808
    .local v5, "lineStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    array-length v10, v6

    if-ge v1, v10, :cond_e

    .line 809
    aget v10, v6, v1

    add-int v7, v5, v10

    .line 810
    .local v7, "start":I
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int v3, v7, v10

    .line 811
    .local v3, "limit":I
    if-lt p1, v7, :cond_41

    if-ge p1, v3, :cond_41

    .line 812
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v2, v10, 0x3f

    .line 813
    .local v2, "level":I
    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_3f

    :goto_3d
    move v9, v8

    goto :goto_e

    :cond_3f
    move v8, v9

    goto :goto_3d

    .line 808
    .end local v2    # "level":I
    :cond_41
    add-int/lit8 v1, v1, 0x2

    goto :goto_1c
.end method

.method protected final isSpanned()Z
    .registers 2

    .prologue
    .line 1863
    iget-boolean v0, p0, mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .prologue
    .line 226
    if-gez p3, :cond_21

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_21
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    .line 231
    iput-object p2, p0, mPaint:Landroid/text/TextPaint;

    .line 232
    iput p3, p0, mWidth:I

    .line 233
    iput-object p4, p0, mAlignment:Landroid/text/Layout$Alignment;

    .line 234
    iput p5, p0, mSpacingMult:F

    .line 235
    iput p6, p0, mSpacingAdd:F

    .line 236
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, mSpannedText:Z

    .line 237
    return-void
.end method

.method public shouldClampCursor(I)Z
    .registers 6
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1371
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1c

    move v0, v1

    .line 1377
    :cond_12
    :goto_12
    :pswitch_12
    return v0

    .line 1375
    :pswitch_13
    invoke-virtual {p0, p1}, getParagraphDirection(I)I

    move-result v2

    if-gtz v2, :cond_12

    move v0, v1

    goto :goto_12

    .line 1371
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
