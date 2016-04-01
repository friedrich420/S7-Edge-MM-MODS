.class public abstract Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.super Ljavax/crypto/MacSpi;
.source "AndroidKeyStoreHmacSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA512;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA384;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA256;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA224;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA1;
    }
.end annotation


# instance fields
.field private mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeymasterDigest:I

.field private final mMacSizeBits:I

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .param p1, "keymasterDigest"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 71
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    .line 84
    iput p1, p0, mKeymasterDigest:I

    .line 85
    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    iput v0, p0, mMacSizeBits:I

    .line 86
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
    .line 154
    iget-object v0, p0, mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    if-eqz v0, :cond_5

    .line 199
    :goto_4
    return-void

    .line 157
    :cond_5
    iget-object v0, p0, mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_11

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_11
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 162
    .local v4, "keymasterArgs":Landroid/security/keymaster/KeymasterArguments;
    const v0, 0x10000002

    const/16 v1, 0x80

    invoke-virtual {v4, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 163
    const v0, 0x20000005

    iget v1, p0, mKeymasterDigest:I

    invoke-virtual {v4, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 164
    const v0, 0x300003eb

    iget v1, p0, mMacSizeBits:I

    int-to-long v2, v1

    invoke-virtual {v4, v0, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 166
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v7

    .line 173
    .local v7, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v7, :cond_46

    .line 174
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    .line 179
    :cond_46
    iget-object v0, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v0, p0, mOperationToken:Landroid/os/IBinder;

    .line 180
    iget-wide v0, v7, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v0, p0, mOperationHandle:J

    .line 183
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    iget v2, v7, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0, v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    move-result-object v6

    .line 185
    .local v6, "e":Ljava/security/InvalidKeyException;
    if-eqz v6, :cond_5b

    .line 186
    throw v6

    .line 189
    :cond_5b
    iget-object v0, p0, mOperationToken:Landroid/os/IBinder;

    if-nez v0, :cond_67

    .line 190
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore returned null operation token"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_67
    iget-wide v0, p0, mOperationHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_77

    .line 193
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore returned invalid operation handle"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_77
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    iget-object v2, p0, mKeyStore:Landroid/security/KeyStore;

    iget-object v3, p0, mOperationToken:Landroid/os/IBinder;

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    iput-object v0, p0, mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    goto/16 :goto_4
.end method

.method private init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_a

    .line 113
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_a
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_27

    .line 115
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_27
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .end local p1    # "key":Ljava/security/Key;
    iput-object p1, p0, mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 120
    if-eqz p2, :cond_46

    .line 121
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_46
    return-void
.end method

.method private resetAll()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 128
    iput-object v4, p0, mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .line 129
    iget-object v0, p0, mOperationToken:Landroid/os/IBinder;

    .line 130
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_c

    .line 131
    iget-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 133
    :cond_c
    iput-object v4, p0, mOperationToken:Landroid/os/IBinder;

    .line 134
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mOperationHandle:J

    .line 135
    iput-object v4, p0, mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    .line 136
    return-void
.end method

.method private resetWhilePreservingInitState()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, mOperationToken:Landroid/os/IBinder;

    .line 140
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_a

    .line 141
    iget-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    .line 143
    :cond_a
    iput-object v4, p0, mOperationToken:Landroid/os/IBinder;

    .line 144
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mOperationHandle:J

    .line 145
    iput-object v4, p0, mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    .line 146
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .registers 9

    .prologue
    .line 228
    :try_start_0
    invoke-direct {p0}, ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_12

    .line 235
    :try_start_3
    iget-object v0, p0, mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->doFinal([BII[B[B)[B
    :try_end_d
    .catch Landroid/security/KeyStoreException; {:try_start_3 .. :try_end_d} :catch_1b

    move-result-object v7

    .line 244
    .local v7, "result":[B
    invoke-direct {p0}, resetWhilePreservingInitState()V

    .line 245
    return-object v7

    .line 229
    .end local v7    # "result":[B
    :catch_12
    move-exception v6

    .line 230
    .local v6, "e":Ljava/security/InvalidKeyException;
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Failed to reinitialize MAC"

    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 240
    .end local v6    # "e":Ljava/security/InvalidKeyException;
    :catch_1b
    move-exception v6

    .line 241
    .local v6, "e":Landroid/security/KeyStoreException;
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore operation failed"

    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected engineGetMacLength()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, mMacSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, resetAll()V

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "success":Z
    :try_start_4
    invoke-direct {p0, p1, p2}, init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 101
    invoke-direct {p0}, ensureKeystoreOperationInitialized()V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    .line 102
    const/4 v0, 0x1

    .line 104
    if-nez v0, :cond_10

    .line 105
    invoke-direct {p0}, resetAll()V

    .line 108
    :cond_10
    return-void

    .line 104
    :catchall_11
    move-exception v1

    if-nez v0, :cond_17

    .line 105
    invoke-direct {p0}, resetAll()V

    :cond_17
    throw v1
.end method

.method protected engineReset()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, resetWhilePreservingInitState()V

    .line 151
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 203
    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, engineUpdate([BII)V

    .line 204
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 8
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 209
    :try_start_0
    invoke-direct {p0}, ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_16

    .line 216
    :try_start_3
    iget-object v2, p0, mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    invoke-virtual {v2, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B
    :try_end_8
    .catch Landroid/security/KeyStoreException; {:try_start_3 .. :try_end_8} :catch_1f

    move-result-object v1

    .line 220
    .local v1, "output":[B
    if-eqz v1, :cond_28

    array-length v2, v1

    if-eqz v2, :cond_28

    .line 221
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Update operation unexpectedly produced output"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    .end local v1    # "output":[B
    :catch_16
    move-exception v0

    .line 211
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to reinitialize MAC"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 217
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1f
    move-exception v0

    .line 218
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Keystore operation failed"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 223
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v1    # "output":[B
    :cond_28
    return-void
.end method

.method public finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, mOperationToken:Landroid/os/IBinder;

    .line 252
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_9

    .line 253
    iget-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 256
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 258
    return-void

    .line 256
    .end local v0    # "operationToken":Landroid/os/IBinder;
    :catchall_d
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getOperationHandle()J
    .registers 3

    .prologue
    .line 262
    iget-wide v0, p0, mOperationHandle:J

    return-wide v0
.end method
