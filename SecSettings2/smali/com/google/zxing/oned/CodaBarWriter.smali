.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 28
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 29
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    return-void

    .line 28
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 29
    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 20
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 35
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Codabar should start/end with start/stop symbols"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 38
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    .line 39
    .local v8, "firstChar":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    .line 40
    .local v11, "lastChar":C
    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-eqz v17, :cond_1

    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v16, 0x1

    .line 43
    .local v16, "startsEndsNormal":Z
    :goto_0
    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-eqz v17, :cond_2

    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v15, 0x1

    .line 46
    .local v15, "startsEndsAlt":Z
    :goto_1
    if-nez v16, :cond_3

    if-nez v15, :cond_3

    .line 47
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Codabar should start/end with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", or start/end with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 40
    .end local v15    # "startsEndsAlt":Z
    .end local v16    # "startsEndsNormal":Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 43
    .restart local v16    # "startsEndsNormal":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 53
    .restart local v15    # "startsEndsAlt":Z
    :cond_3
    const/16 v14, 0x14

    .line 54
    .local v14, "resultLength":I
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v4, v0, [C

    fill-array-data v4, :array_0

    .line 55
    .local v4, "charsWhichAreTenLengthEachAfterDecoded":[C
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 56
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isDigit(C)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x24

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 58
    :cond_4
    add-int/lit8 v14, v14, 0x9

    .line 55
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 59
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 61
    add-int/lit8 v14, v14, 0xa

    goto :goto_3

    .line 63
    :cond_6
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot encode : \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x27

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 67
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    add-int v14, v14, v17

    .line 69
    new-array v13, v14, [Z

    .line 70
    .local v13, "result":[Z
    const/4 v12, 0x0

    .line 71
    .local v12, "position":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_10

    .line 72
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 73
    .local v3, "c":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_8

    .line 75
    sparse-switch v3, :sswitch_data_0

    .line 90
    :cond_8
    :goto_5
    const/4 v5, 0x0

    .line 91
    .local v5, "code":I
    const/4 v9, 0x0

    :goto_6
    sget-object v17, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_9

    .line 93
    sget-object v17, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v17, v17, v9

    move/from16 v0, v17

    if-ne v3, v0, :cond_b

    .line 94
    sget-object v17, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v5, v17, v9

    .line 98
    :cond_9
    const/4 v6, 0x1

    .line 99
    .local v6, "color":Z
    const/4 v7, 0x0

    .line 100
    .local v7, "counter":I
    const/4 v2, 0x0

    .line 101
    .local v2, "bit":I
    :goto_7
    const/16 v17, 0x7

    move/from16 v0, v17

    if-ge v2, v0, :cond_e

    .line 102
    aput-boolean v6, v13, v12

    .line 103
    add-int/lit8 v12, v12, 0x1

    .line 104
    rsub-int/lit8 v17, v2, 0x6

    shr-int v17, v5, v17

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_d

    .line 105
    :cond_a
    if-nez v6, :cond_c

    const/4 v6, 0x1

    .line 106
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 107
    const/4 v7, 0x0

    goto :goto_7

    .line 77
    .end local v2    # "bit":I
    .end local v5    # "code":I
    .end local v6    # "color":Z
    .end local v7    # "counter":I
    :sswitch_0
    const/16 v3, 0x41

    .line 78
    goto :goto_5

    .line 80
    :sswitch_1
    const/16 v3, 0x42

    .line 81
    goto :goto_5

    .line 83
    :sswitch_2
    const/16 v3, 0x43

    .line 84
    goto :goto_5

    .line 86
    :sswitch_3
    const/16 v3, 0x44

    goto :goto_5

    .line 91
    .restart local v5    # "code":I
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 105
    .restart local v2    # "bit":I
    .restart local v6    # "color":Z
    .restart local v7    # "counter":I
    :cond_c
    const/4 v6, 0x0

    goto :goto_8

    .line 109
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 112
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v10, v0, :cond_f

    .line 113
    const/16 v17, 0x0

    aput-boolean v17, v13, v12

    .line 114
    add-int/lit8 v12, v12, 0x1

    .line 71
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 117
    .end local v2    # "bit":I
    .end local v3    # "c":C
    .end local v5    # "code":I
    .end local v6    # "color":Z
    .end local v7    # "counter":I
    :cond_10
    return-object v13

    .line 54
    :array_0
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_2
        0x45 -> :sswitch_3
        0x4e -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
