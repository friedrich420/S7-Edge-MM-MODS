.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dumper"

.field private static final TEMP_FILENAME:Ljava/lang/String; = "/temp/"

.field private static mTemporaryPath:Ljava/lang/String;


# instance fields
.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeader:Ljava/lang/StringBuilder;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mTemporaryDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .registers 11
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "obs"    # Lcom/android/server/enterprise/auditlog/IObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 69
    iput-object v0, p0, mPackageName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, mHeader:Ljava/lang/StringBuilder;

    .line 71
    iput-object v0, p0, mTemporaryDirectory:Ljava/io/File;

    .line 78
    iput-object p5, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    .line 79
    iput-object p6, p0, mDumpFilesList:Ljava/util/ArrayList;

    .line 80
    iput-object p7, p0, mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 81
    iput-object v0, p0, mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 82
    iput-wide p1, p0, mBegin:J

    .line 83
    iput-wide p3, p0, mEnd:J

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, mDumpResult:Z

    .line 85
    iput-boolean v2, p0, mIsFullDump:Z

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, mTemporaryPath:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .registers 17
    .param p1, "tempHeaderFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, "mDumpFilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v3, 0x0

    .line 487
    .local v3, "generatedFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 489
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    .line 490
    .local v2, "filesInCommand":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v10, "strBuilder":Ljava/lang/StringBuilder;
    const-string v11, "cat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    new-instance v11, Ljava/io/File;

    sget-object v12, mTemporaryPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, mTemporaryDirectory:Ljava/io/File;

    .line 494
    iget-object v11, p0, mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_26

    .line 495
    iget-object v11, p0, mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 499
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_2d
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 502
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 503
    .local v6, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v11

    if-nez v11, :cond_64

    .line 504
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 505
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_45} :catch_46

    goto :goto_2d

    .line 530
    .end local v6    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_46
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "concatenateFiles.Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_63
    :goto_63
    return-object v3

    .line 506
    .restart local v6    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_64
    :try_start_64
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 507
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 512
    .end local v6    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_7f
    iget-object v11, p0, mTemporaryDirectory:Ljava/io/File;

    if-eqz v11, :cond_63

    .line 513
    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v11, p0, mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v11, "/temp.gz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 517
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/sh"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    aput-object v2, v0, v11

    .line 520
    .local v0, "cmds":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 522
    .local v7, "proc":Ljava/lang/Process;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 524
    .local v9, "stdError":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 525
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e1

    .line 526
    new-instance v11, Ljava/lang/Exception;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while Executing the Cat command"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 528
    :cond_e1
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/temp.gz"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_ff} :catch_46

    .end local v3    # "generatedFile":Ljava/io/File;
    .local v4, "generatedFile":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "generatedFile":Ljava/io/File;
    .restart local v3    # "generatedFile":Ljava/io/File;
    goto/16 :goto_63
.end method

.method private createHeader()V
    .registers 8

    .prologue
    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, mHeader:Ljava/lang/StringBuilder;

    .line 128
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 129
    const-string v2, "----------------------------------------------\n"

    .line 131
    .local v2, "separator":Ljava/lang/String;
    iget-object v4, p0, mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v4, p0, mDeviceInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v1, :cond_49

    .line 137
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "temp":Ljava/lang/String;
    iget-object v4, p0, mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 145
    .end local v3    # "temp":Ljava/lang/String;
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump Log Generated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "dateAndTime":Ljava/lang/String;
    iget-object v4, p0, mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v4, p0, mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    return-void
.end method

.method private createHeaderTempFile(Ljava/io/File;)V
    .registers 8
    .param p1, "headerFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 342
    .local v0, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2c

    .line 343
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_7
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_41

    .line 345
    .end local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .local v1, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_11
    iget-object v4, p0, mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_44

    .line 348
    if-eqz v1, :cond_26

    .line 350
    :try_start_20
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 351
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_48

    .line 354
    :cond_26
    :goto_26
    if-eqz v3, :cond_2b

    .line 356
    :try_start_28
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_3b

    .line 361
    :cond_2b
    :goto_2b
    return-void

    .line 348
    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_2c
    move-exception v4

    :goto_2d
    if-eqz v0, :cond_35

    .line 350
    :try_start_2f
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 351
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_3f

    .line 354
    :cond_35
    :goto_35
    if-eqz v2, :cond_3a

    .line 356
    :try_start_37
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3d

    .line 357
    :cond_3a
    :goto_3a
    throw v4

    .end local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_3b
    move-exception v4

    goto :goto_2b

    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_3d
    move-exception v5

    goto :goto_3a

    .line 352
    :catch_3f
    move-exception v5

    goto :goto_35

    .line 348
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_41
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2d

    .end local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_44
    move-exception v4

    move-object v0, v1

    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2d

    .line 352
    .end local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_48
    move-exception v4

    goto :goto_26
.end method

