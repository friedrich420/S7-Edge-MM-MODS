.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, <init>(I)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, mGarbage:Z

    .line 75
    if-nez p1, :cond_13

    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mKeys:[I

    .line 77
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, mValues:[Ljava/lang/Object;

    .line 82
    :goto_10
    iput v1, p0, mSize:I

    .line 83
    return-void

    .line 79
    :cond_13
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, mValues:[Ljava/lang/Object;

    .line 80
    iget-object v0, p0, mValues:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, mKeys:[I

    goto :goto_10
.end method

.method private gc()V
    .registers 8

    .prologue
    .line 187
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v2, p0, mSize:I

    .line 188
    .local v2, "n":I
    const/4 v3, 0x0

    .line 189
    .local v3, "o":I
    iget-object v1, p0, mKeys:[I

    .line 190
    .local v1, "keys":[I
    iget-object v5, p0, mValues:[Ljava/lang/Object;

    .line 192
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_20

    .line 193
    aget-object v4, v5, v0

    .line 195
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1d

    .line 196
    if-eq v0, v3, :cond_1b

    .line 197
    aget v6, v1, v0

    aput v6, v1, v3

    .line 198
    aput-object v4, v5, v3

    .line 199
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 202
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 192
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 206
    .end local v4    # "val":Ljava/lang/Object;
    :cond_20
    const/4 v6, 0x0

    iput-boolean v6, p0, mGarbage:Z

    .line 207
    iput v3, p0, mSize:I

    .line 210
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, mSize:I

    if-eqz v0, :cond_12

    iget-object v0, p0, mKeys:[I

    iget v1, p0, mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_12

    .line 363
    invoke-virtual {p0, p1, p2}, put(ILjava/lang/Object;)V

    .line 374
    :goto_11
    return-void

    .line 367
    :cond_12
    iget-boolean v0, p0, mGarbage:Z

    if-eqz v0, :cond_20

    iget v0, p0, mSize:I

    iget-object v1, p0, mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_20

    .line 368
    invoke-direct {p0}, gc()V

    .line 371
    :cond_20
    iget-object v0, p0, mKeys:[I

    iget v1, p0, mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, mKeys:[I

    .line 372
    iget-object v0, p0, mValues:[Ljava/lang/Object;

    iget v1, p0, mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, mValues:[Ljava/lang/Object;

    .line 373
    iget v0, p0, mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mSize:I

    goto :goto_11
.end method

.method public clear()V
    .registers 6

    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v4, 0x0

    .line 346
    iget v1, p0, mSize:I

    .line 347
    .local v1, "n":I
    iget-object v2, p0, mValues:[Ljava/lang/Object;

    .line 349
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_e

    .line 350
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 353
    :cond_e
    iput v4, p0, mSize:I

    .line 354
    iput-boolean v4, p0, mGarbage:Z

    .line 355
    return-void
.end method

.method public clone()Landroid/util/SparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    .line 90
    .local v1, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    .line 91
    iget-object v2, p0, mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, mKeys:[I

    .line 92
    iget-object v2, p0, mValues:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, mValues:[Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 96
    :goto_1d
    return-object v1

    .line 93
    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 5
    .param p1, "key"    # I

    .prologue
    .line 126
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v1, p0, mKeys:[I

    iget v2, p0, mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 128
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 129
    iget-object v1, p0, mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1b

    .line 130
    iget-object v1, p0, mValues:[Ljava/lang/Object;

    sget-object v2, DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, mGarbage:Z

    .line 134
    :cond_1b
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, mKeys:[I

    iget v2, p0, mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 115
    .local v0, "i":I
    if-ltz v0, :cond_12

    iget-object v1, p0, mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    .line 118
    .end local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_12
    :goto_12
    return-object p2

    .restart local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_13
    iget-object v1, p0, mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_12
.end method

.method public indexOfKey(I)I
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 313
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, mGarbage:Z

    if-eqz v0, :cond_7

    .line 314
    invoke-direct {p0}, gc()V

    .line 317
    :cond_7
    iget-object v0, p0, mKeys:[I

    iget v1, p0, mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, mGarbage:Z

    if-eqz v1, :cond_7

    .line 332
    invoke-direct {p0}, gc()V

    .line 335
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, mSize:I

    if-ge v0, v1, :cond_16

    .line 336
    iget-object v1, p0, mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 339
    .end local v0    # "i":I
    :goto_12
    return v0

    .line 335
    .restart local v0    # "i":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 339
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 267
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, mGarbage:Z

    if-eqz v0, :cond_7

    .line 268
    invoke-direct {p0}, gc()V

    .line 271
    :cond_7
    iget-object v0, p0, mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, mKeys:[I

    iget v2, p0, mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 220
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 221
    iget-object v1, p0, mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 242
    :goto_e
    return-void

    .line 223
    :cond_f
    xor-int/lit8 v0, v0, -0x1

    .line 225
    iget v1, p0, mSize:I

    if-ge v0, v1, :cond_26

    iget-object v1, p0, mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_26

    .line 226
    iget-object v1, p0, mKeys:[I

    aput p1, v1, v0

    .line 227
    iget-object v1, p0, mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_e

    .line 231
    :cond_26
    iget-boolean v1, p0, mGarbage:Z

    if-eqz v1, :cond_3e

    iget v1, p0, mSize:I

    iget-object v2, p0, mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3e

    .line 232
    invoke-direct {p0}, gc()V

    .line 235
    iget-object v1, p0, mKeys:[I

    iget v2, p0, mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    xor-int/lit8 v0, v1, -0x1

    .line 238
    :cond_3e
    iget-object v1, p0, mKeys:[I

    iget v2, p0, mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, mKeys:[I

    .line 239
    iget-object v1, p0, mValues:[Ljava/lang/Object;

    iget v2, p0, mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, mValues:[Ljava/lang/Object;

    .line 240
    iget v1, p0, mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mSize:I

    goto :goto_e
.end method

.method public remove(I)V
    .registers 2
    .param p1, "key"    # I

    .prologue
    .line 158
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, delete(I)V

    .line 159
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 165
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 166
    iget-object v0, p0, mValues:[Ljava/lang/Object;

    sget-object v1, DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, mGarbage:Z

    .line 169
    :cond_11
    return-void
.end method

.method public removeAtRange(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 178
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v2, p0, mSize:I

    add-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_11

    .line 180
    invoke-virtual {p0, v1}, removeAt(I)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 182
    :cond_11
    return-void
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v2, p0, mKeys:[I

    iget v3, p0, mSize:I

    invoke-static {v2, v3, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 143
    .local v0, "i":I
    if-ltz v0, :cond_20

    .line 144
    iget-object v2, p0, mValues:[Ljava/lang/Object;

    aget-object v2, v2, v0

    sget-object v3, DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_20

    .line 145
    iget-object v2, p0, mValues:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 146
    .local v1, "old":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, mValues:[Ljava/lang/Object;

    sget-object v3, DELETED:Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, p0, mGarbage:Z

    .line 151
    .end local v1    # "old":Ljava/lang/Object;, "TE;"
    :goto_1f
    return-object v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, mGarbage:Z

    if-eqz v0, :cond_7

    .line 301
    invoke-direct {p0}, gc()V

    .line 304
    :cond_7
    iget-object v0, p0, mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 305
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 249
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, mGarbage:Z

    if-eqz v0, :cond_7

    .line 250
    invoke-direct {p0}, gc()V

    .line 253
    :cond_7
    iget v0, p0, mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 385
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, size()I

    move-result v4

    if-gtz v4, :cond_a

    .line 386
    const-string/jumbo v4, "{}"

    .line 406
    :goto_9
    return-object v4

    .line 389
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v4, p0, mSize:I

    if-ge v1, v4, :cond_42

    .line 392
    if-lez v1, :cond_24

    .line 393
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_24
    invoke-virtual {p0, v1}, keyAt(I)I

    move-result v2

    .line 396
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p0, v1}, valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 399
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3c

    .line 400
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 402
    :cond_3c
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 405
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_42
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, mGarbage:Z

    if-eqz v0, :cond_7

    .line 288
    invoke-direct {p0}, gc()V

    .line 291
    :cond_7
    iget-object v0, p0, mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
