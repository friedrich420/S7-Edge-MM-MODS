.class public Lcom/sec/epdg/ipc/EpdgModem;
.super Ljava/lang/Object;
.source "EpdgModem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;,
        Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;
    }
.end annotation


# static fields
.field private static final EVENT_SEND:I = 0x1

.field private static final RESPONSE_SOLICITED:I = 0x0

.field private static final RESPONSE_UNSOLICITED:I = 0x1

.field private static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field private static final SOCKET_NAME_EPDG:Ljava/lang/String; = "epdgd"

.field private static final SOCKET_NAME_EPDG2:Ljava/lang/String; = "epdgd2"

.field private static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final SOCKET_PORT:I = 0x1d2c

.field private static final TAG:Ljava/lang/String; = "[MODEM]"

.field private static mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

.field private static mSocket:Landroid/net/LocalSocket;

.field private static mSocket2:Landroid/net/LocalSocket;


# instance fields
.field private ipcMessage:Lcom/sec/epdg/ipc/EpdgIpcMessage;

.field private mReceiver:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;

.field private mReceiver2:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;

.field private mReceiverThread:Ljava/lang/Thread;

.field private mReceiverThread2:Ljava/lang/Thread;

.field private mRequestMessagesPending:I

.field private mRequestMessagesWaiting:I

.field private mSender:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

.field private mSenderThread:Landroid/os/HandlerThread;

