.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
.super Ljava/lang/Thread;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingThread"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;)V
    .registers 3

    .prologue
    .line 86
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbDebuggingManager;

    .line 87
    const-string v0, "UsbDebuggingManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private closeSocketLocked()V
    .registers 6

    .prologue
    .line 165
    const-string v2, "UsbDebuggingManager"

    const-string v3, "Closing socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_7
    iget-object v2, p0, mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_13

    .line 168
    iget-object v2, p0, mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 169
    const/4 v2, 0x0

    iput-object v2, p0, mOutputStream:Ljava/io/OutputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_20

    .line 176
    :cond_13
    :goto_13
    :try_start_13
    iget-object v2, p0, mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_1f

    .line 177
    iget-object v2, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, mSocket:Landroid/net/LocalSocket;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1f} :catch_3a

    .line 183
    :cond_1f
    :goto_1f
    return-void

    .line 171
    :catch_20
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3a
    move-exception v1

    .line 181
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private listenToSocket()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/16 v5, 0x1000

    :try_start_2
    new-array v0, v5, [B

    .line 137
    .local v0, "buffer":[B
    :goto_4
    iget-object v5, p0, mInputStream:Ljava/io/InputStream;

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_59
    .catchall {:try_start_2 .. :try_end_9} :catchall_62

    move-result v1

    .line 138
    .local v1, "count":I
    if-gez v1, :cond_12

    .line 158
    :goto_c
    monitor-enter p0

    .line 159
    :try_start_d
    invoke-direct {p0}, closeSocketLocked()V

    .line 160
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_8d

    .line 162
    return-void

    .line 142
    :cond_12
    const/4 v5, 0x0

    :try_start_13
    aget-byte v5, v0, v5

    const/16 v6, 0x50

    if-ne v5, v6, :cond_69

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    const/16 v6, 0x4b

    if-ne v5, v6, :cond_69

    .line 143
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v0, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 144
    .local v3, "key":Ljava/lang/String;
    const-string v5, "UsbDebuggingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received public key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v5, p0, this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 146
    .local v4, "msg":Landroid/os/Message;
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    iget-object v5, p0, this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_58} :catch_59
    .catchall {:try_start_13 .. :try_end_58} :catchall_62

    goto :goto_4

    .line 154
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    :catch_59
    move-exception v2

    .line 155
    .local v2, "ex":Ljava/io/IOException;
    :try_start_5a
    const-string v5, "UsbDebuggingManager"

    const-string v6, "Communication error: "

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    throw v2
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_62

    .line 158
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_62
    move-exception v5

    monitor-enter p0

    .line 159
    :try_start_64
    invoke-direct {p0}, closeSocketLocked()V

    .line 160
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_90

    throw v5

    .line 149
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    :cond_69
    :try_start_69
    const-string v5, "UsbDebuggingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_8c} :catch_59
    .catchall {:try_start_69 .. :try_end_8c} :catchall_62

    goto :goto_c

    .line 160
    :catchall_8d
    move-exception v5

    :try_start_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v5

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_90
    move-exception v5

    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v5
.end method

.method private openSocketLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "adbd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 119
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v2, 0x0

    iput-object v2, p0, mInputStream:Ljava/io/InputStream;

    .line 121
    const-string v2, "UsbDebuggingManager"

    const-string v3, "Creating socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, mSocket:Landroid/net/LocalSocket;

    .line 123
    iget-object v2, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 125
    iget-object v2, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, mOutputStream:Ljava/io/OutputStream;

    .line 126
    iget-object v2, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, mInputStream:Ljava/io/InputStream;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_30

    .line 131
    return-void

    .line 127
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_30
    move-exception v1

    .line 128
    .local v1, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, closeSocketLocked()V

    .line 129
    throw v1
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 92
    const-string v1, "UsbDebuggingManager"

    const-string v2, "Entering thread"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_9
    monitor-enter p0

    .line 95
    :try_start_a
    iget-boolean v1, p0, mStopped:Z

    if-eqz v1, :cond_17

    .line 96
    const-string v1, "UsbDebuggingManager"

    const-string v2, "Exiting thread"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2b

    return-void

    .line 100
    :cond_17
    :try_start_17
    invoke-direct {p0}, openSocketLocked()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_24
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2b

    .line 105
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_2b

    .line 107
    :try_start_1b
    invoke-direct {p0}, listenToSocket()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_9

    .line 108
    :catch_1f
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_9

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_24
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x3e8

    :try_start_27
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1a

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2b
    move-exception v1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method sendResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 194
    monitor-enter p0

    .line 195
    :try_start_1
    iget-boolean v1, p0, mStopped:Z

    if-nez v1, :cond_12

    iget-object v1, p0, mOutputStream:Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    if-eqz v1, :cond_12

    .line 197
    :try_start_9
    iget-object v1, p0, mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_14
    .catchall {:try_start_9 .. :try_end_12} :catchall_1d

    .line 203
    :cond_12
    :goto_12
    :try_start_12
    monitor-exit p0

    .line 204
    return-void

    .line 199
    :catch_14
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "UsbDebuggingManager"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 203
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method stopListening()V
    .registers 2

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, mStopped:Z

    .line 189
    invoke-direct {p0}, closeSocketLocked()V

    .line 190
    monitor-exit p0

    .line 191
    return-void

    .line 190
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
