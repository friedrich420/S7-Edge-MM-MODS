.class public final Landroid/util/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field public static final EMPTY:Landroid/util/ArrayMap;

.field static final EMPTY_IMMUTABLE_INTS:[I

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, <init>(Z)V

    sput-object v0, EMPTY:Landroid/util/ArrayMap;

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, EMPTY_IMMUTABLE_INTS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 262
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mHashes:[I

    .line 264
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, mArray:[Ljava/lang/Object;

    .line 265
    const/4 v0, 0x0

    iput v0, p0, mSize:I

    .line 266
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 271
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    if-nez p1, :cond_11

    .line 273
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mHashes:[I

    .line 274
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, mArray:[Ljava/lang/Object;

    .line 278
    :goto_d
    const/4 v0, 0x0

    iput v0, p0, mSize:I

    .line 279
    return-void

    .line 276
    :cond_11
    invoke-direct {p0, p1}, allocArrays(I)V

    goto :goto_d
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, <init>()V

    .line 295
    if-eqz p1, :cond_8

    .line 296
    invoke-virtual {p0, p1}, putAll(Landroid/util/ArrayMap;)V

    .line 298
    :cond_8
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .param p1, "immutable"    # Z

    .prologue
    .line 281
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    if-eqz p1, :cond_11

    sget-object v0, EMPTY_IMMUTABLE_INTS:[I

    :goto_7
    iput-object v0, p0, mHashes:[I

    .line 286
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, mArray:[Ljava/lang/Object;

    .line 287
    const/4 v0, 0x0

    iput v0, p0, mSize:I

    .line 288
    return-void

    .line 285
    :cond_11
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_7
.end method

.method private allocArrays(I)V
    .registers 8
    .param p1, "size"    # I

    .prologue
    .line 165
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v2, p0, mHashes:[I

    sget-object v3, EMPTY_IMMUTABLE_INTS:[I

    if-ne v2, v3, :cond_e

    .line 166
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "ArrayMap is immutable"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_e
    const/16 v2, 0x8

    if-ne p1, v2, :cond_69

    .line 169
    const-class v3, Landroid/util/ArrayMap;

    monitor-enter v3

    .line 170
    :try_start_15
    sget-object v2, mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v2, :cond_5d

    .line 171
    sget-object v0, mTwiceBaseCache:[Ljava/lang/Object;

    .line 172
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, mArray:[Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_5a

    .line 177
    const/4 v2, 0x0

    :try_start_1e
    aget-object v2, v0, v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    sput-object v2, mTwiceBaseCache:[Ljava/lang/Object;

    .line 178
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, p0, mHashes:[I

    .line 179
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v0, v4

    aput-object v5, v0, v2

    .line 180
    sget v2, mTwiceBaseCacheSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, mTwiceBaseCacheSize:I
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_3c} :catch_3e
    .catchall {:try_start_1e .. :try_end_3c} :catchall_5a

    .line 191
    :goto_3c
    :try_start_3c
    monitor-exit v3

    .line 224
    .end local v0    # "array":[Ljava/lang/Object;
    :goto_3d
    return-void

    .line 181
    .restart local v0    # "array":[Ljava/lang/Object;
    :catch_3e
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/ClassCastException;
    new-array v2, p1, [I

    iput-object v2, p0, mHashes:[I

    .line 183
    shl-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, mArray:[Ljava/lang/Object;

    .line 184
    const/4 v2, 0x0

    sput-object v2, mTwiceBaseCache:[Ljava/lang/Object;

    .line 185
    const/4 v2, 0x0

    sput v2, mTwiceBaseCacheSize:I

    .line 186
    const-string v2, "ArrayMap"

    const-string v4, "ClassCastException occured"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_3c

    .line 193
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catchall_5a
    move-exception v2

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_5a

    throw v2

    :cond_5d
    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5a

    .line 222
    :cond_5e
    :goto_5e
    new-array v2, p1, [I

    iput-object v2, p0, mHashes:[I

    .line 223
    shl-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, mArray:[Ljava/lang/Object;

    goto :goto_3d

    .line 194
    :cond_69
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5e

    .line 195
    const-class v3, Landroid/util/ArrayMap;

    monitor-enter v3

    .line 196
    :try_start_6f
    sget-object v2, mBaseCache:[Ljava/lang/Object;

    if-eqz v2, :cond_b7

    .line 197
    sget-object v0, mBaseCache:[Ljava/lang/Object;

    .line 198
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, mArray:[Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_98

    .line 203
    const/4 v2, 0x0

    :try_start_78
    aget-object v2, v0, v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    sput-object v2, mBaseCache:[Ljava/lang/Object;

    .line 204
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, p0, mHashes:[I

    .line 205
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v0, v4

    aput-object v5, v0, v2

    .line 206
    sget v2, mBaseCacheSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, mBaseCacheSize:I
    :try_end_96
    .catch Ljava/lang/ClassCastException; {:try_start_78 .. :try_end_96} :catch_9b
    .catchall {:try_start_78 .. :try_end_96} :catchall_98

    .line 217
    :goto_96
    :try_start_96
    monitor-exit v3

    goto :goto_3d

    .line 219
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_98
    move-exception v2

    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_98

    throw v2

    .line 207
    .restart local v0    # "array":[Ljava/lang/Object;
    :catch_9b
    move-exception v1

    .line 208
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    :try_start_9c
    new-array v2, p1, [I

    iput-object v2, p0, mHashes:[I

    .line 209
    shl-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, mArray:[Ljava/lang/Object;

    .line 210
    const/4 v2, 0x0

    sput-object v2, mBaseCache:[Ljava/lang/Object;

    .line 211
    const/4 v2, 0x0

    sput v2, mBaseCacheSize:I

    .line 212
    const-string v2, "ArrayMap"

    const-string v4, "ClassCastException occured"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_96

    .line 219
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_b7
    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_9c .. :try_end_b8} :catchall_98

    goto :goto_5e
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 8
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 227
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    .line 228
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 229
    :try_start_b
    sget v1, mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_2b

    .line 230
    const/4 v1, 0x0

    sget-object v3, mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 231
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 232
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1b
    if-lt v0, v4, :cond_23

    .line 233
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 232
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 235
    :cond_23
    sput-object p1, mTwiceBaseCache:[Ljava/lang/Object;

    .line 236
    sget v1, mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, mTwiceBaseCacheSize:I

    .line 240
    .end local v0    # "i":I
    :cond_2b
    monitor-exit v2

    .line 256
    :cond_2c
    :goto_2c
    return-void

    .line 240
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_2d

    throw v1

    .line 241
    :cond_30
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    .line 242
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 243
    :try_start_37
    sget v1, mBaseCacheSize:I

    if-ge v1, v3, :cond_57

    .line 244
    const/4 v1, 0x0

    sget-object v3, mBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 245
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 246
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_47
    if-lt v0, v4, :cond_4f

    .line 247
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 246
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 249
    :cond_4f
    sput-object p1, mBaseCache:[Ljava/lang/Object;

    .line 250
    sget v1, mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, mBaseCacheSize:I

    .line 254
    .end local v0    # "i":I
    :cond_57
    monitor-exit v2

    goto :goto_2c

    :catchall_59
    move-exception v1

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method private getCollection()Landroid/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_b

    .line 774
    new-instance v0, Landroid/util/ArrayMap$1;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap$1;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, mCollections:Landroid/util/MapCollections;

    .line 821
    :cond_b
    iget-object v0, p0, mCollections:Landroid/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v2, p0, mSize:I

    .line 515
    .local v2, "index":I
    if-nez p1, :cond_12

    const/4 v1, 0x0

    .line 516
    .local v1, "hash":I
    :goto_5
    iget-object v3, p0, mHashes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_17

    .line 517
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Array is full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 515
    .end local v1    # "hash":I
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    .line 519
    .restart local v1    # "hash":I
    :cond_17
    if-lez v2, :cond_6b

    iget-object v3, p0, mHashes:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    if-le v3, v1, :cond_6b

    .line 520
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 522
    const-string v3, "ArrayMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is before end of array hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mHashes:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    invoke-virtual {p0, p1, p2}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_6a
    return-void

    .line 528
    :cond_6b
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, mSize:I

    .line 529
    iget-object v3, p0, mHashes:[I

    aput v1, v3, v2

    .line 530
    shl-int/lit8 v2, v2, 0x1

    .line 531
    iget-object v3, p0, mArray:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 532
    iget-object v3, p0, mArray:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aput-object p2, v3, v4

    goto :goto_6a
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 305
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, mSize:I

    if-lez v0, :cond_18

    .line 306
    iget-object v0, p0, mHashes:[I

    iget-object v1, p0, mArray:[Ljava/lang/Object;

    iget v2, p0, mSize:I

    invoke-static {v0, v1, v2}, freeArrays([I[Ljava/lang/Object;I)V

    .line 307
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mHashes:[I

    .line 308
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, mArray:[Ljava/lang/Object;

    .line 309
    const/4 v0, 0x0

    iput v0, p0, mSize:I

    .line 311
    :cond_18
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 831
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 353
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 394
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public ensureCapacity(I)V
    .registers 7
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 333
    iget-object v2, p0, mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_26

    .line 334
    iget-object v1, p0, mHashes:[I

    .line 335
    .local v1, "ohashes":[I
    iget-object v0, p0, mArray:[Ljava/lang/Object;

    .line 336
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, allocArrays(I)V

    .line 337
    iget v2, p0, mSize:I

    if-lez v2, :cond_21

    .line 338
    iget-object v2, p0, mHashes:[I

    iget v3, p0, mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 339
    iget-object v2, p0, mArray:[Ljava/lang/Object;

    iget v3, p0, mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    :cond_21
    iget v2, p0, mSize:I

    invoke-static {v1, v0, v2}, freeArrays([I[Ljava/lang/Object;I)V

    .line 343
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_26
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 683
    if-ne p0, p1, :cond_5

    .line 712
    :cond_4
    :goto_4
    return v6

    .line 686
    :cond_5
    instance-of v8, p1, Ljava/util/Map;

    if-eqz v8, :cond_46

    move-object v3, p1

    .line 687
    check-cast v3, Ljava/util/Map;

    .line 688
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, size()I

    move-result v8

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    if-eq v8, v9, :cond_18

    move v6, v7

    .line 689
    goto :goto_4

    .line 693
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    :try_start_19
    iget v8, p0, mSize:I

    if-ge v0, v8, :cond_4

    .line 694
    invoke-virtual {p0, v0}, keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 695
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 696
    .local v4, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 697
    .local v5, "theirs":Ljava/lang/Object;
    if-nez v4, :cond_35

    .line 698
    if-nez v5, :cond_33

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    :cond_33
    move v6, v7

    .line 699
    goto :goto_4

    .line 701
    :cond_35
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_38} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_38} :catch_43

    move-result v8

    if-nez v8, :cond_3d

    move v6, v7

    .line 702
    goto :goto_4

    .line 693
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 705
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "mine":Ljava/lang/Object;, "TV;"
    .end local v5    # "theirs":Ljava/lang/Object;
    :catch_40
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v6, v7

    .line 706
    goto :goto_4

    .line 707
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_43
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v6, v7

    .line 708
    goto :goto_4

    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_46
    move v6, v7

    .line 712
    goto :goto_4
.end method

.method public erase()V
    .registers 5

    .prologue
    .line 318
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v3, p0, mSize:I

    if-lez v3, :cond_16

    .line 319
    iget v3, p0, mSize:I

    shl-int/lit8 v0, v3, 0x1

    .line 320
    .local v0, "N":I
    iget-object v1, p0, mArray:[Ljava/lang/Object;

    .line 321
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_13

    .line 322
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 324
    :cond_13
    const/4 v3, 0x0

    iput v3, p0, mSize:I

    .line 326
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_16
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 406
    .local v0, "index":I
    if-ltz v0, :cond_f

    iget-object v1, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 10

    .prologue
    .line 720
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v1, p0, mHashes:[I

    .line 721
    .local v1, "hashes":[I
    iget-object v0, p0, mArray:[Ljava/lang/Object;

    .line 722
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 723
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x1

    .local v5, "v":I
    iget v4, p0, mSize:I

    .local v4, "s":I
    :goto_9
    if-ge v2, v4, :cond_1e

    .line 724
    aget-object v6, v0, v5

    .line 725
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    if-nez v6, :cond_19

    const/4 v7, 0x0

    :goto_12
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 723
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_9

    .line 725
    :cond_19
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_12

    .line 727
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1e
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 89
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, mSize:I

    .line 92
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 93
    const/4 v3, -0x1

    .line 123
    :cond_5
    :goto_5
    return v3

    .line 96
    :cond_6
    iget-object v4, p0, mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 99
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 104
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 110
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1c
    if-ge v1, v0, :cond_35

    iget-object v4, p0, mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_35

    .line 111
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    move v3, v1

    goto :goto_5

    .line 110
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 115
    :cond_35
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_37
    if-ltz v2, :cond_50

    iget-object v4, p0, mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_50

    .line 116
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    move v3, v2

    goto :goto_5

    .line 115
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_37

    .line 123
    :cond_50
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 363
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez p1, :cond_7

    invoke-virtual {p0}, indexOfNull()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6
.end method

.method indexOfNull()I
    .registers 7

    .prologue
    .line 127
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, mSize:I

    .line 130
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 131
    const/4 v3, -0x1

    .line 161
    :cond_5
    :goto_5
    return v3

    .line 134
    :cond_6
    iget-object v4, p0, mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 137
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 142
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_5

    .line 148
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_19
    if-ge v1, v0, :cond_2e

    iget-object v4, p0, mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_2e

    .line 149
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2b

    move v3, v1

    goto :goto_5

    .line 148
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 153
    :cond_2e
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_30
    if-ltz v2, :cond_45

    iget-object v4, p0, mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_45

    .line 154
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_42

    move v3, v2

    goto :goto_5

    .line 153
    :cond_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    .line 161
    :cond_45
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 367
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v3, p0, mSize:I

    mul-int/lit8 v0, v3, 0x2

    .line 368
    .local v0, "N":I
    iget-object v1, p0, mArray:[Ljava/lang/Object;

    .line 369
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_15

    .line 370
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_26

    .line 371
    aget-object v3, v1, v2

    if-nez v3, :cond_12

    .line 372
    shr-int/lit8 v3, v2, 0x1

    .line 382
    :goto_11
    return v3

    .line 370
    :cond_12
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 376
    .end local v2    # "i":I
    :cond_15
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_16
    if-ge v2, v0, :cond_26

    .line 377
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 378
    shr-int/lit8 v3, v2, 0x1

    goto :goto_11

    .line 376
    :cond_23
    add-int/lit8 v2, v2, 0x2

    goto :goto_16

    .line 382
    :cond_26
    const/4 v3, -0x1

    goto :goto_11
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 445
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/16 v2, 0x8

    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 460
    if-nez p1, :cond_1a

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "hash":I
    invoke-virtual {p0}, indexOfNull()I

    move-result v1

    .line 467
    .local v1, "index":I
    :goto_b
    if-ltz v1, :cond_23

    .line 468
    shl-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v6, 0x1

    .line 469
    iget-object v6, p0, mArray:[Ljava/lang/Object;

    aget-object v5, v6, v1

    .line 470
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, mArray:[Ljava/lang/Object;

    aput-object p2, v6, v1

    .line 505
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :goto_19
    return-object v5

    .line 464
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 465
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_b

    .line 474
    :cond_23
    xor-int/lit8 v1, v1, -0x1

    .line 475
    iget v7, p0, mSize:I

    iget-object v8, p0, mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_55

    .line 476
    iget v7, p0, mSize:I

    if-lt v7, v2, :cond_91

    iget v6, p0, mSize:I

    iget v7, p0, mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v6, v7

    .line 481
    .local v2, "n":I
    :cond_38
    :goto_38
    iget-object v4, p0, mHashes:[I

    .line 482
    .local v4, "ohashes":[I
    iget-object v3, p0, mArray:[Ljava/lang/Object;

    .line 483
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, allocArrays(I)V

    .line 485
    iget-object v6, p0, mHashes:[I

    array-length v6, v6

    if-lez v6, :cond_50

    .line 487
    iget-object v6, p0, mHashes:[I

    array-length v7, v4

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 488
    iget-object v6, p0, mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    :cond_50
    iget v6, p0, mSize:I

    invoke-static {v4, v3, v6}, freeArrays([I[Ljava/lang/Object;I)V

    .line 494
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_55
    iget v6, p0, mSize:I

    if-ge v1, v6, :cond_77

    .line 497
    iget-object v6, p0, mHashes:[I

    iget-object v7, p0, mHashes:[I

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, mSize:I

    sub-int/2addr v9, v1

    invoke-static {v6, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 498
    iget-object v6, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    iget-object v8, p0, mArray:[Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    shl-int/lit8 v9, v9, 0x1

    iget v10, p0, mSize:I

    sub-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    :cond_77
    iget-object v6, p0, mHashes:[I

    aput v0, v6, v1

    .line 502
    iget-object v6, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object p1, v6, v7

    .line 503
    iget-object v6, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object p2, v6, v7

    .line 504
    iget v6, p0, mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, mSize:I

    .line 505
    const/4 v5, 0x0

    goto :goto_19

    .line 476
    :cond_91
    iget v7, p0, mSize:I

    if-ge v7, v6, :cond_38

    move v2, v6

    goto :goto_38
.end method

.method public putAll(Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 578
    iget v0, p1, mSize:I

    .line 579
    .local v0, "N":I
    iget v2, p0, mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, ensureCapacity(I)V

    .line 580
    iget v2, p0, mSize:I

    if-nez v2, :cond_22

    .line 581
    if-lez v0, :cond_21

    .line 582
    iget-object v2, p1, mHashes:[I

    iget-object v3, p0, mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 583
    iget-object v2, p1, mArray:[Ljava/lang/Object;

    iget-object v3, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iput v0, p0, mSize:I

    .line 591
    :cond_21
    return-void

    .line 587
    :cond_22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v0, :cond_21

    .line 588
    invoke-virtual {p1, v1}, keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v2, p0, mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, ensureCapacity(I)V

    .line 841
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 842
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 844
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_2a
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 602
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 603
    invoke-virtual {p0, v0}, removeAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 606
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 852
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v9, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 615
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v4, v5

    .line 616
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_25

    .line 619
    iget-object v4, p0, mHashes:[I

    iget-object v5, p0, mArray:[Ljava/lang/Object;

    iget v6, p0, mSize:I

    invoke-static {v4, v5, v6}, freeArrays([I[Ljava/lang/Object;I)V

    .line 620
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    iput-object v4, p0, mHashes:[I

    .line 621
    sget-object v4, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, mArray:[Ljava/lang/Object;

    .line 622
    iput v7, p0, mSize:I

    .line 662
    :cond_24
    :goto_24
    return-object v3

    .line 624
    :cond_25
    iget-object v4, p0, mHashes:[I

    array-length v4, v4

    if-le v4, v0, :cond_79

    iget v4, p0, mSize:I

    iget-object v5, p0, mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_79

    .line 628
    iget v4, p0, mSize:I

    if-le v4, v0, :cond_3f

    iget v4, p0, mSize:I

    iget v5, p0, mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 632
    .local v0, "n":I
    :cond_3f
    iget-object v2, p0, mHashes:[I

    .line 633
    .local v2, "ohashes":[I
    iget-object v1, p0, mArray:[Ljava/lang/Object;

    .line 634
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, allocArrays(I)V

    .line 636
    iget v4, p0, mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mSize:I

    .line 637
    if-lez p1, :cond_5a

    .line 639
    iget-object v4, p0, mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 640
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    :cond_5a
    iget v4, p0, mSize:I

    if-ge p1, v4, :cond_24

    .line 645
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, mHashes:[I

    iget v6, p0, mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 646
    add-int/lit8 v4, p1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget-object v5, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    iget v7, p0, mSize:I

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_24

    .line 650
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_79
    iget v4, p0, mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mSize:I

    .line 651
    iget v4, p0, mSize:I

    if-ge p1, v4, :cond_a1

    .line 654
    iget-object v4, p0, mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, mHashes:[I

    iget v7, p0, mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 655
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget-object v6, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    iget v8, p0, mSize:I

    sub-int/2addr v8, p1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    :cond_a1
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    iget v5, p0, mSize:I

    shl-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    .line 659
    iget-object v4, p0, mArray:[Ljava/lang/Object;

    iget v5, p0, mSize:I

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    goto/16 :goto_24
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    .line 435
    iget-object v1, p0, mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 436
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 437
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 670
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 739
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 740
    const-string/jumbo v4, "{}"

    .line 764
    :goto_9
    return-object v4

    .line 743
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 744
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v4, p0, mSize:I

    if-ge v1, v4, :cond_4a

    .line 746
    if-lez v1, :cond_24

    .line 747
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_24
    invoke-virtual {p0, v1}, keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 750
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_3e

    .line 751
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 755
    :goto_2d
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {p0, v1}, valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 757
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_44

    .line 758
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 745
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 753
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3e
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 760
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_44
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 763
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4a
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9
.end method

.method public validate()V
    .registers 12

    .prologue
    .line 544
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, mSize:I

    .line 545
    .local v0, "N":I
    const/4 v8, 0x1

    if-gt v0, v8, :cond_6

    .line 571
    :cond_5
    return-void

    .line 549
    :cond_6
    iget-object v8, p0, mHashes:[I

    const/4 v9, 0x0

    aget v1, v8, v9

    .line 550
    .local v1, "basehash":I
    const/4 v2, 0x0

    .line 551
    .local v2, "basei":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_d
    if-ge v5, v0, :cond_5

    .line 552
    iget-object v8, p0, mHashes:[I

    aget v4, v8, v5

    .line 553
    .local v4, "hash":I
    if-eq v4, v1, :cond_1a

    .line 554
    move v1, v4

    .line 555
    move v2, v5

    .line 551
    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 560
    :cond_1a
    iget-object v8, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, v5, 0x1

    aget-object v3, v8, v9

    .line 561
    .local v3, "cur":Ljava/lang/Object;
    add-int/lit8 v6, v5, -0x1

    .local v6, "j":I
    :goto_22
    if-lt v6, v2, :cond_17

    .line 562
    iget-object v8, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, v6, 0x1

    aget-object v7, v8, v9

    .line 563
    .local v7, "prev":Ljava/lang/Object;
    if-ne v3, v7, :cond_45

    .line 564
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate key in ArrayMap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 566
    :cond_45
    if-eqz v3, :cond_68

    if-eqz v7, :cond_68

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 567
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate key in ArrayMap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 561
    :cond_68
    add-int/lit8 v6, v6, -0x1

    goto :goto_22
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
