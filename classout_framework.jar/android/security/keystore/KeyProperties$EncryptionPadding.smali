.class public abstract Landroid/security/keystore/KeyProperties$EncryptionPadding;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EncryptionPadding"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .registers 4
    .param p0, "paddings"    # [Ljava/lang/String;

    .prologue
    .line 428
    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_8

    .line 429
    :cond_5
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 435
    :cond_7
    return-object v1

    .line 431
    :cond_8
    array-length v2, p0

    new-array v1, v2, [I

    .line 432
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_7

    .line 433
    aget-object v2, p0, v0

    invoke-static {v2}, toKeymaster(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .registers 4
    .param p0, "padding"    # I

    .prologue
    .line 411
    sparse-switch p0, :sswitch_data_28

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encryption padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :sswitch_1c
    const-string v0, "NoPadding"

    .line 419
    :goto_1e
    return-object v0

    .line 415
    :sswitch_1f
    const-string v0, "PKCS7Padding"

    goto :goto_1e

    .line 417
    :sswitch_22
    const-string v0, "PKCS1Padding"

    goto :goto_1e

    .line 419
    :sswitch_25
    const-string v0, "OAEPPadding"

    goto :goto_1e

    .line 411
    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_25
        0x4 -> :sswitch_22
        0x40 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .registers 4
    .param p0, "padding"    # Ljava/lang/String;

    .prologue
    .line 395
    const-string v0, "NoPadding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 396
    const/4 v0, 0x1

    .line 402
    :goto_9
    return v0

    .line 397
    :cond_a
    const-string v0, "PKCS7Padding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 398
    const/16 v0, 0x40

    goto :goto_9

    .line 399
    :cond_15
    const-string v0, "PKCS1Padding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 400
    const/4 v0, 0x4

    goto :goto_9

    .line 401
    :cond_1f
    const-string v0, "OAEPPadding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 402
    const/4 v0, 0x2

    goto :goto_9

    .line 404
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
