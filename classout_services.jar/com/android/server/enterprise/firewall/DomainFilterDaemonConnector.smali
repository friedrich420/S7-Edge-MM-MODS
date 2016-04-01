.class final Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;
.super Ljava/lang/Object;
.source "DomainFilterDaemonConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mDaemonLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "DomainFilterDaemonConnector"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mDaemonLock:Ljava/lang/Object;

    .line 57
    const-string/jumbo v0, "dnsproxyd"

    iput-object v0, p0, mSocket:Ljava/lang/String;

    .line 58
    iput-object p2, p0, mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    .line 59
    iput-object p1, p0, mLooper:Landroid/os/Looper;

    .line 60
    return-void
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 124
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_25

    const/4 v1, 0x1

    .line 125
    .local v1, "hasSpaces":Z
    :goto_b
    if-eqz v1, :cond_10

    .line 126
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 130
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v3, :cond_35

    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 133
    .local v0, "c":C
    if-ne v0, v5, :cond_27

    .line 134
    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 124
    .end local v0    # "c":C
    .end local v1    # "hasSpaces":Z
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_25
    const/4 v1, 0x0

    goto :goto_b

    .line 135
    .restart local v0    # "c":C
    .restart local v1    # "hasSpaces":Z
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_27
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_31

    .line 136
    const-string v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 138
    :cond_31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 142
    .end local v0    # "c":C
    :cond_35
    if-eqz v1, :cond_3a

    .line 143
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_3a
    return-void
.end method

