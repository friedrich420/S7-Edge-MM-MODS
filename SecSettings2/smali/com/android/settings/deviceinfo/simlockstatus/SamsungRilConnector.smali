.class public Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
.super Ljava/lang/Object;
.source "SamsungRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;,
        Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;


# instance fields
.field private mBytesBuffer:[B

.field private mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field private mIsConnected:Z

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;",
            ">;"
        }
    .end annotation
.end field

.field public mMessageHandler:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

.field private mOperationName:Ljava/lang/String;

.field private mRilServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mServiceReplyMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    .line 69
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$1;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    .line 132
    sget-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "new()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RilHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 134
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    .line 136
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    .line 137
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mBytesBuffer:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    .param p1, "x1"    # [B

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mBytesBuffer:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    sget-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    .line 95
    :cond_0
    sget-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->setContext(Landroid/content/Context;)V

    .line 96
    sget-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    return-object v0
.end method

.method public static getSimLockStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeRilService([BLandroid/os/Message;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 222
    sget-object v2, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "invoke ril service"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 224
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "request"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 228
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v2, :cond_0

    .line 229
    sget-object v2, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "RIL service is not connected"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 235
    sget-object v2, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v3, "message sent to ril service"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseOperationName([B)Ljava/lang/String;
    .locals 10
    .param p0, "bytesBuffer"    # [B

    .prologue
    const/4 v9, 0x1

    .line 302
    const/16 v7, 0x33

    aget-byte v7, p0, v7

    and-int/lit16 v1, v7, 0xff

    .line 303
    .local v1, "offset_a":I
    add-int/lit8 v7, v1, 0x4b

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v2, v7, 0xff

    .line 304
    .local v2, "offset_b":I
    const/4 v3, 0x0

    .line 305
    .local v3, "op_length":I
    add-int/lit8 v7, v1, 0x4c

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    or-int/2addr v3, v7

    .line 306
    add-int/lit8 v7, v1, 0x4c

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    .line 308
    new-array v4, v3, [B

    .line 309
    .local v4, "op_name_temp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 310
    add-int/lit8 v7, v1, 0x4e

    add-int/2addr v7, v2

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p0, v7

    aput-byte v7, v4, v0

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    const-string v8, "OP_NAME"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v9

    .line 313
    .local v5, "op_name_temp1":Ljava/lang/String;
    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v9

    .line 314
    .local v6, "op_name_temp2":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v7
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    .prologue
    .line 108
    sget-object v1, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v2, "connect() => connect to the RIL service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v2, "already connected"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 116
    sget-object v1, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v2, "Context is null. ignore"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 123
    sget-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect() => mIsConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    goto :goto_0
.end method

.method public getBlob()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 140
    sget-object v4, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v5, "getBlob()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v4, :cond_0

    .line 142
    sget-object v4, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v5, "not connected to RIL yet"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v0, "byteOutStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v1, "dataOutStream":Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 151
    .local v3, "fileSize":I
    const/16 v4, 0x23

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 152
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 153
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 155
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->invokeRilService([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    new-array v4, v9, [Ljava/io/Closeable;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    new-array v4, v9, [Ljava/io/Closeable;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    new-array v5, v9, [Ljava/io/Closeable;

    aput-object v1, v5, v7

    aput-object v0, v5, v8

    invoke-static {v5}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    throw v4
.end method

.method public getOperationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object v0
.end method

.method public setBlob([B)V
    .locals 10
    .param p1, "blob"    # [B

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 166
    sget-object v4, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v5, "setBlob()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v4, :cond_0

    .line 168
    sget-object v4, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v5, "not connected to RIL yet"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return-void

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    if-gtz v4, :cond_2

    .line 173
    :cond_1
    sget-object v4, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v5, "ignore invalid blob"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v0, "byteOutStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    .local v1, "dataOutStream":Ljava/io/DataOutputStream;
    array-length v4, p1

    add-int/lit8 v3, v4, 0x7

    .line 181
    .local v3, "messageLength":I
    const/16 v4, 0x23

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 182
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 183
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 184
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 185
    array-length v4, p1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 186
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 187
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->invokeRilService([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    new-array v4, v8, [Ljava/io/Closeable;

    aput-object v1, v4, v9

    aput-object v0, v4, v7

    invoke-static {v4}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    new-array v4, v8, [Ljava/io/Closeable;

    aput-object v1, v4, v9

    aput-object v0, v4, v7

    invoke-static {v4}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v1, v5, v9

    aput-object v0, v5, v7

    invoke-static {v5}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    throw v4
.end method

.method public setOnRilJobListener(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method
