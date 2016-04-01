.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8214
    iput-object p1, p0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 8205
    const-string v0, "StreamFeederThread"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 8215
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 8216
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 8217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setRunning(Z)V

    .line 8218
    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 8222
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8223
    .local v15, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    const/16 v17, 0x0

    .line 8225
    .local v17, "status":I
    const/16 v2, 0xb1c

    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2900(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 8228
    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2900(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/content/pm/PackageInfo;ZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    .line 8229
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v11, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    .line 8231
    .local v11, "eThread":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;
    move-object/from16 v0, p0

    iget-object v2, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v12, v2, v3

    .line 8232
    .local v12, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v18, v2, v3

    .line 8233
    .local v18, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v19, v2, v3

    .line 8235
    .local v19, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    const v9, 0x8000

    .line 8236
    .local v9, "bufferSize":I
    new-array v8, v9, [B

    .line 8237
    .local v8, "buffer":[B
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8238
    .local v13, "engineOut":Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/FileInputStream;

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8241
    .local v21, "transportIn":Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v3, "unified-restore-engine"

    invoke-direct {v2, v11, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 8244
    :cond_7a
    :goto_7a
    if-nez v17, :cond_af

    .line 8246
    :try_start_7c
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$3000(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v16

    .line 8247
    .local v16, "result":I
    if-lez v16, :cond_a8

    .line 8253
    move/from16 v0, v16

    if-le v0, v9, :cond_94

    .line 8254
    move/from16 v9, v16

    .line 8255
    new-array v8, v9, [B

    .line 8257
    :cond_94
    move/from16 v20, v16

    .line 8258
    .local v20, "toCopy":I
    :goto_96
    if-lez v20, :cond_7a

    .line 8259
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    .line 8260
    .local v14, "n":I
    const/4 v2, 0x0

    invoke-virtual {v13, v8, v2, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_a5} :catch_173
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_a5} :catch_221
    .catchall {:try_start_7c .. :try_end_a5} :catchall_2bd

    .line 8261
    sub-int v20, v20, v14

    .line 8265
    goto :goto_96

    .line 8266
    .end local v14    # "n":I
    .end local v20    # "toCopy":I
    :cond_a8
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_101

    .line 8272
    const/16 v17, 0x0

    .line 8302
    .end local v16    # "result":I
    :cond_af
    :try_start_af
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    .line 8303
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b5} :catch_13b

    .line 8310
    :goto_b5
    move-object/from16 v0, p0

    iget-object v2, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8311
    move-object/from16 v0, p0

    iget-object v2, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8312
    move-object/from16 v0, p0

    iget-object v2, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8315
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8322
    move-object/from16 v0, p0

    iget-object v2, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8326
    if-nez v17, :cond_145

    .line 8328
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8332
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    # setter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$3102(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8355
    :goto_f3
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-virtual {v2, v15}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, setRunning(Z)V

    .line 8358
    :goto_100
    return-void

    .line 8277
    .restart local v16    # "result":I
    :cond_101
    :try_start_101
    const-string v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " streaming restore for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2900(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8279
    const/16 v2, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_137} :catch_173
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_137} :catch_221
    .catchall {:try_start_101 .. :try_end_137} :catchall_2bd

    .line 8280
    move/from16 v17, v16

    goto/16 :goto_7a

    .line 8304
    .end local v16    # "result":I
    :catch_13b
    move-exception v10

    .line 8305
    .local v10, "e":Ljava/io/IOException;
    const-string v2, "StreamFeederThread"

    const-string v3, "Error in buffer close"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    .line 8337
    .end local v10    # "e":Ljava/io/IOException;
    :cond_145
    :try_start_145
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$3000(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_150
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_150} :catch_16c

    .line 8346
    :goto_150
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2900(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8349
    const/16 v2, -0x3e8

    move/from16 v0, v17

    if-ne v0, v2, :cond_170

    .line 8350
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_f3

    .line 8338
    :catch_16c
    move-exception v10

    .line 8341
    .local v10, "e":Landroid/os/RemoteException;
    const/16 v17, -0x3e8

    goto :goto_150

    .line 8352
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_170
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_f3

    .line 8284
    :catch_173
    move-exception v10

    .line 8288
    .local v10, "e":Ljava/io/IOException;
    :try_start_174
    const-string v2, "StreamFeederThread"

    const-string v3, "Unable to route data for restore"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8289
    const/16 v2, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2900(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "I/O error on pipes"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_195
    .catchall {:try_start_174 .. :try_end_195} :catchall_2bd

    .line 8291
    const/16 v17, -0x3eb

    .line 8302
    :try_start_197
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    .line 8303
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19d} :catch_1ea

    .line 8310
    :goto_19d
    move-object/from16 v0, p0

    iget-object v2, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8311
    move-object/from16 v0, p0

    iget-object v2, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8312
    move-object/from16 v0, p0

    iget-object v2, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8315
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8322
    move-object/from16 v0, p0

    iget-object v2, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8326
    if-nez v17, :cond_1f3

    .line 8328
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8332
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    # setter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$3102(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8355
    .end local v10    # "e":Ljava/io/IOException;
    :goto_1db
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-virtual {v2, v15}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, setRunning(Z)V

    goto/16 :goto_100

    .line 8304
    .restart local v10    # "e":Ljava/io/IOException;
    :catch_1ea
    move-exception v10

    .line 8305
    const-string v2, "StreamFeederThread"

    const-string v3, "Error in buffer close"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19d

    .line 8337
    :cond_1f3
    :try_start_1f3
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$3000(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_1fe
    .catch Landroid/os/RemoteException; {:try_start_1f3 .. :try_end_1fe} :catch_21a

    .line 8346
    .end local v10    # "e":Ljava/io/IOException;
    :goto_1fe
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2900(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8349
    const/16 v2, -0x3e8

    move/from16 v0, v17

    if-ne v0, v2, :cond_21e

    .line 8350
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_1db

    .line 8338
    .restart local v10    # "e":Ljava/io/IOException;
    :catch_21a
    move-exception v10

    .line 8341
    .local v10, "e":Landroid/os/RemoteException;
    const/16 v17, -0x3e8

    goto :goto_1fe

    .line 8352
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_21e
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_1db

    .line 8292
    :catch_221
    move-exception v10

    .line 8296
    .restart local v10    # "e":Landroid/os/RemoteException;
    :try_start_222
    const-string v2, "StreamFeederThread"

    const-string v3, "Transport failed during restore"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8297
    const/16 v2, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_231
    .catchall {:try_start_222 .. :try_end_231} :catchall_2bd

    .line 8298
    const/16 v17, -0x3e8

    .line 8302
    :try_start_233
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    .line 8303
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_233 .. :try_end_239} :catch_286

    .line 8310
    .end local v10    # "e":Landroid/os/RemoteException;
    :goto_239
    move-object/from16 v0, p0

    iget-object v2, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8311
    move-object/from16 v0, p0

    iget-object v2, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8312
    move-object/from16 v0, p0

    iget-object v2, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8315
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8322
    move-object/from16 v0, p0

    iget-object v2, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8326
    if-nez v17, :cond_28f

    .line 8328
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8332
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    # setter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$3102(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8355
    :goto_277
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-virtual {v2, v15}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, setRunning(Z)V

    goto/16 :goto_100

    .line 8304
    .restart local v10    # "e":Landroid/os/RemoteException;
    :catch_286
    move-exception v10

    .line 8305
    .local v10, "e":Ljava/io/IOException;
    const-string v2, "StreamFeederThread"

    const-string v3, "Error in buffer close"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_239

    .line 8337
    .end local v10    # "e":Ljava/io/IOException;
    :cond_28f
    :try_start_28f
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$3000(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_29a
    .catch Landroid/os/RemoteException; {:try_start_28f .. :try_end_29a} :catch_2b6

    .line 8346
    :goto_29a
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2900(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8349
    const/16 v2, -0x3e8

    move/from16 v0, v17

    if-ne v0, v2, :cond_2ba

    .line 8350
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_277

    .line 8338
    :catch_2b6
    move-exception v10

    .line 8341
    .local v10, "e":Landroid/os/RemoteException;
    const/16 v17, -0x3e8

    goto :goto_29a

    .line 8352
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_2ba
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_277

    .line 8301
    :catchall_2bd
    move-exception v2

    .line 8302
    :try_start_2be
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    .line 8303
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c4
    .catch Ljava/io/IOException; {:try_start_2be .. :try_end_2c4} :catch_310

    .line 8310
    :goto_2c4
    move-object/from16 v0, p0

    iget-object v3, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8311
    move-object/from16 v0, p0

    iget-object v3, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8312
    move-object/from16 v0, p0

    iget-object v3, v0, mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8315
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8322
    move-object/from16 v0, p0

    iget-object v3, v0, mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8326
    if-nez v17, :cond_319

    .line 8328
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8332
    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    # setter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$3102(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8355
    :goto_302
    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-virtual {v3, v15}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8356
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, setRunning(Z)V

    throw v2

    .line 8304
    :catch_310
    move-exception v10

    .line 8305
    .local v10, "e":Ljava/io/IOException;
    const-string v3, "StreamFeederThread"

    const-string v4, "Error in buffer close"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c4

    .line 8337
    .end local v10    # "e":Ljava/io/IOException;
    :cond_319
    :try_start_319
    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$3000(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_324
    .catch Landroid/os/RemoteException; {:try_start_319 .. :try_end_324} :catch_340

    .line 8346
    :goto_324
    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2900(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8349
    const/16 v3, -0x3e8

    move/from16 v0, v17

    if-ne v0, v3, :cond_344

    .line 8350
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_302

    .line 8338
    :catch_340
    move-exception v10

    .line 8341
    .local v10, "e":Landroid/os/RemoteException;
    const/16 v17, -0x3e8

    goto :goto_324

    .line 8352
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_344
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_302
.end method