.method private listenToSocket()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v12, 0x0

    .line 151
    .local v12, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v13, Landroid/net/LocalSocket;

    invoke-direct {v13}, Landroid/net/LocalSocket;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_238
    .catchall {:try_start_1 .. :try_end_6} :catchall_8f

    .line 152
    .end local v12    # "socket":Landroid/net/LocalSocket;
    .local v13, "socket":Landroid/net/LocalSocket;
    :try_start_6
    new-instance v2, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v15, v0, mSocket:Ljava/lang/String;

    sget-object v16, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 155
    .local v2, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v13, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 157
    invoke-virtual {v13}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 158
    .local v9, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_72
    .catchall {:try_start_6 .. :try_end_21} :catchall_163

    .line 159
    :try_start_21
    invoke-virtual {v13}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mOutputStream:Ljava/io/OutputStream;

    .line 160
    monitor-exit v16
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_6f

    .line 162
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v15, v0, mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    invoke-interface {v15}, Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;->onDaemonConnected()V

    .line 164
    const/16 v15, 0x1000

    new-array v3, v15, [B

    .line 165
    .local v3, "buffer":[B
    const/4 v14, 0x0

    .line 168
    .local v14, "start":I
    :goto_36
    rsub-int v15, v14, 0x1000

    invoke-virtual {v9, v3, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 169
    .local v4, "count":I
    if-gez v4, :cond_d5

    .line 170
    const-string v15, "DomainFilterDaemonConnector"

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

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_66
    array-length v15, v3

    if-ge v8, v15, :cond_17e

    const/4 v15, 0x0

    aput-byte v15, v3, v8
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_6c} :catch_72
    .catchall {:try_start_2a .. :try_end_6c} :catchall_163

    add-int/lit8 v8, v8, 0x1

    goto :goto_66

    .line 160
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v14    # "start":I
    :catchall_6f
    move-exception v15

    :try_start_70
    monitor-exit v16
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v15
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_72} :catch_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_163

    .line 218
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    :catch_72
    move-exception v7

    move-object v12, v13

    .line 219
    .end local v13    # "socket":Landroid/net/LocalSocket;
    .local v7, "ex":Ljava/io/IOException;
    .restart local v12    # "socket":Landroid/net/LocalSocket;
    :goto_74
    :try_start_74
    const-string v15, "DomainFilterDaemonConnector"

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

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    throw v7
    :try_end_8f
    .catchall {:try_start_74 .. :try_end_8f} :catchall_8f

    .line 222
    .end local v7    # "ex":Ljava/io/IOException;
    :catchall_8f
    move-exception v15

    :goto_90
    move-object/from16 v0, p0

    iget-object v0, v0, mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 223
    :try_start_97
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_218

    if-eqz v17, :cond_ce

    .line 225
    :try_start_9f
    const-string v17, "DomainFilterDaemonConnector"

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

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_c6} :catch_1fb
    .catchall {:try_start_9f .. :try_end_c6} :catchall_218

    .line 230
    :goto_c6
    const/16 v17, 0x0

    :try_start_c8
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mOutputStream:Ljava/io/OutputStream;

    .line 232
    :cond_ce
    monitor-exit v16
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_218

    .line 235
    if-eqz v12, :cond_d4

    .line 236
    :try_start_d1
    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_21b

    .line 240
    :cond_d4
    :goto_d4
    throw v15

    .line 175
    .end local v12    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v14    # "start":I
    :cond_d5
    add-int/2addr v4, v14

    .line 176
    const/4 v14, 0x0

    .line 178
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_d8
    if-ge v8, v4, :cond_167

    .line 179
    :try_start_da
    aget-byte v15, v3, v8

    if-nez v15, :cond_144

    .line 182
    new-instance v10, Ljava/lang/String;

    sub-int v15, v8, v14

    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    invoke-direct {v10, v3, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 185
    .local v10, "rawEvent":Ljava/lang/String;
    const-string v15, "DomainFilterDaemonConnector"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "rawEvent "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_104} :catch_72
    .catchall {:try_start_da .. :try_end_104} :catchall_163

    .line 187
    :try_start_104
    invoke-static {v10}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    .line 190
    .local v6, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v15, "DomainFilterDaemonConnector"

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

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v17

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_142
    .catch Ljava/lang/IllegalArgumentException; {:try_start_104 .. :try_end_142} :catch_147
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_142} :catch_72
    .catchall {:try_start_104 .. :try_end_142} :catchall_163

    .line 198
    .end local v6    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_142
    add-int/lit8 v14, v8, 0x1

    .line 178
    .end local v10    # "rawEvent":Ljava/lang/String;
    :cond_144
    add-int/lit8 v8, v8, 0x1

    goto :goto_d8

    .line 194
    .restart local v10    # "rawEvent":Ljava/lang/String;
    :catch_147
    move-exception v5

    .line 195
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_148
    const-string v15, "DomainFilterDaemonConnector"

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

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_142

    .line 222
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "i":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "rawEvent":Ljava/lang/String;
    .end local v14    # "start":I
    :catchall_163
    move-exception v15

    move-object v12, v13

    .end local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v12    # "socket":Landroid/net/LocalSocket;
    goto/16 :goto_90

    .line 202
    .end local v12    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v14    # "start":I
    :cond_167
    if-nez v14, :cond_170

    .line 203
    const-string v15, "DomainFilterDaemonConnector"

    const-string v16, "RCV incomplete"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_170
    if-eq v14, v4, :cond_17b

    .line 209
    rsub-int v11, v14, 0x1000

    .line 210
    .local v11, "remaining":I
    const/4 v15, 0x0

    invoke-static {v3, v14, v3, v15, v11}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_178} :catch_72
    .catchall {:try_start_148 .. :try_end_178} :catchall_163

    .line 211
    move v14, v11

    .line 212
    goto/16 :goto_36

    .line 213
    .end local v11    # "remaining":I
    :cond_17b
    const/4 v14, 0x0

    goto/16 :goto_36

    .line 222
    :cond_17e
    move-object/from16 v0, p0

    iget-object v0, v0, mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 223
    :try_start_185
    move-object/from16 v0, p0

    iget-object v15, v0, mOutputStream:Ljava/io/OutputStream;
    :try_end_189
    .catchall {:try_start_185 .. :try_end_189} :catchall_1dc

    if-eqz v15, :cond_1b7

    .line 225
    :try_start_18b
    const-string v15, "DomainFilterDaemonConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "closing stream for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mSocket:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v15, v0, mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_1b2} :catch_1be
    .catchall {:try_start_18b .. :try_end_1b2} :catchall_1dc

    .line 230
    :goto_1b2
    const/4 v15, 0x0

    :try_start_1b3
    move-object/from16 v0, p0

    iput-object v15, v0, mOutputStream:Ljava/io/OutputStream;

    .line 232
    :cond_1b7
    monitor-exit v16
    :try_end_1b8
    .catchall {:try_start_1b3 .. :try_end_1b8} :catchall_1dc

    .line 235
    if-eqz v13, :cond_1bd

    .line 236
    :try_start_1ba
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1bd} :catch_1df

    .line 242
    :cond_1bd
    :goto_1bd
    return-void

    .line 227
    :catch_1be
    move-exception v5

    .line 228
    .local v5, "e":Ljava/io/IOException;
    :try_start_1bf
    const-string v15, "DomainFilterDaemonConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed closing output stream: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b2

    .line 232
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1dc
    move-exception v15

    monitor-exit v16
    :try_end_1de
    .catchall {:try_start_1bf .. :try_end_1de} :catchall_1dc

    throw v15

    .line 238
    :catch_1df
    move-exception v7

    .line 239
    .restart local v7    # "ex":Ljava/io/IOException;
    const-string v15, "DomainFilterDaemonConnector"

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

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1bd

    .line 227
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v8    # "i":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "socket":Landroid/net/LocalSocket;
    .end local v14    # "start":I
    .restart local v12    # "socket":Landroid/net/LocalSocket;
    :catch_1fb
    move-exception v5

    .line 228
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_1fc
    const-string v17, "DomainFilterDaemonConnector"

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

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c6

    .line 232
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_218
    move-exception v15

    monitor-exit v16
    :try_end_21a
    .catchall {:try_start_1fc .. :try_end_21a} :catchall_218

    throw v15

    .line 238
    :catch_21b
    move-exception v7

    .line 239
    .restart local v7    # "ex":Ljava/io/IOException;
    const-string v16, "DomainFilterDaemonConnector"

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

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d4

    .line 218
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_238
    move-exception v7

    goto/16 :goto_74
