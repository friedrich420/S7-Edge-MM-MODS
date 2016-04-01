.class abstract Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$PKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private final mKeymasterPadding:I

.field private mKeymasterPaddingOverride:I

.field private mModulusSizeBytes:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "keymasterPadding"    # I

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 350
    const/4 v0, -0x1

    iput v0, p0, mModulusSizeBytes:I

    .line 353
    iput p1, p0, mKeymasterPadding:I

    .line 354
    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 7
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    const/4 v4, -0x1

    .line 460
    const v2, 0x10000002

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 461
    invoke-virtual {p0}, getKeymasterPaddingOverride()I

    move-result v0

    .line 462
    .local v0, "keymasterPadding":I
    if-ne v0, v4, :cond_10

    .line 463
    iget v0, p0, mKeymasterPadding:I

    .line 465
    :cond_10
    const v2, 0x20000006

    invoke-virtual {p1, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 466
    invoke-virtual {p0}, getKeymasterPurposeOverride()I

    move-result v1

    .line 467
    .local v1, "purposeOverride":I
    if-eq v1, v4, :cond_29

    const/4 v2, 0x2

    if-eq v1, v2, :cond_22

    const/4 v2, 0x3

    if-ne v1, v2, :cond_29

    .line 471
    :cond_22
    const v2, 0x20000005

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 473
    :cond_29
    return-void
.end method

.method protected adjustConfigForEncryptingWithPrivateKey()Z
    .registers 2

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetBlockSize()I
    .registers 2

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetIV()[B
    .registers 2

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .prologue
    .line 494
    invoke-virtual {p0}, getModulusSizeBytes()I

    move-result v0

    return v0
.end method

.method protected final getKeymasterPaddingOverride()I
    .registers 2

    .prologue
    .line 512
    iget v0, p0, mKeymasterPaddingOverride:I

    return v0
.end method

.method protected final getModulusSizeBytes()I
    .registers 3

    .prologue
    .line 498
    iget v0, p0, mModulusSizeBytes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 499
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_d
    iget v0, p0, mModulusSizeBytes:I

    return v0
.end method

.method protected final initKey(ILjava/security/Key;)V
    .registers 13
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 358
    if-nez p2, :cond_d

    .line 359
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "Unsupported key: null"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 361
    :cond_d
    const-string v5, "RSA"

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 362
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported key algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Only "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "RSA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    :cond_48
    instance-of v5, p2, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v5, :cond_6f

    move-object v4, p2

    .line 367
    check-cast v4, Landroid/security/keystore/AndroidKeyStoreKey;

    .line 374
    .local v4, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :goto_4f
    instance-of v5, v4, Ljava/security/PrivateKey;

    if-eqz v5, :cond_c9

    .line 376
    packed-switch p1, :pswitch_data_184

    .line 392
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSA private keys cannot be used with opmode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 368
    .end local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_6f
    instance-of v5, p2, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v5, :cond_77

    move-object v4, p2

    .line 369
    check-cast v4, Landroid/security/keystore/AndroidKeyStoreKey;

    .restart local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    goto :goto_4f

    .line 371
    .end local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_77
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported key type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    .restart local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :pswitch_90
    invoke-virtual {p0}, adjustConfigForEncryptingWithPrivateKey()Z

    move-result v5

    if-nez v5, :cond_11c

    .line 384
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSA private keys cannot be used with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, opmodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and padding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mKeymasterPadding:I

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Only RSA public keys supported for this mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 397
    :cond_c9
    packed-switch p1, :pswitch_data_190

    .line 411
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSA public keys cannot be used with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, opmodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 404
    :pswitch_e9
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSA public keys cannot be used with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, opmodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and padding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mKeymasterPadding:I

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Only RSA private keys supported for this opmode."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    :cond_11c
    :pswitch_11c
    new-instance v1, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 417
    .local v1, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0}, getKeyStore()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v7, v1}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    .line 419
    .local v0, "errorCode":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_13d

    .line 420
    invoke-virtual {p0}, getKeyStore()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;

    move-result-object v5

    throw v5

    .line 422
    :cond_13d
    const v5, 0x30000003

    invoke-virtual {v1, v5, v8, v9}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v2

    .line 423
    .local v2, "keySizeBits":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_150

    .line 424
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "Size of key not known"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 425
    :cond_150
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-lez v5, :cond_176

    .line 426
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bits"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 428
    :cond_176
    const-wide/16 v6, 0x7

    add-long/2addr v6, v2

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, mModulusSizeBytes:I

    .line 430
    invoke-virtual {p0, v4}, setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 431
    return-void

    .line 376
    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_90
        :pswitch_11c
        :pswitch_90
        :pswitch_11c
    .end packed-switch

    .line 397
    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_11c
        :pswitch_e9
        :pswitch_11c
        :pswitch_e9
    .end packed-switch
.end method

.method protected loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    .line 478
    return-void
.end method

.method protected final resetAll()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 447
    iput v0, p0, mModulusSizeBytes:I

    .line 448
    iput v0, p0, mKeymasterPaddingOverride:I

    .line 449
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 450
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .registers 1

    .prologue
    .line 454
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 455
    return-void
.end method

.method protected final setKeymasterPaddingOverride(I)V
    .registers 2
    .param p1, "keymasterPadding"    # I

    .prologue
    .line 508
    iput p1, p0, mKeymasterPaddingOverride:I

    .line 509
    return-void
.end method
