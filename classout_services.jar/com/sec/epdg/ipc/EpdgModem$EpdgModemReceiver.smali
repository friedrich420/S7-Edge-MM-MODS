.class Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;
.super Ljava/lang/Object;
.source "EpdgModem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/ipc/EpdgModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgModemReceiver"
.end annotation


# instance fields
.field private buffer:[B

.field private mConnected:I

.field socketName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/ipc/EpdgModem;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/ipc/EpdgModem;Ljava/lang/String;)V
    .registers 5
    .param p2, "socket"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, this$0:Lcom/sec/epdg/ipc/EpdgModem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput v0, p0, mConnected:I

    .line 231
    const-string v0, "[MODEM]"

    const-string v1, "Instantiaing EpdgModemReceiver"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, buffer:[B

    .line 233
    iput-object p2, p0, socketName:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/16 v14, 0x8

    .line 239
    const/4 v7, 0x0

    .line 240
    .local v7, "retryCount":I
    const-string v11, "[MODEM]"

    const-string v12, "Creating EpdgRxHandler"

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v3, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;

    invoke-direct {v3}, Lcom/sec/epdg/ipc/EpdgIPCRxHandler;-><init>()V

    .line 245
    .local v3, "handler":Lcom/sec/epdg/ipc/RilToEpdgInterface;
    :cond_f
    :goto_f
    const/4 v8, 0x0

    .line 249
    .local v8, "s":Landroid/net/LocalSocket;
    :try_start_10
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_af
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_108

    .line 250
    .end local v8    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_15
    new-instance v5, Landroid/net/LocalSocketAddress;

    iget-object v11, p0, socketName:Ljava/lang/String;

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 252
    .local v5, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_21} :catch_1db
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_21} :catch_a5

    .line 288
    const/4 v7, 0x0

    .line 290
    const/4 v6, 0x0

    .line 291
    .local v6, "length":I
    :try_start_23
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, socketName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_43} :catch_a5

    .line 295
    :try_start_43
    const-string/jumbo v11, "epdgd"

    iget-object v12, p0, socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14d

    .line 296
    # setter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/sec/epdg/ipc/EpdgModem;->access$202(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 301
    :cond_51
    :goto_51
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 304
    .local v4, "is":Ljava/io/InputStream;
    :goto_55
    iget-object v11, p0, buffer:[B

    # invokes: Lcom/sec/epdg/ipc/EpdgModem;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v4, v11}, Lcom/sec/epdg/ipc/EpdgModem;->access$400(Ljava/io/InputStream;[B)I
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5a} :catch_15d
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_5a} :catch_16e

    move-result v6

    .line 305
    if-gez v6, :cond_167

    .line 318
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_5d
    :try_start_5d
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disconnected from \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, socketName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_7d} :catch_a5

    .line 322
    :try_start_7d
    const-string/jumbo v11, "epdgd"

    iget-object v12, p0, socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_197

    .line 323
    # getter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket:Landroid/net/LocalSocket;
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->access$200()Landroid/net/LocalSocket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V

    .line 327
    :cond_8f
    :goto_8f
    if-eqz v9, :cond_94

    .line 328
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_94} :catch_1ab
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_94} :catch_a5

    .line 335
    :cond_94
    :goto_94
    :try_start_94
    const-string/jumbo v11, "epdgd"

    iget-object v12, p0, socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ca

    .line 336
    const/4 v11, 0x0

    # setter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/sec/epdg/ipc/EpdgModem;->access$202(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_a3} :catch_a5

    goto/16 :goto_f

    .line 342
    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    :catch_a5
    move-exception v10

    move-object v8, v9

    .line 343
    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    .local v10, "tr":Ljava/lang/Throwable;
    :goto_a7
    const-string v11, "[MODEM]"

    const-string v12, "Uncaught exception "

    invoke-static {v11, v12, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    return-void

    .line 253
    .end local v10    # "tr":Ljava/lang/Throwable;
    :catch_af
    move-exception v1

    .line 255
    .local v1, "ex":Ljava/io/IOException;
    :goto_b0
    if-eqz v8, :cond_b5

    .line 256
    :try_start_b2
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_ea
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b5} :catch_108

    .line 267
    :cond_b5
    :goto_b5
    if-ne v7, v14, :cond_10a

    .line 268
    :try_start_b7
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, socketName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " times, continuing to retry silently"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_e1} :catch_108

    .line 279
    :cond_e1
    :goto_e1
    const-wide/16 v12, 0xfa0

    :try_start_e3
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e6
    .catch Ljava/lang/InterruptedException; {:try_start_e3 .. :try_end_e6} :catch_12f
    .catch Ljava/lang/Throwable; {:try_start_e3 .. :try_end_e6} :catch_108

    .line 284
    :goto_e6
    add-int/lit8 v7, v7, 0x1

    .line 285
    goto/16 :goto_f

    .line 258
    :catch_ea
    move-exception v2

    .line 260
    .local v2, "ex2":Ljava/io/IOException;
    :try_start_eb
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException when closing the socket. Ignoring!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b5

    .line 342
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex2":Ljava/io/IOException;
    :catch_108
    move-exception v10

    goto :goto_a7

    .line 272
    .restart local v1    # "ex":Ljava/io/IOException;
    :cond_10a
    if-lez v7, :cond_e1

    if-ge v7, v14, :cond_e1

    .line 273
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, socketName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket; retrying after timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e1

    .line 280
    :catch_12f
    move-exception v0

    .line 281
    .local v0, "er":Ljava/lang/InterruptedException;
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InterruptedException:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_14c} :catch_108

    goto :goto_e6

    .line 297
    .end local v0    # "er":Ljava/lang/InterruptedException;
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v5    # "l":Landroid/net/LocalSocketAddress;
    .restart local v6    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_14d
    :try_start_14d
    const-string/jumbo v11, "epdgd2"

    iget-object v12, p0, socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 298
    # setter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket2:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/sec/epdg/ipc/EpdgModem;->access$102(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_15b} :catch_15d
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_15b} :catch_16e

    goto/16 :goto_51

    .line 311
    :catch_15d
    move-exception v1

    .line 312
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_15e
    const-string v11, "[MODEM]"

    const-string v12, "\'epdgd\' socket closed, "

    invoke-static {v11, v12, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_165
    .catch Ljava/lang/Throwable; {:try_start_15e .. :try_end_165} :catch_a5

    goto/16 :goto_5d

    .line 309
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_167
    :try_start_167
    iget-object v11, p0, buffer:[B

    invoke-interface {v3, v11, v6}, Lcom/sec/epdg/ipc/RilToEpdgInterface;->receive([BI)V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16c} :catch_15d
    .catch Ljava/lang/Throwable; {:try_start_167 .. :try_end_16c} :catch_16e

    goto/16 :goto_55

    .line 313
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_16e
    move-exception v10

    .line 314
    .restart local v10    # "tr":Ljava/lang/Throwable;
    :try_start_16f
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_195
    .catch Ljava/lang/Throwable; {:try_start_16f .. :try_end_195} :catch_a5

    goto/16 :goto_5d

    .line 324
    .end local v10    # "tr":Ljava/lang/Throwable;
    :cond_197
    :try_start_197
    const-string/jumbo v11, "epdgd2"

    iget-object v12, p0, socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 325
    # getter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket2:Landroid/net/LocalSocket;
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->access$100()Landroid/net/LocalSocket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_1a9} :catch_1ab
    .catch Ljava/lang/Throwable; {:try_start_197 .. :try_end_1a9} :catch_a5

    goto/16 :goto_8f

    .line 330
    :catch_1ab
    move-exception v1

    .line 331
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_1ac
    const-string v11, "[MODEM]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException when closing the socket. Ignoring!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_94

    .line 338
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1ca
    const-string/jumbo v11, "epdgd2"

    iget-object v12, p0, socketName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 339
    const/4 v11, 0x0

    # setter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket2:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/sec/epdg/ipc/EpdgModem;->access$102(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    :try_end_1d9
    .catch Ljava/lang/Throwable; {:try_start_1ac .. :try_end_1d9} :catch_a5

    goto/16 :goto_f

    .line 253
    .end local v5    # "l":Landroid/net/LocalSocketAddress;
    .end local v6    # "length":I
    :catch_1db
    move-exception v1

    move-object v8, v9

    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_b0
.end method
