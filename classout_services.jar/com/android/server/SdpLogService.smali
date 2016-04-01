.class public Lcom/android/server/SdpLogService;
.super Lcom/sec/sdp/ISdpLogService$Stub;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpLogService$1;,
        Lcom/android/server/SdpLogService$SdpLogHandler;,
        Lcom/android/server/SdpLogService$SdpLogThread;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final DELAY:I = 0xbb8

.field private static final FILE_EOL:B = 0xat

.field private static final FILE_OFFSET:J = 0x0L

.field private static final FILE_PATH:Ljava/lang/String; = "/data/log/sdp_log"

.field private static final MAX_FILE_LENGTH:J = 0x200000L

.field private static final MAX_HEADER_LENGTH:J = 0x11L

.field private static final MAX_Q_SIZE:I = 0x12c

.field private static final MSG_SAVE_TO_FILE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x0

.field private static final Q_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "SdpLogService"

.field private static sContext:Landroid/content/Context;

.field private static final sLogQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

.field private mSdpLogThread:Lcom/android/server/SdpLogService$SdpLogThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Q_LOCK:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, sLogQ:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/sdp/ISdpLogService$Stub;-><init>()V

    .line 53
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 54
    sput-object p1, sContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/android/server/SdpLogService$SdpLogThread;

    const-string v1, "SdpLogThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpLogService$SdpLogThread;-><init>(Lcom/android/server/SdpLogService;Ljava/lang/String;)V

    iput-object v0, p0, mSdpLogThread:Lcom/android/server/SdpLogService$SdpLogThread;

    .line 57
    iget-object v0, p0, mSdpLogThread:Lcom/android/server/SdpLogService$SdpLogThread;

    invoke-virtual {v0}, Lcom/android/server/SdpLogService$SdpLogThread;->start()V

    .line 59
    const-string v0, "SdpLogService"

    const-string v1, "Spawned sdp log thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/SdpLogService;Lcom/android/server/SdpLogService$SdpLogHandler;)Lcom/android/server/SdpLogService$SdpLogHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpLogService;
    .param p1, "x1"    # Lcom/android/server/SdpLogService$SdpLogHandler;

    .prologue
    .line 25
    iput-object p1, p0, mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    return-object p1
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SdpLogService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/SdpLogService;

    .prologue
    .line 25
    invoke-direct {p0}, saveToFile()V

    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v1, "SdpLogService"

    .line 64
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_57

    .line 65
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 69
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_57
    const/4 v2, 0x0

    return v2
.end method

.method private static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "SdpLogService.d"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "SdpLogService.e"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method private enqPayloadLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v2, Q_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_3
    invoke-direct {p0}, overloadProtection()V

    .line 90
    sget-object v1, sLogQ:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;->removeMessages(I)V

    .line 92
    iget-object v1, p0, mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    monitor-exit v2

    .line 95
    return-void

    .line 94
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private overloadProtection()V
    .registers 3

    .prologue
    .line 106
    sget-object v0, sLogQ:Ljava/util/Queue;

    if-eqz v0, :cond_18

    sget-object v0, sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_18

    .line 108
    const-string v0, "Overload Observed..."

    invoke-static {v0}, e(Ljava/lang/String;)V

    .line 109
    sget-object v0, sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 111
    :cond_18
    return-void
.end method

