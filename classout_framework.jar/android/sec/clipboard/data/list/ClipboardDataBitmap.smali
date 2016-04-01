.class public Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataBitmap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataBitmap"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExtraDataPath:Ljava/lang/String;

.field private transient mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z

.field private mValue:Ljava/lang/String;

.field private mValueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, mValueUrl:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, mInitBaseValue:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, mInitBaseValueCheck:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, mExtraDataPath:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 56
    return-void
.end method

.method private compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    .registers 27
    .param p1, "src"    # Ljava/io/FileInputStream;
    .param p2, "dest"    # Ljava/io/FileInputStream;

    .prologue
    .line 387
    const/4 v7, 0x5

    .line 388
    .local v7, "compareCount":I
    const/16 v8, 0x80

    .line 389
    .local v8, "compareSize":I
    const/4 v2, 0x0

    .line 392
    .local v2, "Result":Z
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    .line 393
    .local v19, "srcSize":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_ce
    .catchall {:try_start_4 .. :try_end_18} :catchall_df

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v9, v0

    .line 394
    .local v9, "destSize":I
    move/from16 v0, v19

    if-ne v0, v9, :cond_2e

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_2e

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ge v9, v0, :cond_3c

    .line 395
    :cond_2e
    const/16 v21, 0x0

    .line 432
    :try_start_30
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 433
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_37

    .line 438
    .end local v9    # "destSize":I
    .end local v19    # "srcSize":I
    :goto_36
    return v21

    .line 434
    .restart local v9    # "destSize":I
    .restart local v19    # "srcSize":I
    :catch_37
    move-exception v11

    .line 435
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 398
    .end local v11    # "e1":Ljava/io/IOException;
    :cond_3c
    const/16 v21, 0x80

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_b4

    move/from16 v6, v19

    .line 399
    .local v6, "buffSize":I
    :goto_46
    :try_start_46
    div-int v20, v19, v6

    .line 400
    .local v20, "tmp":I
    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_b7

    const/4 v14, 0x5

    .line 402
    .local v14, "iCnt":I
    :goto_51
    mul-int v21, v6, v14

    sub-int v20, v19, v21

    .line 403
    div-int v15, v20, v14

    .line 404
    .local v15, "offset":I
    const/4 v3, 0x1

    .line 406
    .local v3, "bSameData":Z
    const/4 v5, 0x0

    .line 407
    .local v5, "bisSrc":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 408
    .local v4, "bisDest":Ljava/io/BufferedInputStream;
    const/16 v16, 0x0

    .line 409
    .local v16, "position":I
    new-array v0, v6, [B

    move-object/from16 v18, v0

    .line 410
    .local v18, "readSrcData":[B
    new-array v0, v6, [B

    move-object/from16 v17, v0

    .line 412
    .local v17, "readDestData":[B
    new-instance v5, Ljava/io/BufferedInputStream;

    .end local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 413
    .restart local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    .end local v4    # "bisDest":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 415
    .restart local v4    # "bisDest":Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .local v12, "i1":I
    :goto_73
    if-ge v12, v14, :cond_bf

    if-eqz v3, :cond_bf

    .line 416
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 417
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 419
    add-int v21, v6, v15

    add-int v16, v16, v21

    .line 420
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 421
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 423
    const/4 v13, 0x0

    .local v13, "i2":I
    :goto_a2
    if-ge v13, v6, :cond_bc

    if-eqz v3, :cond_bc

    .line 424
    aget-byte v21, v18, v13

    aget-byte v22, v17, v13
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_aa} :catch_ce
    .catchall {:try_start_46 .. :try_end_aa} :catchall_df

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_ba

    const/4 v2, 0x1

    .line 423
    :goto_b1
    add-int/lit8 v13, v13, 0x1

    goto :goto_a2

    .line 398
    .end local v3    # "bSameData":Z
    .end local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v6    # "buffSize":I
    .end local v12    # "i1":I
    .end local v13    # "i2":I
    .end local v14    # "iCnt":I
    .end local v15    # "offset":I
    .end local v16    # "position":I
    .end local v17    # "readDestData":[B
    .end local v18    # "readSrcData":[B
    .end local v20    # "tmp":I
    :cond_b4
    const/16 v6, 0x80

    goto :goto_46

    .restart local v6    # "buffSize":I
    .restart local v20    # "tmp":I
    :cond_b7
    move/from16 v14, v20

    .line 400
    goto :goto_51

    .line 424
    .restart local v3    # "bSameData":Z
    .restart local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v12    # "i1":I
    .restart local v13    # "i2":I
    .restart local v14    # "iCnt":I
    .restart local v15    # "offset":I
    .restart local v16    # "position":I
    .restart local v17    # "readDestData":[B
    .restart local v18    # "readSrcData":[B
    :cond_ba
    const/4 v2, 0x0

    goto :goto_b1

    .line 415
    :cond_bc
    add-int/lit8 v12, v12, 0x1

    goto :goto_73

    .line 432
    .end local v13    # "i2":I
    :cond_bf
    :try_start_bf
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 433
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c5} :catch_c9

    .end local v3    # "bSameData":Z
    .end local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v6    # "buffSize":I
    .end local v9    # "destSize":I
    .end local v12    # "i1":I
    .end local v14    # "iCnt":I
    .end local v15    # "offset":I
    .end local v16    # "position":I
    .end local v17    # "readDestData":[B
    .end local v18    # "readSrcData":[B
    .end local v19    # "srcSize":I
    .end local v20    # "tmp":I
    :goto_c5
    move/from16 v21, v2

    .line 438
    goto/16 :goto_36

    .line 434
    .restart local v3    # "bSameData":Z
    .restart local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v6    # "buffSize":I
    .restart local v9    # "destSize":I
    .restart local v12    # "i1":I
    .restart local v14    # "iCnt":I
    .restart local v15    # "offset":I
    .restart local v16    # "position":I
    .restart local v17    # "readDestData":[B
    .restart local v18    # "readSrcData":[B
    .restart local v19    # "srcSize":I
    .restart local v20    # "tmp":I
    :catch_c9
    move-exception v11

    .line 435
    .restart local v11    # "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c5

    .line 427
    .end local v3    # "bSameData":Z
    .end local v4    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v5    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v6    # "buffSize":I
    .end local v9    # "destSize":I
    .end local v11    # "e1":Ljava/io/IOException;
    .end local v12    # "i1":I
    .end local v14    # "iCnt":I
    .end local v15    # "offset":I
    .end local v16    # "position":I
    .end local v17    # "readDestData":[B
    .end local v18    # "readSrcData":[B
    .end local v19    # "srcSize":I
    .end local v20    # "tmp":I
    :catch_ce
    move-exception v10

    .line 428
    .local v10, "e":Ljava/io/IOException;
    :try_start_cf
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_df

    .line 429
    const/4 v2, 0x0

    .line 432
    :try_start_d3
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 433
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d9} :catch_da

    goto :goto_c5

    .line 434
    :catch_da
    move-exception v11

    .line 435
    .restart local v11    # "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c5

    .line 431
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "e1":Ljava/io/IOException;
    :catchall_df
    move-exception v21

    .line 432
    :try_start_e0
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 433
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e6} :catch_e7

    .line 436
    :goto_e6
    throw v21

    .line 434
    :catch_e7
    move-exception v11

    .line 435
    .restart local v11    # "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e6
