.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field final mBuddyInfos:[J

.field final mInfos:[J

.field mbuffer:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0xd

    new-array v0, v0, [J

    iput-object v0, p0, mInfos:[J

    .line 28
    const/16 v0, 0x16

    new-array v0, v0, [J

    iput-object v0, p0, mBuddyInfos:[J

    .line 29
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, mbuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 192
    :goto_4
    array-length v2, p1

    if-ge p2, v2, :cond_3a

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3a

    .line 193
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_37

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_37

    .line 194
    move v0, p2

    .line 195
    .local v0, "start":I
    add-int/lit8 p2, p2, 0x1

    .line 197
    :goto_18
    array-length v2, p1

    if-ge p2, v2, :cond_26

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_26

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_26

    .line 198
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 200
    :cond_26
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 201
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 205
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_36
    return-wide v2

    .line 203
    :cond_37
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 205
    :cond_3a
    const-wide/16 v2, 0x0

    goto :goto_36
.end method

.method private findKeyword([BIILjava/lang/String;)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "bound"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 180
    .local v0, "N":I
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 181
    .local v1, "cFirst":C
    move v2, p2

    .local v2, "i":I
    :goto_a
    if-ge v2, p3, :cond_1c

    .line 182
    aget-byte v3, p1, v2

    if-ne v3, v1, :cond_19

    .line 183
    invoke-direct {p0, p1, v2, p4}, matchText([BILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 184
    add-int v3, v2, v0

    .line 188
    :goto_18
    return v3

    .line 181
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 188
    :cond_1c
    const/4 v3, -0x1

    goto :goto_18
.end method

.method private matchText([BILjava/lang/String;)Z
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 167
    .local v0, "N":I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_b

    .line 175
    :cond_a
    :goto_a
    return v2

    .line 170
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1b

    .line 171
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_a

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 175
    :cond_1b
    const/4 v2, 0x1

    goto :goto_a
.end method


# virtual methods
.method public getCachedSize()J
    .registers 5

    .prologue
    .line 99
    invoke-virtual {p0}, getCachedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeKb()J
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, mInfos:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iget-object v2, p0, mInfos:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, mInfos:[J

    const/16 v3, 0x9

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeLegacy()J
    .registers 5

    .prologue
    .line 106
    iget-object v0, p0, mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFragRate()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x2

    .line 56
    const-wide/16 v6, 0x0

    .line 57
    .local v6, "totalCombination":J
    const-wide/16 v4, 0x0

    .line 58
    .local v4, "prevCombination":J
    const-wide/16 v0, 0x0

    .line 61
    .local v0, "fragMem":J
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    const/16 v3, 0x9

    if-gt v2, v3, :cond_18

    .line 62
    iget-object v3, p0, mBuddyInfos:[J

    aget-wide v8, v3, v2

    add-long/2addr v8, v4

    div-long v4, v8, v10

    .line 63
    add-long/2addr v6, v4

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 67
    :cond_18
    const-wide/16 v4, 0x0

    .line 69
    const/16 v2, 0xc

    :goto_1c
    const/16 v3, 0x15

    if-gt v2, v3, :cond_2b

    .line 70
    iget-object v3, p0, mBuddyInfos:[J

    aget-wide v8, v3, v2

    add-long/2addr v8, v4

    div-long v4, v8, v10

    .line 71
    add-long/2addr v6, v4

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 74
    :cond_2b
    const-wide/16 v8, 0x1000

    mul-long v0, v6, v8

    .line 76
    return-wide v0
.end method

.method public getFreeSize()J
    .registers 5

    .prologue
    .line 91
    iget-object v0, p0, mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSizeKb()J
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getKernelUsedSize()J
    .registers 5

    .prologue
    .line 113
    invoke-virtual {p0}, getKernelUsedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getKernelUsedSizeKb()J
    .registers 5

    .prologue
    .line 143
    iget-object v0, p0, mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    iget-object v2, p0, mInfos:[J

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, mInfos:[J

    const/16 v3, 0xa

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, mInfos:[J

    const/16 v3, 0xb

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    iget-object v2, p0, mInfos:[J

    const/16 v3, 0xc

    aget-wide v2, v2, v3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getRawInfo()[J
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, mInfos:[J

    return-object v0
.end method

.method public getSwapFreeSizeKb()J
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, mInfos:[J

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapTotalSizeKb()J
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, mInfos:[J

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTotalSize()J
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSizeKb()J
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getUssByPid(I)J
    .registers 20
    .param p1, "pid"    # I

    .prologue
    .line 209
    const-wide/16 v6, 0x0

    .line 210
    .local v6, "resident":J
    const-wide/16 v8, 0x0

    .line 211
    .local v8, "shared":J
    const-wide/16 v12, 0x0

    .line 213
    .local v12, "uss":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/proc/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/statm"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 216
    .local v5, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 218
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_26
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_6b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_75

    .line 219
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v14, v0, mbuffer:[B

    const/4 v15, 0x0

    const/16 v16, 0x200

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 220
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 222
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, mbuffer:[B

    invoke-direct {v10, v14}, Ljava/lang/String;-><init>([B)V

    .line 223
    .local v10, "str":Ljava/lang/String;
    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "subs":[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x1000

    mul-long v6, v14, v16

    .line 226
    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5a} :catch_88
    .catchall {:try_start_2b .. :try_end_5a} :catchall_85

    move-result-wide v14

    const-wide/16 v16, 0x1000

    mul-long v8, v14, v16

    .line 227
    sub-long v12, v6, v8

    .line 231
    if-eqz v3, :cond_66

    .line 233
    :try_start_63
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_7f

    .line 237
    :cond_66
    :goto_66
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v3

    .line 239
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "subs":[Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_6a
    return-wide v12

    .line 229
    :catch_6b
    move-exception v14

    .line 231
    :goto_6c
    if-eqz v2, :cond_71

    .line 233
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_81

    .line 237
    :cond_71
    :goto_71
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_6a

    .line 231
    :catchall_75
    move-exception v14

    :goto_76
    if-eqz v2, :cond_7b

    .line 233
    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_83

    .line 237
    :cond_7b
    :goto_7b
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v14

    .line 234
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "str":Ljava/lang/String;
    .restart local v11    # "subs":[Ljava/lang/String;
    :catch_7f
    move-exception v14

    goto :goto_66

    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "subs":[Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_81
    move-exception v14

    goto :goto_71

    :catch_83
    move-exception v15

    goto :goto_7b

    .line 231
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_85
    move-exception v14

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_76

    .line 229
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_88
    move-exception v14

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_6c
.end method

.method public getWatermark()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x4

    .line 243
    const-wide/16 v6, 0x0

    .line 247
    .local v6, "watermark":J
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 248
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 250
    .local v2, "is":Ljava/io/FileInputStream;
    const/16 v5, 0x800

    :try_start_b
    new-array v0, v5, [B

    .line 251
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/FileInputStream;

    const-string v5, "/proc/zoneinfo"

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_89
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_93
    .catchall {:try_start_b .. :try_end_14} :catchall_9d

    .line 252
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    const/16 v8, 0x800

    :try_start_17
    invoke-virtual {v3, v0, v5, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 253
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, "i":I
    const/16 v5, 0x800

    const-string/jumbo v8, "zone"

    invoke-direct {p0, v0, v1, v5, v8}, findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4e

    .line 258
    const/16 v5, 0x800

    const-string v8, "Normal"

    invoke-direct {p0, v0, v1, v5, v8}, findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4e

    .line 260
    const/16 v5, 0x800

    const-string/jumbo v8, "pages"

    invoke-direct {p0, v0, v1, v5, v8}, findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4e

    .line 261
    const/16 v5, 0x800

    const-string v8, "low"

    invoke-direct {p0, v0, v1, v5, v8}, findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4e

    .line 262
    invoke-direct {p0, v0, v1}, extractMemValue([BI)J

    move-result-wide v8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 268
    :cond_4e
    const/4 v1, 0x0

    .line 269
    const/16 v5, 0x800

    const-string/jumbo v8, "zone"

    invoke-direct {p0, v0, v1, v5, v8}, findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7f

    .line 270
    const/16 v5, 0x800

    const-string v8, "HighMem"

    invoke-direct {p0, v0, v1, v5, v8}, findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7f

    .line 272
    const/16 v5, 0x800

    const-string/jumbo v8, "pages"

    invoke-direct {p0, v0, v1, v5, v8}, findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7f

    .line 273
    const/16 v5, 0x800

    const-string v8, "low"

    invoke-direct {p0, v0, v1, v5, v8}, findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7f

    .line 274
    invoke-direct {p0, v0, v1}, extractMemValue([BI)J
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_7c} :catch_b5
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_7c} :catch_b2
    .catchall {:try_start_17 .. :try_end_7c} :catchall_af

    move-result-wide v8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 283
    :cond_7f
    if-eqz v3, :cond_84

    .line 285
    :try_start_81
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_a7

    .line 289
    :cond_84
    :goto_84
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v3

    .line 291
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_88
    return-wide v6

    .line 280
    :catch_89
    move-exception v5

    .line 283
    :goto_8a
    if-eqz v2, :cond_8f

    .line 285
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_a9

    .line 289
    :cond_8f
    :goto_8f
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_88

    .line 281
    :catch_93
    move-exception v5

    .line 283
    :goto_94
    if-eqz v2, :cond_99

    .line 285
    :try_start_96
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_ab

    .line 289
    :cond_99
    :goto_99
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_88

    .line 283
    :catchall_9d
    move-exception v5

    :goto_9e
    if-eqz v2, :cond_a3

    .line 285
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_ad

    .line 289
    :cond_a3
    :goto_a3
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 286
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "i":I
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_a7
    move-exception v5

    goto :goto_84

    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_a9
    move-exception v5

    goto :goto_8f

    :catch_ab
    move-exception v5

    goto :goto_99

    :catch_ad
    move-exception v8

    goto :goto_a3

    .line 283
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_af
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_9e

    .line 281
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_b2
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_94

    .line 280
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_b5
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_8a
.end method

.method public getZramTotalSizeKb()J
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, mInfos:[J

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public readBuddyInfo()V
    .registers 3

    .prologue
    .line 47
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 49
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, mBuddyInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getBuddyInfo([J)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 51
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 53
    return-void

    .line 51
    :catchall_d
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public readMemInfo()V
    .registers 3

    .prologue
    .line 35
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 37
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 39
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    return-void

    .line 39
    :catchall_d
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method
