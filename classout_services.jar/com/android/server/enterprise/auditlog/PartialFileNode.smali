.class public Lcom/android/server/enterprise/auditlog/PartialFileNode;
.super Ljava/lang/Object;
.source "PartialFileNode.java"


# static fields
.field static FILESIZE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "PartialFileNode"


# instance fields
.field private final deleteSync:Ljava/lang/Object;

.field private isCompressed:Z

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private volatile mFile:Ljava/io/File;

.field private mLastLineLength:I

.field private volatile mMarkAsDeprecated:Z

.field private mPackageName:Ljava/lang/String;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field private mTimestamp:J

.field private mTruncateFileAt:J

.field private mWasWritten:Z

.field private mWriteBuffer:Ljava/nio/MappedByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    const-wide/32 v0, 0x80000

    sput-wide v0, FILESIZE:J

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, isCompressed:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, deleteSync:Ljava/lang/Object;

    .line 61
    iput-boolean v1, p0, mWasWritten:Z

    .line 86
    iput-object p2, p0, mPackageName:Ljava/lang/String;

    .line 87
    iput-object p1, p0, mFile:Ljava/io/File;

    .line 88
    invoke-virtual {p0}, setTimestamp()V

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v3, p0, isCompressed:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, deleteSync:Ljava/lang/Object;

    .line 61
    iput-boolean v3, p0, mWasWritten:Z

    .line 66
    iput-object p2, p0, mPackageName:Ljava/lang/String;

    .line 67
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 68
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "suffix":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mFile:Ljava/io/File;

    .line 70
    iput v3, p0, mLastLineLength:I

    .line 71
    iput-wide v4, p0, mTimestamp:J

    .line 72
    iput-boolean v3, p0, mMarkAsDeprecated:Z

    .line 74
    :try_start_44
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, mFile:Ljava/io/File;

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 75
    iget-object v0, p0, mRandomAccessFile:Ljava/io/RandomAccessFile;

    sget-wide v2, FILESIZE:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 76
    iget-object v0, p0, mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, mChannel:Ljava/nio/channels/FileChannel;

    .line 77
    iget-object v0, p0, mChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, mWriteBuffer:Ljava/nio/MappedByteBuffer;

    .line 78
    iget-object v0, p0, mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->mark()Ljava/nio/Buffer;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_78} :catch_79

    .line 83
    :goto_78
    return-void

    .line 79
    :catch_79
    move-exception v7

    .line 80
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "PartialFileNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PartialFileNode.Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_78
.end method


# virtual methods
.method closeFile()V
    .registers 7

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, mFile:Ljava/io/File;

    if-eqz v1, :cond_26

    iget-object v1, p0, mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 122
    iget-object v2, p0, mFile:Ljava/io/File;

    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_2a

    .line 123
    :try_start_f
    iget-object v1, p0, mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, mTruncateFileAt:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 124
    iget-object v1, p0, mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 125
    iget-object v1, p0, mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 126
    iget-object v1, p0, mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 127
    monitor-exit v2

    .line 133
    :cond_26
    :goto_26
    return-void

    .line 127
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 129
    :catch_2a
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PartialFileNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeFile.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_26
.end method

