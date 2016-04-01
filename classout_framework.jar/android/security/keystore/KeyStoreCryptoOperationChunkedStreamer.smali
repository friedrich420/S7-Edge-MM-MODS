.class Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;,
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CHUNK_SIZE:I = 0x10000


# instance fields
.field private mBuffered:[B

.field private mBufferedLength:I

.field private mBufferedOffset:I

.field private mConsumedInputSizeBytes:J

.field private final mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private final mMaxChunkSize:I

.field private mProducedOutputSizeBytes:J


# direct methods
.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .registers 3
    .param p1, "operation"    # Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .prologue
    .line 82
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .registers 4
    .param p1, "operation"    # Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;
    .param p2, "maxChunkSize"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, mBuffered:[B

    .line 86
    iput-object p1, p0, mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .line 87
    iput p2, p0, mMaxChunkSize:I

    .line 88
    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .param p4, "signature"    # [B
    .param p5, "additionalEntropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 210
    if-nez p3, :cond_5

    .line 212
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 213
    const/4 p2, 0x0

    .line 217
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, update([BII)[B

    move-result-object v1

    .line 218
    .local v1, "output":[B
    invoke-virtual {p0}, flush()[B

    move-result-object v2

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v1

    .line 220
    iget-object v2, p0, mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v2, p4, p5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    .line 221
    .local v0, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v0, :cond_1f

    .line 222
    new-instance v2, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v2}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v2

    .line 223
    :cond_1f
    iget v2, v0, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b

    .line 224
    iget v2, v0, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    throw v2

    .line 226
    :cond_2b
    iget-wide v2, p0, mProducedOutputSizeBytes:J

    iget-object v4, v0, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, mProducedOutputSizeBytes:J

    .line 228
    iget-object v2, v0, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v2

    return-object v2
.end method

.method public flush()[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 232
    iget v5, p0, mBufferedLength:I

    if-gtz v5, :cond_9

    .line 233
    sget-object v4, Llibcore/util/EmptyArray;->BYTE:[B

    .line 302
    :goto_8
    return-object v4

    .line 238
    :cond_9
    const/4 v0, 0x0

    .line 239
    .local v0, "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    :cond_a
    :goto_a
    iget v5, p0, mBufferedLength:I

    if-lez v5, :cond_35

    .line 240
    iget-object v5, p0, mBuffered:[B

    iget v6, p0, mBufferedOffset:I

    iget v7, p0, mBufferedLength:I

    invoke-static {v5, v6, v7}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    .line 241
    .local v1, "chunk":[B
    iget-object v5, p0, mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v5, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    move-result-object v3

    .line 242
    .local v3, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v3, :cond_26

    .line 243
    new-instance v5, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v5}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v5

    .line 244
    :cond_26
    iget v5, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    if-eq v5, v9, :cond_31

    .line 245
    iget v5, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v5}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v5

    throw v5

    .line 248
    :cond_31
    iget v5, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    if-gtz v5, :cond_73

    .line 293
    .end local v1    # "chunk":[B
    .end local v3    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_35
    iget v5, p0, mBufferedLength:I

    if-lez v5, :cond_ef

    .line 294
    new-instance v6, Landroid/security/KeyStoreException;

    const/16 v7, -0x15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystore failed to consume last "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v5, p0, mBufferedLength:I

    if-eq v5, v9, :cond_eb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, mBufferedLength:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " bytes"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_61
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " of input"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 253
    .restart local v1    # "chunk":[B
    .restart local v3    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_73
    iget v5, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v6, v1

    if-lt v5, v6, :cond_ad

    .line 255
    sget-object v5, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v5, p0, mBuffered:[B

    .line 256
    iput v8, p0, mBufferedOffset:I

    .line 257
    iput v8, p0, mBufferedLength:I

    .line 265
    :goto_80
    iget v5, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v6, v1

    if-le v5, v6, :cond_ba

    .line 266
    new-instance v5, Landroid/security/KeyStoreException;

    const/16 v6, -0x3e8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystore consumed more input than provided. Provided: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", consumed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 260
    :cond_ad
    iput-object v1, p0, mBuffered:[B

    .line 261
    iget v5, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iput v5, p0, mBufferedOffset:I

    .line 262
    array-length v5, v1

    iget v6, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    sub-int/2addr v5, v6

    iput v5, p0, mBufferedLength:I

    goto :goto_80

    .line 271
    :cond_ba
    iget-object v5, v3, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v5, :cond_a

    iget-object v5, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v5, v5

    if-lez v5, :cond_a

    .line 273
    if-nez v0, :cond_db

    .line 275
    iget v5, p0, mBufferedLength:I

    if-nez v5, :cond_d6

    .line 277
    iget-wide v6, p0, mProducedOutputSizeBytes:J

    iget-object v5, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v5, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, mProducedOutputSizeBytes:J

    .line 278
    iget-object v4, v3, Landroid/security/keymaster/OperationResult;->output:[B

    goto/16 :goto_8

    .line 281
    :cond_d6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .end local v0    # "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 286
    .restart local v0    # "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    :cond_db
    :try_start_db
    iget-object v5, v3, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e0} :catch_e2

    goto/16 :goto_a

    .line 287
    :catch_e2
    move-exception v2

    .line 288
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/ProviderException;

    const-string v6, "Failed to buffer output"

    invoke-direct {v5, v6, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 294
    .end local v1    # "chunk":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_eb
    const-string v5, "byte"

    goto/16 :goto_61

    .line 300
    :cond_ef
    if-eqz v0, :cond_fe

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 301
    .local v4, "result":[B
    :goto_f5
    iget-wide v6, p0, mProducedOutputSizeBytes:J

    array-length v5, v4

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, mProducedOutputSizeBytes:J

    goto/16 :goto_8

    .line 300
    .end local v4    # "result":[B
    :cond_fe
    sget-object v4, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_f5
.end method

.method public getConsumedInputSizeBytes()J
    .registers 3

    .prologue
    .line 307
    iget-wide v0, p0, mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .registers 3

    .prologue
    .line 312
    iget-wide v0, p0, mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public update([BII)[B
    .registers 15
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p3, :cond_5

    .line 94
    sget-object v10, Llibcore/util/EmptyArray;->BYTE:[B

    .line 204
    :goto_4
    return-object v10

    .line 97
    :cond_5
    const/4 v6, 0x0

    .line 99
    .local v6, "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :goto_6
    if-lez p3, :cond_118

    .line 102
    iget v0, p0, mBufferedLength:I

    add-int/2addr v0, p3

    iget v1, p0, mMaxChunkSize:I

    if-le v0, v1, :cond_37

    .line 105
    iget v0, p0, mMaxChunkSize:I

    iget v1, p0, mBufferedLength:I

    sub-int v5, v0, v1

    .line 106
    .local v5, "inputBytesInChunk":I
    iget-object v0, p0, mBuffered:[B

    iget v1, p0, mBufferedOffset:I

    iget v2, p0, mBufferedLength:I

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v7

    .line 124
    .local v7, "chunk":[B
    :goto_21
    add-int/2addr p2, v5

    .line 125
    sub-int/2addr p3, v5

    .line 126
    iget-wide v0, p0, mConsumedInputSizeBytes:J

    int-to-long v2, v5

    add-long/2addr v0, v2

    iput-wide v0, p0, mConsumedInputSizeBytes:J

    .line 128
    iget-object v0, p0, mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v0, v7}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    move-result-object v9

    .line 129
    .local v9, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v9, :cond_51

    .line 130
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    .line 110
    .end local v5    # "inputBytesInChunk":I
    .end local v7    # "chunk":[B
    .end local v9    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_37
    iget v0, p0, mBufferedLength:I

    if-nez v0, :cond_43

    if-nez p2, :cond_43

    array-length v0, p1

    if-ne p3, v0, :cond_43

    .line 114
    move-object v7, p1

    .line 115
    .restart local v7    # "chunk":[B
    array-length v5, p1

    .restart local v5    # "inputBytesInChunk":I
    goto :goto_21

    .line 118
    .end local v5    # "inputBytesInChunk":I
    .end local v7    # "chunk":[B
    :cond_43
    move v5, p3

    .line 119
    .restart local v5    # "inputBytesInChunk":I
    iget-object v0, p0, mBuffered:[B

    iget v1, p0, mBufferedOffset:I

    iget v2, p0, mBufferedLength:I

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v7

    .restart local v7    # "chunk":[B
    goto :goto_21

    .line 131
    .restart local v9    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_51
    iget v0, v9, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5d

    .line 132
    iget v0, v9, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    throw v0

    .line 135
    :cond_5d
    iget v0, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v1, v7

    if-ne v0, v1, :cond_8d

    .line 137
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, mBuffered:[B

    .line 138
    const/4 v0, 0x0

    iput v0, p0, mBufferedOffset:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, mBufferedLength:I

    .line 164
    :goto_6c
    iget-object v0, v9, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v0, :cond_6

    iget-object v0, v9, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v0, v0

    if-lez v0, :cond_6

    .line 165
    if-lez p3, :cond_f8

    .line 167
    if-nez v6, :cond_6

    .line 168
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .end local v6    # "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    .restart local v6    # "bufferedOutput":Ljava/io/ByteArrayOutputStream;
    :try_start_7e
    iget-object v0, v9, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_83} :catch_84

    goto :goto_6

    .line 171
    :catch_84
    move-exception v8

    .line 172
    .local v8, "e":Ljava/io/IOException;
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Failed to buffer output"

    invoke-direct {v0, v1, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 140
    .end local v8    # "e":Ljava/io/IOException;
    :cond_8d
    iget v0, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    if-gtz v0, :cond_be

    .line 142
    if-lez p3, :cond_b5

    .line 146
    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keystore consumed nothing from max-sized chunk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 150
    :cond_b5
    iput-object v7, p0, mBuffered:[B

    .line 151
    const/4 v0, 0x0

    iput v0, p0, mBufferedOffset:I

    .line 152
    array-length v0, v7

    iput v0, p0, mBufferedLength:I

    goto :goto_6c

    .line 153
    :cond_be
    iget v0, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v1, v7

    if-ge v0, v1, :cond_d0

    .line 155
    iput-object v7, p0, mBuffered:[B

    .line 156
    iget v0, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iput v0, p0, mBufferedOffset:I

    .line 157
    array-length v0, v7

    iget v1, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    sub-int/2addr v0, v1

    iput v0, p0, mBufferedLength:I

    goto :goto_6c

    .line 159
    :cond_d0
    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keystore consumed more input than provided. Provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", consumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 178
    :cond_f8
    if-nez v6, :cond_105

    .line 180
    iget-object v10, v9, Landroid/security/keymaster/OperationResult;->output:[B

    .line 190
    .local v10, "result":[B
    :goto_fc
    iget-wide v0, p0, mProducedOutputSizeBytes:J

    array-length v2, v10

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, mProducedOutputSizeBytes:J

    goto/16 :goto_4

    .line 184
    .end local v10    # "result":[B
    :cond_105
    :try_start_105
    iget-object v0, v9, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10a} :catch_10f

    .line 188
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .restart local v10    # "result":[B
    goto :goto_fc

    .line 185
    .end local v10    # "result":[B
    :catch_10f
    move-exception v8

    .line 186
    .restart local v8    # "e":Ljava/io/IOException;
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Failed to buffer output"

    invoke-direct {v0, v1, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 197
    .end local v5    # "inputBytesInChunk":I
    .end local v7    # "chunk":[B
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_118
    if-nez v6, :cond_125

    .line 199
    sget-object v10, Llibcore/util/EmptyArray;->BYTE:[B

    .line 203
    .restart local v10    # "result":[B
    :goto_11c
    iget-wide v0, p0, mProducedOutputSizeBytes:J

    array-length v2, v10

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, mProducedOutputSizeBytes:J

    goto/16 :goto_4

    .line 201
    .end local v10    # "result":[B
    :cond_125
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .restart local v10    # "result":[B
    goto :goto_11c
.end method