.end method

.method private compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .registers 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 442
    const/4 v3, 0x0

    .line 443
    .local v3, "fisSrc":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 446
    .local v1, "fisDest":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_13

    .line 447
    .end local v3    # "fisSrc":Ljava/io/FileInputStream;
    .local v4, "fisSrc":Ljava/io/FileInputStream;
    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_19

    .line 453
    .end local v1    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    invoke-direct {p0, v4, v2}, compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v5

    move-object v1, v2

    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .restart local v1    # "fisDest":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisSrc":Ljava/io/FileInputStream;
    :goto_12
    return v5

    .line 448
    :catch_13
    move-exception v0

    .line 449
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_14
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 450
    const/4 v5, 0x0

    goto :goto_12

    .line 448
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    :catch_19
    move-exception v0

    move-object v3, v4

    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_14
.end method

.method private compareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 457
    const/4 v3, 0x0

    .line 458
    .local v3, "fisSrc":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 461
    .local v1, "fisDest":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_13

    .line 462
    .end local v3    # "fisSrc":Ljava/io/FileInputStream;
    .local v4, "fisSrc":Ljava/io/FileInputStream;
    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_1c

    .line 468
    .end local v1    # "fisDest":Ljava/io/FileInputStream;
    .local v2, "fisDest":Ljava/io/FileInputStream;
    invoke-direct {p0, v4, v2}, compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z

    move-result v5

    move-object v1, v2

    .end local v2    # "fisDest":Ljava/io/FileInputStream;
    .restart local v1    # "fisDest":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisSrc":Ljava/io/FileInputStream;
    :goto_12
    return v5

    .line 463
    :catch_13
    move-exception v0

    .line 464
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_14
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 465
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_12

    .line 463
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v4    # "fisSrc":Ljava/io/FileInputStream;
    :catch_1c
    move-exception v0

    move-object v3, v4

    .end local v4    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v3    # "fisSrc":Ljava/io/FileInputStream;
    goto :goto_14
