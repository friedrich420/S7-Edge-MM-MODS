.class public abstract Landroid/security/keystore/KeyProperties$Purpose;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Purpose"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "purposes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 118
    .local v2, "result":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 119
    .local v1, "keymasterPurpose":I
    invoke-static {v1}, fromKeymaster(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 120
    goto :goto_5

    .line 121
    .end local v1    # "keymasterPurpose":I
    :cond_1b
    return v2
.end method

.method public static allToKeymaster(I)[I
    .registers 4
    .param p0, "purposes"    # I

    .prologue
    .line 109
    # invokes: Landroid/security/keystore/KeyProperties;->getSetFlags(I)[I
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->access$000(I)[I

    move-result-object v1

    .line 110
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 111
    aget v2, v1, v0

    invoke-static {v2}, toKeymaster(I)I

    move-result v2

    aput v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 113
    :cond_13
    return-object v1
.end method

.method public static fromKeymaster(I)I
    .registers 4
    .param p0, "purpose"    # I

    .prologue
    .line 93
    packed-switch p0, :pswitch_data_26

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_1c
    const/4 v0, 0x1

    .line 101
    :goto_1d
    return v0

    .line 97
    :pswitch_1e
    const/4 v0, 0x2

    goto :goto_1d

    .line 99
    :pswitch_20
    const/4 v0, 0x4

    goto :goto_1d

    .line 101
    :pswitch_22
    const/16 v0, 0x8

    goto :goto_1d

    .line 93
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_22
    .end packed-switch
.end method

.method public static toKeymaster(I)I
    .registers 4
    .param p0, "purpose"    # I

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_24

    .line 88
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_1c
    const/4 v0, 0x0

    .line 86
    :goto_1d
    return v0

    .line 82
    :pswitch_1e
    const/4 v0, 0x1

    goto :goto_1d

    .line 84
    :pswitch_20
    const/4 v0, 0x2

    goto :goto_1d

    .line 86
    :pswitch_22
    const/4 v0, 0x3

    goto :goto_1d

    .line 78
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1e
        :pswitch_3
        :pswitch_20
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_22
    .end packed-switch
.end method
