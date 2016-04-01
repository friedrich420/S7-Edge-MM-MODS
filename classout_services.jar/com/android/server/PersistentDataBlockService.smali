.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# static fields
.field private static final ANDROID_SYSTEM_UID:I = 0x3e8

.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final HEADER_SIZE:I = 0x8

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field private static final OEM_UNLOCK_PROP:Ljava/lang/String; = "sys.oem_unlock_allowed"

.field private static final PARTITION_TYPE_MARKER:I = 0x19901873

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, mAllowedUid:I

    .line 330
    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, mService:Landroid/os/IBinder;

    .line 88
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 89
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDataBlockFile:Ljava/lang/String;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mBlockDeviceSize:J

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, getAllowedUid(I)I

    move-result v0

    iput v0, p0, mAllowedUid:I

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PersistentDataBlockService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, enforceUid(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 66
    invoke-direct {p0}, getBlockDeviceSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 66
    invoke-direct {p0}, enforceIsOwner()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/PersistentDataBlockService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 66
    invoke-direct {p0}, doGetOemUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 66
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 66
    iget-object v0, p0, mDataBlockFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 66
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 66
    invoke-direct {p0}, computeAndWriteDigestLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 66
    invoke-direct {p0}, enforceChecksumValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 66
    invoke-direct {p0}, enforceOemUnlockPermission()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, nativeWipe(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private computeAndWriteDigestLocked()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 183
    const/4 v4, 0x0

    invoke-direct {p0, v4}, computeDigestLocked([B)[B

    move-result-object v0

    .line 184
    .local v0, "digest":[B
    if-eqz v0, :cond_26

    .line 187
    :try_start_8
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_19} :catch_27

    .line 195
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_1c
    invoke-virtual {v2, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 196
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_31
    .catchall {:try_start_1c .. :try_end_22} :catchall_3e

    .line 201
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 203
    const/4 v3, 0x1

    .line 205
    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    :cond_26
    :goto_26
    return v3

    .line 189
    :catch_27
    move-exception v1

    .line 190
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 197
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "outputStream":Ljava/io/DataOutputStream;
    :catch_31
    move-exception v1

    .line 198
    .local v1, "e":Ljava/io/IOException;
    :try_start_32
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to write block checksum"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3e

    .line 201
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_26

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3e
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private computeDigestLocked([B)[B
    .registers 12
    .param p1, "storedDigest"    # [B

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x20

    .line 212
    :try_start_3
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, mDataBlockFile:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_14} :catch_45

    .line 220
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_14
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_19} :catch_4f

    move-result-object v3

    .line 229
    .local v3, "md":Ljava/security/MessageDigest;
    if-eqz p1, :cond_5b

    :try_start_1c
    array-length v6, p1

    if-ne v6, v9, :cond_5b

    .line 230
    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->read([B)I

    .line 236
    :goto_22
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 237
    .local v0, "data":[B
    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-virtual {v3, v0, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 238
    :goto_2c
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_66

    .line 239
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_37} :catch_38
    .catchall {:try_start_1c .. :try_end_37} :catchall_61

    goto :goto_2c

    .line 241
    .end local v0    # "data":[B
    .end local v4    # "read":I
    :catch_38
    move-exception v1

    .line 242
    .local v1, "e":Ljava/io/IOException;
    :try_start_39
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "failed to read partition"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_61

    .line 245
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 248
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_44
    return-object v5

    .line 213
    :catch_45
    move-exception v1

    .line 214
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "partition not available?"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 221
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_4f
    move-exception v1

    .line 223
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "SHA-256 not supported?"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_44

    .line 232
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "md":Ljava/security/MessageDigest;
    :cond_5b
    const/16 v6, 0x20

    :try_start_5d
    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_38
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_22

    .line 245
    :catchall_61
    move-exception v5

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .restart local v0    # "data":[B
    .restart local v4    # "read":I
    :cond_66
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 248
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    goto :goto_44
.end method

.method private doGetOemUnlockEnabled()Z
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 308
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_2b

    .line 315
    .local v1, "inputStream":Ljava/io/DataInputStream;
    :try_start_12
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_3b
    .catchall {:try_start_12 .. :try_end_15} :catchall_49

    .line 316
    :try_start_15
    invoke-direct {p0}, getBlockDeviceSize()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/io/DataInputStream;->skip(J)J

    .line 317
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    :goto_26
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_38

    .line 323
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    :goto_2a
    return v2

    .line 309
    :catch_2b
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v4, "partition not available"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 311
    goto :goto_2a

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    :cond_36
    move v2, v3

    .line 317
    goto :goto_26

    .line 318
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v2
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3b} :catch_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_49

    .line 319
    :catch_3b
    move-exception v0

    .line 320
    .local v0, "e":Ljava/io/IOException;
    :try_start_3c
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v4, "unable to access persistent partition"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_49

    .line 323
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v2, v3

    goto :goto_2a

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_49
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .registers 12
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 280
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_3c

    .line 287
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 289
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-direct {p0}, getBlockDeviceSize()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 291
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 292
    .local v1, "data":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_46

    :goto_22
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 293
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 294
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 295
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2e} :catch_4b
    .catchall {:try_start_d .. :try_end_2e} :catchall_65

    .line 300
    const-string/jumbo v5, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_48

    const-string v4, "1"

    :goto_35
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 303
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_3b
    return-void

    .line 281
    :catch_3c
    move-exception v2

    .line 282
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "partition not available"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 292
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "data":Ljava/nio/ByteBuffer;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_46
    const/4 v4, 0x0

    goto :goto_22

    .line 300
    :cond_48
    const-string v4, "0"

    goto :goto_35

    .line 296
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :catch_4b
    move-exception v2

    .line 297
    .local v2, "e":Ljava/io/IOException;
    :try_start_4c
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "unable to access persistent partition"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_65

    .line 300
    const-string/jumbo v5, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_62

    const-string v4, "1"

    :goto_5b
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3b

    .line 300
    :cond_62
    const-string v4, "0"

    goto :goto_5b

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_65
    move-exception v4

    move-object v5, v4

    const-string/jumbo v6, "sys.oem_unlock_allowed"

    if-eqz p1, :cond_75

    const-string v4, "1"

    :goto_6e
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 300
    :cond_75
    const-string v4, "0"

    goto :goto_6e
.end method

.method private enforceChecksumValidity()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 168
    const/16 v3, 0x20

    new-array v1, v3, [B

    .line 170
    .local v1, "storedDigest":[B
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    :try_start_8
    invoke-direct {p0, v1}, computeDigestLocked([B)[B

    move-result-object v0

    .line 172
    .local v0, "digest":[B
    if-eqz v0, :cond_14

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_21

    .line 173
    :cond_14
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Formatting FRP partition..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v4, 0x0

    invoke-direct {p0, v4}, formatPartitionLocked(Z)V

    .line 175
    monitor-exit v3

    .line 179
    :goto_20
    return v2

    .line 177
    :cond_21
    monitor-exit v3

    .line 179
    const/4 v2, 0x1

    goto :goto_20

    .line 177
    .end local v0    # "digest":[B
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private enforceIsOwner()V
    .registers 3

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-nez v0, :cond_12

    .line 140
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the Owner is allowed to change OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_12
    return-void
.end method

.method private enforceOemUnlockPermission()V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    const-string v2, "Can\'t access OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private enforceUid(I)V
    .registers 5
    .param p1, "callingUid"    # I

    .prologue
    .line 133
    iget v0, p0, mAllowedUid:I

    if-eq p1, v0, :cond_24

    .line 134
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed to access PST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_24
    return-void
.end method

.method private formatIfOemUnlockEnabled()V
    .registers 4

    .prologue
    .line 116
    invoke-direct {p0}, doGetOemUnlockEnabled()Z

    move-result v0

    .line 117
    .local v0, "enabled":Z
    if-eqz v0, :cond_e

    .line 118
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    const/4 v1, 0x1

    :try_start_a
    invoke-direct {p0, v1}, formatPartitionLocked(Z)V

    .line 120
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_19

    .line 123
    :cond_e
    const-string/jumbo v2, "sys.oem_unlock_allowed"

    if-eqz v0, :cond_1c

    const-string v1, "1"

    :goto_15
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 120
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1

    .line 123
    :cond_1c
    const-string v1, "0"

    goto :goto_15
.end method

.method private formatPartitionLocked(Z)V
    .registers 9
    .param p1, "setOemUnlockEnabled"    # Z

    .prologue
    const/16 v6, 0x20

    .line 254
    :try_start_2
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_13} :catch_32

    .line 260
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    new-array v0, v6, [B

    .line 262
    .local v0, "data":[B
    const/4 v3, 0x0

    const/16 v4, 0x20

    :try_start_18
    invoke-virtual {v2, v0, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 263
    const v3, 0x19901873

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 264
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 265
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_3c
    .catchall {:try_start_18 .. :try_end_28} :catchall_49

    .line 270
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 273
    invoke-direct {p0, p1}, doSetOemUnlockEnabledLocked(Z)V

    .line 274
    invoke-direct {p0}, computeAndWriteDigestLocked()Z

    .line 275
    .end local v0    # "data":[B
    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    :goto_31
    return-void

    .line 255
    :catch_32
    move-exception v1

    .line 256
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "partition not available?"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 266
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "data":[B
    .restart local v2    # "outputStream":Ljava/io/DataOutputStream;
    :catch_3c
    move-exception v1

    .line 267
    .local v1, "e":Ljava/io/IOException;
    :try_start_3d
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to format block"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_49

    .line 270
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_31

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_49
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private getAllowedUid(I)I
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 95
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "allowedPackage":Ljava/lang/String;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 98
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, -0x1

    .line 100
    .local v1, "allowedUid":I
    :try_start_14
    invoke-virtual {v3, v0, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_17} :catch_19

    move-result v1

    .line 105
    :goto_18
    return v1

    .line 101
    :catch_19
    move-exception v2

    .line 103
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not able to find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method private getBlockDeviceSize()J
    .registers 7

    .prologue
    .line 158
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_3
    iget-wide v2, p0, mBlockDeviceSize:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_13

    .line 160
    iget-object v0, p0, mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v0}, nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, mBlockDeviceSize:J

    .line 162
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 164
    iget-wide v0, p0, mBlockDeviceSize:J

    return-wide v0

    .line 162
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .registers 5
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 148
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 149
    .local v0, "blockId":I
    const v2, 0x19901873

    if-ne v0, v2, :cond_13

    .line 150
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 154
    .local v1, "totalDataSize":I
    :goto_12
    return v1

    .line 152
    .end local v1    # "totalDataSize":I
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "totalDataSize":I
    goto :goto_12
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .prologue
    .line 110
    invoke-direct {p0}, enforceChecksumValidity()Z

    .line 111
    invoke-direct {p0}, formatIfOemUnlockEnabled()V

    .line 112
    const-string/jumbo v0, "persistent_data_block"

    iget-object v1, p0, mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    return-void
.end method
