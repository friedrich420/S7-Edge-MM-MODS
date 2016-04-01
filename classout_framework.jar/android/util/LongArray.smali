.class public Landroid/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    const/16 v0, 0xa

    invoke-direct {p0, v0}, <init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_d

    .line 45
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, mValues:[J

    .line 49
    :goto_9
    const/4 v0, 0x0

    iput v0, p0, mSize:I

    .line 50
    return-void

    .line 47
    :cond_d
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, mValues:[J

    goto :goto_9
.end method

.method private ensureCapacity(I)V
    .registers 9
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    .line 94
    iget v0, p0, mSize:I

    .line 95
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 96
    .local v1, "minCapacity":I
    iget-object v5, p0, mValues:[J

    array-length v5, v5

    if-lt v1, v5, :cond_1f

    .line 97
    const/4 v5, 0x6

    if-ge v0, v5, :cond_20

    const/16 v5, 0xc

    :goto_f
    add-int v4, v0, v5

    .line 99
    .local v4, "targetCap":I
    if-le v4, v1, :cond_23

    move v2, v4

    .line 100
    .local v2, "newCapacity":I
    :goto_14
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v3

    .line 101
    .local v3, "newValues":[J
    iget-object v5, p0, mValues:[J

    invoke-static {v5, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 102
    iput-object v3, p0, mValues:[J

    .line 104
    .end local v2    # "newCapacity":I
    .end local v3    # "newValues":[J
    .end local v4    # "targetCap":I
    :cond_1f
    return-void

    .line 97
    :cond_20
    shr-int/lit8 v5, v0, 0x1

    goto :goto_f

    .restart local v4    # "targetCap":I
    :cond_23
    move v2, v1

    .line 99
    goto :goto_14
.end method


# virtual methods
.method public add(IJ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 65
    if-ltz p1, :cond_6

    iget v0, p0, mSize:I

    if-le p1, v0, :cond_c

    .line 66
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 69
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, ensureCapacity(I)V

    .line 71
    iget v0, p0, mSize:I

    sub-int/2addr v0, p1

    if-eqz v0, :cond_21

    .line 72
    iget-object v0, p0, mValues:[J

    iget-object v1, p0, mValues:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 75
    :cond_21
    iget-object v0, p0, mValues:[J

    aput-wide p2, v0, p1

    .line 76
    iget v0, p0, mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mSize:I

    .line 77
    return-void
.end method

.method public add(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 56
    iget v0, p0, mSize:I

    invoke-virtual {p0, v0, p1, p2}, add(IJ)V

    .line 57
    return-void
.end method

.method public addAll(Landroid/util/LongArray;)V
    .registers 7
    .param p1, "values"    # Landroid/util/LongArray;

    .prologue
    .line 83
    iget v0, p1, mSize:I

    .line 84
    .local v0, "count":I
    invoke-direct {p0, v0}, ensureCapacity(I)V

    .line 86
    iget-object v1, p1, mValues:[J

    const/4 v2, 0x0

    iget-object v3, p0, mValues:[J

    iget v4, p0, mSize:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 87
    iget v1, p0, mSize:I

    add-int/2addr v1, v0

    iput v1, p0, mSize:I

    .line 88
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    iput v0, p0, mSize:I

    .line 111
    return-void
.end method

.method public clone()Landroid/util/LongArray;
    .registers 4

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "clone":Landroid/util/LongArray;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/LongArray;

    move-object v1, v0

    .line 118
    iget-object v2, p0, mValues:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, mValues:[J
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_13} :catch_14

    .line 122
    :goto_13
    return-object v1

    .line 119
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, clone()Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 129
    iget v0, p0, mSize:I

    if-lt p1, v0, :cond_c

    .line 130
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 132
    :cond_c
    iget-object v0, p0, mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public indexOf(J)I
    .registers 8
    .param p1, "value"    # J

    .prologue
    .line 140
    iget v1, p0, mSize:I

    .line 141
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_11

    .line 142
    iget-object v2, p0, mValues:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_e

    .line 146
    .end local v0    # "i":I
    :goto_d
    return v0

    .line 141
    .restart local v0    # "i":I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 146
    :cond_11
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public remove(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 153
    iget v0, p0, mSize:I

    if-lt p1, v0, :cond_c

    .line 154
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 156
    :cond_c
    iget-object v0, p0, mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, mValues:[J

    iget v3, p0, mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 157
    iget v0, p0, mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mSize:I

    .line 158
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, mSize:I

    return v0
.end method
