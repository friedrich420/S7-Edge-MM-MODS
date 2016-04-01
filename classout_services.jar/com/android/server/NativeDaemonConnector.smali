.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue;,
        Lcom/android/server/NativeDaemonConnector$Command;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field static final SHIP_BUILD:Z

.field private static final VDBG:Z = false

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private volatile mDebug:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 81
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, SHIP_BUILD:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V
    .registers 15
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 85
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    .line 87
    return-void
.end method

.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V
    .registers 11
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;
    .param p7, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v2, p0, mDebug:Z

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mDaemonLock:Ljava/lang/Object;

    .line 79
    const/16 v0, 0x1000

    iput v0, p0, BUFFER_SIZE:I

    .line 92
    iput-object p1, p0, mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 93
    iput-object p2, p0, mSocket:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-direct {v0, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    .line 95
    iput-object p6, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_28

    .line 97
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 99
    :cond_28
    iput-object p7, p0, mLooper:Landroid/os/Looper;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    if-eqz p4, :cond_3d

    .end local p4    # "logTag":Ljava/lang/String;
    :goto_33
    iput-object p4, p0, TAG:Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, p5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, mLocalLog:Landroid/util/LocalLog;

    .line 103
    return-void

    .line 101
    .restart local p4    # "logTag":Ljava/lang/String;
    :cond_3d
    const-string p4, "NativeDaemonConnector"

    goto :goto_33
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 489
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_25

    const/4 v1, 0x1

    .line 490
    .local v1, "hasSpaces":Z
    :goto_b
    if-eqz v1, :cond_10

    .line 491
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 495
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v3, :cond_35

    .line 496
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 498
    .local v0, "c":C
    if-ne v0, v5, :cond_27

    .line 499
    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 489
    .end local v0    # "c":C
    .end local v1    # "hasSpaces":Z
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_25
    const/4 v1, 0x0

    goto :goto_b

    .line 500
    .restart local v0    # "c":C
    .restart local v1    # "hasSpaces":Z
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_27
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_31

    .line 501
    const-string v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 503
    :cond_31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 507
    .end local v0    # "c":C
    :cond_35
    if-eqz v1, :cond_3a

    .line 508
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    :cond_3a
    return-void
.end method

.method private determineSocketAddress()Landroid/net/LocalSocketAddress;
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, mSocket:Ljava/lang/String;

    const-string v1, "__test__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_16

    .line 150
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, mSocket:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 152
    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, mSocket:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    goto :goto_15
.end method

.method private listenToSocket()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v13, 0x0

    .line 160
    .local v13, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_2d9
    .catchall {:try_start_1 .. :try_end_6} :catchall_99

    .line 161
    .end local v13    # "socket":Landroid/net/LocalSocket;
    .local v14, "socket":Landroid/net/LocalSocket;
    :try_start_6
    invoke-direct/range {p0 .. p0}, determineSocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v2

    .line 163
    .local v2, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v14, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 165
    invoke-virtual {v14}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 166
    .local v9, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, mDaemonLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_7a
    .catchall {:try_start_6 .. :try_end_18} :catchall_1d9

    .line 167
    :try_start_18
    invoke-virtual {v14}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mOutputStream:Ljava/io/OutputStream;

    .line 168
    monitor-exit v17
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_77

    .line 170
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 172
    const/16 v16, 0x1000

    move/from16 v0, v16

    new-array v3, v0, [B

    .line 173
    .local v3, "buffer":[B
    const/4 v15, 0x0

    .line 176
    .local v15, "start":I
    :goto_33
    rsub-int v0, v15, 0x1000

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v3, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 177
    .local v4, "count":I
    if-gez v4, :cond_e1

    .line 178
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "got "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " reading with start = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    .line 244
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_69
    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_206

    const/16 v16, 0x0

    aput-byte v16, v3, v8
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_74} :catch_7a
    .catchall {:try_start_23 .. :try_end_74} :catchall_1d9

    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 168
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v15    # "start":I
    :catchall_77
    move-exception v16

    :try_start_78
    monitor-exit v17
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw v16
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7a} :catch_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_1d9

    .line 245
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    :catch_7a
    move-exception v7

    move-object v13, v14

    .line 246
    .end local v14    # "socket":Landroid/net/LocalSocket;
    .local v7, "ex":Ljava/io/IOException;
    .restart local v13    # "socket":Landroid/net/LocalSocket;
    :goto_7c
    :try_start_7c
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Communications error: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    .line 247
    throw v7
    :try_end_99
    .catchall {:try_start_7c .. :try_end_99} :catchall_99

    .line 249
    .end local v7    # "ex":Ljava/io/IOException;
    :catchall_99
    move-exception v16

    :goto_9a
    move-object/from16 v0, p0

    iget-object v0, v0, mDaemonLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 250
    :try_start_a1
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_2b7

    if-eqz v18, :cond_da

    .line 252
    :try_start_a9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "closing stream for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mSocket:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_d2} :catch_298
    .catchall {:try_start_a9 .. :try_end_d2} :catchall_2b7

    .line 257
    :goto_d2
    const/16 v18, 0x0

    :try_start_d4
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mOutputStream:Ljava/io/OutputStream;

    .line 259
    :cond_da
    monitor-exit v17
    :try_end_db
    .catchall {:try_start_d4 .. :try_end_db} :catchall_2b7

    .line 262
    if-eqz v13, :cond_e0

    .line 263
    :try_start_dd
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_2ba

    .line 267
    :cond_e0
    :goto_e0
    throw v16

    .line 183
    .end local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "socket":Landroid/net/LocalSocket;
    .restart local v15    # "start":I
    :cond_e1
    add-int/2addr v4, v15

    .line 184
    const/4 v15, 0x0

    .line 186
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_e4
    if-ge v8, v4, :cond_1ea

    .line 187
    :try_start_e6
    aget-byte v16, v3, v8

    if-nez v16, :cond_19a

    .line 190
    new-instance v10, Ljava/lang/String;

    sub-int v16, v8, v15

    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v10, v3, v15, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 193
    .local v10, "rawEvent":Ljava/lang/String;
    const/4 v11, 0x0

    .line 194
    .local v11, "releaseWl":Z
    sget-boolean v16, SHIP_BUILD:Z

    if-nez v16, :cond_11f

    .line 195
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RCV <- {"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "}"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_11f} :catch_7a
    .catchall {:try_start_e6 .. :try_end_11f} :catchall_1d9

    .line 198
    :cond_11f
    :try_start_11f
    invoke-static {v10}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    .line 201
    .local v6, "event":Lcom/android/server/NativeDaemonEvent;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RCV <- {"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "}"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v16

    if-eqz v16, :cond_19e

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v16

    if-eqz v16, :cond_16e

    move-object/from16 v0, p0

    iget-object v0, v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    if-eqz v16, :cond_16e

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 208
    const/4 v11, 0x1

    .line 210
    :cond_16e
    move-object/from16 v0, p0

    iget-object v0, v0, mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v18

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_189
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11f .. :try_end_189} :catch_1b0
    .catchall {:try_start_11f .. :try_end_189} :catchall_1dd

    move-result v16

    if-eqz v16, :cond_18d

    .line 212
    const/4 v11, 0x0

    .line 220
    :cond_18d
    :goto_18d
    if-eqz v11, :cond_198

    .line 221
    :try_start_18f
    move-object/from16 v0, p0

    iget-object v0, v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_198} :catch_7a
    .catchall {:try_start_18f .. :try_end_198} :catchall_1d9

    .line 225
    .end local v6    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_198
    :goto_198
    add-int/lit8 v15, v8, 0x1

    .line 186
    .end local v10    # "rawEvent":Ljava/lang/String;
    .end local v11    # "releaseWl":Z
    :cond_19a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e4

    .line 215
    .restart local v6    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v10    # "rawEvent":Ljava/lang/String;
    .restart local v11    # "releaseWl":Z
    :cond_19e
    :try_start_19e
    move-object/from16 v0, p0

    iget-object v0, v0, mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->add(ILcom/android/server/NativeDaemonEvent;)V
    :try_end_1af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19e .. :try_end_1af} :catch_1b0
    .catchall {:try_start_19e .. :try_end_1af} :catchall_1dd

    goto :goto_18d

    .line 217
    .end local v6    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1b0
    move-exception v5

    .line 218
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1b1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Problem parsing message "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V
    :try_end_1cd
    .catchall {:try_start_1b1 .. :try_end_1cd} :catchall_1dd

    .line 220
    if-eqz v11, :cond_198

    .line 221
    :try_start_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_198

    .line 249
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "i":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "rawEvent":Ljava/lang/String;
    .end local v11    # "releaseWl":Z
    .end local v15    # "start":I
    :catchall_1d9
    move-exception v16

    move-object v13, v14

    .end local v14    # "socket":Landroid/net/LocalSocket;
    .restart local v13    # "socket":Landroid/net/LocalSocket;
    goto/16 :goto_9a

    .line 220
    .end local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "rawEvent":Ljava/lang/String;
    .restart local v11    # "releaseWl":Z
    .restart local v14    # "socket":Landroid/net/LocalSocket;
    .restart local v15    # "start":I
    :catchall_1dd
    move-exception v16

    if-eqz v11, :cond_1e9

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1e9
    throw v16

    .line 229
    .end local v10    # "rawEvent":Ljava/lang/String;
    .end local v11    # "releaseWl":Z
    :cond_1ea
    if-nez v15, :cond_1f5

    .line 230
    const-string v16, "RCV incomplete"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V

    .line 235
    :cond_1f5
    if-eq v15, v4, :cond_203

    .line 236
    rsub-int v12, v15, 0x1000

    .line 237
    .local v12, "remaining":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v3, v15, v3, v0, v12}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_200} :catch_7a
    .catchall {:try_start_1cf .. :try_end_200} :catchall_1d9

    .line 238
    move v15, v12

    .line 239
    goto/16 :goto_33

    .line 240
    .end local v12    # "remaining":I
    :cond_203
    const/4 v15, 0x0

    goto/16 :goto_33

    .line 249
    :cond_206
    move-object/from16 v0, p0

    iget-object v0, v0, mDaemonLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 250
    :try_start_20d
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v16, v0
    :try_end_213
    .catchall {:try_start_20d .. :try_end_213} :catchall_277

    if-eqz v16, :cond_24e

    .line 252
    :try_start_215
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "closing stream for "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, mSocket:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_246} :catch_255
    .catchall {:try_start_215 .. :try_end_246} :catchall_277

    .line 257
    :goto_246
    const/16 v16, 0x0

    :try_start_248
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mOutputStream:Ljava/io/OutputStream;

    .line 259
    :cond_24e
    monitor-exit v17
    :try_end_24f
    .catchall {:try_start_248 .. :try_end_24f} :catchall_277

    .line 262
    if-eqz v14, :cond_254

    .line 263
    :try_start_251
    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_254
    .catch Ljava/io/IOException; {:try_start_251 .. :try_end_254} :catch_27a

    .line 269
    :cond_254
    :goto_254
    return-void

    .line 254
    :catch_255
    move-exception v5

    .line 255
    .local v5, "e":Ljava/io/IOException;
    :try_start_256
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed closing output stream: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    goto :goto_246

    .line 259
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_277
    move-exception v16

    monitor-exit v17
    :try_end_279
    .catchall {:try_start_256 .. :try_end_279} :catchall_277

    throw v16

    .line 265
    :catch_27a
    move-exception v7

    .line 266
    .restart local v7    # "ex":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed closing socket: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    goto :goto_254

    .line 254
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v8    # "i":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "socket":Landroid/net/LocalSocket;
    .end local v15    # "start":I
    .restart local v13    # "socket":Landroid/net/LocalSocket;
    :catch_298
    move-exception v5

    .line 255
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_299
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed closing output stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    goto/16 :goto_d2

    .line 259
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_2b7
    move-exception v16

    monitor-exit v17
    :try_end_2b9
    .catchall {:try_start_299 .. :try_end_2b9} :catchall_2b7

    throw v16

    .line 265
    :catch_2ba
    move-exception v7

    .line 266
    .restart local v7    # "ex":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed closing socket: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 245
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_2d9
    move-exception v7

    goto/16 :goto_7c
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 562
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_9
    iget-object v0, p0, mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v0, p0, TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 13
    .param p0, "rawBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "logBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "sequenceNumber"    # I
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x20

    .line 294
    invoke-virtual {p3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_22

    .line 295
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 297
    :cond_22
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_30

    .line 298
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Arguments must be separate from command"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 301
    :cond_30
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    move-object v2, p4

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_49
    if-ge v3, v4, :cond_89

    aget-object v0, v2, v3

    .line 304
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "argString":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_70

    .line 306
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :cond_70
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p0, v1}, appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 313
    instance-of v5, v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    if-eqz v5, :cond_85

    .line 314
    const-string v5, "[scrubbed]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 316
    :cond_85
    invoke-static {p1, v1}, appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_82

    .line 320
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "argString":Ljava/lang/String;
    :cond_89
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    return-void
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 326
    .local v5, "rawEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 327
    .local v2, "events":[Lcom/android/server/NativeDaemonEvent;
    move-object v0, v2

    .local v0, "arr$":[Lcom/android/server/NativeDaemonEvent;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_e
    if-ge v3, v4, :cond_1c

    aget-object v1, v0, v3

    .line 328
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 330
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1c
    return-object v5
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 556
    iget-object v0, p0, mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 558
    iget-object v0, p0, mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public varargs execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .registers 10
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0, p1, p2, p3, p4}, executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 363
    .local v0, "events":[Lcom/android/server/NativeDaemonEvent;
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_22

    .line 364
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_22
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    .registers 4
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 342
    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 357
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .registers 28
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 416
    .local v16, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 418
    .local v8, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 419
    .local v12, "rawBuilder":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 420
    .local v10, "logBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v15

    .line 422
    .local v15, "sequenceNumber":I
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v12, v10, v15, v0, v1}, makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 424
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 425
    .local v14, "rawCmd":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 427
    .local v11, "logCmd":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SND -> {"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "}"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, log(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, mDaemonLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 430
    :try_start_61
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    if-nez v18, :cond_79

    .line 431
    new-instance v18, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v20, "missing output stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 447
    :catchall_76
    move-exception v18

    monitor-exit v19
    :try_end_78
    .catchall {:try_start_61 .. :try_end_78} :catchall_76

    throw v18

    .line 434
    :cond_79
    :try_start_79
    const-string/jumbo v18, "dir_crypto"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b9

    .line 435
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 436
    .local v13, "rawBytes":[B
    const/16 v18, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v13, v2}, Ljava/lang/String;->getBytes(II[BI)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 438
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_ab
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_ce

    .line 439
    const/16 v18, 0x0

    aput-byte v18, v13, v9

    .line 438
    add-int/lit8 v9, v9, 0x1

    goto :goto_ab

    .line 441
    .end local v9    # "i":I
    .end local v13    # "rawBytes":[B
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_ce} :catch_e2
    .catchall {:try_start_79 .. :try_end_ce} :catchall_76

    .line 447
    :cond_ce
    :try_start_ce
    monitor-exit v19
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_76

    .line 450
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_d0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_f0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v9, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d0

    .line 443
    .end local v9    # "i":I
    :catch_e2
    move-exception v4

    .line 444
    .local v4, "e":Ljava/io/IOException;
    :try_start_e3
    new-instance v18, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v20, "problem sending command"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_f0
    .catchall {:try_start_e3 .. :try_end_f0} :catchall_76

    .line 451
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "i":I
    :cond_f0
    invoke-virtual {v14}, Ljava/lang/String;->clear()V

    .line 453
    const/4 v5, 0x0

    .line 455
    .local v5, "event":Lcom/android/server/NativeDaemonEvent;
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v15, v1, v2, v11}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v5

    .line 456
    if-nez v5, :cond_129

    .line 457
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "timed-out waiting for response to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    .line 458
    new-instance v18, Lcom/android/server/NativeDaemonTimeoutException;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v5}, Lcom/android/server/NativeDaemonTimeoutException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v18

    .line 461
    :cond_129
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->isClassContinue()Z

    move-result v18

    if-nez v18, :cond_f4

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 465
    .local v6, "endTime":J
    sub-long v18, v6, v16

    const-wide/16 v20, 0x1f4

    cmp-long v18, v18, v20

    if-lez v18, :cond_172

    .line 466
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NDC Command {"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "} took too long ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v6, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "ms)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, loge(Ljava/lang/String;)V

    .line 469
    :cond_172
    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    move-result v18

    if-eqz v18, :cond_180

    .line 470
    new-instance v18, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v5}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v18

    .line 472
    :cond_180
    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    move-result v18

    if-eqz v18, :cond_18e

    .line 473
    new-instance v18, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v5}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v18

    .line 477
    :cond_18e
    invoke-virtual {v11}, Ljava/lang/String;->clear()V

    .line 478
    const/4 v9, 0x0

    :goto_192
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_1a4

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v9, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_192

    .line 480
    :cond_1a4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/server/NativeDaemonEvent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/android/server/NativeDaemonEvent;

    return-object v18
