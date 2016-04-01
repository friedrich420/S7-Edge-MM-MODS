.class abstract Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.super Ljava/security/SignatureSpi;
.source "AndroidKeyStoreSignatureSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mCachedException:Ljava/lang/Exception;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mSigning:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 72
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    .line 73
    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_5

    .line 233
    :cond_4
    :goto_4
    return-void

    .line 192
    :cond_5
    iget-object v0, p0, mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_4

    .line 195
    iget-object v0, p0, mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v0, :cond_15

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_15
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 200
    .local v4, "keymasterInputArgs":Landroid/security/keymaster/KeymasterArguments;
    invoke-virtual {p0, v4}, addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    .line 202
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, mSigning:Z

    if-eqz v2, :cond_38

    const/4 v2, 0x2

    :goto_2a
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v7

    .line 209
    .local v7, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v7, :cond_3a

    .line 210
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    .line 202
    .end local v7    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_38
    const/4 v2, 0x3

    goto :goto_2a

    .line 215
    .restart local v7    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_3a
    iget-object v0, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v0, p0, mOperationToken:Landroid/os/IBinder;

    .line 216
    iget-wide v0, v7, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v0, p0, mOperationHandle:J

    .line 219
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    iget v2, v7, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0, v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    move-result-object v6

    .line 221
    .local v6, "e":Ljava/security/InvalidKeyException;
    if-eqz v6, :cond_4f

    .line 222
    throw v6

    .line 225
    :cond_4f
    iget-object v0, p0, mOperationToken:Landroid/os/IBinder;

    if-nez v0, :cond_5b

    .line 226
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore returned null operation token"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_5b
    iget-wide v0, p0, mOperationHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6b

    .line 229
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore returned invalid operation handle"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_6b
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    iget-object v1, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-result-object v0

    iput-object v0, p0, mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    goto :goto_4
.end method


# virtual methods
.method protected abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .registers 5
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    .prologue
    .line 243
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 78
    return-void
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 9
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, resetAll()V

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "success":Z
    if-nez p1, :cond_15

    .line 88
    :try_start_6
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Unsupported key: null"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_e

    .line 102
    :catchall_e
    move-exception v3

    if-nez v2, :cond_14

    .line 103
    invoke-virtual {p0}, resetAll()V

    :cond_14
    throw v3

    .line 91
    :cond_15
    :try_start_15
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v3, :cond_2f

    .line 92
    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    move-object v1, v0

    .line 96
    .local v1, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    const/4 v3, 0x1

    iput-boolean v3, p0, mSigning:Z

    .line 97
    invoke-virtual {p0, v1}, initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 98
    iput-object p2, p0, appRandom:Ljava/security/SecureRandom;

    .line 99
    invoke-direct {p0}, ensureKeystoreOperationInitialized()V
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_e

    .line 100
    const/4 v2, 0x1

    .line 102
    if-nez v2, :cond_2e

    .line 103
    invoke-virtual {p0}, resetAll()V

    .line 106
    :cond_2e
    return-void

    .line 94
    .end local v1    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_2f
    :try_start_2f
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported private key type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_e
.end method

.method protected final engineInitVerify(Ljava/security/PublicKey;)V
    .registers 8
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, resetAll()V

    .line 112
    const/4 v2, 0x0

    .line 114
    .local v2, "success":Z
    if-nez p1, :cond_15

    .line 115
    :try_start_6
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Unsupported key: null"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_e

    .line 129
    :catchall_e
    move-exception v3

    if-nez v2, :cond_14

    .line 130
    invoke-virtual {p0}, resetAll()V

    :cond_14
    throw v3

    .line 118
    :cond_15
    :try_start_15
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v3, :cond_30

    .line 119
    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-object v1, v0

    .line 123
    .local v1, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    const/4 v3, 0x0

    iput-boolean v3, p0, mSigning:Z

    .line 124
    invoke-virtual {p0, v1}, initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 125
    const/4 v3, 0x0

    iput-object v3, p0, appRandom:Ljava/security/SecureRandom;

    .line 126
    invoke-direct {p0}, ensureKeystoreOperationInitialized()V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_e

    .line 127
    const/4 v2, 0x1

    .line 129
    if-nez v2, :cond_2f

    .line 130
    invoke-virtual {p0}, resetAll()V

    .line 133
    :cond_2f
    return-void

    .line 121
    .end local v1    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_30
    :try_start_30
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported public key type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_e
.end method