.method private fullDump()V
    .registers 32

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 365
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    sget-object v8, mTemporaryPath:Ljava/lang/String;

    .line 366
    .local v8, "directoryPath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 367
    .local v11, "fileStream":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 369
    .local v13, "fileStreamFull":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 370
    .local v17, "gzipStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 371
    .local v15, "fileStreamOut":Ljava/io/OutputStream;
    const/16 v22, 0x0

    .line 372
    .local v22, "mZos":Ljava/util/zip/GZIPOutputStream;
    const/4 v6, 0x0

    .line 373
    .local v6, "decoder":Ljava/io/Reader;
    const/4 v4, 0x0

    .line 375
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    const/16 v25, 0x0

    .line 378
    .local v25, "tempHeaderFile":Ljava/io/File;
    :try_start_17
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2a} :catch_360
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2a1

    .line 379
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .local v16, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_2a
    new-instance v23, Ljava/util/zip/GZIPOutputStream;

    new-instance v27, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3c} :catch_363
    .catchall {:try_start_2a .. :try_end_3c} :catchall_31a

    .line 381
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .local v23, "mZos":Ljava/util/zip/GZIPOutputStream;
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v0, v0, mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v27, v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_12e
    .catchall {:try_start_3c .. :try_end_42} :catchall_31e

    if-eqz v27, :cond_13c

    move-object v5, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    move-object v7, v6

    .end local v6    # "decoder":Ljava/io/Reader;
    .local v7, "decoder":Ljava/io/Reader;
    move-object/from16 v18, v17

    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .local v18, "gzipStream":Ljava/io/InputStream;
    move-object v12, v11

    .line 382
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .local v12, "fileStream":Ljava/io/InputStream;
    :cond_49
    :goto_49
    :try_start_49
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_397

    .line 383
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 384
    .local v24, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v27

    if-nez v27, :cond_c9

    .line 385
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 386
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_61} :catch_62
    .catchall {:try_start_49 .. :try_end_61} :catchall_325

    goto :goto_49

    .line 426
    .end local v24    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_62
    move-exception v9

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v17, v18

    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    move-object v11, v12

    .line 427
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :goto_6c
    const/16 v27, 0x0

    :try_start_6e
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDumpResult:Z

    .line 428
    const-string v27, "Dumper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "fullDump.Exception: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_6e .. :try_end_a2} :catchall_2a1

    .line 432
    if-eqz v25, :cond_a7

    .line 433
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 437
    :cond_a7
    if-eqz v22, :cond_af

    .line 438
    :try_start_a9
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 439
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_af} :catch_24a

    .line 445
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_af
    :goto_af
    if-eqz v4, :cond_b4

    .line 447
    :try_start_b1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_26a

    .line 452
    :cond_b4
    :goto_b4
    if-eqz v17, :cond_b9

    .line 454
    :try_start_b6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_275

    .line 460
    :cond_b9
    :goto_b9
    if-eqz v11, :cond_be

    .line 462
    :try_start_bb
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_280

    .line 467
    :cond_be
    :goto_be
    if-eqz v15, :cond_c3

    .line 469
    :try_start_c0
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_28b

    .line 474
    :cond_c3
    :goto_c3
    if-eqz v13, :cond_c8

    .line 476
    :try_start_c5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_296

    .line 482
    :cond_c8
    :goto_c8
    return-void

    .line 388
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v24    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_c9
    :try_start_c9
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_49

    .line 390
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_de} :catch_62
    .catchall {:try_start_c9 .. :try_end_de} :catchall_325

    .line 391
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :try_start_de
    new-instance v17, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e5} :catch_368
    .catchall {:try_start_de .. :try_end_e5} :catchall_331

    .line 392
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    :try_start_e5
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v27, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v6, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_f0} :catch_373
    .catchall {:try_start_e5 .. :try_end_f0} :catchall_33c

    .line 393
    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    :try_start_f0
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f5} :catch_37c
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_345

    .line 395
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_f5
    :goto_f5
    :try_start_f5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .local v21, "line":Ljava/lang/String;
    if-eqz v21, :cond_135

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_f5

    .line 397
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_f5

    .line 426
    .end local v21    # "line":Ljava/lang/String;
    .end local v24    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_12e
    move-exception v9

    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_6c

    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v24    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_135
    move-object v5, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v7, v6

    .end local v6    # "decoder":Ljava/io/Reader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    move-object/from16 v18, v17

    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    move-object v12, v11

    .line 397
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_49

    .line 404
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "decoder":Ljava/io/Reader;
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .end local v21    # "line":Ljava/lang/String;
    .end local v24    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    :cond_13c
    if-eqz v8, :cond_1c8

    .line 406
    new-instance v27, Ljava/io/File;

    sget-object v28, mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, mTemporaryDirectory:Ljava/io/File;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_160

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdir()Z

    .line 410
    :cond_160
    new-instance v26, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/header"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_182} :catch_12e
    .catchall {:try_start_f5 .. :try_end_182} :catchall_31e

    .line 411
    .end local v25    # "tempHeaderFile":Ljava/io/File;
    .local v26, "tempHeaderFile":Ljava/io/File;
    :try_start_182
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, createHeaderTempFile(Ljava/io/File;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v10

    .line 413
    .local v10, "f":Ljava/io/File;
    if-eqz v10, :cond_393

    .line 416
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1a0} :catch_384
    .catchall {:try_start_182 .. :try_end_1a0} :catchall_34d

    .line 417
    .end local v13    # "fileStreamFull":Ljava/io/InputStream;
    .local v14, "fileStreamFull":Ljava/io/InputStream;
    const/high16 v27, 0x10000

    :try_start_1a2
    move/from16 v0, v27

    new-array v3, v0, [B

    .line 419
    .local v3, "buffer":[B
    :goto_1a6
    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    move-result v20

    .local v20, "length":I
    if-lez v20, :cond_1c2

    .line 420
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1a6

    .line 426
    .end local v3    # "buffer":[B
    .end local v20    # "length":I
    :catch_1b8
    move-exception v9

    move-object/from16 v25, v26

    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .restart local v25    # "tempHeaderFile":Ljava/io/File;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "fileStreamFull":Ljava/io/InputStream;
    .restart local v13    # "fileStreamFull":Ljava/io/InputStream;
    goto/16 :goto_6c

    .line 422
    .end local v13    # "fileStreamFull":Ljava/io/InputStream;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v25    # "tempHeaderFile":Ljava/io/File;
    .restart local v3    # "buffer":[B
    .restart local v14    # "fileStreamFull":Ljava/io/InputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v20    # "length":I
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v26    # "tempHeaderFile":Ljava/io/File;
    :cond_1c2
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1c5} :catch_1b8
    .catchall {:try_start_1a2 .. :try_end_1c5} :catchall_356

    move-object/from16 v25, v26

    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .restart local v25    # "tempHeaderFile":Ljava/io/File;
    move-object v13, v14

    .line 432
    .end local v3    # "buffer":[B
    .end local v10    # "f":Ljava/io/File;
    .end local v14    # "fileStreamFull":Ljava/io/InputStream;
    .end local v20    # "length":I
    .restart local v13    # "fileStreamFull":Ljava/io/InputStream;
    :cond_1c8
    :goto_1c8
    if-eqz v25, :cond_1cd

    .line 433
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 437
    :cond_1cd
    if-eqz v23, :cond_1d5

    .line 438
    :try_start_1cf
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 439
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d5} :catch_1f4

    .line 445
    :cond_1d5
    :goto_1d5
    if-eqz v4, :cond_1da

    .line 447
    :try_start_1d7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_213

    .line 452
    :cond_1da
    :goto_1da
    if-eqz v17, :cond_1df

    .line 454
    :try_start_1dc
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1df} :catch_21d

    .line 460
    :cond_1df
    :goto_1df
    if-eqz v11, :cond_1e4

    .line 462
    :try_start_1e1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e4} :catch_227

    .line 467
    :cond_1e4
    :goto_1e4
    if-eqz v16, :cond_1e9

    .line 469
    :try_start_1e6
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1e9} :catch_231

    .line 474
    :cond_1e9
    :goto_1e9
    if-eqz v13, :cond_38d

    .line 476
    :try_start_1eb
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_1ee} :catch_23b

    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .line 479
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_c8

    .line 441
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catch_1f4
    move-exception v9

    .line 442
    .local v9, "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "run.IOException "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d5

    .line 448
    .end local v9    # "e":Ljava/io/IOException;
    :catch_213
    move-exception v9

    .line 449
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close bufferedReader at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1da

    .line 456
    .end local v9    # "e":Ljava/io/IOException;
    :catch_21d
    move-exception v9

    .line 457
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close gizp stream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1df

    .line 463
    .end local v9    # "e":Ljava/io/IOException;
    :catch_227
    move-exception v9

    .line 464
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close fileStream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e4

    .line 470
    .end local v9    # "e":Ljava/io/IOException;
    :catch_231
    move-exception v9

    .line 471
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close outStream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e9

    .line 477
    .end local v9    # "e":Ljava/io/IOException;
    :catch_23b
    move-exception v9

    .line 478
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .line 479
    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_c8

    .line 441
    .local v9, "e":Ljava/lang/Exception;
    :catch_24a
    move-exception v9

    .line 442
    .local v9, "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "run.IOException "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_af

    .line 448
    .end local v9    # "e":Ljava/io/IOException;
    :catch_26a
    move-exception v9

    .line 449
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close bufferedReader at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b4

    .line 456
    .end local v9    # "e":Ljava/io/IOException;
    :catch_275
    move-exception v9

    .line 457
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close gizp stream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b9

    .line 463
    .end local v9    # "e":Ljava/io/IOException;
    :catch_280
    move-exception v9

    .line 464
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close fileStream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_be

    .line 470
    .end local v9    # "e":Ljava/io/IOException;
    :catch_28b
    move-exception v9

    .line 471
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close outStream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 477
    .end local v9    # "e":Ljava/io/IOException;
    :catch_296
    move-exception v9

    .line 478
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c8

    .line 432
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_2a1
    move-exception v27

    :goto_2a2
    if-eqz v25, :cond_2a7

    .line 433
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 437
    :cond_2a7
    if-eqz v22, :cond_2af

    .line 438
    :try_start_2a9
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 439
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2a9 .. :try_end_2af} :catch_2c9

    .line 445
    :cond_2af
    :goto_2af
    if-eqz v4, :cond_2b4

    .line 447
    :try_start_2b1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2b4
    .catch Ljava/io/IOException; {:try_start_2b1 .. :try_end_2b4} :catch_2e8

    .line 452
    :cond_2b4
    :goto_2b4
    if-eqz v17, :cond_2b9

    .line 454
    :try_start_2b6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2b9
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2b9} :catch_2f2

    .line 460
    :cond_2b9
    :goto_2b9
    if-eqz v11, :cond_2be

    .line 462
    :try_start_2bb
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2be
    .catch Ljava/io/IOException; {:try_start_2bb .. :try_end_2be} :catch_2fc

    .line 467
    :cond_2be
    :goto_2be
    if-eqz v15, :cond_2c3

    .line 469
    :try_start_2c0
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_2c3
    .catch Ljava/io/IOException; {:try_start_2c0 .. :try_end_2c3} :catch_306

    .line 474
    :cond_2c3
    :goto_2c3
    if-eqz v13, :cond_2c8

    .line 476
    :try_start_2c5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2c8
    .catch Ljava/io/IOException; {:try_start_2c5 .. :try_end_2c8} :catch_310

    .line 479
    :cond_2c8
    :goto_2c8
    throw v27

    .line 441
    :catch_2c9
    move-exception v9

    .line 442
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v28, "Dumper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "run.IOException "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2af

    .line 448
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2e8
    move-exception v9

    .line 449
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close bufferedReader at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b4

    .line 456
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2f2
    move-exception v9

    .line 457
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close gizp stream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b9

    .line 463
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2fc
    move-exception v9

    .line 464
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2be

    .line 470
    .end local v9    # "e":Ljava/io/IOException;
    :catch_306
    move-exception v9

    .line 471
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close outStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c3

    .line 477
    .end local v9    # "e":Ljava/io/IOException;
    :catch_310
    move-exception v9

    .line 478
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c8

    .line 432
    .end local v9    # "e":Ljava/io/IOException;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_31a
    move-exception v27

    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_2a2

    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catchall_31e
    move-exception v27

    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_2a2

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catchall_325
    move-exception v27

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v17, v18

    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_2a2

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v24    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catchall_331
    move-exception v27

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v17, v18

    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    goto/16 :goto_2a2

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catchall_33c
    move-exception v27

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_2a2

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catchall_345
    move-exception v27

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_2a2

    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v24    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .end local v25    # "tempHeaderFile":Ljava/io/File;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v26    # "tempHeaderFile":Ljava/io/File;
    :catchall_34d
    move-exception v27

    move-object/from16 v25, v26

    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .restart local v25    # "tempHeaderFile":Ljava/io/File;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_2a2

    .end local v13    # "fileStreamFull":Ljava/io/InputStream;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v25    # "tempHeaderFile":Ljava/io/File;
    .restart local v10    # "f":Ljava/io/File;
    .restart local v14    # "fileStreamFull":Ljava/io/InputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v26    # "tempHeaderFile":Ljava/io/File;
    :catchall_356
    move-exception v27

    move-object/from16 v25, v26

    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .restart local v25    # "tempHeaderFile":Ljava/io/File;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "fileStreamFull":Ljava/io/InputStream;
    .restart local v13    # "fileStreamFull":Ljava/io/InputStream;
    goto/16 :goto_2a2

    .line 426
    .end local v10    # "f":Ljava/io/File;
    :catch_360
    move-exception v9

    goto/16 :goto_6c

    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_363
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_6c

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v24    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_368
    move-exception v9

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v17, v18

    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    goto/16 :goto_6c

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catch_373
    move-exception v9

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_6c

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :catch_37c
    move-exception v9

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_6c

    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v24    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .end local v25    # "tempHeaderFile":Ljava/io/File;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v26    # "tempHeaderFile":Ljava/io/File;
    :catch_384
    move-exception v9

    move-object/from16 v25, v26

    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .restart local v25    # "tempHeaderFile":Ljava/io/File;
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_6c

    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    :cond_38d
    move-object/from16 v22, v23

    .end local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v15    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_c8

    .end local v15    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v22    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .end local v25    # "tempHeaderFile":Ljava/io/File;
    .restart local v10    # "f":Ljava/io/File;
    .restart local v16    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v23    # "mZos":Ljava/util/zip/GZIPOutputStream;
    .restart local v26    # "tempHeaderFile":Ljava/io/File;
    :cond_393
    move-object/from16 v25, v26

    .end local v26    # "tempHeaderFile":Ljava/io/File;
    .restart local v25    # "tempHeaderFile":Ljava/io/File;
    goto/16 :goto_1c8

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v10    # "f":Ljava/io/File;
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v17    # "gzipStream":Ljava/io/InputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v18    # "gzipStream":Ljava/io/InputStream;
    :cond_397
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v17, v18

    .end local v18    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "gzipStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_1c8