.end method

.method public executeForList(Lcom/android/server/NativeDaemonConnector$Command;)[Lcom/android/server/NativeDaemonEvent;
    .registers 4
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 381
    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 397
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 129
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, "event":Ljava/lang/String;
    :try_start_5
    iget-object v2, p0, mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 132
    const-string v2, "Unhandled event \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_36
    .catchall {:try_start_5 .. :try_end_22} :catchall_6b

    .line 137
    :cond_22
    iget-object v2, p0, mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v3}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_35

    .line 138
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 141
    :cond_35
    :goto_35
    return v5

    .line 134
    :catch_36
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error handling \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, loge(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_37 .. :try_end_57} :catchall_6b

    .line 137
    iget-object v2, p0, mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v3}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_35

    .line 138
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_35

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6b
    move-exception v2

    iget-object v3, p0, mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-interface {v3, v4}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    iget-object v3, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_7f

    .line 138
    iget-object v3, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7f
    throw v2
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 552
    iget-object v1, p0, mDaemonLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1

    .line 553
    return-void

    .line 552
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 115
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, mCallbackHandler:Landroid/os/Handler;

    .line 119
    :goto_9
    :try_start_9
    invoke-direct {p0}, listenToSocket()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_9

    .line 120
    :catch_d
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in NativeDaemonConnector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, loge(Ljava/lang/String;)V

    .line 122
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_9
.end method

.method public setDebug(Z)V
    .registers 2
    .param p1, "debug"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, mDebug:Z

    .line 111
    return-void
.end method