.method protected final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final engineSign([BII)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-super {p0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method protected final engineSign()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_c

    .line 318
    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 323
    :cond_c
    :try_start_c
    invoke-direct {p0}, ensureKeystoreOperationInitialized()V

    .line 325
    iget-object v0, p0, appRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0}, getAdditionalEntropyAmountForSign()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v5

    .line 328
    .local v5, "additionalEntropy":[B
    iget-object v0, p0, mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_23
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_23} :catch_2f
    .catch Landroid/security/KeyStoreException; {:try_start_c .. :try_end_23} :catch_28

    move-result-object v7

    .line 336
    .local v7, "signature":[B
    invoke-virtual {p0}, resetWhilePreservingInitState()V

    .line 337
    return-object v7

    .line 332
    .end local v5    # "additionalEntropy":[B
    .end local v7    # "signature":[B
    :catch_28
    move-exception v6

    .line 333
    .local v6, "e":Ljava/lang/Exception;
    :goto_29
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 332
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2f
    move-exception v6

    goto :goto_29
.end method

.method protected final engineUpdate(B)V
    .registers 5
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, engineUpdate([BII)V

    .line 285
    return-void
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 292
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 294
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int v3, v4, v5

    .line 295
    .local v3, "off":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 303
    :goto_1f
    :try_start_1f
    invoke-virtual {p0, v0, v3, v2}, engineUpdate([BII)V
    :try_end_22
    .catch Ljava/security/SignatureException; {:try_start_1f .. :try_end_22} :catch_2a

    .line 307
    :goto_22
    return-void

    .line 297
    .end local v0    # "b":[B
    .end local v3    # "off":I
    :cond_23
    new-array v0, v2, [B

    .line 298
    .restart local v0    # "b":[B
    const/4 v3, 0x0

    .line 299
    .restart local v3    # "off":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1f

    .line 304
    :catch_2a
    move-exception v1

    .line 305
    .local v1, "e":Ljava/security/SignatureException;
    iput-object v1, p0, mCachedException:Ljava/lang/Exception;

    goto :goto_22
.end method

.method protected final engineUpdate([BII)V
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v2, p0, mCachedException:Ljava/lang/Exception;

    if-eqz v2, :cond_c

    .line 256
    new-instance v2, Ljava/security/SignatureException;

    iget-object v3, p0, mCachedException:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 260
    :cond_c
    :try_start_c
    invoke-direct {p0}, ensureKeystoreOperationInitialized()V
    :try_end_f
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_f} :catch_12

    .line 265
    if-nez p3, :cond_19

    .line 280
    :cond_11
    return-void

    .line 261
    :catch_12
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 271
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_19
    :try_start_19
    iget-object v2, p0, mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v2, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_1e
    .catch Landroid/security/KeyStoreException; {:try_start_19 .. :try_end_1e} :catch_42

    move-result-object v1

    .line 276
    .local v1, "output":[B
    array-length v2, v1

    if-eqz v2, :cond_11

    .line 277
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update operation unexpectedly produced output: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v1    # "output":[B
    :catch_42
    move-exception v0

    .line 273
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final engineVerify([B)Z
    .registers 11
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_c

    .line 343
    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 347
    :cond_c
    :try_start_c
    invoke-direct {p0}, ensureKeystoreOperationInitialized()V
    :try_end_f
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_f} :catch_4c

    .line 354
    :try_start_f
    iget-object v0, p0, mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object v7

    .line 359
    .local v7, "output":[B
    array-length v0, v7

    if-eqz v0, :cond_53

    .line 360
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature verification unexpected produced output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catch Landroid/security/KeyStoreException; {:try_start_f .. :try_end_3e} :catch_3e

    .line 365
    .end local v7    # "output":[B
    :catch_3e
    move-exception v6

    .line 366
    .local v6, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v6}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 371
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 348
    .end local v6    # "e":Landroid/security/KeyStoreException;
    :catch_4c
    move-exception v6

    .line 349
    .local v6, "e":Ljava/security/InvalidKeyException;
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 364
    .end local v6    # "e":Ljava/security/InvalidKeyException;
    .restart local v7    # "output":[B
    :cond_53
    const/4 v8, 0x1

    .line 375
    .end local v7    # "output":[B
    .local v8, "verified":Z
    :goto_54
    invoke-virtual {p0}, resetWhilePreservingInitState()V

    .line 376
    return v8

    .line 368
    .end local v8    # "verified":Z
    .local v6, "e":Landroid/security/KeyStoreException;
    :pswitch_58
    const/4 v8, 0x0

    .line 369
    .restart local v8    # "verified":Z
    goto :goto_54

    .line 366
    :pswitch_data_5a
    .packed-switch -0x1e
        :pswitch_58
    .end packed-switch
.end method

.method protected final engineVerify([BII)Z
    .registers 5
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {p1, p2, p3}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, engineVerify([B)Z

    move-result v0

    return v0
.end method

.method protected abstract getAdditionalEntropyAmountForSign()I
.end method

.method protected final getKeyStore()Landroid/security/KeyStore;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method public final getOperationHandle()J
    .registers 3

    .prologue
    .line 250
    iget-wide v0, p0, mOperationHandle:J

    return-wide v0
.end method

.method protected initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .registers 2
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 143
    return-void
.end method

.method protected final isSigning()Z
    .registers 2

    .prologue
    .line 407
    iget-boolean v0, p0, mSigning:Z

    return v0
.end method

.method protected resetAll()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v0, p0, mOperationToken:Landroid/os/IBinder;

    .line 155
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_c

    .line 156
    iput-object v4, p0, mOperationToken:Landroid/os/IBinder;

    .line 157
    iget-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 159
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, mSigning:Z

    .line 160
    iput-object v4, p0, mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    .line 161
    iput-object v4, p0, appRandom:Ljava/security/SecureRandom;

    .line 162
    iput-object v4, p0, mOperationToken:Landroid/os/IBinder;

    .line 163
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mOperationHandle:J

    .line 164
    iput-object v4, p0, mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 165
    iput-object v4, p0, mCachedException:Ljava/lang/Exception;

    .line 166
    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v0, p0, mOperationToken:Landroid/os/IBinder;

    .line 179
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_c

    .line 180
    iput-object v4, p0, mOperationToken:Landroid/os/IBinder;

    .line 181
    iget-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 183
    :cond_c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mOperationHandle:J

    .line 184
    iput-object v4, p0, mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .line 185
    iput-object v4, p0, mCachedException:Ljava/lang/Exception;

    .line 186
    return-void
.end method
