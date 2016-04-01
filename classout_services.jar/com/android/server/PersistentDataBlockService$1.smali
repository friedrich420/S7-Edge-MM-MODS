.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2

    .prologue
    .line 330
    iput-object p1, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method

.method private enforcePersistentDataBlockAccess()V
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1300(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 482
    iget-object v0, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    .line 484
    :cond_17
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 457
    invoke-direct {p0}, enforcePersistentDataBlockAccess()V

    .line 461
    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_2b

    .line 468
    .local v1, "inputStream":Ljava/io/DataInputStream;
    :try_start_19
    iget-object v2, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_3b
    .catchall {:try_start_19 .. :try_end_20} :catchall_4b

    .line 469
    :try_start_20
    iget-object v2, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v2, v1}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v2

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_38

    .line 475
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    :goto_2a
    return v2

    .line 462
    :catch_2b
    move-exception v0

    .line 463
    .local v0, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "partition not available"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 464
    goto :goto_2a

    .line 470
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
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
    .catchall {:try_start_3a .. :try_end_3b} :catchall_4b

    .line 471
    :catch_3b
    move-exception v0

    .line 472
    .local v0, "e":Ljava/io/IOException;
    :try_start_3c
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "error reading data block size"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_4b

    .line 475
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v2, v3

    goto :goto_2a

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4b
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public getMaximumDataBlockSize()J
    .registers 9

    .prologue
    const-wide/32 v2, 0x19000

    .line 488
    iget-object v4, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J
    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v4

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long v0, v4, v6

    .line 489
    .local v0, "actualSize":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_15

    .end local v0    # "actualSize":J
    :goto_14
    return-wide v0

    .restart local v0    # "actualSize":J
    :cond_15
    move-wide v0, v2

    goto :goto_14
.end method

.method public getOemUnlockEnabled()Z
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;)V

    .line 452
    iget-object v0, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1200(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 494
    const/4 v3, 0x0

    .line 495
    .local v3, "oemUnlock":Z
    const/4 v0, 0x0

    .line 497
    .local v0, "challengeSize":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_31

    .line 500
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not allowed to access PST"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_30
    :goto_30
    return v4

    .line 504
    :cond_31
    iget-object v5, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 510
    :try_start_39
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_4e} :catch_6a

    .line 517
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_4e
    iget-object v5, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_55} :catch_96
    .catchall {:try_start_4e .. :try_end_55} :catchall_b1

    .line 518
    :try_start_55
    invoke-virtual {p0}, getOemUnlockEnabled()Z

    move-result v3

    .line 519
    iget-object v5, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v5, v2}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v0

    .line 521
    if-lez v0, :cond_82

    if-nez v3, :cond_82

    .line 522
    const/4 v5, 0x1

    monitor-exit v6
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_93

    .line 533
    :try_start_65
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_76

    :goto_68
    move v4, v5

    .line 536
    goto :goto_30

    .line 511
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_6a
    move-exception v1

    .line 512
    .local v1, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "partition not available?"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 534
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_76
    move-exception v1

    .line 535
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 525
    .end local v1    # "e":Ljava/io/IOException;
    :cond_82
    :try_start_82
    monitor-exit v6
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_93

    .line 533
    :try_start_83
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_30

    .line 534
    :catch_87
    move-exception v1

    .line 535
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 527
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_93
    move-exception v5

    :try_start_94
    monitor-exit v6
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw v5
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_96} :catch_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_b1

    .line 528
    :catch_96
    move-exception v1

    .line 529
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_97
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to read statues"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_b1

    .line 533
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_30

    .line 534
    :catch_a5
    move-exception v1

    .line 535
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 532
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_b1
    move-exception v4

    .line 533
    :try_start_b2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    .line 536
    :goto_b5
    throw v4

    .line 534
    :catch_b6
    move-exception v1

    .line 535
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5
.end method