.field private mSupportVowifiDs:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v3, p0, mSupportVowifiDs:Z

    .line 64
    const-string v1, "[MODEM]"

    const-string v2, "Instantiaing EpdgModem"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/sec/epdg/ipc/EpdgIpcMessage;

    invoke-direct {v1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>()V

    iput-object v1, p0, ipcMessage:Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .line 66
    iput v3, p0, mRequestMessagesPending:I

    .line 68
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 69
    iput-boolean v4, p0, mSupportVowifiDs:Z

    .line 72
    :cond_23
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EpdgModemSender"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mSenderThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v1, p0, mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 75
    iget-object v1, p0, mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 76
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

    invoke-direct {v1, p0, v0}, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;-><init>(Lcom/sec/epdg/ipc/EpdgModem;Landroid/os/Looper;)V

    iput-object v1, p0, mSender:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

    .line 78
    new-instance v1, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;

    const-string/jumbo v2, "epdgd"

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;-><init>(Lcom/sec/epdg/ipc/EpdgModem;Ljava/lang/String;)V

    iput-object v1, p0, mReceiver:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;

    .line 79
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, mReceiver:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;

    const-string v3, "EpdgModemReceiver"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, mReceiverThread:Ljava/lang/Thread;

    .line 80
    iget-object v1, p0, mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 81
    iget-boolean v1, p0, mSupportVowifiDs:Z

    if-ne v1, v4, :cond_76

    .line 82
    new-instance v1, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;

    const-string/jumbo v2, "epdgd2"

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;-><init>(Lcom/sec/epdg/ipc/EpdgModem;Ljava/lang/String;)V

    iput-object v1, p0, mReceiver2:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;

    .line 83
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, mReceiver2:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemReceiver;

    const-string v3, "EpdgModemReceiver2"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, mReceiverThread2:Ljava/lang/Thread;

    .line 84
    iget-object v1, p0, mReceiverThread2:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 86
    :cond_76
    const-string v1, "[MODEM]"

    const-string v2, "Exiting EpdgModem"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/ipc/EpdgModem;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/ipc/EpdgModem;

    .prologue
    .line 26
    iget-boolean v0, p0, mSupportVowifiDs:Z

    return v0
.end method

.method static synthetic access$100()Landroid/net/LocalSocket;
    .registers 1

    .prologue
    .line 26
    sget-object v0, mSocket2:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .registers 1
    .param p0, "x0"    # Landroid/net/LocalSocket;

    .prologue
    .line 26
    sput-object p0, mSocket2:Landroid/net/LocalSocket;

    return-object p0
.end method

.method static synthetic access$200()Landroid/net/LocalSocket;
    .registers 1

    .prologue
    .line 26
    sget-object v0, mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .registers 1
    .param p0, "x0"    # Landroid/net/LocalSocket;

    .prologue
    .line 26
    sput-object p0, mSocket:Landroid/net/LocalSocket;

    return-object p0
.end method

.method static synthetic access$310(Lcom/sec/epdg/ipc/EpdgModem;)I
    .registers 3
    .param p0, "x0"    # Lcom/sec/epdg/ipc/EpdgModem;

    .prologue
    .line 26
    iget v0, p0, mRequestMessagesPending:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, mRequestMessagesPending:I

    return v0
.end method

.method static synthetic access$400(Ljava/io/InputStream;[B)I
    .registers 3
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1}, readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/sec/epdg/ipc/EpdgModem;
    .registers 2

    .prologue
    .line 90
    sget-object v0, mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    if-nez v0, :cond_15

    .line 91
    const-string v0, "[MODEM]"

    const-string v1, "Creating EpdgModem Instance"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/sec/epdg/ipc/EpdgModem;

    invoke-direct {v0}, <init>()V

    sput-object v0, mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    .line 93
    sget-object v0, mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    .line 96
    :goto_14
    return-object v0

    .line 95
    :cond_15
    const-string v0, "[MODEM]"

    const-string v1, "EpdgModem instance already exists !"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, mEpdgModemInstance:Lcom/sec/epdg/ipc/EpdgModem;

    goto :goto_14
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .registers 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 175
    const/4 v6, 0x0

    .line 176
    .local v6, "offset":I
    const/4 v7, 0x2

    .line 179
    .local v7, "remaining":I
    :cond_3
    invoke-virtual {p0, p1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 181
    .local v1, "countRead":I
    if-gez v1, :cond_12

    .line 182
    const-string v9, "[MODEM]"

    const-string v10, "Hit EOS reading message length"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 222
    :goto_11
    return v5

    .line 186
    :cond_12
    add-int/2addr v6, v1

    .line 187
    sub-int/2addr v7, v1

    .line 188
    if-gtz v7, :cond_3

    .line 191
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 192
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 194
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    and-int/lit16 v4, v9, 0xff

    .line 195
    .local v4, "lower":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    and-int/lit16 v3, v9, 0xff

    .line 197
    .local v3, "higher":I
    if-nez v3, :cond_75

    .line 198
    move v5, v4

    .line 203
    .local v5, "messageLength":I
    :goto_2f
    const-string v9, "[MODEM]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "message length is  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v6, 0x0

    .line 205
    add-int/lit8 v7, v5, -0x2

    .line 208
    :cond_4b
    invoke-virtual {p0, p1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 210
    if-gez v1, :cond_7e

    .line 211
    const-string v9, "[MODEM]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Hit EOS reading message.  messageLength="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " remaining="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 213
    goto :goto_11

    .line 200
    .end local v5    # "messageLength":I
    :cond_75
    shl-int/lit8 v9, v3, 0x8

    add-int/2addr v9, v4

    const v10, 0xffff

    and-int v5, v9, v10

    .restart local v5    # "messageLength":I
    goto :goto_2f

    .line 216
    :cond_7e
    add-int/2addr v6, v1

    .line 217
    sub-int/2addr v7, v1

    .line 218
    const-string v9, "[MODEM]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "countRead is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " offset is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "remaining is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-gtz v7, :cond_4b

    goto/16 :goto_11
.end method

.method private send([B)V
    .registers 5
    .param p1, "rr"    # [B

    .prologue
    .line 165
    iget-object v1, p0, mSender:Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    return-void
.end method


# virtual methods
.method public isSocketActive()Z
    .registers 2

    .prologue
    .line 156
    sget-object v0, mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_6

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public sendPacket([B)V
    .registers 2
    .param p1, "packet"    # [B

    .prologue
    .line 353
    invoke-direct {p0, p1}, send([B)V

    .line 354
    return-void
.end method
