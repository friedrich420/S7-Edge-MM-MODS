.class public abstract Landroid/security/keystore/KeyProperties$KeyAlgorithm;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyAlgorithm"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    .registers 4
    .param p0, "keymasterAlgorithm"    # I

    .prologue
    .line 185
    packed-switch p0, :pswitch_data_22

    .line 191
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :pswitch_1c
    const-string v0, "EC"

    .line 189
    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "RSA"

    goto :goto_1e

    .line 185
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method public static fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    .registers 5
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keymasterDigest"    # I

    .prologue
    .line 211
    sparse-switch p0, :sswitch_data_4e

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :sswitch_1c
    const-string v0, "AES"

    .line 225
    :goto_1e
    return-object v0

    .line 215
    :sswitch_1f
    packed-switch p1, :pswitch_data_58

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported HMAC digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :pswitch_3f
    const-string v0, "HmacSHA1"

    goto :goto_1e

    .line 219
    :pswitch_42
    const-string v0, "HmacSHA224"

    goto :goto_1e

    .line 221
    :pswitch_45
    const-string v0, "HmacSHA256"

    goto :goto_1e

    .line 223
    :pswitch_48
    const-string v0, "HmacSHA384"

    goto :goto_1e

    .line 225
    :pswitch_4b
    const-string v0, "HmacSHA512"

    goto :goto_1e

    .line 211
    :sswitch_data_4e
    .sparse-switch
        0x20 -> :sswitch_1c
        0x80 -> :sswitch_1f
    .end sparse-switch

    .line 215
    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
    .end packed-switch
.end method

.method public static toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 174
    const/4 v0, 0x3

    .line 176
    :goto_9
    return v0

    .line 175
    :cond_a
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 176
    const/4 v0, 0x1

    goto :goto_9

    .line 178
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toKeymasterDigest(Ljava/lang/String;)I
    .registers 8
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, -0x1

    .line 242
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string v6, "HMAC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 244
    const-string v6, "HMAC"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "digestUpper":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_7c

    :cond_23
    :goto_23
    packed-switch v5, :pswitch_data_92

    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported HMAC digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :sswitch_3f
    const-string v6, "SHA1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v5, 0x0

    goto :goto_23

    :sswitch_49
    const-string v6, "SHA224"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v5, 0x1

    goto :goto_23

    :sswitch_53
    const-string v6, "SHA256"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v5, v2

    goto :goto_23

    :sswitch_5d
    const-string v6, "SHA384"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v5, v3

    goto :goto_23

    :sswitch_67
    const-string v6, "SHA512"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v5, v4

    goto :goto_23

    :pswitch_71
    move v2, v3

    .line 261
    .end local v1    # "digestUpper":Ljava/lang/String;
    :goto_72
    :pswitch_72
    return v2

    .restart local v1    # "digestUpper":Ljava/lang/String;
    :pswitch_73
    move v2, v4

    .line 251
    goto :goto_72

    .line 253
    :pswitch_75
    const/4 v2, 0x5

    goto :goto_72

    .line 255
    :pswitch_77
    const/4 v2, 0x6

    goto :goto_72

    .end local v1    # "digestUpper":Ljava/lang/String;
    :cond_79
    move v2, v5

    .line 261
    goto :goto_72

    .line 245
    nop

    :sswitch_data_7c
    .sparse-switch
        -0x6e48da18 -> :sswitch_49
        -0x6e48d9b9 -> :sswitch_53
        -0x6e48d59d -> :sswitch_5d
        -0x6e48cef6 -> :sswitch_67
        0x26d125 -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_72
        :pswitch_71
        :pswitch_73
        :pswitch_75
        :pswitch_77
    .end packed-switch
.end method

.method public static toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v0, "AES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 199
    const/16 v0, 0x20

    .line 201
    :goto_a
    return v0

    .line 200
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 201
    const/16 v0, 0x80

    goto :goto_a

    .line 203
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported secret key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