.end method

.method private compareFileSize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "f1"    # Ljava/lang/String;
    .param p2, "f2"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v1, "file2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    .line 371
    const/4 v2, 0x1

    .line 374
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method


# virtual methods
.method public GetBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetBitmapPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, mValue:Ljava/lang/String;

    return-object v0
.end method

.method public GetExtraDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    invoke-virtual {p0}, getExtraDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetHtmlUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, mValueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public HasExtraData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 301
    iget-object v1, p0, mExtraDataPath:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, mExtraDataPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_e

    .line 302
    :cond_d
    const/4 v0, 0x0

    .line 304
    :cond_e
    return v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 86
    .local v0, "Result":Z
    if-eqz v0, :cond_a

    iget-object v1, p0, mValue:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 87
    :cond_a
    const/4 v1, 0x0

    .line 99
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_b
    return v1

    .line 90
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_c
    packed-switch p1, :pswitch_data_2e

    .line 96
    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_10
    move v1, v0

    .line 99
    goto :goto_b

    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_12
    move-object v1, p2

    .line 92
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    iget-object v2, p0, mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2}, setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 93
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, getBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, GetHtmlUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, getExtraDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3}, setBitmapPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 94
    goto :goto_10

    .line 90
    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_12
    .end packed-switch
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public SetBitmapPath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, setBitmapPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public SetBitmapPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "FilePath"    # Ljava/lang/String;
    .param p2, "HtmlUrl"    # Ljava/lang/String;
    .param p3, "ExtraDataPath"    # Ljava/lang/String;

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public SetExtraDataPath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, setExtraDataPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 107
    const-string v0, ""

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, mValueUrl:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, mExtraDataPath:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 111
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 322
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_b

    .line 323
    const-string v6, "ClipboardDataBitmap"

    const-string v7, "bitmap equals"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_b
    const/4 v1, 0x0

    .line 326
    .local v1, "result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    move v2, v1

    .line 356
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_13
    return v2

    .line 330
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_14
    instance-of v6, p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-nez v6, :cond_1a

    move v2, v1

    .line 331
    .restart local v2    # "result":I
    goto :goto_13

    .end local v2    # "result":I
    :cond_1a
    move-object v4, p1

    .line 334
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 335
    .local v4, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v4}, getBitmapPath()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "trgBmp":Ljava/lang/String;
    invoke-virtual {v4}, getInitBasePath()Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "trgInitBasePath":Ljava/lang/String;
    if-eqz v5, :cond_4d

    iget-object v6, p0, mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4d

    .line 339
    invoke-virtual {v4}, getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 340
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_4f

    .line 341
    iget-object v6, p0, mValue:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {p0, v6, v7}, compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 342
    const/4 v1, 0x1

    .line 343
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_4d

    .line 344
    const-string v6, "ClipboardDataBitmap"

    const-string v7, "bitmap equals"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4d
    :goto_4d
    move v2, v1

    .line 356
    .restart local v2    # "result":I
    goto :goto_13

    .line 348
    .end local v2    # "result":I
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4f
    iget-object v6, p0, mValue:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, compareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 349
    const/4 v1, 0x1

    .line 350
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_4d

    .line 351
    const-string v6, "ClipboardDataBitmap"

    const-string v7, "bitmap equals"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method public getBitmapPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, mExtraDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getInitBasePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, mInitBaseValue:Ljava/lang/String;

    return-object v0
.end method

.method public isValidData()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, mValue:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 547
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 512
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, mValue:Ljava/lang/String;

    .line 513
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, mInitBaseValue:Ljava/lang/String;

    .line 514
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, mValueUrl:Ljava/lang/String;

    .line 515
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, mExtraDataPath:Ljava/lang/String;

    .line 516
    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, mClipdata:Landroid/content/ClipData;

    .line 517
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, mIsProtected:Z

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_69

    .line 519
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 521
    :cond_69
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v1, :cond_87

    .line 522
    const-string v1, "ClipboardDataBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataBitmap : readFromSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_87} :catch_88

    .line 527
    :cond_87
    :goto_87
    return-void

    .line 524
    :catch_88
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardDataBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFromSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87
.end method

