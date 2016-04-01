.class abstract Landroid/security/keystore/KeyProperties$SignaturePadding;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SignaturePadding"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allToKeymaster([Ljava/lang/String;)[I
    .registers 4
    .param p0, "paddings"    # [Ljava/lang/String;

    .prologue
    .line 488
    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_8

    .line 489
    :cond_5
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 495
    :cond_7
    return-object v1

    .line 491
    :cond_8
    array-length v2, p0

    new-array v1, v2, [I

    .line 492
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_7

    .line 493
    aget-object v2, p0, v0

    invoke-static {v2}, toKeymaster(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method static fromKeymaster(I)Ljava/lang/String;
    .registers 4
    .param p0, "padding"    # I

    .prologue
    .line 476
    packed-switch p0, :pswitch_data_22

    .line 482
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported signature padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :pswitch_1c
    const-string v0, "PKCS1"

    .line 480
    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "PSS"

    goto :goto_1e

    .line 476
    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_1f
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method static toKeymaster(Ljava/lang/String;)I
    .registers 4
    .param p0, "padding"    # Ljava/lang/String;

    .prologue
    .line 463
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_42

    :cond_e
    :goto_e
    packed-switch v0, :pswitch_data_4c

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported signature padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :sswitch_2a
    const-string v2, "PKCS1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    goto :goto_e

    :sswitch_34
    const-string v2, "PSS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    .line 465
    :pswitch_3e
    const/4 v0, 0x5

    .line 467
    :goto_3f
    return v0

    :pswitch_40
    const/4 v0, 0x3

    goto :goto_3f

    .line 463
    :sswitch_data_42
    .sparse-switch
        0x136b0 -> :sswitch_34
        0x48a75e6 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_40
    .end packed-switch
.end method
