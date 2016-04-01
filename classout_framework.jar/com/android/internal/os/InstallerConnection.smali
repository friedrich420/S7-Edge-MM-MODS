.class public Lcom/android/internal/os/InstallerConnection;
.super Ljava/lang/Object;
.source "InstallerConnection.java"


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InstallerConnection"


# instance fields
.field private final buf:[B

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, buf:[B

    .line 47
    return-void
.end method

.method private connect()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 170
    iget-object v3, p0, mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_6

    .line 188
    :goto_5
    return v2

    .line 173
    :cond_6
    const-string v3, "InstallerConnection"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_d
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, mSocket:Landroid/net/LocalSocket;

    .line 177
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "installd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 180
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 182
    iget-object v3, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, mIn:Ljava/io/InputStream;

    .line 183
    iget-object v3, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, mOut:Ljava/io/OutputStream;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_33

    goto :goto_5

    .line 184
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_33
    move-exception v1

    .line 185
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, disconnect()V

    .line 186
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private readFully([BI)Z
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 205
    :try_start_1
    iget-object v2, p0, mIn:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_9

    .line 216
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 206
    :catch_9
    move-exception v0

    .line 207
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "InstallerConnection"

    const-string/jumbo v3, "read exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, disconnect()V

    goto :goto_8
.end method

.method private readReply()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 220
    iget-object v2, p0, buf:[B

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, readFully([BI)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 235
    :cond_c
    :goto_c
    return v0

    .line 224
    :cond_d
    iget-object v2, p0, buf:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, buf:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v0, v2, v3

    .line 225
    .local v0, "len":I
    if-lt v0, v4, :cond_25

    iget-object v2, p0, buf:[B

    array-length v2, v2

    if-le v0, v2, :cond_48

    .line 226
    :cond_25
    const-string v2, "InstallerConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, disconnect()V

    move v0, v1

    .line 228
    goto :goto_c

    .line 231
    :cond_48
    iget-object v2, p0, buf:[B

    invoke-direct {p0, v2, v0}, readFully([BI)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 232
    goto :goto_c
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .registers 11
    .param p1, "cmdString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 240
    .local v0, "cmd":[B
    array-length v2, v0

    .line 241
    .local v2, "len":I
    if-lt v2, v3, :cond_e

    iget-object v5, p0, buf:[B

    array-length v5, v5

    if-le v2, v5, :cond_10

    :cond_e
    move v3, v4

    .line 255
    :goto_f
    return v3

    .line 245
    :cond_10
    iget-object v5, p0, buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 246
    iget-object v5, p0, buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 248
    :try_start_20
    iget-object v5, p0, mOut:Ljava/io/OutputStream;

    iget-object v6, p0, buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 249
    iget-object v5, p0, mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2f} :catch_30

    goto :goto_f

    .line 250
    :catch_30
    move-exception v1

    .line 251
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "InstallerConnection"

    const-string/jumbo v5, "write error"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, disconnect()V

    move v3, v4

    .line 253
    goto :goto_f
.end method


# virtual methods
.method public asyncDexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZI)I
    .registers 16
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;
    .param p10, "bootComplete"    # Z
    .param p11, "interpret_only"    # Z
    .param p12, "hashCode"    # I

    .prologue
    const/16 v2, 0x20

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "asyncdexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    if-eqz p3, :cond_64

    const-string v1, " 1"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    if-eqz p7, :cond_67

    const-string v1, " 1"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    if-eqz p8, :cond_6a

    const-string v1, " 1"

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    if-eqz p9, :cond_6d

    .end local p9    # "outputPath":Ljava/lang/String;
    :goto_41
    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    if-eqz p10, :cond_70

    const-string v1, " 1"

    :goto_48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    if-eqz p11, :cond_73

    const-string v1, " 1"

    :goto_52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, p12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 144
    .restart local p9    # "outputPath":Ljava/lang/String;
    :cond_64
    const-string v1, " 0"

    goto :goto_19

    .line 151
    :cond_67
    const-string v1, " 0"

    goto :goto_32

    .line 152
    :cond_6a
    const-string v1, " 0"

    goto :goto_39

    .line 154
    :cond_6d
    const-string p9, "!"

    goto :goto_41

    .line 155
    .end local p9    # "outputPath":Ljava/lang/String;
    :cond_70
    const-string v1, " 0"

    goto :goto_48

    .line 157
    :cond_73
    const-string v1, " 0"

    goto :goto_52
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;IZ)I
    .registers 19
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "bootComplete"    # Z

    .prologue
    .line 96
    const-string v4, "*"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v10, p6

    invoke-virtual/range {v0 .. v11}, dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Z)I
    .registers 23
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;
    .param p10, "bootComplete"    # Z

    .prologue
    .line 103
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZZ)I
    .registers 15
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;
    .param p10, "bootComplete"    # Z
    .param p11, "interpret_only"    # Z

    .prologue
    const/16 v2, 0x20

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    if-eqz p3, :cond_5e

    const-string v1, " 1"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    if-eqz p7, :cond_61

    const-string v1, " 1"

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    if-eqz p8, :cond_64

    const-string v1, " 1"

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    if-eqz p9, :cond_67

    .end local p9    # "outputPath":Ljava/lang/String;
    :goto_41
    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    if-eqz p10, :cond_6a

    const-string v1, " 1"

    :goto_48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    if-eqz p11, :cond_6d

    const-string v1, " 1"

    :goto_52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 115
    .restart local p9    # "outputPath":Ljava/lang/String;
    :cond_5e
    const-string v1, " 0"

    goto :goto_19

    .line 122
    :cond_61
    const-string v1, " 0"

    goto :goto_32

    .line 123
    :cond_64
    const-string v1, " 0"

    goto :goto_39

    .line 125
    :cond_67
    const-string p9, "!"

    goto :goto_41

    .line 126
    .end local p9    # "outputPath":Ljava/lang/String;
    :cond_6a
    const-string v1, " 0"

    goto :goto_48

    .line 128
    :cond_6d
    const-string v1, " 0"

    goto :goto_52
.end method

.method public disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 192
    const-string v0, "InstallerConnection"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 194
    iget-object v0, p0, mIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 195
    iget-object v0, p0, mOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 197
    iput-object v2, p0, mSocket:Landroid/net/LocalSocket;

    .line 198
    iput-object v2, p0, mIn:Ljava/io/InputStream;

    .line 199
    iput-object v2, p0, mOut:Ljava/io/OutputStream;

    .line 200
    return-void
.end method

.method public execute(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "res":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 90
    :goto_8
    return v2

    .line 89
    :catch_9
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_8
.end method

.method public processAsyncResult()Ljava/lang/String;
    .registers 3

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "asyncresult"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "asyncresult"

    invoke-virtual {p0, v1}, transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized transact(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, connect()Z

    move-result v2

    if-nez v2, :cond_12

    .line 51
    const-string v2, "InstallerConnection"

    const-string v3, "connection failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v1, "-1"
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_41

    .line 81
    :goto_10
    monitor-exit p0

    return-object v1

    .line 55
    :cond_12
    :try_start_12
    invoke-direct {p0, p1}, writeCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 61
    const-string v2, "InstallerConnection"

    const-string/jumbo v3, "write command failed? reconnect!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, connect()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-direct {p0, p1}, writeCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 63
    :cond_2c
    const-string v1, "-1"

    goto :goto_10

    .line 70
    :cond_2f
    invoke-direct {p0}, readReply()I

    move-result v0

    .line 71
    .local v0, "replyLength":I
    if-lez v0, :cond_3e

    .line 72
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, buf:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 76
    .local v1, "s":Ljava/lang/String;
    goto :goto_10

    .line 81
    .end local v1    # "s":Ljava/lang/String;
    :cond_3e
    const-string v1, "-1"
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_41

    goto :goto_10

    .line 50
    .end local v0    # "replyLength":I
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public waitForConnection()V
    .registers 3

    .prologue
    .line 260
    :goto_0
    const-string/jumbo v0, "ping"

    invoke-virtual {p0, v0}, execute(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 261
    return-void

    .line 263
    :cond_a
    const-string v0, "InstallerConnection"

    const-string v1, "installd not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
