.class abstract Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;,
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;,
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;,
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private mIv:[B

.field private mIvHasBeenUsed:Z

.field private final mKeymasterBlockMode:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "keymasterBlockMode"    # I
    .param p2, "keymasterPadding"    # I

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 262
    iput p1, p0, mKeymasterBlockMode:I

    .line 263
    iput p2, p0, mKeymasterPadding:I

    .line 264
    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 4
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    .line 290
    invoke-virtual {p0}, isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, mIvHasBeenUsed:Z

    if-eqz v0, :cond_12

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_12
    const v0, 0x10000002

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 298
    const v0, 0x20000004

    iget v1, p0, mKeymasterBlockMode:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 299
    const v0, 0x20000006

    iget v1, p0, mKeymasterPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 300
    iget-object v0, p0, mIv:[B

    if-eqz v0, :cond_36

    .line 301
    const v0, -0x6ffffc17

    iget-object v1, p0, mIv:[B

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 303
    :cond_36
    return-void
.end method

.method protected final engineGetBlockSize()I
    .registers 2

    .prologue
    .line 325
    const/16 v0, 0x10

    return v0
.end method

.method protected final engineGetIV()[B
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected getIv()[B
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, mIv:[B

    return-object v0
.end method

.method protected final initKey(ILjava/security/Key;)V
    .registers 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 275
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_2b

    .line 276
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    const-string/jumbo v0, "null"

    goto :goto_1b

    .line 279
    :cond_2b
    const-string v0, "AES"

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 280
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_66
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-virtual {p0, p2}, setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 285
    return-void
.end method

.method protected final loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 5
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, mIvHasBeenUsed:Z

    .line 311
    const v1, -0x6ffffc17

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    move-result-object v0

    .line 312
    .local v0, "returnedIv":[B
    if-eqz v0, :cond_11

    array-length v1, v0

    if-nez v1, :cond_11

    .line 313
    const/4 v0, 0x0

    .line 316
    :cond_11
    iget-object v1, p0, mIv:[B

    if-nez v1, :cond_18

    .line 317
    iput-object v0, p0, mIv:[B

    .line 321
    :cond_17
    return-void

    .line 318
    :cond_18
    if-eqz v0, :cond_17

    iget-object v1, p0, mIv:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_17

    .line 319
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use differs from provided IV"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected resetAll()V
    .registers 2

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, mIv:[B

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, mIvHasBeenUsed:Z

    .line 270
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 271
    return-void
.end method

.method protected setIv([B)V
    .registers 2
    .param p1, "iv"    # [B

    .prologue
    .line 334
    iput-object p1, p0, mIv:[B

    .line 335
    return-void
.end method
