.class public Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "BTConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/BTConnectivity$1;,
        Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;,
        Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;
    }
.end annotation


# static fields
.field private static final MY_UUID_INSECURE:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

.field private mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "0172c870-6e31-11e4-9803-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, MY_UUID_INSECURE:Ljava/util/UUID;

    .line 26
    const-class v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    new-instance v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$1;)V

    iput-object v1, p0, mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    .line 64
    new-instance v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$1;)V

    iput-object v1, p0, mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    .prologue
    .line 19
    iget-object v0, p0, mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    if-eqz v0, :cond_e

    .line 142
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, mBTStateReceiver:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;

    .line 145
    :cond_e
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 98
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 101
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    :try_start_e
    sget-object v1, MY_UUID_INSECURE:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    iput-object v1, p0, mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 102
    iget-object v1, p0, mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 103
    iget-object v1, p0, mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v1, :cond_25

    .line 104
    iget-object v1, p0, mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_25} :catch_26

    .line 109
    :cond_25
    :goto_25
    return v3

    .line 106
    :catch_26
    move-exception v1

    goto :goto_25
.end method

.method public disable()Z
    .registers 3

    .prologue
    .line 93
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, " Current BTConnectivity state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public enable()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 84
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 86
    iput-boolean v0, p0, mEnabledInternal:Z

    .line 89
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 5

    .prologue
    .line 118
    iget-object v1, p0, mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 119
    .local v0, "isEnable":Z
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v0
.end method

.method public sendStartAuth()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, NOT_SUPPORT:[B

    return-object v0
.end method

.method public sendStopAuth()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public sendSync([B)[B
    .registers 4
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendSync"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object p1
.end method

.method public sendSynchronously([B)[B
    .registers 3
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method