.method public setBitmapPath(Ljava/lang/String;)Z
    .registers 7
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "Result":Z
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_c

    :cond_a
    move v1, v0

    .line 156
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_b
    return v1

    .line 141
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_c
    iget-boolean v3, p0, mInitBaseValueCheck:Z

    if-eqz v3, :cond_15

    .line 142
    iput-object p1, p0, mInitBaseValue:Ljava/lang/String;

    .line 143
    const/4 v3, 0x0

    iput-boolean v3, p0, mInitBaseValueCheck:Z

    .line 146
    :cond_15
    iput-object p1, p0, mValue:Ljava/lang/String;

    .line 148
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 150
    const/4 v0, 0x1

    :cond_23
    :goto_23
    move v1, v0

    .line 156
    .restart local v1    # "Result":I
    goto :goto_b

    .line 152
    .end local v1    # "Result":I
    :cond_25
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_23

    .line 153
    const-string v3, "ClipboardDataBitmap"

    const-string v4, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public setBitmapPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "FilePath"    # Ljava/lang/String;
    .param p2, "HtmlUrl"    # Ljava/lang/String;
    .param p3, "ExtraDataPath"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 169
    const-string v4, "ClipboardDataBitmap"

    const-string/jumbo v5, "setBitmapPath"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_c
    const/4 v1, 0x0

    .line 173
    .local v1, "Result":Z
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_18

    :cond_16
    move v2, v1

    .line 218
    .end local v1    # "Result":Z
    .local v2, "Result":I
    :goto_17
    return v2

    .line 177
    .end local v2    # "Result":I
    .restart local v1    # "Result":Z
    :cond_18
    iget-boolean v4, p0, mInitBaseValueCheck:Z

    if-eqz v4, :cond_21

    .line 178
    iput-object p1, p0, mInitBaseValue:Ljava/lang/String;

    .line 179
    const/4 v4, 0x0

    iput-boolean v4, p0, mInitBaseValueCheck:Z

    .line 181
    :cond_21
    iput-object p1, p0, mValue:Ljava/lang/String;

    .line 184
    if-eqz p2, :cond_49

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_49

    .line 185
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v4, :cond_47

    .line 186
    const-string v4, "ClipboardDataBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtmlUrl ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_47
    iput-object p2, p0, mValueUrl:Ljava/lang/String;

    .line 192
    :cond_49
    if-eqz p3, :cond_6f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6f

    .line 193
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v4, :cond_6d

    .line 194
    const-string v4, "ClipboardDataBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExtraDataPath ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_6d
    iput-object p3, p0, mExtraDataPath:Ljava/lang/String;

    .line 199
    :cond_6f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 201
    invoke-virtual {p0}, HasExtraData()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 202
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "ExtraDataFile":Ljava/io/File;
    if-eqz v0, :cond_90

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 204
    const/4 v1, 0x1

    .end local v0    # "ExtraDataFile":Ljava/io/File;
    :cond_8e
    :goto_8e
    move v2, v1

    .line 218
    .restart local v2    # "Result":I
    goto :goto_17

    .line 206
    .end local v2    # "Result":I
    .restart local v0    # "ExtraDataFile":Ljava/io/File;
    :cond_90
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_8e

    .line 207
    const-string v4, "ClipboardDataBitmap"

    const-string v5, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 211
    .end local v0    # "ExtraDataFile":Ljava/io/File;
    :cond_9c
    const/4 v1, 0x1

    goto :goto_8e

    .line 214
    :cond_9e
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_8e

    .line 215
    const-string v4, "ClipboardDataBitmap"

    const-string v5, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e
.end method

.method public setExtraDataPath(Ljava/lang/String;)Z
    .registers 7
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "Result":Z
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_c

    :cond_a
    move v1, v0

    .line 248
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_b
    return v1

    .line 239
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_c
    iput-object p1, p0, mExtraDataPath:Ljava/lang/String;

    .line 240
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 242
    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    move v1, v0

    .line 248
    .restart local v1    # "Result":I
    goto :goto_b

    .line 244
    .end local v1    # "Result":I
    :cond_1c
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_1a

    .line 245
    const-string v3, "ClipboardDataBitmap"

    const-string v4, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 60
    iput-object p1, p0, mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Bitmap class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_26

    iget-object v0, p0, mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v0, p0, mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 478
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_d

    .line 479
    const-string v2, "ClipboardDataBitmap"

    const-string v3, "Bitmap write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 483
    iget-object v2, p0, mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_34

    .line 484
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "text/uri-list"

    aput-object v2, v1, v4

    .line 485
    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, mValue:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 486
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "clipboarddragNdrop"

    invoke-direct {v2, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, mClipdata:Landroid/content/ClipData;

    .line 490
    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_34
    iget-object v2, p0, mValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 491
    iget-object v2, p0, mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 492
    iget-object v2, p0, mValueUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 493
    iget-object v2, p0, mExtraDataPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 494
    iget-object v2, p0, mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 495
    iget-boolean v2, p0, mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 496
    iget-object v2, p0, mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_67

    .line 497
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget-object v2, p0, mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 502
    :goto_66
    return-void

    .line 500
    :cond_67
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_66
.end method