.method public read()[B
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 378
    iget-object v6, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v6, v7}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    .line 379
    iget-object v6, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 380
    new-array v0, v8, [B

    .line 417
    :goto_15
    return-object v0

    .line 385
    :cond_16
    :try_start_16
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2b} :catch_4e

    .line 392
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_2b
    iget-object v6, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_b1
    .catchall {:try_start_2b .. :try_end_32} :catchall_ce

    .line 393
    :try_start_32
    iget-object v6, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v6, v2}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v4

    .line 395
    .local v4, "totalDataSize":I
    if-nez v4, :cond_5b

    .line 396
    const/4 v6, 0x0

    new-array v0, v6, [B

    monitor-exit v7
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_ae

    .line 414
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_15

    .line 415
    :catch_42
    move-exception v1

    .line 416
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 386
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .end local v4    # "totalDataSize":I
    :catch_4e
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "partition not available?"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    .line 388
    goto :goto_15

    .line 399
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "totalDataSize":I
    :cond_5b
    :try_start_5b
    new-array v0, v4, [B

    .line 400
    .local v0, "data":[B
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 401
    .local v3, "read":I
    if-ge v3, v4, :cond_9b

    .line 403
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to read entire data block. bytes read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    monitor-exit v7
    :try_end_8a
    .catchall {:try_start_5b .. :try_end_8a} :catchall_ae

    .line 414
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8f

    :goto_8d
    move-object v0, v5

    .line 417
    goto :goto_15

    .line 415
    :catch_8f
    move-exception v1

    .line 416
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 407
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9b
    :try_start_9b
    monitor-exit v7
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_ae

    .line 414
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a1

    goto/16 :goto_15

    .line 415
    :catch_a1
    move-exception v1

    .line 416
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 408
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "read":I
    .end local v4    # "totalDataSize":I
    :catchall_ae
    move-exception v6

    :try_start_af
    monitor-exit v7
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw v6
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b1} :catch_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_ce

    .line 409
    :catch_b1
    move-exception v1

    .line 410
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_b2
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to read data"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_ce

    .line 414
    :try_start_bc
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c2

    :goto_bf
    move-object v0, v5

    .line 417
    goto/16 :goto_15

    .line 415
    :catch_c2
    move-exception v1

    .line 416
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 413
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_ce
    move-exception v5

    .line 414
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    .line 417
    :goto_d2
    throw v5

    .line 415
    :catch_d3
    move-exception v1

    .line 416
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 437
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 447
    :goto_6
    return-void

    .line 440
    :cond_7
    iget-object v0, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;)V

    .line 441
    iget-object v0, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceIsOwner()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1000(Lcom/android/server/PersistentDataBlockService;)V

    .line 443
    iget-object v0, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 444
    :try_start_18
    iget-object v0, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V
    invoke-static {v0, p1}, Lcom/android/server/PersistentDataBlockService;->access$1100(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 445
    iget-object v0, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    .line 446
    monitor-exit v1

    goto :goto_6

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public wipe()V
    .registers 5

    .prologue
    .line 423
    iget-object v1, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;)V

    .line 425
    iget-object v1, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 426
    :try_start_c
    iget-object v1, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    iget-object v3, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I
    invoke-static {v1, v3}, Lcom/android/server/PersistentDataBlockService;->access$900(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v0

    .line 428
    .local v0, "ret":I
    if-gez v0, :cond_24

    .line 429
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "failed to wipe persistent partition"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_24
    monitor-exit v2

    .line 432
    return-void

    .line 431
    .end local v0    # "ret":I
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v1
.end method

.method public write([B)I
    .registers 14
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 333
    iget-object v7, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v7, v8}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    .line 336
    iget-object v7, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v8

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long v4, v8, v10

    .line 337
    .local v4, "maxBlockSize":J
    array-length v7, p1

    int-to-long v8, v7

    cmp-long v7, v8, v4

    if-lez v7, :cond_20

    .line 339
    neg-long v6, v4

    long-to-int v6, v6

    .line 371
    :goto_1f
    return v6

    .line 344
    :cond_20
    :try_start_20
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_35} :catch_75

    .line 350
    .local v3, "outputStream":Ljava/io/DataOutputStream;
    array-length v7, p1

    add-int/lit8 v7, v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 351
    .local v2, "headerAndData":Ljava/nio/ByteBuffer;
    const v7, 0x19901873

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 352
    array-length v7, p1

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 353
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 355
    iget-object v7, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 357
    const/16 v8, 0x20

    :try_start_52
    new-array v0, v8, [B

    .line 358
    .local v0, "checksum":[B
    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-virtual {v3, v0, v8, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 359
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 360
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_64} :catch_81
    .catchall {:try_start_52 .. :try_end_64} :catchall_91

    .line 365
    :try_start_64
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 368
    iget-object v8, p0, this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v8}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 369
    array-length v6, p1

    monitor-exit v7

    goto :goto_1f

    .line 373
    .end local v0    # "checksum":[B
    :catchall_72
    move-exception v6

    monitor-exit v7
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_72

    throw v6

    .line 345
    .end local v2    # "headerAndData":Ljava/nio/ByteBuffer;
    .end local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_75
    move-exception v1

    .line 346
    .local v1, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "partition not available?"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 361
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "headerAndData":Ljava/nio/ByteBuffer;
    .restart local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_81
    move-exception v1

    .line 362
    .local v1, "e":Ljava/io/IOException;
    :try_start_82
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "failed writing to the persistent data block"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_91

    .line 365
    :try_start_8c
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v7

    goto :goto_1f

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_91
    move-exception v6

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .line 371
    .restart local v0    # "checksum":[B
    :cond_96
    monitor-exit v7
    :try_end_97
    .catchall {:try_start_8c .. :try_end_97} :catchall_72

    goto :goto_1f
.end method
