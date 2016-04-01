.class public abstract Landroid/security/keystore/KeyProperties$BlockMode;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BlockMode"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "blockModes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 330
    :cond_8
    sget-object v3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 338
    :cond_a
    return-object v3

    .line 332
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 333
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 334
    .local v2, "offset":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 335
    .local v0, "blockMode":I
    invoke-static {v0}, fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 336
    add-int/lit8 v2, v2, 0x1

    .line 337
    goto :goto_16
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .registers 4
    .param p0, "blockModes"    # [Ljava/lang/String;

    .prologue
    .line 342
    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_8

    .line 343
    :cond_5
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 349
    :cond_7
    return-object v1

    .line 345
    :cond_8
    array-length v2, p0

    new-array v1, v2, [I

    .line 346
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_7

    .line 347
    aget-object v2, p0, v0

    invoke-static {v2}, toKeymaster(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .registers 4
    .param p0, "blockMode"    # I

    .prologue
    .line 312
    sparse-switch p0, :sswitch_data_28

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :sswitch_1c
    const-string v0, "ECB"

    .line 320
    :goto_1e
    return-object v0

    .line 316
    :sswitch_1f
    const-string v0, "CBC"

    goto :goto_1e

    .line 318
    :sswitch_22
    const-string v0, "CTR"

    goto :goto_1e

    .line 320
    :sswitch_25
    const-string v0, "GCM"

    goto :goto_1e

    .line 312
    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_22
        0x20 -> :sswitch_25
    .end sparse-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .registers 4
    .param p0, "blockMode"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string v0, "ECB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 298
    const/4 v0, 0x1

    .line 304
    :goto_9
    return v0

    .line 299
    :cond_a
    const-string v0, "CBC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 300
    const/4 v0, 0x2

    goto :goto_9

    .line 301
    :cond_14
    const-string v0, "CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 302
    const/4 v0, 0x3

    goto :goto_9

    .line 303
    :cond_1e
    const-string v0, "GCM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 304
    const/16 v0, 0x20

    goto :goto_9

    .line 306
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
