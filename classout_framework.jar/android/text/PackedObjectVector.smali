.class Landroid/text/PackedObjectVector;
.super Ljava/lang/Object;
.source "PackedObjectVector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "columns"    # I

    .prologue
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, mColumns:I

    .line 38
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, mValues:[Ljava/lang/Object;

    .line 39
    iput v1, p0, mRows:I

    .line 41
    iput v1, p0, mRowGapStart:I

    .line 42
    iget v0, p0, mRows:I

    iput v0, p0, mRowGapLength:I

    .line 43
    return-void
.end method

.method private growBuffer()V
    .registers 8

    .prologue
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v6, 0x0

    .line 114
    invoke-virtual {p0}, size()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    iget v4, p0, mColumns:I

    mul-int/2addr v3, v4

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "newvalues":[Ljava/lang/Object;
    array-length v3, v2

    iget v4, p0, mColumns:I

    div-int v1, v3, v4

    .line 117
    .local v1, "newsize":I
    iget v3, p0, mRows:I

    iget v4, p0, mRowGapStart:I

    iget v5, p0, mRowGapLength:I

    add-int/2addr v4, v5

    sub-int v0, v3, v4

    .line 119
    .local v0, "after":I
    iget-object v3, p0, mValues:[Ljava/lang/Object;

    iget v4, p0, mColumns:I

    iget v5, p0, mRowGapStart:I

    mul-int/2addr v4, v5

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget-object v3, p0, mValues:[Ljava/lang/Object;

    iget v4, p0, mRows:I

    sub-int/2addr v4, v0

    iget v5, p0, mColumns:I

    mul-int/2addr v4, v5

    sub-int v5, v1, v0

    iget v6, p0, mColumns:I

    mul-int/2addr v5, v6

    iget v6, p0, mColumns:I

    mul-int/2addr v6, v0

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget v3, p0, mRowGapLength:I

    iget v4, p0, mRows:I

    sub-int v4, v1, v4

    add-int/2addr v3, v4

    iput v3, p0, mRowGapLength:I

    .line 123
    iput v1, p0, mRows:I

    .line 124
    iput-object v2, p0, mValues:[Ljava/lang/Object;

    .line 125
    return-void
.end method

.method private moveRowGapTo(I)V
    .registers 10
    .param p1, "where"    # I

    .prologue
    .line 130
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v5, p0, mRowGapStart:I

    if-ne p1, v5, :cond_5

    .line 167
    :goto_4
    return-void

    .line 133
    :cond_5
    iget v5, p0, mRowGapStart:I

    if-le p1, v5, :cond_47

    .line 135
    iget v5, p0, mRowGapLength:I

    add-int/2addr v5, p1

    iget v6, p0, mRowGapStart:I

    iget v7, p0, mRowGapLength:I

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 137
    .local v3, "moving":I
    iget v5, p0, mRowGapStart:I

    iget v6, p0, mRowGapLength:I

    add-int v1, v5, v6

    .local v1, "i":I
    :goto_19
    iget v5, p0, mRowGapStart:I

    iget v6, p0, mRowGapLength:I

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    if-ge v1, v5, :cond_76

    .line 139
    iget v5, p0, mRowGapStart:I

    iget v6, p0, mRowGapLength:I

    add-int/2addr v5, v6

    sub-int v5, v1, v5

    iget v6, p0, mRowGapStart:I

    add-int v0, v5, v6

    .line 141
    .local v0, "destrow":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2d
    iget v5, p0, mColumns:I

    if-ge v2, v5, :cond_44

    .line 143
    iget-object v5, p0, mValues:[Ljava/lang/Object;

    iget v6, p0, mColumns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    aget-object v4, v5, v6

    .line 145
    .local v4, "val":Ljava/lang/Object;
    iget-object v5, p0, mValues:[Ljava/lang/Object;

    iget v6, p0, mColumns:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aput-object v4, v5, v6

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 137
    .end local v4    # "val":Ljava/lang/Object;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 151
    .end local v0    # "destrow":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "moving":I
    :cond_47
    iget v5, p0, mRowGapStart:I

    sub-int v3, v5, p1

    .line 153
    .restart local v3    # "moving":I
    add-int v5, p1, v3

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_4f
    if-lt v1, p1, :cond_76

    .line 155
    sub-int v5, v1, p1

    iget v6, p0, mRowGapStart:I

    add-int/2addr v5, v6

    iget v6, p0, mRowGapLength:I

    add-int/2addr v5, v6

    sub-int v0, v5, v3

    .line 157
    .restart local v0    # "destrow":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5c
    iget v5, p0, mColumns:I

    if-ge v2, v5, :cond_73

    .line 159
    iget-object v5, p0, mValues:[Ljava/lang/Object;

    iget v6, p0, mColumns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    aget-object v4, v5, v6

    .line 161
    .restart local v4    # "val":Ljava/lang/Object;
    iget-object v5, p0, mValues:[Ljava/lang/Object;

    iget v6, p0, mColumns:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aput-object v4, v5, v6

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 153
    .end local v4    # "val":Ljava/lang/Object;
    :cond_73
    add-int/lit8 v1, v1, -0x1

    goto :goto_4f

    .line 166
    .end local v0    # "destrow":I
    .end local v2    # "j":I
    :cond_76
    iput p1, p0, mRowGapStart:I

    goto :goto_4
.end method


# virtual methods
.method public deleteAt(II)V
    .registers 5
    .param p1, "row"    # I
    .param p2, "count"    # I

    .prologue
    .line 87
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    add-int v0, p1, p2

    invoke-direct {p0, v0}, moveRowGapTo(I)V

    .line 89
    iget v0, p0, mRowGapStart:I

    sub-int/2addr v0, p2

    iput v0, p0, mRowGapStart:I

    .line 90
    iget v0, p0, mRowGapLength:I

    add-int/2addr v0, p2

    iput v0, p0, mRowGapLength:I

    .line 92
    iget v0, p0, mRowGapLength:I

    invoke-virtual {p0}, size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_19

    .line 97
    :cond_19
    return-void
.end method

.method public dump()V
    .registers 7

    .prologue
    .line 172
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, mRows:I

    if-ge v0, v3, :cond_61

    .line 174
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    iget v3, p0, mColumns:I

    if-ge v1, v3, :cond_57

    .line 176
    iget-object v3, p0, mValues:[Ljava/lang/Object;

    iget v4, p0, mColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v2, v3, v4

    .line 178
    .local v2, "val":Ljava/lang/Object;
    iget v3, p0, mRowGapStart:I

    if-lt v0, v3, :cond_1d

    iget v3, p0, mRowGapStart:I

    iget v4, p0, mRowGapLength:I

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_38

    .line 179
    :cond_1d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 174
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 181
    :cond_38
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_35

    .line 184
    .end local v2    # "val":Ljava/lang/Object;
    :cond_57
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " << \n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    .end local v1    # "j":I
    :cond_61
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "-----\n\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public getValue(II)Ljava/lang/Object;
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v1, p0, mRowGapStart:I

    if-lt p1, v1, :cond_7

    .line 49
    iget v1, p0, mRowGapLength:I

    add-int/2addr p1, v1

    .line 51
    :cond_7
    iget-object v1, p0, mValues:[Ljava/lang/Object;

    iget v2, p0, mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aget-object v0, v1, v2

    .line 53
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method public insertAt(I[Ljava/lang/Object;)V
    .registers 5
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, p1}, moveRowGapTo(I)V

    .line 70
    iget v1, p0, mRowGapLength:I

    if-nez v1, :cond_a

    .line 71
    invoke-direct {p0}, growBuffer()V

    .line 73
    :cond_a
    iget v1, p0, mRowGapStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mRowGapStart:I

    .line 74
    iget v1, p0, mRowGapLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mRowGapLength:I

    .line 76
    if-nez p2, :cond_24

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget v1, p0, mColumns:I

    if-ge v0, v1, :cond_31

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, setValue(IILjava/lang/Object;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 80
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_25
    iget v1, p0, mColumns:I

    if-ge v0, v1, :cond_31

    .line 81
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, setValue(IILjava/lang/Object;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 82
    :cond_31
    return-void
.end method

.method public setValue(IILjava/lang/Object;)V
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, mRowGapStart:I

    if-lt p1, v0, :cond_7

    .line 60
    iget v0, p0, mRowGapLength:I

    add-int/2addr p1, v0

    .line 62
    :cond_7
    iget-object v0, p0, mValues:[Ljava/lang/Object;

    iget v1, p0, mColumns:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput-object p3, v0, v1

    .line 63
    return-void
.end method

.method public size()I
    .registers 3

    .prologue
    .line 102
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, mRows:I

    iget v1, p0, mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .registers 2

    .prologue
    .line 108
    .local p0, "this":Landroid/text/PackedObjectVector;, "Landroid/text/PackedObjectVector<TE;>;"
    iget v0, p0, mColumns:I

    return v0
.end method