.end method

.method static makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .param p0, "rawBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_22

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_22
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_30

    .line 105
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Arguments must be separate from command"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_62

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_62
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {p0, v0}, appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_37

    .line 116
    .end local v0    # "arg":Ljava/lang/String;
    :cond_69
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x300

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v1, "rawBuilder":Ljava/lang/StringBuilder;
    invoke-static {v1, p1, p2}, makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "rawCmd":Ljava/lang/String;
    iget-object v4, p0, mDaemonLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_35

    .line 85
    :try_start_13
    iget-object v3, p0, mOutputStream:Ljava/io/OutputStream;

    if-nez v3, :cond_21

    .line 86
    const-string v3, "DomainFilterDaemonConnector"

    const-string v5, "Missing Output stream - cannot write commands!"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_32

    .line 95
    monitor-exit p0

    return-void

    .line 89
    :cond_21
    :try_start_21
    iget-object v3, p0, mOutputStream:Ljava/io/OutputStream;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2c} :catch_2d
    .catchall {:try_start_21 .. :try_end_2c} :catchall_32

    goto :goto_1e

    .line 90
    :catch_2d
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_32
    move-exception v3

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    :try_start_34
    throw v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 78
    .end local v1    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "rawCmd":Ljava/lang/String;
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 246
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, "event":Ljava/lang/String;
    :try_start_5
    iget-object v2, p0, mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 249
    const-string v2, "DomainFilterDaemonConnector"

    const-string v3, "Unhandled event \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_25

    .line 254
    :cond_24
    :goto_24
    return v6

    .line 251
    :catch_25
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DomainFilterDaemonConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error handling \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public run()V
    .registers 5

    .prologue
    .line 64
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, mCallbackHandler:Landroid/os/Handler;

    .line 67
    :goto_9
    :try_start_9
    invoke-direct {p0}, listenToSocket()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_9

    .line 68
    :catch_d
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DomainFilterDaemonConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in NativeDaemonConnector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 71
    iget-object v1, p0, mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    invoke-interface {v1}, Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;->onDaemonDisconnected()V

    goto :goto_9
.end method
