.class public Landroid/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    const/16 v0, 0xa

    invoke-direct {p0, v0}, <init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_d

    .line 47
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mValues:[I

    .line 51
    :goto_9
    const/4 v0, 0x0

    iput v0, p0, mSize:I

    .line 52
    return-void

    .line 49
    :cond_d
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, mValues:[I

    goto :goto_9
.end method

.method private ensureCapacity(I)V
    .registers 9
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    .line 114
    iget v0, p0, mSize:I

    .line 115
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 116
    .local v1, "minCapacity":I
    iget-object v5, p0, mValues:[I

    array-length v5, v5

    if-lt v1, v5, :cond_1f

    .line 117
    const/4 v5, 0x6

    if-ge v0, v5, :cond_20

    const/16 v5, 0xc

    :goto_f
    add-int v4, v0, v5

    .line 119
    .local v4, "targetCap":I
    if-le v4, v1, :cond_23

    move v2, v4

    .line 120
    .local v2, "newCapacity":I
    :goto_14
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v3

    .line 121
    .local v3, "newValues":[I
    iget-object v5, p0, mValues:[I

    invoke-static {v5, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 122
    iput-object v3, p0, mValues:[I

    .line 124
    .end local v2    # "newCapacity":I
    .end local v3    # "newValues":[I
    .end local v4    # "targetCap":I
    :cond_1f
    return-void

    .line 117
    :cond_20
    shr-int/lit8 v5, v0, 0x1

    goto :goto_f

    .restart local v4    # "targetCap":I
    :cond_23
    move v2, v1

    .line 119
    goto :goto_14
.end method


# virtual methods
.method public add(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 58
    iget v0, p0, mSize:I

    invoke-virtual {p0, v0, p1}, add(II)V

    .line 59
    return-void
.end method

.method public add(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 67
    if-ltz p1, :cond_6

    iget v0, p0, mSize:I

    if-le p1, v0, :cond_c

    .line 68
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 71
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, ensureCapacity(I)V

    .line 73
    iget v0, p0, mSize:I

    sub-int/2addr v0, p1

    if-eqz v0, :cond_21

    .line 74
    iget-object v0, p0, mValues:[I

    iget-object v1, p0, mValues:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 77
    :cond_21
    iget-object v0, p0, mValues:[I

    aput p2, v0, p1

    .line 78
    iget v0, p0, mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mSize:I

    .line 79
    return-void
.end method

.method public addAll(Landroid/util/IntArray;)V
    .registers 7
    .param p1, "values"    # Landroid/util/IntArray;

    .prologue
    .line 103
    iget v0, p1, mSize:I

    .line 104
    .local v0, "count":I
    invoke-direct {p0, v0}, ensureCapacity(I)V

    .line 106
    iget-object v1, p1, mValues:[I

    const/4 v2, 0x0

    iget-object v3, p0, mValues:[I

    iget v4, p0, mSize:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 107
    iget v1, p0, mSize:I

    add-int/2addr v1, v0

    iput v1, p0, mSize:I

    .line 108
    return-void
.end method

.method public binarySearch(I)I
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 96
    iget-object v0, p0, mValues:[I

    iget v1, p0, mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    iput v0, p0, mSize:I

    .line 131
    return-void
.end method

.method public clone()Landroid/util/IntArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    .line 136
    .local v0, "clone":Landroid/util/IntArray;
    iget-object v1, p0, mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, mValues:[I

    .line 137
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, clone()Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 144
    iget v0, p0, mSize:I

    if-lt p1, v0, :cond_c

    .line 145
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 147
    :cond_c
    iget-object v0, p0, mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public indexOf(I)I
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 155
    iget v1, p0, mSize:I

    .line 156
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_f

    .line 157
    iget-object v2, p0, mValues:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_c

    .line 161
    .end local v0    # "i":I
    :goto_b
    return v0

    .line 156
    .restart local v0    # "i":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 161
    :cond_f
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public remove(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 168
    iget v0, p0, mSize:I

    if-lt p1, v0, :cond_c

    .line 169
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 171
    :cond_c
    iget-object v0, p0, mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, mValues:[I

    iget v3, p0, mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 172
    iget v0, p0, mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mSize:I

    .line 173
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, mSize:I

    return v0
.end method

.method public toArray()[I
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, mValues:[I

    iget v1, p0, mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