.end method

.method private readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .registers 26
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 256
    const-wide/16 v2, 0x0

    .line 260
    .local v2, "aTime":J
    const/16 v18, 0x0

    .line 261
    .local v18, "returnFile":Ljava/io/File;
    const/4 v13, 0x0

    .line 262
    .local v13, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    const/4 v11, 0x0

    .line 265
    .local v11, "fileStreamOut":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 266
    .local v9, "fileStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 267
    .local v15, "gzipStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 268
    .local v6, "decoder":Ljava/io/Reader;
    const/4 v4, 0x0

    .line 271
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_a
    new-instance v21, Ljava/io/File;

    sget-object v22, mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mTemporaryDirectory:Ljava/io/File;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2c

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    .line 276
    :cond_2c
    new-instance v19, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Tmp"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5a} :catch_1c0
    .catchall {:try_start_a .. :try_end_5a} :catchall_195

    .line 277
    .end local v18    # "returnFile":Ljava/io/File;
    .local v19, "returnFile":Ljava/io/File;
    :try_start_5a
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_1c3
    .catchall {:try_start_5a .. :try_end_61} :catchall_197

    .line 278
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .local v12, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_61
    new-instance v14, Ljava/util/zip/GZIPOutputStream;

    new-instance v21, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6f} :catch_1c8
    .catchall {:try_start_61 .. :try_end_6f} :catchall_19b

    .line 280
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .local v14, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    :try_start_6f
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_1ce
    .catchall {:try_start_6f .. :try_end_76} :catchall_1a0

    .line 281
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v10, "fileStream":Ljava/io/InputStream;
    :try_start_76
    new-instance v16, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7d} :catch_1d5
    .catchall {:try_start_76 .. :try_end_7d} :catchall_1a6

    .line 282
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .local v16, "gzipStream":Ljava/io/InputStream;
    :try_start_7d
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v21, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_88} :catch_1dd
    .catchall {:try_start_7d .. :try_end_88} :catchall_1ad

    .line 283
    .end local v6    # "decoder":Ljava/io/Reader;
    .local v7, "decoder":Ljava/io/Reader;
    :try_start_88
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8d} :catch_1e7
    .catchall {:try_start_88 .. :try_end_8d} :catchall_1b6

    .line 284
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    :cond_8d
    :goto_8d
    :try_start_8d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "line":Ljava/lang/String;
    if-eqz v17, :cond_b3

    .line 285
    const-string v21, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9c} :catch_11f
    .catchall {:try_start_8d .. :try_end_9c} :catchall_178

    move-result-object v20

    .line 287
    .local v20, "time":[Ljava/lang/String;
    const/16 v21, 0x0

    :try_start_9f
    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_a8} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a8} :catch_11f
    .catchall {:try_start_9f .. :try_end_a8} :catchall_178

    move-result-wide v2

    .line 292
    :try_start_a9
    move-object/from16 v0, p0

    iget-wide v0, v0, mEnd:J

    move-wide/from16 v22, v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_af} :catch_11f
    .catchall {:try_start_a9 .. :try_end_af} :catchall_178

    cmp-long v21, v2, v22

    if-lez v21, :cond_d1

    .line 311
    .end local v20    # "time":[Ljava/lang/String;
    :cond_b3
    invoke-static {v5}, safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v7}, safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static/range {v16 .. v16}, safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v10}, safeClose(Ljava/io/Closeable;)V

    .line 315
    invoke-static {v14}, safeClose(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v12}, safeClose(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .line 318
    .end local v17    # "line":Ljava/lang/String;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    :goto_ce
    return-object v18

    .line 288
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v19    # "returnFile":Ljava/io/File;
    .restart local v20    # "time":[Ljava/lang/String;
    :catch_cf
    move-exception v8

    .line 289
    .local v8, "e":Ljava/lang/NumberFormatException;
    goto :goto_8d

    .line 295
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_d1
    :try_start_d1
    move-object/from16 v0, p0

    iget-wide v0, v0, mBegin:J

    move-wide/from16 v22, v0

    cmp-long v21, v2, v22

    if-ltz v21, :cond_8d

    move-object/from16 v0, p0

    iget-wide v0, v0, mEnd:J

    move-wide/from16 v22, v0

    cmp-long v21, v2, v22

    if-gtz v21, :cond_8d

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_156

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8d

    .line 298
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_11d} :catch_11f
    .catchall {:try_start_d1 .. :try_end_11d} :catchall_178

    goto/16 :goto_8d

    .line 307
    .end local v17    # "line":Ljava/lang/String;
    .end local v20    # "time":[Ljava/lang/String;
    :catch_11f
    move-exception v8

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .line 308
    .end local v19    # "returnFile":Ljava/io/File;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v18    # "returnFile":Ljava/io/File;
    :goto_129
    :try_start_129
    const-string v21, "Dumper"

    const-string/jumbo v22, "readFileLineByLine.IOException"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_142
    .catchall {:try_start_129 .. :try_end_142} :catchall_195

    .line 311
    invoke-static {v4}, safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v6}, safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v15}, safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v9}, safeClose(Ljava/io/Closeable;)V

    .line 315
    invoke-static {v13}, safeClose(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v11}, safeClose(Ljava/io/Closeable;)V

    goto/16 :goto_ce

    .line 301
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v19    # "returnFile":Ljava/io/File;
    .restart local v20    # "time":[Ljava/lang/String;
    :cond_156
    :try_start_156
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_176} :catch_11f
    .catchall {:try_start_156 .. :try_end_176} :catchall_178

    goto/16 :goto_8d

    .line 311
    .end local v17    # "line":Ljava/lang/String;
    .end local v20    # "time":[Ljava/lang/String;
    :catchall_178
    move-exception v21

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    :goto_182
    invoke-static {v4}, safeClose(Ljava/io/Closeable;)V

    .line 312
    invoke-static {v6}, safeClose(Ljava/io/Closeable;)V

    .line 313
    invoke-static {v15}, safeClose(Ljava/io/Closeable;)V

    .line 314
    invoke-static {v9}, safeClose(Ljava/io/Closeable;)V

    .line 315
    invoke-static {v13}, safeClose(Ljava/io/Closeable;)V

    .line 316
    invoke-static {v11}, safeClose(Ljava/io/Closeable;)V

    throw v21

    .line 311
    :catchall_195
    move-exception v21

    goto :goto_182

    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_197
    move-exception v21

    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_182

    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_19b
    move-exception v21

    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_182

    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1a0
    move-exception v21

    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_182

    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1a6
    move-exception v21

    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_182

    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1ad
    move-exception v21

    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_182

    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1b6
    move-exception v21

    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_182

    .line 307
    :catch_1c0
    move-exception v8

    goto/16 :goto_129

    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1c3
    move-exception v8

    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_129

    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1c8
    move-exception v8

    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_129

    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1ce
    move-exception v8

    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_129

    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1d5
    move-exception v8

    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_129

    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1dd
    move-exception v8

    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_129

    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1e7
    move-exception v8

    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_129
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 4
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 322
    if-eqz p0, :cond_5

    .line 324
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 329
    :cond_5
    :goto_5
    return-void

    .line 325
    :catch_6
    move-exception v0

    .line 326
    .local v0, "ioE":Ljava/io/IOException;
    const-string v1, "Dumper"

    const-string v2, "Failed to close resource."

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private selectDumpInterval()V
    .registers 25

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v12

    .line 156
    .local v12, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/16 v18, 0x0

    .line 157
    .local v18, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v8, 0x1

    .line 159
    .local v8, "firstFile":Z
    const/4 v9, 0x0

    .line 160
    .local v9, "initFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 161
    .local v4, "endFile":Ljava/io/File;
    const/16 v17, 0x0

    .line 162
    .local v17, "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/16 v16, 0x0

    .line 163
    .local v16, "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v13, "listNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/16 v19, 0x0

    .line 166
    .local v19, "tempHeaderFile":Ljava/io/File;
    :cond_1a
    :goto_1a
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9c

    .line 167
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    check-cast v18, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 168
    .restart local v18    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, mBegin:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_1a

    .line 171
    if-eqz v8, :cond_63

    .line 172
    invoke-interface {v12}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v20

    if-eqz v20, :cond_63

    .line 173
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 174
    new-instance v17, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .end local v17    # "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const-string v20, "com.android.server.enterprise.auditlog"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .restart local v17    # "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 177
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v8, 0x0

    .line 179
    goto :goto_1a

    .line 182
    :cond_63
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, mEnd:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_77

    .line 183
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 185
    :cond_77
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 186
    new-instance v16, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .end local v16    # "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const-string v20, "com.android.server.enterprise.auditlog"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .restart local v16    # "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 189
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_9c
    new-instance v20, Ljava/io/File;

    sget-object v21, mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mTemporaryDirectory:Ljava/io/File;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_be

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    .line 199
    :cond_be
    new-instance v19, Ljava/io/File;

    .end local v19    # "tempHeaderFile":Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/header"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v19    # "tempHeaderFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 201
    .local v5, "f":Ljava/io/File;
    const/4 v6, 0x0

    .line 202
    .local v6, "fileStream":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 204
    .local v14, "outStream":Ljava/io/OutputStream;
    :try_start_e3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, createHeaderTempFile(Ljava/io/File;)V

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v5

    .line 207
    if-eqz v5, :cond_15f

    .line 210
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_f9} :catch_1ee
    .catchall {:try_start_e3 .. :try_end_f9} :catchall_1ad

    .line 211
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .local v7, "fileStream":Ljava/io/InputStream;
    :try_start_f9
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_10a} :catch_1f1
    .catchall {:try_start_f9 .. :try_end_10a} :catchall_1e7

    .line 212
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .local v15, "outStream":Ljava/io/OutputStream;
    const/high16 v20, 0x10000

    :try_start_10c
    move/from16 v0, v20

    new-array v2, v0, [B

    .line 214
    .local v2, "buffer":[B
    :goto_110
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "length":I
    if-lez v11, :cond_15d

    .line 215
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v2, v0, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_11d} :catch_11e
    .catchall {:try_start_10c .. :try_end_11d} :catchall_1ea

    goto :goto_110

    .line 219
    .end local v2    # "buffer":[B
    .end local v11    # "length":I
    :catch_11e
    move-exception v3

    move-object v14, v15

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .line 220
    .end local v7    # "fileStream":Ljava/io/InputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    :goto_121
    :try_start_121
    const-string v20, "Dumper"

    const-string v21, "SelectDumpInterval.Exception"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_139
    .catchall {:try_start_121 .. :try_end_139} :catchall_1ad

    .line 223
    if-eqz v9, :cond_13e

    .line 224
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 226
    :cond_13e
    if-eqz v4, :cond_143

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 229
    :cond_143
    if-eqz v16, :cond_148

    .line 230
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 232
    :cond_148
    if-eqz v17, :cond_14d

    .line 233
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 235
    :cond_14d
    if-eqz v5, :cond_152

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 238
    :cond_152
    if-eqz v6, :cond_157

    .line 240
    :try_start_154
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_198

    .line 245
    :cond_157
    :goto_157
    if-eqz v14, :cond_15c

    .line 247
    :try_start_159
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15c} :catch_1a2

    .line 254
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_15c
    :goto_15c
    return-void

    .end local v6    # "fileStream":Ljava/io/InputStream;
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "buffer":[B
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "length":I
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :cond_15d
    move-object v14, v15

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .line 223
    .end local v2    # "buffer":[B
    .end local v7    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "length":I
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    :cond_15f
    if-eqz v9, :cond_164

    .line 224
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 226
    :cond_164
    if-eqz v4, :cond_169

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 229
    :cond_169
    if-eqz v16, :cond_16e

    .line 230
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 232
    :cond_16e
    if-eqz v17, :cond_173

    .line 233
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 235
    :cond_173
    if-eqz v5, :cond_178

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 238
    :cond_178
    if-eqz v6, :cond_17d

    .line 240
    :try_start_17a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_17d} :catch_18e

    .line 245
    :cond_17d
    :goto_17d
    if-eqz v14, :cond_15c

    .line 247
    :try_start_17f
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_182} :catch_183

    goto :goto_15c

    .line 248
    :catch_183
    move-exception v10

    .line 249
    .local v10, "ioex":Ljava/lang/Exception;
    const-string v20, "Dumper"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15c

    .line 241
    .end local v10    # "ioex":Ljava/lang/Exception;
    :catch_18e
    move-exception v10

    .line 242
    .local v10, "ioex":Ljava/io/IOException;
    const-string v20, "Dumper"

    const-string/jumbo v21, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17d

    .line 241
    .end local v10    # "ioex":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_198
    move-exception v10

    .line 242
    .restart local v10    # "ioex":Ljava/io/IOException;
    const-string v20, "Dumper"

    const-string/jumbo v21, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_157

    .line 248
    .end local v10    # "ioex":Ljava/io/IOException;
    :catch_1a2
    move-exception v10

    .line 249
    .local v10, "ioex":Ljava/lang/Exception;
    const-string v20, "Dumper"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15c

    .line 223
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v10    # "ioex":Ljava/lang/Exception;
    :catchall_1ad
    move-exception v20

    :goto_1ae
    if-eqz v9, :cond_1b3

    .line 224
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 226
    :cond_1b3
    if-eqz v4, :cond_1b8

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 229
    :cond_1b8
    if-eqz v16, :cond_1bd

    .line 230
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 232
    :cond_1bd
    if-eqz v17, :cond_1c2

    .line 233
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 235
    :cond_1c2
    if-eqz v5, :cond_1c7

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 238
    :cond_1c7
    if-eqz v6, :cond_1cc

    .line 240
    :try_start_1c9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1d2

    .line 245
    :cond_1cc
    :goto_1cc
    if-eqz v14, :cond_1d1

    .line 247
    :try_start_1ce
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1d1} :catch_1dc

    .line 250
    :cond_1d1
    :goto_1d1
    throw v20

    .line 241
    :catch_1d2
    move-exception v10

    .line 242
    .local v10, "ioex":Ljava/io/IOException;
    const-string v21, "Dumper"

    const-string/jumbo v22, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1cc

    .line 248
    .end local v10    # "ioex":Ljava/io/IOException;
    :catch_1dc
    move-exception v10

    .line 249
    .local v10, "ioex":Ljava/lang/Exception;
    const-string v21, "Dumper"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d1

    .line 223
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .end local v10    # "ioex":Ljava/lang/Exception;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catchall_1e7
    move-exception v20

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_1ae

    .end local v6    # "fileStream":Ljava/io/InputStream;
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :catchall_1ea
    move-exception v20

    move-object v14, v15

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_1ae

    .line 219
    :catch_1ee
    move-exception v3

    goto/16 :goto_121

    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_1f1
    move-exception v3

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_121
.end method


