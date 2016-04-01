.class public Lcom/sec/epdg/ipc/EpdgIpcMessageFactory;
.super Ljava/lang/Object;
.source "EpdgIpcMessageFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EpdgIpcMessageFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromByteArray([BI)Lcom/sec/epdg/ipc/EpdgIpcMessage;
    .registers 7
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-static {p0}, readIpcMainCmd([B)I

    move-result v1

    .line 14
    .local v1, "mainCmd":I
    const-string v2, "EpdgIpcMessageFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ipcMainCmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    sparse-switch v1, :sswitch_data_52

    .line 28
    const-string v2, "EpdgIpcMessageFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown IPC command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received. Ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_3f
    return-object v0

    .line 19
    :sswitch_40
    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    .end local v0    # "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>([BI)V

    .line 20
    .restart local v0    # "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    goto :goto_3f

    .line 22
    :sswitch_46
    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    .end local v0    # "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>([BI)V

    .line 23
    .restart local v0    # "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    goto :goto_3f

    .line 25
    :sswitch_4c
    new-instance v0, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;

    .end local v0    # "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgIilIpcMessage;-><init>([BI)V

    .line 26
    .restart local v0    # "ipcMessage":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    goto :goto_3f

    .line 17
    :sswitch_data_52
    .sparse-switch
        0x8 -> :sswitch_40
        0xd -> :sswitch_46
        0x70 -> :sswitch_4c
    .end sparse-switch
.end method

.method private static readIpcMainCmd([B)I
    .registers 10
    .param p0, "data"    # [B

    .prologue
    .line 35
    const/4 v4, -0x1

    .line 36
    .local v4, "mainCmd":I
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 41
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 42
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_3a
    .catchall {:try_start_b .. :try_end_14} :catchall_7f

    move-result v4

    .line 48
    :try_start_15
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    .line 54
    :goto_18
    return v4

    .line 49
    :catch_19
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "EpdgIpcMessageFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while closing stream"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 43
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3a
    move-exception v3

    .line 44
    .local v3, "ex":Ljava/io/IOException;
    :try_start_3b
    const-string v5, "EpdgIpcMessageFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_3b .. :try_end_5a} :catchall_7f

    .line 48
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_18

    .line 49
    :catch_5e
    move-exception v2

    .line 50
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "EpdgIpcMessageFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while closing stream"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 47
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_7f
    move-exception v5

    .line 48
    :try_start_80
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 52
    :goto_83
    throw v5

    .line 49
    :catch_84
    move-exception v2

    .line 50
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "EpdgIpcMessageFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException while closing stream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83
.end method