.method private saveToFile()V
    .registers 25

    .prologue
    .line 152
    const/4 v9, 0x0

    .line 153
    .local v9, "file":Ljava/io/RandomAccessFile;
    const-wide/16 v12, 0x0

    .line 154
    .local v12, "fileLength":J
    const-wide/16 v14, 0x0

    .line 155
    .local v14, "filePointer":J
    const-wide/16 v4, 0x0

    .line 156
    .local v4, "currVersion":J
    const/16 v17, 0x1

    .line 157
    .local v17, "prevResult":Z
    const/4 v11, 0x0

    .line 160
    .local v11, "isResetRequired":Z
    if-eqz v17, :cond_75

    .line 163
    :try_start_c
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v18, "/data/log/sdp_log"

    const-string/jumbo v19, "rwd"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1a} :catch_107
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_1b7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1b9
    .catchall {:try_start_c .. :try_end_1a} :catchall_1cf

    .line 164
    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .local v10, "file":Ljava/io/RandomAccessFile;
    const-wide/16 v18, 0x0

    :try_start_1c
    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 165
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 168
    const-wide/16 v18, 0x11

    cmp-long v18, v12, v18

    if-gtz v18, :cond_121

    .line 169
    const/4 v11, 0x1

    .line 170
    const-string/jumbo v18, "saveToFile() - File is too small"

    invoke-static/range {v18 .. v18}, e(Ljava/lang/String;)V

    .line 185
    :cond_32
    :goto_32
    if-eqz v11, :cond_74

    .line 186
    const-wide/16 v18, 0x11

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 187
    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 188
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 189
    const-wide/16 v18, 0x11

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 190
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 192
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    .line 193
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    .line 194
    const-wide/16 v18, 0x11

    cmp-long v18, v14, v18

    if-ltz v18, :cond_6c

    const-wide/32 v18, 0x200000

    cmp-long v18, v14, v18

    if-lez v18, :cond_74

    .line 196
    :cond_6c
    const/16 v17, 0x0

    .line 197
    const-string/jumbo v18, "saveToFile() - Couldn\'t restore the file"

    invoke-static/range {v18 .. v18}, e(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_74} :catch_131
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_74} :catch_152
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_74} :catch_1e6
    .catchall {:try_start_1c .. :try_end_74} :catchall_1e3

    :cond_74
    move-object v9, v10

    .line 203
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    :cond_75
    if-eqz v17, :cond_175

    .line 204
    :try_start_77
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "saveToFile() - FP : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Version : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, d(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v9, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 210
    sget-object v19, Q_LOCK:Ljava/lang/Object;

    monitor-enter v19
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_a2} :catch_107
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_a2} :catch_1b7
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_a2} :catch_1b9
    .catchall {:try_start_77 .. :try_end_a2} :catchall_1cf

    .line 211
    :try_start_a2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "saveToFile() - QS : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v20, sLogQ:Ljava/util/Queue;

    invoke-interface/range {v20 .. v20}, Ljava/util/Queue;->size()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, d(Ljava/lang/String;)V

    .line 212
    :cond_c7
    :goto_c7
    sget-object v18, sLogQ:Ljava/util/Queue;

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_167

    .line 213
    sget-object v18, sLogQ:Ljava/util/Queue;

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 214
    .local v16, "log":Ljava/lang/String;
    if-eqz v16, :cond_c7

    .line 217
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 218
    .local v7, "dataToWrite":[B
    array-length v6, v7

    .line 220
    .local v6, "dataLength":I
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v20

    int-to-long v0, v6

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    const-wide/32 v22, 0x200000

    cmp-long v18, v20, v22

    if-lez v18, :cond_f9

    .line 221
    const-wide/16 v20, 0x11

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 223
    :cond_f9
    invoke-virtual {v9, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 224
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_c7

    .line 226
    .end local v6    # "dataLength":I
    .end local v7    # "dataToWrite":[B
    .end local v16    # "log":Ljava/lang/String;
    :catchall_104
    move-exception v18

    monitor-exit v19
    :try_end_106
    .catchall {:try_start_a2 .. :try_end_106} :catchall_104

    :try_start_106
    throw v18
    :try_end_107
    .catch Ljava/io/FileNotFoundException; {:try_start_106 .. :try_end_107} :catch_107
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_107} :catch_1b7
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_107} :catch_1b9
    .catchall {:try_start_106 .. :try_end_107} :catchall_1cf

    .line 241
    :catch_107
    move-exception v8

    .line 242
    .local v8, "exc":Ljava/io/FileNotFoundException;
    :goto_108
    :try_start_108
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 243
    const-string/jumbo v18, "saveToFile() - Couldn\'t open file"

    invoke-static/range {v18 .. v18}, e(Ljava/lang/String;)V
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_1cf

    .line 244
    const/16 v17, 0x0

    .line 255
    if-eqz v9, :cond_118

    .line 256
    :try_start_115
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_1de

    .line 259
    .end local v8    # "exc":Ljava/io/FileNotFoundException;
    :cond_118
    :goto_118
    if-eqz v17, :cond_1d6

    .line 260
    const-string/jumbo v18, "saveToFile() - Done Successfully!!!"

    invoke-static/range {v18 .. v18}, d(Ljava/lang/String;)V

    .line 264
    :goto_120
    return-void

    .line 171
    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :cond_121
    const-wide/32 v18, 0x200000

    cmp-long v18, v12, v18

    if-lez v18, :cond_134

    .line 172
    const/4 v11, 0x1

    .line 173
    :try_start_129
    const-string/jumbo v18, "saveToFile() - File length had exceeded limitation"

    invoke-static/range {v18 .. v18}, e(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 241
    :catch_131
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    goto :goto_108

    .line 175
    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :cond_134
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    .line 176
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    .line 177
    const-wide/16 v18, 0x11

    cmp-long v18, v14, v18

    if-ltz v18, :cond_149

    const-wide/32 v18, 0x200000

    cmp-long v18, v14, v18

    if-lez v18, :cond_32

    .line 179
    :cond_149
    const/4 v11, 0x1

    .line 180
    const-string/jumbo v18, "saveToFile() - File header had been broken"

    invoke-static/range {v18 .. v18}, e(Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/io/FileNotFoundException; {:try_start_129 .. :try_end_150} :catch_131
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_150} :catch_152
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_150} :catch_1e6
    .catchall {:try_start_129 .. :try_end_150} :catchall_1e3

    goto/16 :goto_32

    .line 245
    :catch_152
    move-exception v8

    move-object v9, v10

    .line 246
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .local v8, "exc":Ljava/io/IOException;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    :goto_154
    :try_start_154
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 247
    const-string/jumbo v18, "saveToFile() - Couldn\'t modify file..."

    invoke-static/range {v18 .. v18}, e(Ljava/lang/String;)V
    :try_end_15d
    .catchall {:try_start_154 .. :try_end_15d} :catchall_1cf

    .line 248
    const/16 v17, 0x0

    .line 255
    if-eqz v9, :cond_118

    .line 256
    :try_start_161
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_165

    goto :goto_118

    .line 257
    :catch_165
    move-exception v18

    goto :goto_118

    .line 226
    .end local v8    # "exc":Ljava/io/IOException;
    :cond_167
    :try_start_167
    monitor-exit v19
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_104

    .line 229
    :try_start_168
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    .line 230
    const-wide/32 v18, 0x200000

    cmp-long v18, v14, v18

    if-lez v18, :cond_1ac

    .line 231
    const/16 v17, 0x0

    .line 239
    :cond_175
    :goto_175
    if-eqz v17, :cond_1a2

    .line 240
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "saveToFile() - FP : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", FL : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, d(Ljava/lang/String;)V
    :try_end_1a2
    .catch Ljava/io/FileNotFoundException; {:try_start_168 .. :try_end_1a2} :catch_107
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_1a2} :catch_1b7
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_1a2} :catch_1b9
    .catchall {:try_start_168 .. :try_end_1a2} :catchall_1cf

    .line 255
    :cond_1a2
    if-eqz v9, :cond_118

    .line 256
    :try_start_1a4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_1a9

    goto/16 :goto_118

    .line 257
    :catch_1a9
    move-exception v18

    goto/16 :goto_118

    .line 233
    :cond_1ac
    const-wide/16 v18, 0x0

    :try_start_1ae
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 234
    invoke-virtual {v9, v14, v15}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_1b6
    .catch Ljava/io/FileNotFoundException; {:try_start_1ae .. :try_end_1b6} :catch_107
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1b6} :catch_1b7
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1b6} :catch_1b9
    .catchall {:try_start_1ae .. :try_end_1b6} :catchall_1cf

    goto :goto_175

    .line 245
    :catch_1b7
    move-exception v8

    goto :goto_154

    .line 249
    :catch_1b9
    move-exception v8

    .line 250
    .local v8, "exc":Ljava/lang/Exception;
    :goto_1ba
    :try_start_1ba
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string/jumbo v18, "saveToFile() - Unexpected error occurred..."

    invoke-static/range {v18 .. v18}, e(Ljava/lang/String;)V
    :try_end_1c3
    .catchall {:try_start_1ba .. :try_end_1c3} :catchall_1cf

    .line 252
    const/16 v17, 0x0

    .line 255
    if-eqz v9, :cond_118

    .line 256
    :try_start_1c7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1ca} :catch_1cc

    goto/16 :goto_118

    .line 257
    :catch_1cc
    move-exception v18

    goto/16 :goto_118

    .line 254
    .end local v8    # "exc":Ljava/lang/Exception;
    :catchall_1cf
    move-exception v18

    .line 255
    :goto_1d0
    if-eqz v9, :cond_1d5

    .line 256
    :try_start_1d2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_1e1

    .line 257
    :cond_1d5
    :goto_1d5
    throw v18

    .line 262
    :cond_1d6
    const-string/jumbo v18, "saveToFile() - Failed..."

    invoke-static/range {v18 .. v18}, d(Ljava/lang/String;)V

    goto/16 :goto_120

    .line 257
    .local v8, "exc":Ljava/io/FileNotFoundException;
    :catch_1de
    move-exception v18

    goto/16 :goto_118

    .end local v8    # "exc":Ljava/io/FileNotFoundException;
    :catch_1e1
    move-exception v19

    goto :goto_1d5

    .line 254
    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :catchall_1e3
    move-exception v18

    move-object v9, v10

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    goto :goto_1d0

    .line 249
    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :catch_1e6
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    goto :goto_1ba
.end method


# virtual methods
.method public enqPayload(Ljava/lang/String;)V
    .registers 3
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    const-string/jumbo v0, "enqPayload"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 84
    invoke-direct {p0, p1}, enqPayloadLocked(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 73
    const-string/jumbo v1, "systemReady"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 74
    const-string v1, "SdpLogService"

    const-string v2, "SdpLogService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v1, "SdpLogService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    const-string v1, "SdpLogService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method
