.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 51
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 52
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 53
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 54
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 94
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v2

    .line 95
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 271
    instance-of v3, p1, Lcom/google/zxing/common/BitMatrix;

    if-nez v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 274
    check-cast v1, Lcom/google/zxing/common/BitMatrix;

    .line 275
    .local v1, "other":Lcom/google/zxing/common/BitMatrix;
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    iget-object v4, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v3, v3, v0

    iget-object v4, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public get(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 64
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 65
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 289
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 290
    .local v2, "hash":I
    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int v2, v5, v6

    .line 291
    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int v2, v5, v6

    .line 292
    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int v2, v5, v6

    .line 293
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 294
    .local v1, "bit":I
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "bit":I
    :cond_0
    return v2
.end method

.method public set(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 75
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 76
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 77
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v9, 0x1

    .line 109
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 110
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    :cond_1
    if-lt p4, v9, :cond_2

    if-ge p3, v9, :cond_3

    .line 113
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_3
    add-int v2, p1, p3

    .line 116
    .local v2, "right":I
    add-int v0, p2, p4

    .line 117
    .local v0, "bottom":I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v2, v5, :cond_5

    .line 118
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_5
    move v4, p2

    .local v4, "y":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 121
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    .line 122
    .local v1, "offset":I
    move v3, p1

    .local v3, "x":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 123
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    shr-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "offset":I
    .end local v3    # "x":I
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 302
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    .line 303
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v1, v3, :cond_1

    .line 304
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "X "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    :cond_0
    const-string v3, "  "

    goto :goto_2

    .line 306
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "x":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