.method compressFile()Z
    .registers 16

    .prologue
    .line 175
    const/4 v10, 0x0

    .line 176
    .local v10, "success":Z
    const/4 v11, 0x0

    .line 177
    .local v11, "tempFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 178
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 179
    .local v8, "outputStream":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 181
    .local v3, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_5
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, mFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_73
    .catchall {:try_start_5 .. :try_end_23} :catchall_8a

    .line 182
    .end local v11    # "tempFile":Ljava/io/File;
    .local v12, "tempFile":Ljava/io/File;
    :try_start_23
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v13, p0, mFile:Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_bb
    .catchall {:try_start_23 .. :try_end_2a} :catchall_a9

    .line 183
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .local v7, "inputStream":Ljava/io/InputStream;
    :try_start_2a
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_be
    .catchall {:try_start_2a .. :try_end_2f} :catchall_ac

    .line 184
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .local v9, "outputStream":Ljava/io/OutputStream;
    :try_start_2f
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_c2
    .catchall {:try_start_2f .. :try_end_34} :catchall_b0

    .line 185
    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v4, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/high16 v13, 0x10000

    :try_start_36
    new-array v0, v13, [B

    .line 186
    .local v0, "buffer":[B
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 188
    .local v1, "bytesRead":I
    const/4 v2, 0x0

    .line 190
    .local v2, "bytesWritten":I
    :goto_3d
    if-lez v1, :cond_49

    .line 191
    const/4 v13, 0x0

    invoke-virtual {v4, v0, v13, v1}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 192
    add-int/2addr v2, v1

    .line 193
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_3d

    .line 195
    :cond_49
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 197
    iget-object v13, p0, mFile:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v10

    .line 199
    if-eqz v10, :cond_59

    .line 200
    iget-object v13, p0, mFile:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_59} :catch_c7
    .catchall {:try_start_36 .. :try_end_59} :catchall_b5

    .line 208
    :cond_59
    if-eqz v4, :cond_5e

    .line 210
    :try_start_5b
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_9b

    .line 213
    :cond_5e
    :goto_5e
    if-eqz v7, :cond_63

    .line 215
    :try_start_60
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_9d

    .line 219
    :cond_63
    :goto_63
    if-eqz v9, :cond_cd

    .line 221
    :try_start_65
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_6d

    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .line 225
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "bytesWritten":I
    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    :cond_6c
    :goto_6c
    return v10

    .line 222
    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "bytesWritten":I
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_6d
    move-exception v13

    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_6c

    .line 204
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "bytesWritten":I
    :catch_73
    move-exception v5

    .line 205
    .local v5, "e":Ljava/lang/Exception;
    :goto_74
    const/4 v10, 0x0

    .line 206
    :try_start_75
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_8a

    .line 208
    if-eqz v3, :cond_7d

    .line 210
    :try_start_7a
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_9f

    .line 213
    :cond_7d
    :goto_7d
    if-eqz v6, :cond_82

    .line 215
    :try_start_7f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_a1

    .line 219
    :cond_82
    :goto_82
    if-eqz v8, :cond_6c

    .line 221
    :try_start_84
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_6c

    .line 222
    :catch_88
    move-exception v13

    goto :goto_6c

    .line 208
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_8a
    move-exception v13

    :goto_8b
    if-eqz v3, :cond_90

    .line 210
    :try_start_8d
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_a3

    .line 213
    :cond_90
    :goto_90
    if-eqz v6, :cond_95

    .line 215
    :try_start_92
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_a5

    .line 219
    :cond_95
    :goto_95
    if-eqz v8, :cond_9a

    .line 221
    :try_start_97
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_a7

    .line 222
    :cond_9a
    :goto_9a
    throw v13

    .line 211
    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "bytesWritten":I
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_9b
    move-exception v13

    goto :goto_5e

    .line 216
    :catch_9d
    move-exception v13

    goto :goto_63

    .line 211
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "bytesWritten":I
    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "tempFile":Ljava/io/File;
    :catch_9f
    move-exception v13

    goto :goto_7d

    .line 216
    :catch_a1
    move-exception v13

    goto :goto_82

    .line 211
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_a3
    move-exception v14

    goto :goto_90

    .line 216
    :catch_a5
    move-exception v14

    goto :goto_95

    .line 222
    :catch_a7
    move-exception v14

    goto :goto_9a

    .line 208
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catchall_a9
    move-exception v13

    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_8b

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catchall_ac
    move-exception v13

    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_8b

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catchall_b0
    move-exception v13

    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_8b

    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catchall_b5
    move-exception v13

    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_8b

    .line 204
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_bb
    move-exception v5

    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_74

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_be
    move-exception v5

    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_74

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_c2
    move-exception v5

    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_74

    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_c7
    move-exception v5

    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_74

    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "bytesWritten":I
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :cond_cd
    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_6c
.end method

.method delete()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, mFile:Ljava/io/File;

    if-eqz v0, :cond_10

    .line 137
    iget-object v1, p0, deleteSync:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_7
    iget-object v0, p0, mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, mFile:Ljava/io/File;

    .line 140
    monitor-exit v1

    .line 142
    :cond_10
    return-void

    .line 140
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0
.end method

.method getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, mFile:Ljava/io/File;

    return-object v0
.end method

.method getFileSize()J
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, mFile:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 151
    iget-object v0, p0, mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 153
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method getTimestamp()J
    .registers 3

    .prologue
    .line 92
    iget-wide v0, p0, mTimestamp:J

    return-wide v0
.end method

.method getWasWritten()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, mWasWritten:Z

    return v0
.end method

.method isDeprecated()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, mMarkAsDeprecated:Z

    return v0
.end method

.method declared-synchronized setDeprecated(Z)Z
    .registers 3
    .param p1, "dep"    # Z

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mMarkAsDeprecated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_8

    .line 162
    const/4 v0, 0x0

    .line 166
    :goto_6
    monitor-exit p0

    return v0

    .line 165
    :cond_8
    :try_start_8
    iput-boolean p1, p0, mMarkAsDeprecated:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    .line 166
    const/4 v0, 0x1

    goto :goto_6

    .line 161
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setTimestamp()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, mFile:Ljava/io/File;

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, mTimestamp:J

    .line 147
    :cond_c
    return-void
.end method

.method setWasWritten(Z)V
    .registers 2
    .param p1, "wasWritten"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, mWasWritten:Z

    .line 232
    return-void
.end method

.method write(Ljava/lang/String;)Z
    .registers 10
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 97
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_10

    .line 98
    const/4 v1, 0x0

    .line 115
    :cond_f
    :goto_f
    return v1

    .line 100
    :cond_10
    iget-object v2, p0, mFile:Ljava/io/File;

    if-eqz v2, :cond_f

    .line 101
    iget-object v3, p0, mFile:Ljava/io/File;

    monitor-enter v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_45

    .line 102
    :try_start_17
    iget-boolean v2, p0, mWasWritten:Z

    if-nez v2, :cond_1e

    .line 103
    const/4 v2, 0x1

    iput-boolean v2, p0, mWasWritten:Z

    .line 105
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, mLastLineLength:I

    .line 106
    iget-wide v4, p0, mTruncateFileAt:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, mTruncateFileAt:J

    .line 107
    iget-object v2, p0, mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, mTruncateFileAt:J

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 108
    iget-object v2, p0, mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    monitor-exit v3

    goto :goto_f

    :catchall_42
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_42

    :try_start_44
    throw v2
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_45

    .line 111
    :catch_45
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PartialFileNode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write.Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    iget-object v3, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_f
.end method
