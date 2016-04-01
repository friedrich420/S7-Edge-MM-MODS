.class public abstract Landroid/security/keystore/KeyProperties$Digest;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Digest"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 556
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
    .line 625
    .local p0, "digests":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 626
    sget-object v3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 634
    :cond_8
    return-object v3

    .line 628
    :cond_9
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 629
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 630
    .local v2, "offset":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 631
    .local v0, "digest":I
    invoke-static {v0}, fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 632
    add-int/lit8 v2, v2, 0x1

    .line 633
    goto :goto_14
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .registers 8
    .param p0, "digests"    # [Ljava/lang/String;

    .prologue
    .line 639
    if-eqz p0, :cond_5

    array-length v6, p0

    if-nez v6, :cond_8

    .line 640
    :cond_5
    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    .line 648
    :cond_7
    return-object v5

    .line 642
    :cond_8
    array-length v6, p0

    new-array v5, v6, [I

    .line 643
    .local v5, "result":[I
    const/4 v4, 0x0

    .line 644
    .local v4, "offset":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_f
    if-ge v2, v3, :cond_7

    aget-object v1, v0, v2

    .line 645
    .local v1, "digest":Ljava/lang/String;
    invoke-static {v1}, toKeymaster(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    .line 646
    add-int/lit8 v4, v4, 0x1

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .registers 4
    .param p0, "digest"    # I

    .prologue
    .line 581
    packed-switch p0, :pswitch_data_32

    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :pswitch_1c
    const-string v0, "NONE"

    .line 595
    :goto_1e
    return-object v0

    .line 585
    :pswitch_1f
    const-string v0, "MD5"

    goto :goto_1e

    .line 587
    :pswitch_22
    const-string v0, "SHA-1"

    goto :goto_1e

    .line 589
    :pswitch_25
    const-string v0, "SHA-224"

    goto :goto_1e

    .line 591
    :pswitch_28
    const-string v0, "SHA-256"

    goto :goto_1e

    .line 593
    :pswitch_2b
    const-string v0, "SHA-384"

    goto :goto_1e

    .line 595
    :pswitch_2e
    const-string v0, "SHA-512"

    goto :goto_1e

    .line 581
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public static fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;
    .registers 4
    .param p0, "digest"    # I

    .prologue
    .line 603
    packed-switch p0, :pswitch_data_32

    .line 619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :pswitch_1c
    const-string v0, "NONE"

    .line 617
    :goto_1e
    return-object v0

    .line 607
    :pswitch_1f
    const-string v0, "MD5"

    goto :goto_1e

    .line 609
    :pswitch_22
    const-string v0, "SHA1"

    goto :goto_1e

    .line 611
    :pswitch_25
    const-string v0, "SHA224"

    goto :goto_1e

    .line 613
    :pswitch_28
    const-string v0, "SHA256"

    goto :goto_1e

    .line 615
    :pswitch_2b
    const-string v0, "SHA384"

    goto :goto_1e

    .line 617
    :pswitch_2e
    const-string v0, "SHA512"

    goto :goto_1e

    .line 603
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .registers 9
    .param p0, "digest"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 559
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_82

    :cond_13
    :goto_13
    packed-switch v5, :pswitch_data_a0

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :sswitch_2f
    const-string v7, "SHA-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v5, v3

    goto :goto_13

    :sswitch_39
    const-string v7, "SHA-224"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v5, v4

    goto :goto_13

    :sswitch_43
    const-string v7, "SHA-256"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v5, v0

    goto :goto_13

    :sswitch_4d
    const-string v7, "SHA-384"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v5, v1

    goto :goto_13

    :sswitch_57
    const-string v7, "SHA-512"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v5, v2

    goto :goto_13

    :sswitch_61
    const-string v7, "NONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v5, 0x5

    goto :goto_13

    :sswitch_6b
    const-string v7, "MD5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v5, 0x6

    goto :goto_13

    :pswitch_75
    move v0, v1

    .line 573
    :goto_76
    :pswitch_76
    return v0

    :pswitch_77
    move v0, v2

    .line 565
    goto :goto_76

    .line 567
    :pswitch_79
    const/4 v0, 0x5

    goto :goto_76

    .line 569
    :pswitch_7b
    const/4 v0, 0x6

    goto :goto_76

    :pswitch_7d
    move v0, v3

    .line 571
    goto :goto_76

    :pswitch_7f
    move v0, v4

    .line 573
    goto :goto_76

    .line 559
    nop

    :sswitch_data_82
    .sparse-switch
        -0x5ad4aecd -> :sswitch_39
        -0x5ad4ae6e -> :sswitch_43
        -0x5ad4aa52 -> :sswitch_4d
        -0x5ad4a3ab -> :sswitch_57
        0x1297e -> :sswitch_6b
        0x24a738 -> :sswitch_61
        0x4b35330 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_76
        :pswitch_75
        :pswitch_77
        :pswitch_79
        :pswitch_7b
        :pswitch_7d
        :pswitch_7f
    .end packed-switch
.end method
