.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_7

    .line 368
    new-instance p0, Landroid/util/ArraySet;

    .end local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 370
    .restart local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 371
    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_7

    .line 392
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .restart local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 217
    if-eqz p1, :cond_1d

    .line 218
    invoke-static {p1, p2}, contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 227
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :goto_9
    return-object p1

    .line 219
    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_a
    array-length v0, p1

    .line 220
    .local v0, "end":I
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 221
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    :goto_19
    aput-object p2, v1, v0

    move-object p1, v1

    .line 227
    goto :goto_9

    .line 223
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_1d
    const/4 v0, 0x0

    .line 224
    .restart local v0    # "end":I
    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    goto :goto_19
.end method

.method public static appendInt([II)[I
    .registers 7
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    .line 258
    if-nez p0, :cond_9

    .line 259
    const/4 v3, 0x1

    new-array p0, v3, [I

    .end local p0    # "cur":[I
    aput p1, p0, v4

    .line 270
    :cond_8
    :goto_8
    return-object p0

    .line 261
    .restart local p0    # "cur":[I
    :cond_9
    array-length v0, p0

    .line 262
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_14

    .line 263
    aget v3, p0, v1

    if-eq v3, p1, :cond_8

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 267
    :cond_14
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .line 268
    .local v2, "ret":[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 269
    aput p1, v2, v0

    move-object p0, v2

    .line 270
    goto :goto_8
.end method

.method public static appendLong([JJ)[J
    .registers 10
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .prologue
    const/4 v6, 0x0

    .line 324
    if-nez p0, :cond_9

    .line 325
    const/4 v3, 0x1

    new-array p0, v3, [J

    .end local p0    # "cur":[J
    aput-wide p1, p0, v6

    .line 336
    :cond_8
    :goto_8
    return-object p0

    .line 327
    .restart local p0    # "cur":[J
    :cond_9
    array-length v0, p0

    .line 328
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_16

    .line 329
    aget-wide v4, p0, v1

    cmp-long v3, v4, p1

    if-eqz v3, :cond_8

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 333
    :cond_16
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [J

    .line 334
    .local v2, "ret":[J
    invoke-static {p0, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 335
    aput-wide p1, v2, v0

    move-object p0, v2

    .line 336
    goto :goto_8
.end method

.method public static cloneOrNull([J)[J
    .registers 2
    .param p0, "array"    # [J

    .prologue
    .line 363
    if-eqz p0, :cond_9

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains(Landroid/util/ArraySet;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static contains(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static contains([II)Z
    .registers 7
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 182
    if-nez p0, :cond_4

    .line 188
    :cond_3
    :goto_3
    return v4

    .line 183
    :cond_4
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_3

    aget v1, v0, v2

    .line 184
    .local v1, "element":I
    if-ne v1, p1, :cond_f

    .line 185
    const/4 v4, 0x1

    goto :goto_3

    .line 183
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public static contains([JJ)Z
    .registers 10
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .prologue
    const/4 v5, 0x0

    .line 192
    if-nez p0, :cond_4

    .line 198
    :cond_3
    :goto_3
    return v5

    .line 193
    :cond_4
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v4, :cond_3

    aget-wide v2, v0, v1

    .line 194
    .local v2, "element":J
    cmp-long v6, v2, p1

    if-nez v6, :cond_11

    .line 195
    const/4 v5, 0x1

    goto :goto_3

    .line 193
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x1

    .line 172
    if-nez p1, :cond_4

    .line 178
    :cond_3
    :goto_3
    return v4

    .line 173
    :cond_4
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 174
    .local v1, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v1}, contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 175
    const/4 v4, 0x0

    goto :goto_3

    .line 173
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_9

    .line 109
    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 122
    :goto_8
    return-object v2

    .line 112
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    .line 113
    .local v0, "bucket":I
    sget-object v2, sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 115
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2c

    .line 116
    :cond_23
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 117
    sget-object v2, sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 122
    :cond_2c
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "cache":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    move-object v2, v1

    goto :goto_8
.end method

.method public static equals([B[BI)Z
    .registers 8
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-gez p2, :cond_a

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 87
    :cond_a
    if-ne p0, p1, :cond_d

    .line 98
    :cond_c
    :goto_c
    return v1

    .line 90
    :cond_d
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    array-length v3, p0

    if-lt v3, p2, :cond_17

    array-length v3, p1

    if-ge v3, p2, :cond_19

    :cond_17
    move v1, v2

    .line 91
    goto :goto_c

    .line 93
    :cond_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, p2, :cond_c

    .line 94
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_24

    move v1, v2

    .line 95
    goto :goto_c

    .line 93
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, -0x1

    .line 161
    if-nez p0, :cond_5

    move v0, v1

    .line 165
    :cond_4
    :goto_4
    return v0

    .line 162
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_14

    .line 163
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_14
    move v0, v1

    .line 165
    goto :goto_4
.end method

.method public static isEmpty([I)Z
    .registers 2
    .param p0, "array"    # [I

    .prologue
    .line 136
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([J)Z
    .registers 2
    .param p0, "array"    # [J

    .prologue
    .line 143
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "minLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static newUnpaddedBooleanArray(I)[Z
    .registers 3
    .param p0, "minLen"    # I

    .prologue
    .line 54
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static newUnpaddedByteArray(I)[B
    .registers 3
    .param p0, "minLen"    # I

    .prologue
    .line 42
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static newUnpaddedCharArray(I)[C
    .registers 3
    .param p0, "minLen"    # I

    .prologue
    .line 46
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static newUnpaddedFloatArray(I)[F
    .registers 3
    .param p0, "minLen"    # I

    .prologue
    .line 62
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static newUnpaddedIntArray(I)[I
    .registers 3
    .param p0, "minLen"    # I

    .prologue
    .line 50
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static newUnpaddedLongArray(I)[J
    .registers 3
    .param p0, "minLen"    # I

    .prologue
    .line 58
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .registers 3
    .param p0, "minLen"    # I

    .prologue
    .line 66
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 419
    if-ne p0, p1, :cond_5

    .line 433
    :cond_4
    :goto_4
    return v5

    .line 423
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 424
    .local v2, "sizeA":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 425
    .local v3, "sizeB":I
    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    if-eq v2, v3, :cond_15

    :cond_13
    move v5, v6

    .line 426
    goto :goto_4

    .line 429
    :cond_15
    const/4 v0, 0x0

    .line 430
    .local v0, "diff":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v2, :cond_2c

    if-nez v0, :cond_2c

    .line 431
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_2a

    move v4, v5

    :goto_26
    or-int/2addr v0, v4

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2a
    move v4, v6

    .line 431
    goto :goto_26

    .line 433
    :cond_2c
    if-eqz v0, :cond_4

    move v5, v6

    goto :goto_4
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 375
    if-nez p0, :cond_5

    move-object p0, v0

    .line 382
    .end local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_4
    :goto_4
    return-object p0

    .line 378
    .restart local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_5
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p0, v0

    .line 380
    goto :goto_4
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 399
    if-nez p0, :cond_5

    move-object p0, v0

    .line 406
    .end local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_4
    :goto_4
    return-object p0

    .line 402
    .restart local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p0, v0

    .line 404
    goto :goto_4
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 235
    if-eqz p1, :cond_9

    .line 236
    invoke-static {p1, p2}, contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 250
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_9
    :goto_9
    return-object p1

    .line 237
    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_a
    array-length v1, p1

    .line 238
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_9

    .line 239
    aget-object v3, p1, v0

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 240
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1b

    .line 241
    const/4 p1, 0x0

    goto :goto_9

    .line 243
    :cond_1b
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 244
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    add-int/lit8 v3, v0, 0x1

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    .line 246
    goto :goto_9

    .line 238
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static removeInt([II)[I
    .registers 7
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    .line 277
    if-nez p0, :cond_5

    .line 278
    const/4 v2, 0x0

    .line 293
    :cond_4
    :goto_4
    return-object v2

    .line 280
    :cond_5
    array-length v0, p0

    .line 281
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 282
    aget v3, p0, v1

    if-ne v3, p1, :cond_24

    .line 283
    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [I

    .line 284
    .local v2, "ret":[I
    if-lez v1, :cond_16

    .line 285
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 287
    :cond_16
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_4

    .line 288
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_4

    .line 281
    .end local v2    # "ret":[I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_27
    move-object v2, p0

    .line 293
    goto :goto_4
.end method

.method public static removeLong([JJ)[J
    .registers 10
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .prologue
    const/4 v6, 0x0

    .line 343
    if-nez p0, :cond_5

    .line 344
    const/4 v2, 0x0

    .line 359
    :cond_4
    :goto_4
    return-object v2

    .line 346
    :cond_5
    array-length v0, p0

    .line 347
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_29

    .line 348
    aget-wide v4, p0, v1

    cmp-long v3, v4, p1

    if-nez v3, :cond_26

    .line 349
    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [J

    .line 350
    .local v2, "ret":[J
    if-lez v1, :cond_18

    .line 351
    invoke-static {p0, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 353
    :cond_18
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_4

    .line 354
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_4

    .line 347
    .end local v2    # "ret":[J
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    move-object v2, p0

    .line 359
    goto :goto_4
.end method

.method public static removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "cur"    # [Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 300
    if-nez p0, :cond_5

    .line 301
    const/4 v2, 0x0

    .line 316
    :cond_4
    :goto_4
    return-object v2

    .line 303
    :cond_5
    array-length v0, p0

    .line 304
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 305
    aget-object v3, p0, v1

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 306
    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 307
    .local v2, "ret":[Ljava/lang/String;
    if-lez v1, :cond_1a

    .line 308
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    :cond_1a
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_4

    .line 311
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 304
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2b
    move-object v2, p0

    .line 316
    goto :goto_4
.end method

.method public static total([J)J
    .registers 9
    .param p0, "array"    # [J

    .prologue
    .line 202
    const-wide/16 v4, 0x0

    .line 203
    .local v4, "total":J
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_d

    aget-wide v6, v0, v1

    .line 204
    .local v6, "value":J
    add-long/2addr v4, v6

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 206
    .end local v6    # "value":J
    :cond_d
    return-wide v4
.end method
