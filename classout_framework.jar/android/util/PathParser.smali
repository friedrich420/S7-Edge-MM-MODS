.class public Landroid/util/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/PathParser$1;,
        Landroid/util/PathParser$PathDataNode;,
        Landroid/util/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Landroid/util/PathParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 5
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/PathParser$PathDataNode;>;"
    new-instance v0, Landroid/util/PathParser$PathDataNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/util/PathParser$PathDataNode;-><init>(C[FLandroid/util/PathParser$1;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public static canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z
    .registers 6
    .param p0, "nodesFrom"    # [Landroid/util/PathParser$PathDataNode;
    .param p1, "nodesTo"    # [Landroid/util/PathParser$PathDataNode;

    .prologue
    const/4 v1, 0x0

    .line 97
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 111
    :cond_5
    :goto_5
    return v1

    .line 101
    :cond_6
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_5

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 106
    aget-object v2, p0, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mType:C
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->access$100(Landroid/util/PathParser$PathDataNode;)C

    move-result v2

    aget-object v3, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mType:C
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->access$100(Landroid/util/PathParser$PathDataNode;)C

    move-result v3

    if-ne v2, v3, :cond_5

    aget-object v2, p0, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v2

    array-length v2, v2

    aget-object v3, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_5

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 111
    :cond_2f
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;
    .registers 9
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 52
    if-nez p0, :cond_5

    .line 53
    const/4 v5, 0x0

    .line 73
    :goto_4
    return-object v5

    .line 55
    :cond_5
    const/4 v3, 0x0

    .line 56
    .local v3, "start":I
    const/4 v0, 0x1

    .line 58
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/PathParser$PathDataNode;>;"
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_33

    .line 60
    invoke-static {p0, v0}, nextStart(Ljava/lang/String;I)I

    move-result v0

    .line 61
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 63
    invoke-static {v2}, getFloats(Ljava/lang/String;)[F

    move-result-object v4

    .line 64
    .local v4, "val":[F
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v1, v5, v4}, addNode(Ljava/util/ArrayList;C[F)V

    .line 67
    .end local v4    # "val":[F
    :cond_2f
    move v3, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_c

    .line 70
    .end local v2    # "s":Ljava/lang/String;
    :cond_33
    sub-int v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_47

    .line 71
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v6, v7, [F

    invoke-static {v1, v5, v6}, addNode(Ljava/util/ArrayList;C[F)V

    .line 73
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/util/PathParser$PathDataNode;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/util/PathParser$PathDataNode;

    goto :goto_4
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 7
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 35
    .local v2, "path":Landroid/graphics/Path;
    invoke-static {p0}, createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v1

    .line 36
    .local v1, "nodes":[Landroid/util/PathParser$PathDataNode;
    if-eqz v1, :cond_29

    .line 38
    :try_start_b
    invoke-static {v1, v2}, Landroid/util/PathParser$PathDataNode;->nodesToPath([Landroid/util/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    .line 44
    .end local v2    # "path":Landroid/graphics/Path;
    :goto_e
    return-object v2

    .line 39
    .restart local v2    # "path":Landroid/graphics/Path;
    :catch_f
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 44
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_29
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;
    .registers 6
    .param p0, "source"    # [Landroid/util/PathParser$PathDataNode;

    .prologue
    const/4 v2, 0x0

    .line 81
    if-nez p0, :cond_5

    move-object v0, v2

    .line 88
    :cond_4
    return-object v0

    .line 84
    :cond_5
    array-length v3, p0

    new-array v0, v3, [Landroid/util/PathParser$PathDataNode;

    .line 85
    .local v0, "copy":[Landroid/util/PathParser$PathDataNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 86
    new-instance v3, Landroid/util/PathParser$PathDataNode;

    aget-object v4, p0, v1

    invoke-direct {v3, v4, v2}, Landroid/util/PathParser$PathDataNode;-><init>(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$1;)V

    aput-object v3, v0, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private static extract(Ljava/lang/String;ILandroid/util/PathParser$ExtractFloatResult;)V
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "result"    # Landroid/util/PathParser$ExtractFloatResult;

    .prologue
    const/4 v7, 0x1

    .line 213
    move v1, p1

    .line 214
    .local v1, "currentIndex":I
    const/4 v2, 0x0

    .line 215
    .local v2, "foundSeparator":Z
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 216
    const/4 v5, 0x0

    .line 217
    .local v5, "secondDot":Z
    const/4 v3, 0x0

    .line 218
    .local v3, "isExponential":Z
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_19

    .line 219
    move v4, v3

    .line 220
    .local v4, "isPrevExponential":Z
    const/4 v3, 0x0

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 222
    .local v0, "currentChar":C
    sparse-switch v0, :sswitch_data_34

    .line 248
    :cond_17
    :goto_17
    if-eqz v2, :cond_30

    .line 254
    .end local v0    # "currentChar":C
    .end local v4    # "isPrevExponential":Z
    :cond_19
    iput v1, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 255
    return-void

    .line 225
    .restart local v0    # "currentChar":C
    .restart local v4    # "isPrevExponential":Z
    :sswitch_1c
    const/4 v2, 0x1

    .line 226
    goto :goto_17

    .line 229
    :sswitch_1e
    if-eq v1, p1, :cond_17

    if-nez v4, :cond_17

    .line 230
    const/4 v2, 0x1

    .line 231
    iput-boolean v7, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_17

    .line 235
    :sswitch_26
    if-nez v5, :cond_2a

    .line 236
    const/4 v5, 0x1

    goto :goto_17

    .line 239
    :cond_2a
    const/4 v2, 0x1

    .line 240
    iput-boolean v7, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_17

    .line 245
    :sswitch_2e
    const/4 v3, 0x1

    goto :goto_17

    .line 218
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 222
    nop

    :sswitch_data_34
    .sparse-switch
        0x20 -> :sswitch_1c
        0x2c -> :sswitch_1c
        0x2d -> :sswitch_1e
        0x2e -> :sswitch_26
        0x45 -> :sswitch_2e
        0x65 -> :sswitch_2e
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 167
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7a

    if-eq v8, v9, :cond_11

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_14

    .line 168
    :cond_11
    new-array v8, v10, [F

    .line 198
    :goto_13
    return-object v8

    .line 171
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    .line 172
    .local v5, "results":[F
    const/4 v0, 0x0

    .line 173
    .local v0, "count":I
    const/4 v6, 0x1

    .line 174
    .local v6, "startPosition":I
    const/4 v3, 0x0

    .line 176
    .local v3, "endPosition":I
    new-instance v4, Landroid/util/PathParser$ExtractFloatResult;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/util/PathParser$ExtractFloatResult;-><init>(Landroid/util/PathParser$1;)V

    .line 177
    .local v4, "result":Landroid/util/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "totalLength":I
    move v1, v0

    .line 182
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_28
    if-ge v6, v7, :cond_48

    .line 183
    invoke-static {p0, v6, v4}, extract(Ljava/lang/String;ILandroid/util/PathParser$ExtractFloatResult;)V

    .line 184
    iget v3, v4, Landroid/util/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 186
    if-ge v6, v3, :cond_6d

    .line 187
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    .line 191
    :goto_3d
    iget-boolean v8, v4, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v8, :cond_44

    .line 193
    move v6, v3

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_28

    .line 195
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_44
    add-int/lit8 v6, v3, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_28

    .line 198
    :cond_48
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([FI)[F
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_4b} :catch_4d

    move-result-object v8

    goto :goto_13

    .line 199
    .end local v1    # "count":I
    .end local v3    # "endPosition":I
    .end local v4    # "result":Landroid/util/PathParser$ExtractFloatResult;
    .end local v5    # "results":[F
    .end local v6    # "startPosition":I
    .end local v7    # "totalLength":I
    :catch_4d
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error in parsing \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "count":I
    .restart local v3    # "endPosition":I
    .restart local v4    # "result":Landroid/util/PathParser$ExtractFloatResult;
    .restart local v5    # "results":[F
    .restart local v6    # "startPosition":I
    .restart local v7    # "totalLength":I
    :cond_6d
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_3d
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .prologue
    .line 133
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_20

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 139
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    :cond_18
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21

    .line 145
    .end local v0    # "c":C
    :cond_20
    return p1

    .line 143
    .restart local v0    # "c":C
    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static updateNodes([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)V
    .registers 6
    .param p0, "target"    # [Landroid/util/PathParser$PathDataNode;
    .param p1, "source"    # [Landroid/util/PathParser$PathDataNode;

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2f

    .line 123
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mType:C
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->access$100(Landroid/util/PathParser$PathDataNode;)C

    move-result v3

    # setter for: Landroid/util/PathParser$PathDataNode;->mType:C
    invoke-static {v2, v3}, Landroid/util/PathParser$PathDataNode;->access$102(Landroid/util/PathParser$PathDataNode;C)C

    .line 124
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    aget-object v2, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 125
    aget-object v2, p0, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v2

    aget-object v3, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v3

    aget v3, v3, v1

    aput v3, v2, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 122
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    .end local v1    # "j":I
    :cond_2f
    return-void
.end method