# virtual methods
.method public isCompressed(Ljava/io/File;)Z
    .registers 10
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 543
    const/4 v1, 0x0

    .line 545
    .local v1, "fileStream":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_33

    .line 546
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    .local v2, "fileStream":Ljava/io/FileInputStream;
    const/4 v5, 0x2

    :try_start_a
    new-array v0, v5, [B

    .line 547
    .local v0, "bytes":[B
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 549
    if-eqz v0, :cond_16

    array-length v5, v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_3a

    if-ge v5, v7, :cond_1d

    .line 557
    :cond_16
    if-eqz v2, :cond_1b

    .line 558
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1b
    move v3, v4

    :cond_1c
    :goto_1c
    return v3

    .line 553
    :cond_1d
    const/4 v5, 0x0

    :try_start_1e
    aget-byte v5, v0, v5

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_31

    const/4 v5, 0x1

    aget-byte v5, v0, v5
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_3a

    const/16 v6, -0x75

    if-ne v5, v6, :cond_31

    .line 557
    :goto_2b
    if-eqz v2, :cond_1c

    .line 558
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1c

    :cond_31
    move v3, v4

    .line 553
    goto :goto_2b

    .line 557
    .end local v0    # "bytes":[B
    .end local v2    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileStream":Ljava/io/FileInputStream;
    :catchall_33
    move-exception v3

    :goto_34
    if-eqz v1, :cond_39

    .line 558
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_39
    throw v3

    .line 557
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileStream":Ljava/io/FileInputStream;
    :catchall_3a
    move-exception v3

    move-object v1, v2

    .end local v2    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_34
.end method

.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 100
    :try_start_2
    invoke-direct {p0}, createHeader()V

    .line 101
    iget-wide v2, p0, mEnd:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_11

    iget-wide v2, p0, mBegin:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2e

    .line 102
    :cond_11
    invoke-direct {p0}, fullDump()V

    .line 103
    iget-object v1, p0, mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v1, :cond_1b

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsFullDump:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_32
    .catchall {:try_start_2 .. :try_end_1b} :catchall_83

    .line 114
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_24

    .line 115
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_6f

    .line 120
    :cond_24
    :goto_24
    iget-object v1, p0, mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v2, p0, mDumpResult:Z

    iget-boolean v3, p0, mIsFullDump:Z

    invoke-interface {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 122
    :goto_2d
    return-void

    .line 106
    :cond_2e
    :try_start_2e
    invoke-direct {p0}, selectDumpInterval()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_83

    goto :goto_1b

    .line 108
    :catch_32
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v1, "Dumper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run.Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, mDumpResult:Z

    .line 111
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_33 .. :try_end_5c} :catchall_83

    .line 114
    :try_start_5c
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_65

    .line 115
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_65} :catch_79

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_65
    :goto_65
    iget-object v1, p0, mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v2, p0, mDumpResult:Z

    iget-boolean v3, p0, mIsFullDump:Z

    invoke-interface {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    goto :goto_2d

    .line 117
    :catch_6f
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Dumper"

    const-string/jumbo v2, "run.IOException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :catch_79
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Dumper"

    const-string/jumbo v2, "run.IOException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_83
    move-exception v1

    .line 114
    :try_start_84
    iget-object v2, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_8d

    .line 115
    iget-object v2, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8d} :catch_97

    .line 120
    :cond_8d
    :goto_8d
    iget-object v2, p0, mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v3, p0, mDumpResult:Z

    iget-boolean v4, p0, mIsFullDump:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    throw v1

    .line 117
    :catch_97
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "Dumper"

    const-string/jumbo v3, "run.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, mDeviceInfo:Ljava/util/List;

    .line 91
    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .registers 2
    .param p1, "filter"    # Lcom/android/server/enterprise/auditlog/Filter;

    .prologue
    .line 538
    iput-object p1, p0, mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 539
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, mPackageName:Ljava/lang/String;

    .line 95
    return-void
.end method
