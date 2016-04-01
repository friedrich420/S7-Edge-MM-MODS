.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, this$0:Lcom/android/server/am/TaskPersister;

    .line 470
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 471
    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 475
    const/16 v21, 0xa

    invoke-static/range {v21 .. v21}, Landroid/os/Process;->setThreadPriority(I)V

    .line 476
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 482
    .local v16, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 483
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    .line 484
    .local v17, "probablyDone":Z
    monitor-exit v22
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_90

    .line 485
    if-eqz v17, :cond_a1

    .line 487
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->clear()V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v22

    monitor-enter v22

    .line 490
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v21

    add-int/lit8 v20, v21, -0x1

    .local v20, "taskNdx":I
    :goto_42
    if-ltz v20, :cond_93

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    .line 494
    .local v19, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v21, v0

    if-nez v21, :cond_68

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8d

    :cond_68
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7c

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v21

    if-nez v21, :cond_8d

    .line 497
    :cond_7c
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catchall {:try_start_32 .. :try_end_8d} :catchall_113

    .line 490
    :cond_8d
    add-int/lit8 v20, v20, -0x1

    goto :goto_42

    .line 484
    .end local v17    # "probablyDone":Z
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .end local v20    # "taskNdx":I
    :catchall_90
    move-exception v21

    :try_start_91
    monitor-exit v22
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v21

    .line 503
    .restart local v17    # "probablyDone":Z
    .restart local v20    # "taskNdx":I
    :cond_93
    :try_start_93
    monitor-exit v22
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_113

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    .line 509
    .end local v20    # "taskNdx":I
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 510
    :try_start_a8
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v21, v24, v26

    if-eqz v21, :cond_cd

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1f4

    add-long v24, v24, v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$402(Lcom/android/server/am/TaskPersister;J)J

    .line 518
    :cond_cd
    :goto_cd
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_116

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v21, v24, v26

    if-eqz v21, :cond_107

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$402(Lcom/android/server/am/TaskPersister;J)J

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V
    :try_end_107
    .catchall {:try_start_a8 .. :try_end_107} :catchall_190

    .line 525
    :cond_107
    :try_start_107
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->wait()V
    :try_end_110
    .catch Ljava/lang/InterruptedException; {:try_start_107 .. :try_end_110} :catch_111
    .catchall {:try_start_107 .. :try_end_110} :catchall_190

    goto :goto_cd

    .line 526
    :catch_111
    move-exception v21

    goto :goto_cd

    .line 503
    :catchall_113
    move-exception v21

    :try_start_114
    monitor-exit v22
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw v21

    .line 531
    :cond_116
    :try_start_116
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 533
    .local v13, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 536
    .local v14, "now":J
    :goto_132
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J
    :try_end_13b
    .catchall {:try_start_116 .. :try_end_13b} :catchall_190

    move-result-wide v24

    cmp-long v21, v14, v24

    if-gez v21, :cond_15e

    .line 540
    :try_start_140
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v23 .. v23}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    sub-long v24, v24, v14

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_159
    .catch Ljava/lang/InterruptedException; {:try_start_140 .. :try_end_159} :catch_281
    .catchall {:try_start_140 .. :try_end_159} :catchall_190

    .line 543
    :goto_159
    :try_start_159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    goto :goto_132

    .line 547
    :cond_15e
    monitor-exit v22
    :try_end_15f
    .catchall {:try_start_159 .. :try_end_15f} :catchall_190

    .line 549
    instance-of v0, v13, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v21, v0

    if-eqz v21, :cond_1bd

    move-object v12, v13

    .line 550
    check-cast v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 551
    .local v12, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v9, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    .line 552
    .local v9, "filename":Ljava/lang/String;
    iget-object v6, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 554
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 556
    .local v10, "imageFile":Ljava/io/FileOutputStream;
    :try_start_16d
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_17f} :catch_193
    .catchall {:try_start_16d .. :try_end_17f} :catchall_1b8

    .line 557
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .local v11, "imageFile":Ljava/io/FileOutputStream;
    :try_start_17f
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_18a} :catch_27d
    .catchall {:try_start_17f .. :try_end_18a} :catchall_279

    .line 561
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v10, v11

    .line 562
    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .line 547
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v14    # "now":J
    :catchall_190
    move-exception v21

    :try_start_191
    monitor-exit v22
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_190

    throw v21

    .line 558
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v14    # "now":J
    :catch_193
    move-exception v7

    .line 559
    .local v7, "e":Ljava/lang/Exception;
    :goto_194
    :try_start_194
    const-string v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "saveImage: unable to save "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b3
    .catchall {:try_start_194 .. :try_end_1b3} :catchall_1b8

    .line 561
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_a

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1b8
    move-exception v21

    :goto_1b9
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v21

    .line 563
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_1bd
    instance-of v0, v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 565
    const/16 v18, 0x0

    .line 566
    .local v18, "stringWriter":Ljava/io/StringWriter;
    check-cast v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v0, v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    .line 568
    .restart local v19    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v22

    monitor-enter v22

    .line 569
    :try_start_1d6
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v21, v0
    :try_end_1dc
    .catchall {:try_start_1d6 .. :try_end_1dc} :catchall_26e

    if-eqz v21, :cond_1ec

    .line 573
    :try_start_1de
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1eb} :catch_276
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1de .. :try_end_1eb} :catch_273
    .catchall {:try_start_1de .. :try_end_1eb} :catchall_26e

    move-result-object v18

    .line 578
    :cond_1ec
    :goto_1ec
    :try_start_1ec
    monitor-exit v22
    :try_end_1ed
    .catchall {:try_start_1ec .. :try_end_1ed} :catchall_26e

    .line 579
    if-eqz v18, :cond_a

    .line 581
    const/4 v8, 0x0

    .line 582
    .local v8, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 584
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_1f1
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_task"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_222} :catch_271

    .line 586
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_222
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    .line 587
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 588
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 589
    invoke-virtual {v5, v8}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_23d
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_23d} :catch_23f

    goto/16 :goto_a

    .line 590
    :catch_23f
    move-exception v7

    move-object v4, v5

    .line 591
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v7, "e":Ljava/io/IOException;
    :goto_241
    if-eqz v8, :cond_246

    .line 592
    invoke-virtual {v4, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 594
    :cond_246
    const-string v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to open "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " for persisting. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 578
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/FileOutputStream;
    :catchall_26e
    move-exception v21

    :try_start_26f
    monitor-exit v22
    :try_end_270
    .catchall {:try_start_26f .. :try_end_270} :catchall_26e

    throw v21

    .line 590
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v8    # "file":Ljava/io/FileOutputStream;
    :catch_271
    move-exception v7

    goto :goto_241

    .line 575
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v8    # "file":Ljava/io/FileOutputStream;
    :catch_273
    move-exception v21

    goto/16 :goto_1ec

    .line 574
    :catch_276
    move-exception v21

    goto/16 :goto_1ec

    .line 561
    .end local v18    # "stringWriter":Ljava/io/StringWriter;
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_279
    move-exception v21

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_1b9

    .line 558
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    :catch_27d
    move-exception v7

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_194

    .line 541
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_281
    move-exception v21

    goto/16 :goto_159
.end method
