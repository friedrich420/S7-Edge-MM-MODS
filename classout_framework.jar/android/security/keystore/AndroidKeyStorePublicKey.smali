.class public Landroid/security/keystore/AndroidKeyStorePublicKey;
.super Landroid/security/keystore/AndroidKeyStoreKey;
.source "AndroidKeyStorePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final mEncoded:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "x509EncodedForm"    # [B

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p3}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    iput-object v0, p0, mEncoded:[B

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_5

    .line 69
    :cond_4
    :goto_4
    return v1

    .line 59
    :cond_5
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 60
    goto :goto_4

    .line 62
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_19

    move v1, v2

    .line 63
    goto :goto_4

    :cond_19
    move-object v0, p1

    .line 65
    check-cast v0, Landroid/security/keystore/AndroidKeyStorePublicKey;

    .line 66
    .local v0, "other":Landroid/security/keystore/AndroidKeyStorePublicKey;
    iget-object v3, p0, mEncoded:[B

    iget-object v4, v0, mEncoded:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 67
    goto :goto_4
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, mEncoded:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 48
    const/16 v0, 0x1f

    .line 49
    .local v0, "prime":I
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->hashCode()I

    move-result v1

    .line 50
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, mEncoded:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 51
    return v1
.end method
