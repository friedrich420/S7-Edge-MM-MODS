.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Landroid/text/Editable;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;
.implements Landroid/text/Spannable;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_ADDED:I = 0x800

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWaterMark:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanMax:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C

.field private mTextWatcherDepth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1530
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    const-string v0, ""

    invoke-direct {p0, v0}, <init>(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, <init>(Ljava/lang/CharSequence;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    sget-object v0, NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, p0, mFilters:[Landroid/text/InputFilter;

    .line 57
    sub-int v9, p3, p2

    .line 59
    .local v9, "srclen":I
    if-gez v9, :cond_12

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_12
    invoke-static {v9}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    iput-object v0, p0, mText:[C

    .line 62
    iput v9, p0, mGapStart:I

    .line 63
    iget-object v0, p0, mText:[C

    array-length v0, v0

    sub-int/2addr v0, v9

    iput v0, p0, mGapLength:I

    .line 65
    iget-object v0, p0, mText:[C

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 67
    iput v1, p0, mSpanCount:I

    .line 68
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, mSpans:[Ljava/lang/Object;

    .line 69
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mSpanStarts:[I

    .line 70
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mSpanEnds:[I

    .line 71
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mSpanFlags:[I

    .line 72
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mSpanMax:[I

    .line 74
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_8b

    move-object v7, p1

    .line 75
    check-cast v7, Landroid/text/Spanned;

    .line 76
    .local v7, "sp":Landroid/text/Spanned;
    const-class v0, Ljava/lang/Object;

    invoke-interface {v7, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 78
    .local v8, "spans":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4d
    array-length v0, v8

    if-ge v6, v0, :cond_88

    .line 79
    aget-object v0, v8, v6

    instance-of v0, v0, Landroid/text/NoCopySpan;

    if-eqz v0, :cond_59

    .line 78
    :goto_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    .line 83
    :cond_59
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int v3, v0, p2

    .line 84
    .local v3, "st":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    sub-int v4, v0, p2

    .line 85
    .local v4, "en":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 87
    .local v5, "fl":I
    if-gez v3, :cond_72

    .line 88
    const/4 v3, 0x0

    .line 89
    :cond_72
    sub-int v0, p3, p2

    if-le v3, v0, :cond_78

    .line 90
    sub-int v3, p3, p2

    .line 92
    :cond_78
    if-gez v4, :cond_7b

    .line 93
    const/4 v4, 0x0

    .line 94
    :cond_7b
    sub-int v0, p3, p2

    if-le v4, v0, :cond_81

    .line 95
    sub-int v4, p3, p2

    .line 97
    :cond_81
    aget-object v2, v8, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, setSpan(ZLjava/lang/Object;III)V

    goto :goto_56

    .line 99
    .end local v3    # "st":I
    .end local v4    # "en":I
    .end local v5    # "fl":I
    :cond_88
    invoke-direct {p0}, restoreInvariants()V

    .line 101
    .end local v6    # "i":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "spans":[Ljava/lang/Object;
    :cond_8b
    return-void
.end method

.method private calcMax(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 1465
    const/4 v0, 0x0

    .line 1466
    .local v0, "max":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_d

    .line 1468
    invoke-static {p1}, leftChild(I)I

    move-result v1

    invoke-direct {p0, v1}, calcMax(I)I

    move-result v0

    .line 1470
    :cond_d
    iget v1, p0, mSpanCount:I

    if-ge p1, v1, :cond_29

    .line 1471
    iget-object v1, p0, mSpanEnds:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1472
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_29

    .line 1473
    invoke-static {p1}, rightChild(I)I

    move-result v1

    invoke-direct {p0, v1}, calcMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1476
    :cond_29
    iget-object v1, p0, mSpanMax:[I

    aput v0, v1, p1

    .line 1477
    return v0
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .registers 45
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "cs"    # Ljava/lang/CharSequence;
    .param p4, "csStart"    # I
    .param p5, "csEnd"    # I

    .prologue
    .line 322
    sub-int v34, p2, p1

    .line 323
    .local v34, "replacedLength":I
    sub-int v35, p5, p4

    .line 324
    .local v35, "replacementLength":I
    sub-int v12, v35, v34

    .line 326
    .local v12, "nbNewChars":I
    const/16 v27, 0x0

    .line 327
    .local v27, "changed":Z
    move-object/from16 v0, p0

    iget v4, v0, mSpanCount:I

    add-int/lit8 v31, v4, -0x1

    .local v31, "i":I
    :goto_e
    if-ltz v31, :cond_dd

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, mSpanStarts:[I

    aget v7, v4, v31

    .line 329
    .local v7, "spanStart":I
    move-object/from16 v0, p0

    iget v4, v0, mGapStart:I

    if-le v7, v4, :cond_21

    .line 330
    move-object/from16 v0, p0

    iget v4, v0, mGapLength:I

    sub-int/2addr v7, v4

    .line 332
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, mSpanEnds:[I

    aget v8, v4, v31

    .line 333
    .local v8, "spanEnd":I
    move-object/from16 v0, p0

    iget v4, v0, mGapStart:I

    if-le v8, v4, :cond_32

    .line 334
    move-object/from16 v0, p0

    iget v4, v0, mGapLength:I

    sub-int/2addr v8, v4

    .line 336
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, mSpanFlags:[I

    aget v4, v4, v31

    and-int/lit8 v4, v4, 0x33

    const/16 v5, 0x33

    if-ne v4, v5, :cond_9e

    .line 337
    move/from16 v33, v7

    .line 338
    .local v33, "ost":I
    move/from16 v32, v8

    .line 339
    .local v32, "oen":I
    invoke-virtual/range {p0 .. p0}, length()I

    move-result v28

    .line 341
    .local v28, "clen":I
    move/from16 v0, p1

    if-le v7, v0, :cond_64

    move/from16 v0, p2

    if-gt v7, v0, :cond_64

    .line 342
    move/from16 v7, p2

    :goto_50
    move/from16 v0, v28

    if-ge v7, v0, :cond_64

    .line 343
    move/from16 v0, p2

    if-le v7, v0, :cond_c2

    add-int/lit8 v4, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_c2

    .line 347
    :cond_64
    move/from16 v0, p1

    if-le v8, v0, :cond_82

    move/from16 v0, p2

    if-gt v8, v0, :cond_82

    .line 348
    move/from16 v8, p2

    :goto_6e
    move/from16 v0, v28

    if-ge v8, v0, :cond_82

    .line 349
    move/from16 v0, p2

    if-le v8, v0, :cond_c5

    add-int/lit8 v4, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_c5

    .line 353
    :cond_82
    move/from16 v0, v33

    if-ne v7, v0, :cond_8a

    move/from16 v0, v32

    if-eq v8, v0, :cond_9e

    .line 354
    :cond_8a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mSpans:[Ljava/lang/Object;

    aget-object v6, v4, v31

    move-object/from16 v0, p0

    iget-object v4, v0, mSpanFlags:[I

    aget v9, v4, v31

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, setSpan(ZLjava/lang/Object;III)V

    .line 355
    const/16 v27, 0x1

    .line 359
    .end local v28    # "clen":I
    .end local v32    # "oen":I
    .end local v33    # "ost":I
    :cond_9e
    const/16 v30, 0x0

    .line 360
    .local v30, "flags":I
    move/from16 v0, p1

    if-ne v7, v0, :cond_c8

    move/from16 v0, v30

    or-int/lit16 v0, v0, 0x1000

    move/from16 v30, v0

    .line 362
    :cond_aa
    :goto_aa
    move/from16 v0, p1

    if-ne v8, v0, :cond_d3

    move/from16 v0, v30

    or-int/lit16 v0, v0, 0x4000

    move/from16 v30, v0

    .line 364
    :cond_b4
    :goto_b4
    move-object/from16 v0, p0

    iget-object v4, v0, mSpanFlags:[I

    aget v5, v4, v31

    or-int v5, v5, v30

    aput v5, v4, v31

    .line 327
    add-int/lit8 v31, v31, -0x1

    goto/16 :goto_e

    .line 342
    .end local v30    # "flags":I
    .restart local v28    # "clen":I
    .restart local v32    # "oen":I
    .restart local v33    # "ost":I
    :cond_c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    .line 348
    :cond_c5
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    .line 361
    .end local v28    # "clen":I
    .end local v32    # "oen":I
    .end local v33    # "ost":I
    .restart local v30    # "flags":I
    :cond_c8
    add-int v4, p2, v12

    if-ne v7, v4, :cond_aa

    move/from16 v0, v30

    or-int/lit16 v0, v0, 0x2000

    move/from16 v30, v0

    goto :goto_aa

    .line 363
    :cond_d3
    add-int v4, p2, v12

    if-ne v8, v4, :cond_b4

    const v4, 0x8000

    or-int v30, v30, v4

    goto :goto_b4

    .line 366
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    .end local v30    # "flags":I
    :cond_dd
    if-eqz v27, :cond_e2

    .line 367
    invoke-direct/range {p0 .. p0}, restoreInvariants()V

    .line 370
    :cond_e2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, moveGapTo(I)V

    .line 372
    move-object/from16 v0, p0

    iget v4, v0, mGapLength:I

    if-lt v12, v4, :cond_ff

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, mText:[C

    array-length v4, v4

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, mGapLength:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, resizeFor(I)V

    .line 376
    :cond_ff
    if-nez v35, :cond_1ad

    const/4 v15, 0x1

    .line 379
    .local v15, "textIsRemoved":Z
    :goto_102
    if-lez v34, :cond_11a

    .line 380
    :cond_104
    move-object/from16 v0, p0

    iget v4, v0, mSpanCount:I

    if-lez v4, :cond_11a

    invoke-direct/range {p0 .. p0}, treeRoot()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v4}, removeSpansForChange(IIZI)Z

    move-result v4

    if-nez v4, :cond_104

    .line 387
    :cond_11a
    move-object/from16 v0, p0

    iget v4, v0, mGapStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, mGapStart:I

    .line 388
    move-object/from16 v0, p0

    iget v4, v0, mGapLength:I

    sub-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, mGapLength:I

    .line 390
    move-object/from16 v0, p0

    iget v4, v0, mGapLength:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_13e

    .line 391
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "mGapLength < 1"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    :cond_13e
    move-object/from16 v0, p0

    iget-object v4, v0, mText:[C

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 395
    if-lez v34, :cond_1b5

    .line 397
    move-object/from16 v0, p0

    iget v4, v0, mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, mGapLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, mText:[C

    array-length v5, v5

    if-ne v4, v5, :cond_1b0

    const/4 v14, 0x1

    .line 399
    .local v14, "atEnd":Z
    :goto_160
    const/16 v31, 0x0

    :goto_162
    move-object/from16 v0, p0

    iget v4, v0, mSpanCount:I

    move/from16 v0, v31

    if-ge v0, v4, :cond_1b2

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, mSpanFlags:[I

    aget v4, v4, v31

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v13, v4, 0x4

    .line 401
    .local v13, "startFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, mSpanStarts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, mSpanStarts:[I

    aget v10, v5, v31

    move-object/from16 v9, p0

    move/from16 v11, p1

    invoke-direct/range {v9 .. v15}, updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v31

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, mSpanFlags:[I

    aget v4, v4, v31

    and-int/lit8 v20, v4, 0xf

    .line 405
    .local v20, "endFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, mSpanEnds:[I

    move-object/from16 v0, p0

    iget-object v5, v0, mSpanEnds:[I

    aget v17, v5, v31

    move-object/from16 v16, p0

    move/from16 v18, p1

    move/from16 v19, v12

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-direct/range {v16 .. v22}, updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v31

    .line 399
    add-int/lit8 v31, v31, 0x1

    goto :goto_162

    .line 376
    .end local v13    # "startFlag":I
    .end local v14    # "atEnd":Z
    .end local v15    # "textIsRemoved":Z
    .end local v20    # "endFlag":I
    :cond_1ad
    const/4 v15, 0x0

    goto/16 :goto_102

    .line 397
    .restart local v15    # "textIsRemoved":Z
    :cond_1b0
    const/4 v14, 0x0

    goto :goto_160

    .line 409
    .restart local v14    # "atEnd":Z
    :cond_1b2
    invoke-direct/range {p0 .. p0}, restoreInvariants()V

    .line 412
    .end local v14    # "atEnd":Z
    :cond_1b5
    move-object/from16 v0, p3

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_221

    move-object/from16 v36, p3

    .line 413
    check-cast v36, Landroid/text/Spanned;

    .line 414
    .local v36, "sp":Landroid/text/Spanned;
    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v36

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v37

    .line 416
    .local v37, "spans":[Ljava/lang/Object;
    const/16 v31, 0x0

    :goto_1cd
    move-object/from16 v0, v37

    array-length v4, v0

    move/from16 v0, v31

    if-ge v0, v4, :cond_21e

    .line 417
    aget-object v4, v37, v31

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v38

    .line 418
    .local v38, "st":I
    aget-object v4, v37, v31

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v29

    .line 420
    .local v29, "en":I
    move/from16 v0, v38

    move/from16 v1, p4

    if-ge v0, v1, :cond_1ec

    move/from16 v38, p4

    .line 421
    :cond_1ec
    move/from16 v0, v29

    move/from16 v1, p5

    if-le v0, v1, :cond_1f4

    move/from16 v29, p5

    .line 424
    :cond_1f4
    aget-object v4, v37, v31

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_21b

    .line 425
    const/16 v22, 0x0

    aget-object v23, v37, v31

    sub-int v4, v38, p4

    add-int v24, v4, p1

    sub-int v4, v29, p4

    add-int v25, v4, p1

    aget-object v4, v37, v31

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    or-int/lit16 v0, v4, 0x800

    move/from16 v26, v0

    move-object/from16 v21, p0

    invoke-direct/range {v21 .. v26}, setSpan(ZLjava/lang/Object;III)V

    .line 416
    :cond_21b
    add-int/lit8 v31, v31, 0x1

    goto :goto_1cd

    .line 429
    .end local v29    # "en":I
    .end local v38    # "st":I
    :cond_21e
    invoke-direct/range {p0 .. p0}, restoreInvariants()V

    .line 431
    .end local v36    # "sp":Landroid/text/Spanned;
    .end local v37    # "spans":[Ljava/lang/Object;
    :cond_221
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .registers 8
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1086
    if-ge p3, p2, :cond_29

    .line 1087
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1091
    :cond_29
    invoke-virtual {p0}, length()I

    move-result v0

    .line 1093
    .local v0, "len":I
    if-gt p2, v0, :cond_31

    if-le p3, v0, :cond_5c

    .line 1094
    :cond_31
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1098
    :cond_5c
    if-ltz p2, :cond_60

    if-gez p3, :cond_87

    .line 1099
    :cond_60
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    :cond_87
    return-void
.end method

.method private countSpans(IILjava/lang/Class;I)I
    .registers 11
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "count":I
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_1a

    .line 838
    invoke-static {p4}, leftChild(I)I

    move-result v1

    .line 839
    .local v1, "left":I
    iget-object v5, p0, mSpanMax:[I

    aget v3, v5, v1

    .line 840
    .local v3, "spanMax":I
    iget v5, p0, mGapStart:I

    if-le v3, v5, :cond_14

    .line 841
    iget v5, p0, mGapLength:I

    sub-int/2addr v3, v5

    .line 843
    :cond_14
    if-lt v3, p1, :cond_1a

    .line 844
    invoke-direct {p0, p1, p2, p3, v1}, countSpans(IILjava/lang/Class;I)I

    move-result v0

    .line 847
    .end local v1    # "left":I
    .end local v3    # "spanMax":I
    :cond_1a
    iget v5, p0, mSpanCount:I

    if-ge p4, v5, :cond_59

    .line 848
    iget-object v5, p0, mSpanStarts:[I

    aget v4, v5, p4

    .line 849
    .local v4, "spanStart":I
    iget v5, p0, mGapStart:I

    if-le v4, v5, :cond_29

    .line 850
    iget v5, p0, mGapLength:I

    sub-int/2addr v4, v5

    .line 852
    :cond_29
    if-gt v4, p2, :cond_59

    .line 853
    iget-object v5, p0, mSpanEnds:[I

    aget v2, v5, p4

    .line 854
    .local v2, "spanEnd":I
    iget v5, p0, mGapStart:I

    if-le v2, v5, :cond_36

    .line 855
    iget v5, p0, mGapLength:I

    sub-int/2addr v2, v5

    .line 857
    :cond_36
    if-lt v2, p1, :cond_4c

    if-eq v4, v2, :cond_40

    if-eq p1, p2, :cond_40

    if-eq v4, p2, :cond_4c

    if-eq v2, p1, :cond_4c

    :cond_40
    iget-object v5, p0, mSpans:[Ljava/lang/Object;

    aget-object v5, v5, p4

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 861
    add-int/lit8 v0, v0, 0x1

    .line 863
    :cond_4c
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_59

    .line 864
    invoke-static {p4}, rightChild(I)I

    move-result v5

    invoke-direct {p0, p1, p2, p3, v5}, countSpans(IILjava/lang/Class;I)I

    move-result v5

    add-int/2addr v0, v5

    .line 868
    .end local v2    # "spanEnd":I
    .end local v4    # "spanStart":I
    :cond_59
    return v0
.end method

.method private getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I
    .registers 28
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "i"    # I
    .param p6, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;I[TT;I)I"
        }
    .end annotation

    .prologue
    .line 874
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "ret":[Ljava/lang/Object;, "[TT;"
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_32

    .line 876
    invoke-static/range {p4 .. p4}, leftChild(I)I

    move-result v6

    .line 877
    .local v6, "left":I
    move-object/from16 v0, p0

    iget-object v2, v0, mSpanMax:[I

    aget v19, v2, v6

    .line 878
    .local v19, "spanMax":I
    move-object/from16 v0, p0

    iget v2, v0, mGapStart:I

    move/from16 v0, v19

    if-le v0, v2, :cond_1c

    .line 879
    move-object/from16 v0, p0

    iget v2, v0, mGapLength:I

    sub-int v19, v19, v2

    .line 881
    :cond_1c
    move/from16 v0, v19

    move/from16 v1, p1

    if-lt v0, v1, :cond_32

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    .line 882
    invoke-direct/range {v2 .. v8}, getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I

    move-result p6

    .line 885
    .end local v6    # "left":I
    .end local v19    # "spanMax":I
    :cond_32
    move-object/from16 v0, p0

    iget v2, v0, mSpanCount:I

    move/from16 v0, p4

    if-lt v0, v2, :cond_3d

    move/from16 v14, p6

    .line 924
    .end local p6    # "count":I
    .local v14, "count":I
    :goto_3c
    return v14

    .line 886
    .end local v14    # "count":I
    .restart local p6    # "count":I
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, mSpanStarts:[I

    aget v20, v2, p4

    .line 887
    .local v20, "spanStart":I
    move-object/from16 v0, p0

    iget v2, v0, mGapStart:I

    move/from16 v0, v20

    if-le v0, v2, :cond_51

    .line 888
    move-object/from16 v0, p0

    iget v2, v0, mGapLength:I

    sub-int v20, v20, v2

    .line 890
    :cond_51
    move/from16 v0, v20

    move/from16 v1, p2

    if-gt v0, v1, :cond_ee

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, mSpanEnds:[I

    aget v18, v2, p4

    .line 892
    .local v18, "spanEnd":I
    move-object/from16 v0, p0

    iget v2, v0, mGapStart:I

    move/from16 v0, v18

    if-le v0, v2, :cond_6b

    .line 893
    move-object/from16 v0, p0

    iget v2, v0, mGapLength:I

    sub-int v18, v18, v2

    .line 895
    :cond_6b
    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_cf

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_89

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_89

    move/from16 v0, v20

    move/from16 v1, p2

    if-eq v0, v1, :cond_cf

    move/from16 v0, v18

    move/from16 v1, p1

    if-eq v0, v1, :cond_cf

    :cond_89
    move-object/from16 v0, p0

    iget-object v2, v0, mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, mSpanFlags:[I

    aget v2, v2, p4

    const/high16 v3, 0xff0000

    and-int v17, v2, v3

    .line 900
    .local v17, "prio":I
    if-eqz v17, :cond_f5

    .line 903
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_a4
    move/from16 v0, p6

    if-ge v15, v0, :cond_ba

    .line 904
    aget-object v2, p5, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    const/high16 v3, 0xff0000

    and-int v16, v2, v3

    .line 906
    .local v16, "p":I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_f2

    .line 911
    .end local v16    # "p":I
    :cond_ba
    add-int/lit8 v2, v15, 0x1

    sub-int v3, p6, v15

    move-object/from16 v0, p5

    move-object/from16 v1, p5

    invoke-static {v0, v15, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    aput-object v2, p5, v15

    .line 918
    .end local v15    # "j":I
    :goto_cd
    add-int/lit8 p6, p6, 0x1

    .line 920
    .end local v17    # "prio":I
    :cond_cf
    move-object/from16 v0, p5

    array-length v2, v0

    move/from16 v0, p6

    if-ge v0, v2, :cond_ee

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_ee

    .line 921
    invoke-static/range {p4 .. p4}, rightChild(I)I

    move-result v11

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v7 .. v13}, getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I

    move-result p6

    .end local v18    # "spanEnd":I
    :cond_ee
    move/from16 v14, p6

    .line 924
    .end local p6    # "count":I
    .restart local v14    # "count":I
    goto/16 :goto_3c

    .line 903
    .end local v14    # "count":I
    .restart local v15    # "j":I
    .restart local v16    # "p":I
    .restart local v17    # "prio":I
    .restart local v18    # "spanEnd":I
    .restart local p6    # "count":I
    :cond_f2
    add-int/lit8 v15, v15, 0x1

    goto :goto_a4

    .line 916
    .end local v15    # "j":I
    .end local v16    # "p":I
    :cond_f5
    move-object/from16 v0, p0

    iget-object v2, v0, mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    aput-object v2, p5, p6

    goto :goto_cd
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .registers 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 573
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_20

    move-object v4, p0

    .line 574
    check-cast v4, Landroid/text/Spanned;

    .line 575
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, p1, p1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 576
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 577
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_20

    .line 578
    aget-object v3, v5, v1

    .line 579
    .local v3, "span":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 580
    .local v0, "flags":I
    const/16 v6, 0x21

    if-eq v0, v6, :cond_1d

    const/4 v6, 0x1

    .line 583
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :goto_1c
    return v6

    .line 577
    .restart local v0    # "flags":I
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "span":Ljava/lang/Object;
    .restart local v4    # "spanned":Landroid/text/Spanned;
    .restart local v5    # "spans":[Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 583
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_20
    const/4 v6, 0x0

    goto :goto_1c
.end method

.method private invalidateIndex(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 1527
    iget v0, p0, mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, mLowWaterMark:I

    .line 1528
    return-void
.end method

.method private static leftChild(I)I
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 1449
    add-int/lit8 v0, p0, 0x1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private moveGapTo(I)V
    .registers 14
    .param p1, "where"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 163
    iget v6, p0, mGapStart:I

    if-ne p1, v6, :cond_7

    .line 211
    :goto_6
    return-void

    .line 166
    :cond_7
    invoke-virtual {p0}, length()I

    move-result v6

    if-ne p1, v6, :cond_57

    const/4 v0, 0x1

    .line 168
    .local v0, "atEnd":Z
    :goto_e
    iget v6, p0, mGapStart:I

    if-ge p1, v6, :cond_59

    .line 169
    iget v6, p0, mGapStart:I

    sub-int v4, v6, p1

    .line 170
    .local v4, "overlap":I
    iget-object v6, p0, mText:[C

    iget-object v7, p0, mText:[C

    iget v8, p0, mGapStart:I

    iget v9, p0, mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 177
    :goto_23
    iget v6, p0, mSpanCount:I

    if-eqz v6, :cond_98

    .line 178
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    iget v6, p0, mSpanCount:I

    if-ge v3, v6, :cond_91

    .line 179
    iget-object v6, p0, mSpanStarts:[I

    aget v5, v6, v3

    .line 180
    .local v5, "start":I
    iget-object v6, p0, mSpanEnds:[I

    aget v1, v6, v3

    .line 182
    .local v1, "end":I
    iget v6, p0, mGapStart:I

    if-le v5, v6, :cond_3b

    .line 183
    iget v6, p0, mGapLength:I

    sub-int/2addr v5, v6

    .line 184
    :cond_3b
    if-le v5, p1, :cond_6b

    .line 185
    iget v6, p0, mGapLength:I

    add-int/2addr v5, v6

    .line 193
    :cond_40
    :goto_40
    iget v6, p0, mGapStart:I

    if-le v1, v6, :cond_47

    .line 194
    iget v6, p0, mGapLength:I

    sub-int/2addr v1, v6

    .line 195
    :cond_47
    if-le v1, p1, :cond_7f

    .line 196
    iget v6, p0, mGapLength:I

    add-int/2addr v1, v6

    .line 204
    :cond_4c
    :goto_4c
    iget-object v6, p0, mSpanStarts:[I

    aput v5, v6, v3

    .line 205
    iget-object v6, p0, mSpanEnds:[I

    aput v1, v6, v3

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 166
    .end local v0    # "atEnd":Z
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "overlap":I
    .end local v5    # "start":I
    :cond_57
    const/4 v0, 0x0

    goto :goto_e

    .line 172
    .restart local v0    # "atEnd":Z
    :cond_59
    iget v6, p0, mGapStart:I

    sub-int v4, p1, v6

    .line 173
    .restart local v4    # "overlap":I
    iget-object v6, p0, mText:[C

    iget v7, p0, mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, mText:[C

    iget v9, p0, mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_23

    .line 186
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_6b
    if-ne v5, p1, :cond_40

    .line 187
    iget-object v6, p0, mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .line 189
    .local v2, "flag":I
    if-eq v2, v10, :cond_7b

    if-eqz v0, :cond_40

    if-ne v2, v11, :cond_40

    .line 190
    :cond_7b
    iget v6, p0, mGapLength:I

    add-int/2addr v5, v6

    goto :goto_40

    .line 197
    .end local v2    # "flag":I
    :cond_7f
    if-ne v1, p1, :cond_4c

    .line 198
    iget-object v6, p0, mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    .line 200
    .restart local v2    # "flag":I
    if-eq v2, v10, :cond_8d

    if-eqz v0, :cond_4c

    if-ne v2, v11, :cond_4c

    .line 201
    :cond_8d
    iget v6, p0, mGapLength:I

    add-int/2addr v1, v6

    goto :goto_4c

    .line 207
    .end local v1    # "end":I
    .end local v2    # "flag":I
    .end local v5    # "start":I
    :cond_91
    invoke-direct {p0}, treeRoot()I

    move-result v6

    invoke-direct {p0, v6}, calcMax(I)I

    .line 210
    .end local v3    # "i":I
    :cond_98
    iput p1, p0, mGapStart:I

    goto/16 :goto_6
.end method

.method private nextSpanTransitionRec(IILjava/lang/Class;I)I
    .registers 9
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .prologue
    .line 941
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_16

    .line 943
    invoke-static {p4}, leftChild(I)I

    move-result v1

    .line 944
    .local v1, "left":I
    iget-object v3, p0, mSpanMax:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, resolveGap(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 945
    invoke-direct {p0, p1, p2, p3, v1}, nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 948
    .end local v1    # "left":I
    :cond_16
    iget v3, p0, mSpanCount:I

    if-ge p4, v3, :cond_56

    .line 949
    iget-object v3, p0, mSpanStarts:[I

    aget v3, v3, p4

    invoke-direct {p0, v3}, resolveGap(I)I

    move-result v2

    .line 950
    .local v2, "st":I
    iget-object v3, p0, mSpanEnds:[I

    aget v3, v3, p4

    invoke-direct {p0, v3}, resolveGap(I)I

    move-result v0

    .line 951
    .local v0, "en":I
    if-le v2, p1, :cond_39

    if-ge v2, p2, :cond_39

    iget-object v3, p0, mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 952
    move p2, v2

    .line 953
    :cond_39
    if-le v0, p1, :cond_48

    if-ge v0, p2, :cond_48

    iget-object v3, p0, mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 954
    move p2, v0

    .line 955
    :cond_48
    if-ge v2, p2, :cond_56

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_56

    .line 956
    invoke-static {p4}, rightChild(I)I

    move-result v3

    invoke-direct {p0, p1, p2, p3, v3}, nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 960
    .end local v0    # "en":I
    .end local v2    # "st":I
    :cond_56
    return p2
.end method

.method private static region(II)Ljava/lang/String;
    .registers 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSpan(I)V
    .registers 9
    .param p1, "i"    # I

    .prologue
    .line 467
    iget-object v4, p0, mSpans:[Ljava/lang/Object;

    aget-object v2, v4, p1

    .line 469
    .local v2, "object":Ljava/lang/Object;
    iget-object v4, p0, mSpanStarts:[I

    aget v3, v4, p1

    .line 470
    .local v3, "start":I
    iget-object v4, p0, mSpanEnds:[I

    aget v1, v4, p1

    .line 472
    .local v1, "end":I
    iget v4, p0, mGapStart:I

    if-le v3, v4, :cond_13

    iget v4, p0, mGapLength:I

    sub-int/2addr v3, v4

    .line 473
    :cond_13
    iget v4, p0, mGapStart:I

    if-le v1, v4, :cond_1a

    iget v4, p0, mGapLength:I

    sub-int/2addr v1, v4

    .line 475
    :cond_1a
    iget v4, p0, mSpanCount:I

    add-int/lit8 v5, p1, 0x1

    sub-int v0, v4, v5

    .line 476
    .local v0, "count":I
    iget-object v4, p0, mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iget-object v4, p0, mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 478
    iget-object v4, p0, mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 479
    iget-object v4, p0, mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 481
    iget v4, p0, mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mSpanCount:I

    .line 483
    invoke-direct {p0, p1}, invalidateIndex(I)V

    .line 484
    iget-object v4, p0, mSpans:[Ljava/lang/Object;

    iget v5, p0, mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 487
    invoke-direct {p0}, restoreInvariants()V

    .line 489
    invoke-direct {p0, v2, v3, v1}, sendSpanRemoved(Ljava/lang/Object;II)V

    .line 490
    return-void
.end method

.method private removeSpansForChange(IIZI)Z
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textIsRemoved"    # Z
    .param p4, "i"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 296
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1b

    .line 298
    iget-object v2, p0, mSpanMax:[I

    aget v2, v2, p4

    invoke-direct {p0, v2}, resolveGap(I)I

    move-result v2

    if-lt v2, p1, :cond_1b

    invoke-static {p4}, leftChild(I)I

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, removeSpansForChange(IIZI)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 317
    :cond_1a
    :goto_1a
    return v0

    .line 303
    :cond_1b
    iget v2, p0, mSpanCount:I

    if-ge p4, v2, :cond_82

    .line 304
    iget-object v2, p0, mSpanFlags:[I

    aget v2, v2, p4

    and-int/lit8 v2, v2, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_68

    iget-object v2, p0, mSpanStarts:[I

    aget v2, v2, p4

    if-lt v2, p1, :cond_68

    iget-object v2, p0, mSpanStarts:[I

    aget v2, v2, p4

    iget v3, p0, mGapStart:I

    iget v4, p0, mGapLength:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_68

    iget-object v2, p0, mSpanEnds:[I

    aget v2, v2, p4

    if-lt v2, p1, :cond_68

    iget-object v2, p0, mSpanEnds:[I

    aget v2, v2, p4

    iget v3, p0, mGapStart:I

    iget v4, p0, mGapLength:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_68

    if-nez p3, :cond_5b

    iget-object v2, p0, mSpanStarts:[I

    aget v2, v2, p4

    if-gt v2, p1, :cond_5b

    iget-object v2, p0, mSpanEnds:[I

    aget v2, v2, p4

    iget v3, p0, mGapStart:I

    if-ge v2, v3, :cond_68

    .line 310
    :cond_5b
    iget-object v1, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v2, p0, mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-direct {p0, p4}, removeSpan(I)V

    goto :goto_1a

    .line 314
    :cond_68
    iget-object v2, p0, mSpanStarts:[I

    aget v2, v2, p4

    invoke-direct {p0, v2}, resolveGap(I)I

    move-result v2

    if-gt v2, p2, :cond_80

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_80

    invoke-static {p4}, rightChild(I)I

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, removeSpansForChange(IIZI)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_80
    move v0, v1

    goto :goto_1a

    :cond_82
    move v0, v1

    .line 317
    goto :goto_1a
.end method

.method private resizeFor(I)V
    .registers 11
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 136
    iget-object v6, p0, mText:[C

    array-length v5, v6

    .line 137
    .local v5, "oldLength":I
    add-int/lit8 v6, p1, 0x1

    if-gt v6, v5, :cond_9

    .line 160
    :cond_8
    :goto_8
    return-void

    .line 141
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v4

    .line 142
    .local v4, "newText":[C
    iget-object v6, p0, mText:[C

    iget v7, p0, mGapStart:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 143
    array-length v3, v4

    .line 144
    .local v3, "newLength":I
    sub-int v1, v3, v5

    .line 145
    .local v1, "delta":I
    iget v6, p0, mGapStart:I

    iget v7, p0, mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 146
    .local v0, "after":I
    iget-object v6, p0, mText:[C

    sub-int v7, v5, v0

    sub-int v8, v3, v0

    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 147
    iput-object v4, p0, mText:[C

    .line 149
    iget v6, p0, mGapLength:I

    add-int/2addr v6, v1

    iput v6, p0, mGapLength:I

    .line 150
    iget v6, p0, mGapLength:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_42

    .line 151
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "mGapLength < 1"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :cond_42
    iget v6, p0, mSpanCount:I

    if-eqz v6, :cond_8

    .line 154
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    iget v6, p0, mSpanCount:I

    if-ge v2, v6, :cond_6c

    .line 155
    iget-object v6, p0, mSpanStarts:[I

    aget v6, v6, v2

    iget v7, p0, mGapStart:I

    if-le v6, v7, :cond_5a

    iget-object v6, p0, mSpanStarts:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 156
    :cond_5a
    iget-object v6, p0, mSpanEnds:[I

    aget v6, v6, v2

    iget v7, p0, mGapStart:I

    if-le v6, v7, :cond_69

    iget-object v6, p0, mSpanEnds:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 154
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 158
    :cond_6c
    invoke-direct {p0}, treeRoot()I

    move-result v6

    invoke-direct {p0, v6}, calcMax(I)I

    goto :goto_8
.end method

.method private resolveGap(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 782
    iget v0, p0, mGapStart:I

    if-le p1, v0, :cond_7

    iget v0, p0, mGapLength:I

    sub-int/2addr p1, v0

    .end local p1    # "i":I
    :cond_7
    return p1
.end method

.method private restoreInvariants()V
    .registers 11

    .prologue
    .line 1482
    iget v7, p0, mSpanCount:I

    if-nez v7, :cond_5

    .line 1523
    :goto_4
    return-void

    .line 1487
    :cond_5
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_6
    iget v7, p0, mSpanCount:I

    if-ge v3, v7, :cond_71

    .line 1488
    iget-object v7, p0, mSpanStarts:[I

    aget v7, v7, v3

    iget-object v8, p0, mSpanStarts:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    if-ge v7, v8, :cond_6e

    .line 1489
    iget-object v7, p0, mSpans:[Ljava/lang/Object;

    aget-object v5, v7, v3

    .line 1490
    .local v5, "span":Ljava/lang/Object;
    iget-object v7, p0, mSpanStarts:[I

    aget v6, v7, v3

    .line 1491
    .local v6, "start":I
    iget-object v7, p0, mSpanEnds:[I

    aget v0, v7, v3

    .line 1492
    .local v0, "end":I
    iget-object v7, p0, mSpanFlags:[I

    aget v2, v7, v3

    .line 1493
    .local v2, "flags":I
    move v4, v3

    .line 1495
    .local v4, "j":I
    :cond_27
    iget-object v7, p0, mSpans:[Ljava/lang/Object;

    iget-object v8, p0, mSpans:[Ljava/lang/Object;

    add-int/lit8 v9, v4, -0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v4

    .line 1496
    iget-object v7, p0, mSpanStarts:[I

    iget-object v8, p0, mSpanStarts:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    .line 1497
    iget-object v7, p0, mSpanEnds:[I

    iget-object v8, p0, mSpanEnds:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    .line 1498
    iget-object v7, p0, mSpanFlags:[I

    iget-object v8, p0, mSpanFlags:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    .line 1499
    add-int/lit8 v4, v4, -0x1

    .line 1500
    if-lez v4, :cond_5b

    iget-object v7, p0, mSpanStarts:[I

    add-int/lit8 v8, v4, -0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_27

    .line 1501
    :cond_5b
    iget-object v7, p0, mSpans:[Ljava/lang/Object;

    aput-object v5, v7, v4

    .line 1502
    iget-object v7, p0, mSpanStarts:[I

    aput v6, v7, v4

    .line 1503
    iget-object v7, p0, mSpanEnds:[I

    aput v0, v7, v4

    .line 1504
    iget-object v7, p0, mSpanFlags:[I

    aput v2, v7, v4

    .line 1505
    invoke-direct {p0, v4}, invalidateIndex(I)V

    .line 1487
    .end local v0    # "end":I
    .end local v2    # "flags":I
    .end local v4    # "j":I
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "start":I
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1510
    :cond_71
    invoke-direct {p0}, treeRoot()I

    move-result v7

    invoke-direct {p0, v7}, calcMax(I)I

    .line 1513
    iget-object v7, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v7, :cond_83

    .line 1514
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v7, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 1516
    :cond_83
    iget v3, p0, mLowWaterMark:I

    :goto_85
    iget v7, p0, mSpanCount:I

    if-ge v3, v7, :cond_ad

    .line 1517
    iget-object v7, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v8, p0, mSpans:[Ljava/lang/Object;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1518
    .local v1, "existing":Ljava/lang/Integer;
    if-eqz v1, :cond_9d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v3, :cond_aa

    .line 1519
    :cond_9d
    iget-object v7, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v8, p0, mSpans:[Ljava/lang/Object;

    aget-object v8, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    :cond_aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 1522
    .end local v1    # "existing":Ljava/lang/Integer;
    :cond_ad
    const v7, 0x7fffffff

    iput v7, p0, mLowWaterMark:I

    goto/16 :goto_4
.end method

.method private static rightChild(I)I
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 1453
    add-int/lit8 v0, p0, 0x1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .registers 5
    .param p1, "watchers"    # [Landroid/text/TextWatcher;

    .prologue
    .line 1043
    array-length v1, p1

    .line 1045
    .local v1, "n":I
    iget v2, p0, mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mTextWatcherDepth:I

    .line 1046
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_12

    .line 1047
    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 1046
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1049
    :cond_12
    iget v2, p0, mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mTextWatcherDepth:I

    .line 1050
    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 1023
    array-length v1, p1

    .line 1025
    .local v1, "n":I
    iget v2, p0, mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mTextWatcherDepth:I

    .line 1026
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_12

    .line 1027
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 1026
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1029
    :cond_12
    iget v2, p0, mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mTextWatcherDepth:I

    .line 1030
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .registers 8
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1053
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 1054
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 1056
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_14

    .line 1057
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1059
    :cond_14
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "oldStart"    # I
    .param p3, "oldEnd"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 1073
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .line 1075
    .local v9, "spanWatchers":[Landroid/text/SpanWatcher;
    array-length v8, v9

    .line 1076
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1a
    if-ge v7, v8, :cond_2a

    .line 1077
    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 1076
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 1079
    :cond_2a
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 8
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1062
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 1063
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 1065
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_14

    .line 1066
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1065
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1068
    :cond_14
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 1033
    array-length v1, p1

    .line 1035
    .local v1, "n":I
    iget v2, p0, mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mTextWatcherDepth:I

    .line 1036
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_12

    .line 1037
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1036
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1039
    :cond_12
    iget v2, p0, mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mTextWatcherDepth:I

    .line 1040
    return-void
.end method

.method private sendToSpanWatchers(III)V
    .registers 16
    .param p1, "replaceStart"    # I
    .param p2, "replaceEnd"    # I
    .param p3, "nbNewChars"    # I

    .prologue
    const v11, 0x8000

    .line 587
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    iget v0, p0, mSpanCount:I

    if-ge v6, v0, :cond_75

    .line 588
    iget-object v0, p0, mSpanFlags:[I

    aget v9, v0, v6

    .line 591
    .local v9, "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_13

    .line 587
    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 592
    :cond_13
    iget-object v0, p0, mSpanStarts:[I

    aget v4, v0, v6

    .line 593
    .local v4, "spanStart":I
    iget-object v0, p0, mSpanEnds:[I

    aget v5, v0, v6

    .line 594
    .local v5, "spanEnd":I
    iget v0, p0, mGapStart:I

    if-le v4, v0, :cond_22

    iget v0, p0, mGapLength:I

    sub-int/2addr v4, v0

    .line 595
    :cond_22
    iget v0, p0, mGapStart:I

    if-le v5, v0, :cond_29

    iget v0, p0, mGapLength:I

    sub-int/2addr v5, v0

    .line 597
    :cond_29
    add-int v7, p2, p3

    .line 598
    .local v7, "newReplaceEnd":I
    const/4 v8, 0x0

    .line 600
    .local v8, "spanChanged":Z
    move v2, v4

    .line 601
    .local v2, "previousSpanStart":I
    if-le v4, v7, :cond_4f

    .line 602
    if-eqz p3, :cond_33

    .line 603
    sub-int/2addr v2, p3

    .line 604
    const/4 v8, 0x1

    .line 619
    :cond_33
    :goto_33
    move v3, v5

    .line 620
    .local v3, "previousSpanEnd":I
    if-le v5, v7, :cond_63

    .line 621
    if-eqz p3, :cond_3a

    .line 622
    sub-int/2addr v3, p3

    .line 623
    const/4 v8, 0x1

    .line 636
    :cond_3a
    :goto_3a
    if-eqz v8, :cond_44

    .line 637
    iget-object v0, p0, mSpans:[Ljava/lang/Object;

    aget-object v1, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 639
    :cond_44
    iget-object v0, p0, mSpanFlags:[I

    aget v1, v0, v6

    const v10, -0xf001

    and-int/2addr v1, v10

    aput v1, v0, v6

    goto :goto_10

    .line 606
    .end local v3    # "previousSpanEnd":I
    :cond_4f
    if-lt v4, p1, :cond_33

    .line 608
    if-ne v4, p1, :cond_59

    and-int/lit16 v0, v9, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_33

    :cond_59
    if-ne v4, v7, :cond_61

    and-int/lit16 v0, v9, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_33

    .line 615
    :cond_61
    const/4 v8, 0x1

    goto :goto_33

    .line 625
    .restart local v3    # "previousSpanEnd":I
    :cond_63
    if-lt v5, p1, :cond_3a

    .line 627
    if-ne v5, p1, :cond_6d

    and-int/lit16 v0, v9, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_3a

    :cond_6d
    if-ne v5, v7, :cond_73

    and-int v0, v9, v11

    if-eq v0, v11, :cond_3a

    .line 632
    :cond_73
    const/4 v8, 0x1

    goto :goto_3a

    .line 643
    .end local v2    # "previousSpanStart":I
    .end local v3    # "previousSpanEnd":I
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    .end local v7    # "newReplaceEnd":I
    .end local v8    # "spanChanged":Z
    .end local v9    # "spanFlags":I
    :cond_75
    const/4 v6, 0x0

    :goto_76
    iget v0, p0, mSpanCount:I

    if-ge v6, v0, :cond_aa

    .line 644
    iget-object v0, p0, mSpanFlags:[I

    aget v9, v0, v6

    .line 645
    .restart local v9    # "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_a7

    .line 646
    iget-object v0, p0, mSpanFlags:[I

    aget v1, v0, v6

    and-int/lit16 v1, v1, -0x801

    aput v1, v0, v6

    .line 647
    iget-object v0, p0, mSpanStarts:[I

    aget v4, v0, v6

    .line 648
    .restart local v4    # "spanStart":I
    iget-object v0, p0, mSpanEnds:[I

    aget v5, v0, v6

    .line 649
    .restart local v5    # "spanEnd":I
    iget v0, p0, mGapStart:I

    if-le v4, v0, :cond_99

    iget v0, p0, mGapLength:I

    sub-int/2addr v4, v0

    .line 650
    :cond_99
    iget v0, p0, mGapStart:I

    if-le v5, v0, :cond_a0

    iget v0, p0, mGapLength:I

    sub-int/2addr v5, v0

    .line 651
    :cond_a0
    iget-object v0, p0, mSpans:[Ljava/lang/Object;

    aget-object v0, v0, v6

    invoke-direct {p0, v0, v4, v5}, sendSpanAdded(Ljava/lang/Object;II)V

    .line 643
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    :cond_a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 654
    .end local v9    # "spanFlags":I
    :cond_aa
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .registers 23
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I

    .prologue
    .line 669
    const-string/jumbo v3, "setSpan"

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, checkRange(Ljava/lang/String;II)V

    .line 671
    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v12, v3, 0x4

    .line 672
    .local v12, "flagsStart":I
    const/4 v3, 0x3

    if-ne v12, v3, :cond_33

    .line 673
    if-eqz p3, :cond_33

    invoke-virtual/range {p0 .. p0}, length()I

    move-result v3

    move/from16 v0, p3

    if-eq v0, v3, :cond_33

    .line 674
    add-int/lit8 v3, p3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, charAt(I)C

    move-result v9

    .line 676
    .local v9, "c":C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_33

    .line 677
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 681
    .end local v9    # "c":C
    :cond_33
    and-int/lit8 v11, p5, 0xf

    .line 682
    .local v11, "flagsEnd":I
    const/4 v3, 0x3

    if-ne v11, v3, :cond_56

    .line 683
    if-eqz p4, :cond_56

    invoke-virtual/range {p0 .. p0}, length()I

    move-result v3

    move/from16 v0, p4

    if-eq v0, v3, :cond_56

    .line 684
    add-int/lit8 v3, p4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, charAt(I)C

    move-result v9

    .line 686
    .restart local v9    # "c":C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_56

    .line 687
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 692
    .end local v9    # "c":C
    :cond_56
    const/4 v3, 0x2

    if-ne v12, v3, :cond_6c

    const/4 v3, 0x1

    if-ne v11, v3, :cond_6c

    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_6c

    .line 693
    if-eqz p1, :cond_6b

    .line 694
    const-string v3, "SpannableStringBuilder"

    const-string v4, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_6b
    :goto_6b
    return-void

    .line 702
    :cond_6c
    move/from16 v7, p3

    .line 703
    .local v7, "nstart":I
    move/from16 v8, p4

    .line 705
    .local v8, "nend":I
    move-object/from16 v0, p0

    iget v3, v0, mGapStart:I

    move/from16 v0, p3

    if-le v0, v3, :cond_f0

    .line 706
    move-object/from16 v0, p0

    iget v3, v0, mGapLength:I

    add-int p3, p3, v3

    .line 712
    :cond_7e
    :goto_7e
    move-object/from16 v0, p0

    iget v3, v0, mGapStart:I

    move/from16 v0, p4

    if-le v0, v3, :cond_10e

    .line 713
    move-object/from16 v0, p0

    iget v3, v0, mGapLength:I

    add-int p4, p4, v3

    .line 719
    :cond_8c
    :goto_8c
    move-object/from16 v0, p0

    iget v10, v0, mSpanCount:I

    .line 720
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSpans:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 722
    .local v16, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v3, :cond_12c

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 724
    .local v14, "index":Ljava/lang/Integer;
    if-eqz v14, :cond_12c

    .line 725
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 726
    .local v13, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanStarts:[I

    aget v5, v3, v13

    .line 727
    .local v5, "ostart":I
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanEnds:[I

    aget v6, v3, v13

    .line 729
    .local v6, "oend":I
    move-object/from16 v0, p0

    iget v3, v0, mGapStart:I

    if-le v5, v3, :cond_c5

    .line 730
    move-object/from16 v0, p0

    iget v3, v0, mGapLength:I

    sub-int/2addr v5, v3

    .line 731
    :cond_c5
    move-object/from16 v0, p0

    iget v3, v0, mGapStart:I

    if-le v6, v3, :cond_d0

    .line 732
    move-object/from16 v0, p0

    iget v3, v0, mGapLength:I

    sub-int/2addr v6, v3

    .line 734
    :cond_d0
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanStarts:[I

    aput p3, v3, v13

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanEnds:[I

    aput p4, v3, v13

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanFlags:[I

    aput p5, v3, v13

    .line 738
    if-eqz p1, :cond_6b

    .line 739
    invoke-direct/range {p0 .. p0}, restoreInvariants()V

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 740
    invoke-direct/range {v3 .. v8}, sendSpanChanged(Ljava/lang/Object;IIII)V

    goto/16 :goto_6b

    .line 707
    .end local v5    # "ostart":I
    .end local v6    # "oend":I
    .end local v10    # "count":I
    .end local v13    # "i":I
    .end local v14    # "index":Ljava/lang/Integer;
    .end local v16    # "spans":[Ljava/lang/Object;
    :cond_f0
    move-object/from16 v0, p0

    iget v3, v0, mGapStart:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_7e

    .line 708
    const/4 v3, 0x2

    if-eq v12, v3, :cond_106

    const/4 v3, 0x3

    if-ne v12, v3, :cond_7e

    invoke-virtual/range {p0 .. p0}, length()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_7e

    .line 709
    :cond_106
    move-object/from16 v0, p0

    iget v3, v0, mGapLength:I

    add-int p3, p3, v3

    goto/16 :goto_7e

    .line 714
    :cond_10e
    move-object/from16 v0, p0

    iget v3, v0, mGapStart:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_8c

    .line 715
    const/4 v3, 0x2

    if-eq v11, v3, :cond_124

    const/4 v3, 0x3

    if-ne v11, v3, :cond_8c

    invoke-virtual/range {p0 .. p0}, length()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_8c

    .line 716
    :cond_124
    move-object/from16 v0, p0

    iget v3, v0, mGapLength:I

    add-int p4, p4, v3

    goto/16 :goto_8c

    .line 747
    .restart local v10    # "count":I
    .restart local v16    # "spans":[Ljava/lang/Object;
    :cond_12c
    move-object/from16 v0, p0

    iget-object v3, v0, mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, mSpanCount:I

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mSpans:[Ljava/lang/Object;

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanStarts:[I

    move-object/from16 v0, p0

    iget v4, v0, mSpanCount:I

    move/from16 v0, p3

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mSpanStarts:[I

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanEnds:[I

    move-object/from16 v0, p0

    iget v4, v0, mSpanCount:I

    move/from16 v0, p4

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mSpanEnds:[I

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanFlags:[I

    move-object/from16 v0, p0

    iget v4, v0, mSpanCount:I

    move/from16 v0, p5

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mSpanFlags:[I

    .line 751
    move-object/from16 v0, p0

    iget v3, v0, mSpanCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, invalidateIndex(I)V

    .line 752
    move-object/from16 v0, p0

    iget v3, v0, mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, mSpanCount:I

    .line 756
    invoke-direct/range {p0 .. p0}, treeRoot()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v15, v3, 0x1

    .line 757
    .local v15, "sizeOfMax":I
    move-object/from16 v0, p0

    iget-object v3, v0, mSpanMax:[I

    array-length v3, v3

    if-ge v3, v15, :cond_19c

    .line 758
    new-array v3, v15, [I

    move-object/from16 v0, p0

    iput-object v3, v0, mSpanMax:[I

    .line 761
    :cond_19c
    if-eqz p1, :cond_6b

    .line 762
    invoke-direct/range {p0 .. p0}, restoreInvariants()V

    .line 763
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8}, sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_6b
.end method

.method private treeRoot()I
    .registers 2

    .prologue
    .line 1444
    iget v0, p0, mSpanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .registers 9
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "nbNewChars"    # I
    .param p4, "flag"    # I
    .param p5, "atEnd"    # Z
    .param p6, "textIsRemoved"    # Z

    .prologue
    .line 435
    if-lt p1, p2, :cond_2d

    iget v0, p0, mGapStart:I

    iget v1, p0, mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2d

    .line 436
    const/4 v0, 0x2

    if-ne p4, v0, :cond_17

    .line 441
    if-nez p6, :cond_10

    if-le p1, p2, :cond_2d

    .line 442
    :cond_10
    iget v0, p0, mGapStart:I

    iget v1, p0, mGapLength:I

    add-int p2, v0, v1

    .line 462
    .end local p2    # "start":I
    :cond_16
    :goto_16
    return p2

    .line 445
    .restart local p2    # "start":I
    :cond_17
    const/4 v0, 0x3

    if-ne p4, v0, :cond_23

    .line 446
    if-eqz p5, :cond_2d

    .line 447
    iget v0, p0, mGapStart:I

    iget v1, p0, mGapLength:I

    add-int p2, v0, v1

    goto :goto_16

    .line 453
    :cond_23
    if-nez p6, :cond_16

    iget v0, p0, mGapStart:I

    sub-int/2addr v0, p3

    if-lt p1, v0, :cond_16

    .line 457
    iget p2, p0, mGapStart:I

    goto :goto_16

    :cond_2d
    move p2, p1

    .line 462
    goto :goto_16
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_7

    .line 105
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 107
    .end local p0    # "source":Ljava/lang/CharSequence;
    :goto_6
    return-object p0

    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, <init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_6
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .registers 3
    .param p1, "x0"    # C

    .prologue
    .line 34
    invoke-virtual {p0, p1}, append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .registers 3
    .param p1, "text"    # C

    .prologue
    .line 291
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 264
    invoke-virtual {p0}, length()I

    move-result v1

    .line 265
    .local v1, "length":I
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 285
    invoke-virtual {p0}, length()I

    move-result v1

    .local v1, "length":I
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 286
    invoke-virtual/range {v0 .. v5}, replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 277
    invoke-virtual {p0}, length()I

    move-result v0

    .line 278
    .local v0, "start":I
    invoke-virtual {p0, p1}, append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 279
    invoke-virtual {p0}, length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, setSpan(Ljava/lang/Object;III)V

    .line 280
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .registers 6
    .param p1, "where"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, length()I

    move-result v0

    .line 116
    .local v0, "len":I
    if-gez p1, :cond_25

    .line 117
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_25
    if-lt p1, v0, :cond_4a

    .line 119
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_4a
    iget v1, p0, mGapStart:I

    if-lt p1, v1, :cond_56

    .line 123
    iget-object v1, p0, mText:[C

    iget v2, p0, mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    .line 125
    :goto_55
    return v1

    :cond_56
    iget-object v1, p0, mText:[C

    aget-char v1, v1, p1

    goto :goto_55
.end method

.method public clear()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 235
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v0, p0, mText:[C

    array-length v0, v0

    if-ge v6, v0, :cond_e

    .line 236
    iget-object v0, p0, mText:[C

    aput-char v1, v0, v6

    .line 235
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 237
    :cond_e
    invoke-virtual {p0}, length()I

    move-result v2

    const-string v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 238
    return-void
.end method

.method public clearSpans()V
    .registers 7

    .prologue
    .line 242
    iget v4, p0, mSpanCount:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_2d

    .line 243
    iget-object v4, p0, mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 244
    .local v3, "what":Ljava/lang/Object;
    iget-object v4, p0, mSpanStarts:[I

    aget v2, v4, v0

    .line 245
    .local v2, "ostart":I
    iget-object v4, p0, mSpanEnds:[I

    aget v1, v4, v0

    .line 247
    .local v1, "oend":I
    iget v4, p0, mGapStart:I

    if-le v2, v4, :cond_19

    .line 248
    iget v4, p0, mGapLength:I

    sub-int/2addr v2, v4

    .line 249
    :cond_19
    iget v4, p0, mGapStart:I

    if-le v1, v4, :cond_20

    .line 250
    iget v4, p0, mGapLength:I

    sub-int/2addr v1, v4

    .line 252
    :cond_20
    iput v0, p0, mSpanCount:I

    .line 253
    iget-object v4, p0, mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 255
    invoke-direct {p0, v3, v2, v1}, sendSpanRemoved(Ljava/lang/Object;II)V

    .line 242
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 257
    .end local v1    # "oend":I
    .end local v2    # "ostart":I
    .end local v3    # "what":Ljava/lang/Object;
    :cond_2d
    iget-object v4, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v4, :cond_36

    .line 258
    iget-object v4, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->clear()V

    .line 260
    :cond_36
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 225
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 227
    .local v6, "ret":Landroid/text/SpannableStringBuilder;
    iget v0, p0, mGapLength:I

    invoke-virtual {p0}, length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1c

    .line 228
    invoke-virtual {p0}, length()I

    move-result v0

    invoke-direct {p0, v0}, resizeFor(I)V

    .line 230
    :cond_1c
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 1190
    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, checkRange(Ljava/lang/String;II)V

    .line 1192
    iget v0, p0, mGapStart:I

    if-gt p3, v0, :cond_17

    .line 1193
    iget-object v1, p0, mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1203
    :goto_16
    return-void

    .line 1194
    :cond_17
    iget v0, p0, mGapStart:I

    if-lt p2, v0, :cond_2b

    .line 1195
    iget-object v1, p0, mText:[C

    iget v0, p0, mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_16

    .line 1197
    :cond_2b
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1199
    .local v1, "buf":[C
    invoke-virtual {p0, p2, p3, v1, v2}, getChars(II[CI)V

    .line 1200
    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1201
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_16
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V
    .registers 20
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1212
    const-string v0, "drawTextRun"

    invoke-direct {p0, v0, p2, p3}, checkRange(Ljava/lang/String;II)V

    .line 1214
    sub-int v5, p5, p4

    .line 1215
    .local v5, "contextLen":I
    sub-int v3, p3, p2

    .line 1216
    .local v3, "len":I
    iget v0, p0, mGapStart:I

    if-gt p5, v0, :cond_1e

    .line 1217
    iget-object v1, p0, mText:[C

    move-object v0, p1

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1227
    :goto_1d
    return-void

    .line 1218
    :cond_1e
    iget v0, p0, mGapStart:I

    if-lt p4, v0, :cond_39

    .line 1219
    iget-object v1, p0, mText:[C

    iget v0, p0, mGapLength:I

    add-int v2, p2, v0

    iget v0, p0, mGapLength:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_1d

    .line 1222
    :cond_39
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1223
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p4, p5, v1, v0}, getChars(II[CI)V

    .line 1224
    sub-int v2, p2, p4

    const/4 v4, 0x0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1225
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_1d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 1372
    instance-of v6, p1, Landroid/text/Spanned;

    if-eqz v6, :cond_52

    invoke-virtual {p0}, toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    move-object v1, p1

    .line 1374
    check-cast v1, Landroid/text/Spanned;

    .line 1376
    .local v1, "other":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1377
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v6, p0, mSpanCount:I

    array-length v7, v3

    if-ne v6, v7, :cond_52

    .line 1378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget v6, p0, mSpanCount:I

    if-ge v0, v6, :cond_7a

    .line 1379
    iget-object v6, p0, mSpans:[Ljava/lang/Object;

    aget-object v4, v6, v0

    .line 1380
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    .line 1381
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_53

    .line 1382
    if-ne v1, v2, :cond_52

    invoke-virtual {p0, v4}, getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    invoke-virtual {p0, v4}, getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    invoke-virtual {p0, v4}, getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_77

    .line 1398
    .end local v0    # "i":I
    .end local v1    # "other":Landroid/text/Spanned;
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v3    # "otherSpans":[Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_52
    :goto_52
    return v5

    .line 1388
    .restart local v0    # "i":I
    .restart local v1    # "other":Landroid/text/Spanned;
    .restart local v2    # "otherSpan":Ljava/lang/Object;
    .restart local v3    # "otherSpans":[Ljava/lang/Object;
    .restart local v4    # "thisSpan":Ljava/lang/Object;
    :cond_53
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {p0, v4}, getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    invoke-virtual {p0, v4}, getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    invoke-virtual {p0, v4}, getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    .line 1378
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1395
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_7a
    const/4 v5, 0x1

    goto :goto_52
.end method

.method public getChars(II[CI)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 976
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, checkRange(Ljava/lang/String;II)V

    .line 978
    iget v0, p0, mGapStart:I

    if-gt p2, v0, :cond_11

    .line 979
    iget-object v0, p0, mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 988
    :goto_10
    return-void

    .line 980
    :cond_11
    iget v0, p0, mGapStart:I

    if-lt p1, v0, :cond_20

    .line 981
    iget-object v0, p0, mText:[C

    iget v1, p0, mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_10

    .line 983
    :cond_20
    iget-object v0, p0, mText:[C

    iget v1, p0, mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 984
    iget-object v0, p0, mText:[C

    iget v1, p0, mGapStart:I

    iget v2, p0, mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_10
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 1366
    iget-object v0, p0, mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 5
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 800
    iget-object v2, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_6

    .line 802
    :cond_5
    :goto_5
    return v1

    .line 801
    :cond_6
    iget-object v2, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 802
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    iget-object v1, p0, mSpanEnds:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, resolveGap(I)I

    move-result v1

    goto :goto_5
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 5
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 810
    iget-object v2, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_6

    .line 812
    :cond_5
    :goto_5
    return v1

    .line 811
    :cond_6
    iget-object v2, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 812
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    iget-object v1, p0, mSpanFlags:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    goto :goto_5
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 5
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 790
    iget-object v2, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_6

    .line 792
    :cond_5
    :goto_5
    return v1

    .line 791
    :cond_6
    iget-object v2, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 792
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    iget-object v1, p0, mSpanStarts:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, resolveGap(I)I

    move-result v1

    goto :goto_5
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 12
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 822
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p3, :cond_6

    iget v0, p0, mSpanCount:I

    if-nez v0, :cond_b

    :cond_6
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 831
    :goto_a
    return-object v5

    .line 823
    :cond_b
    invoke-direct {p0}, treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, countSpans(IILjava/lang/Class;I)I

    move-result v7

    .line 824
    .local v7, "count":I
    if-nez v7, :cond_1a

    .line 825
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_a

    .line 829
    :cond_1a
    invoke-static {p3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    .line 830
    .local v5, "ret":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, treeRoot()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I

    goto :goto_a
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .registers 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1286
    sub-int v5, p4, p3

    .line 1287
    .local v5, "contextLen":I
    sub-int v3, p2, p1

    .line 1289
    .local v3, "len":I
    iget v0, p0, mGapStart:I

    if-gt p2, v0, :cond_18

    .line 1290
    iget-object v1, p0, mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1303
    .local v9, "ret":F
    :goto_17
    return v9

    .line 1292
    .end local v9    # "ret":F
    :cond_18
    iget v0, p0, mGapStart:I

    if-lt p1, v0, :cond_32

    .line 1293
    iget-object v1, p0, mText:[C

    iget v0, p0, mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .restart local v9    # "ret":F
    goto :goto_17

    .line 1296
    .end local v9    # "ret":F
    :cond_32
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1297
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, getChars(II[CI)V

    .line 1298
    sub-int v2, p1, p3

    const/4 v4, 0x0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1300
    .restart local v9    # "ret":F
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_17
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .registers 15
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "dir"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1337
    sub-int v3, p2, p1

    .line 1338
    .local v3, "contextLen":I
    iget v0, p0, mGapStart:I

    if-gt p2, v0, :cond_13

    .line 1339
    iget-object v1, p0, mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 1352
    .local v7, "ret":I
    :goto_12
    return v7

    .line 1341
    .end local v7    # "ret":I
    :cond_13
    iget v0, p0, mGapStart:I

    if-lt p1, v0, :cond_2d

    .line 1342
    iget-object v1, p0, mText:[C

    iget v0, p0, mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    iget v2, p0, mGapLength:I

    sub-int v7, v0, v2

    .restart local v7    # "ret":I
    goto :goto_12

    .line 1345
    .end local v7    # "ret":I
    :cond_2d
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1346
    .local v1, "buf":[C
    invoke-virtual {p0, p1, p2, v1, v2}, getChars(II[CI)V

    .line 1347
    sub-int v5, p4, p1

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    add-int v7, v0, p1

    .line 1349
    .restart local v7    # "ret":I
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public getTextWatcherDepth()I
    .registers 2

    .prologue
    .line 1019
    iget v0, p0, mTextWatcherDepth:I

    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1258
    const-string v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, checkRange(Ljava/lang/String;II)V

    .line 1262
    iget v2, p0, mGapStart:I

    if-gt p2, v2, :cond_13

    .line 1263
    iget-object v2, p0, mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1274
    .local v1, "ret":I
    :goto_12
    return v1

    .line 1264
    .end local v1    # "ret":I
    :cond_13
    iget v2, p0, mGapStart:I

    if-lt p1, v2, :cond_23

    .line 1265
    iget-object v2, p0, mText:[C

    iget v3, p0, mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_12

    .line 1267
    .end local v1    # "ret":I
    :cond_23
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1269
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, getChars(II[CI)V

    .line 1270
    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1271
    .restart local v1    # "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 1404
    invoke-virtual {p0}, toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1405
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, mSpanCount:I

    add-int v0, v3, v4

    .line 1406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget v3, p0, mSpanCount:I

    if-ge v1, v3, :cond_3c

    .line 1407
    iget-object v3, p0, mSpans:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 1408
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_21

    .line 1409
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 1411
    :cond_21
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1412
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1413
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1406
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1415
    .end local v2    # "span":Ljava/lang/Object;
    :cond_3c
    return v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 6
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 9
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 220
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 11
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 215
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, mText:[C

    array-length v0, v0

    iget v1, p0, mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1234
    const-string/jumbo v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, checkRange(Ljava/lang/String;II)V

    .line 1238
    iget v2, p0, mGapStart:I

    if-gt p2, v2, :cond_14

    .line 1239
    iget-object v2, p0, mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1250
    .local v1, "ret":F
    :goto_13
    return v1

    .line 1240
    .end local v1    # "ret":F
    :cond_14
    iget v2, p0, mGapStart:I

    if-lt p1, v2, :cond_24

    .line 1241
    iget-object v2, p0, mText:[C

    iget v3, p0, mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .restart local v1    # "ret":F
    goto :goto_13

    .line 1243
    .end local v1    # "ret":F
    :cond_24
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1245
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, getChars(II[CI)V

    .line 1246
    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1247
    .restart local v1    # "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_13
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .prologue
    .line 933
    iget v0, p0, mSpanCount:I

    if-nez v0, :cond_5

    .line 937
    .end local p2    # "limit":I
    :goto_4
    return p2

    .line 934
    .restart local p2    # "limit":I
    :cond_5
    if-nez p3, :cond_9

    .line 935
    const-class p3, Ljava/lang/Object;

    .line 937
    :cond_9
    invoke-direct {p0}, treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    goto :goto_4
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 4
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 771
    iget-object v1, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v1, :cond_5

    .line 776
    :cond_4
    :goto_4
    return-void

    .line 772
    :cond_5
    iget-object v1, p0, mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 773
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_4

    .line 774
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, removeSpan(I)V

    goto :goto_4
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 7
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 34
    invoke-virtual/range {p0 .. p5}, replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 494
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 31
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 500
    const-string/jumbo v6, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, checkRange(Ljava/lang/String;II)V

    .line 502
    move-object/from16 v0, p0

    iget-object v6, v0, mFilters:[Landroid/text/InputFilter;

    array-length v0, v6

    move/from16 v18, v0

    .line 503
    .local v18, "filtercount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_15
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_3e

    .line 504
    move-object/from16 v0, p0

    iget-object v6, v0, mFilters:[Landroid/text/InputFilter;

    aget-object v6, v6, v19

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-interface/range {v6 .. v12}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v23

    .line 506
    .local v23, "repl":Ljava/lang/CharSequence;
    if-eqz v23, :cond_3b

    .line 507
    move-object/from16 p3, v23

    .line 508
    const/16 p4, 0x0

    .line 509
    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 503
    :cond_3b
    add-int/lit8 v19, v19, 0x1

    goto :goto_15

    .line 513
    .end local v23    # "repl":Ljava/lang/CharSequence;
    :cond_3e
    sub-int v22, p2, p1

    .line 514
    .local v22, "origLen":I
    sub-int v20, p5, p4

    .line 516
    .local v20, "newLen":I
    if-nez v22, :cond_4d

    if-nez v20, :cond_4d

    invoke-static/range {p3 .. p4}, hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 569
    :goto_4c
    return-object p0

    .line 522
    :cond_4d
    add-int v6, p1, v22

    const-class v7, Landroid/text/TextWatcher;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Landroid/text/TextWatcher;

    .line 523
    .local v24, "textWatchers":[Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    move/from16 v3, v22

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    .line 528
    if-eqz v22, :cond_f1

    if-eqz v20, :cond_f1

    const/16 v16, 0x1

    .line 529
    .local v16, "adjustSelection":Z
    :goto_6e
    const/4 v9, 0x0

    .line 530
    .local v9, "selectionStart":I
    const/4 v13, 0x0

    .line 531
    .local v13, "selectionEnd":I
    if-eqz v16, :cond_7a

    .line 532
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    .line 533
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 536
    :cond_7a
    invoke-direct/range {p0 .. p5}, change(IILjava/lang/CharSequence;II)V

    .line 538
    if-eqz v16, :cond_d0

    .line 539
    const/16 v17, 0x0

    .line 540
    .local v17, "changed":Z
    move/from16 v0, p1

    if-le v9, v0, :cond_a6

    move/from16 v0, p2

    if-ge v9, v0, :cond_a6

    .line 542
    sub-int v6, v9, p1

    int-to-long v6, v6

    move/from16 v0, v20

    int-to-long v10, v0

    mul-long/2addr v6, v10

    move/from16 v0, v22

    int-to-long v10, v0

    div-long/2addr v6, v10

    long-to-int v0, v6

    move/from16 v21, v0

    .line 543
    .local v21, "offset":I
    add-int v9, p1, v21

    .line 545
    const/16 v17, 0x1

    .line 546
    const/4 v7, 0x0

    sget-object v8, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v11, 0x22

    move-object/from16 v6, p0

    move v10, v9

    invoke-direct/range {v6 .. v11}, setSpan(ZLjava/lang/Object;III)V

    .line 549
    .end local v21    # "offset":I
    :cond_a6
    move/from16 v0, p1

    if-le v13, v0, :cond_cb

    move/from16 v0, p2

    if-ge v13, v0, :cond_cb

    .line 551
    sub-int v6, v13, p1

    int-to-long v6, v6

    move/from16 v0, v20

    int-to-long v10, v0

    mul-long/2addr v6, v10

    move/from16 v0, v22

    int-to-long v10, v0

    div-long/2addr v6, v10

    long-to-int v0, v6

    move/from16 v21, v0

    .line 552
    .restart local v21    # "offset":I
    add-int v13, p1, v21

    .line 554
    const/16 v17, 0x1

    .line 555
    const/4 v11, 0x0

    sget-object v12, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v15, 0x22

    move-object/from16 v10, p0

    move v14, v13

    invoke-direct/range {v10 .. v15}, setSpan(ZLjava/lang/Object;III)V

    .line 558
    .end local v21    # "offset":I
    :cond_cb
    if-eqz v17, :cond_d0

    .line 559
    invoke-direct/range {p0 .. p0}, restoreInvariants()V

    .line 563
    .end local v17    # "changed":Z
    :cond_d0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    move/from16 v3, v22

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, sendAfterTextChanged([Landroid/text/TextWatcher;)V

    .line 567
    sub-int v6, v20, v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, sendToSpanWatchers(III)V

    goto/16 :goto_4c

    .line 528
    .end local v9    # "selectionStart":I
    .end local v13    # "selectionEnd":I
    .end local v16    # "adjustSelection":Z
    :cond_f1
    const/16 v16, 0x0

    goto/16 :goto_6e
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 1357
    if-nez p1, :cond_8

    .line 1358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1361
    :cond_8
    iput-object p1, p0, mFilters:[Landroid/text/InputFilter;

    .line 1362
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 11
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 662
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, setSpan(ZLjava/lang/Object;III)V

    .line 663
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 968
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, <init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1008
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 1009
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, getChars(II[CI)V

    .line 1010
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 995
    invoke-virtual {p0}, length()I

    move-result v1

    .line 996
    .local v1, "len":I
    new-array v0, v1, [C

    .line 998
    .local v0, "buf":[C
    invoke-virtual {p0, v2, v1, v0, v2}, getChars(II[CI)V

    .line 999
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
