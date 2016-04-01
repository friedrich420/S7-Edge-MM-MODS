.class final Lcom/android/server/midi/MidiService$Device;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Device"
.end annotation


# instance fields
.field private final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDeviceConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/midi/MidiService$DeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

.field private mServer:Landroid/media/midi/IMidiDeviceServer;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 303
    iput-object p1, p0, this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeviceConnections:Ljava/util/ArrayList;

    .line 304
    iput-object p2, p0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 306
    # getter for: Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I
    invoke-static {p1}, Lcom/android/server/midi/MidiService;->access$300(Lcom/android/server/midi/MidiService;)I

    move-result v0

    iput v0, p0, mUid:I

    .line 307
    return-void
.end method

.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V
    .registers 8
    .param p2, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p3, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p4, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p5, "uid"    # I

    .prologue
    .line 294
    iput-object p1, p0, this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeviceConnections:Ljava/util/ArrayList;

    .line 295
    iput-object p3, p0, mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 296
    iput-object p4, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 297
    iput p5, p0, mUid:I

    .line 298
    invoke-virtual {p3}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bluetooth_device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 300
    invoke-direct {p0, p2}, setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 301
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 274
    iget-object v0, p0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService$Device;
    .param p1, "x1"    # Landroid/media/midi/IMidiDeviceServer;

    .prologue
    .line 274
    invoke-direct {p0, p1}, setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService$Device;
    .param p1, "x1"    # Landroid/content/ServiceConnection;

    .prologue
    .line 274
    iput-object p1, p0, mServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method private setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 8
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    .prologue
    const/4 v5, 0x0

    .line 310
    if-eqz p1, :cond_4b

    .line 311
    iget-object v4, p0, mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v4, :cond_10

    .line 312
    const-string v4, "MidiService"

    const-string/jumbo v5, "mServer already set in setDeviceServer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_f
    :goto_f
    return-void

    .line 315
    :cond_10
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 317
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_14
    iget-object v4, p0, mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    if-nez v4, :cond_1e

    .line 318
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    iput-object v4, p0, mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 320
    :cond_1e
    const/4 v4, 0x0

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 321
    iput-object p1, p0, mServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_24} :catch_47

    .line 326
    iget-object v4, p0, this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/midi/MidiService;->access$400(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2d
    :goto_2d
    iget-object v4, p0, mDeviceConnections:Ljava/util/ArrayList;

    if-eqz v4, :cond_f

    .line 343
    iget-object v4, p0, mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 344
    .local v1, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v1, p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    goto :goto_37

    .line 322
    .end local v1    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v0    # "binder":Landroid/os/IBinder;
    :catch_47
    move-exception v2

    .line 323
    .local v2, "e":Landroid/os/RemoteException;
    iput-object v5, p0, mServer:Landroid/media/midi/IMidiDeviceServer;

    goto :goto_f

    .line 327
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4b
    iget-object v4, p0, mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v4, :cond_2d

    .line 328
    iget-object p1, p0, mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 329
    iput-object v5, p0, mServer:Landroid/media/midi/IMidiDeviceServer;

    .line 331
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 332
    .restart local v0    # "binder":Landroid/os/IBinder;
    iget-object v4, p0, this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/midi/MidiService;->access$400(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :try_start_60
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->closeDevice()V

    .line 336
    const/4 v4, 0x0

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_67} :catch_68

    goto :goto_2d

    .line 337
    :catch_68
    move-exception v4

    goto :goto_2d
.end method


# virtual methods
.method public addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .registers 7
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    .prologue
    .line 387
    iget-object v2, p0, mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v2

    .line 388
    :try_start_3
    iget-object v1, p0, mServer:Landroid/media/midi/IMidiDeviceServer;

    if-eqz v1, :cond_13

    .line 389
    iget-object v1, p0, mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v1, p0, mServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-virtual {p1, v1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V

    .line 444
    :cond_11
    :goto_11
    monitor-exit v2

    .line 445
    return-void

    .line 391
    :cond_13
    iget-object v1, p0, mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_8c

    iget-object v1, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1f

    iget-object v1, p0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_8c

    .line 393
    :cond_1f
    iget-object v1, p0, mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Lcom/android/server/midi/MidiService$Device$1;

    invoke-direct {v1, p0}, Lcom/android/server/midi/MidiService$Device$1;-><init>(Lcom/android/server/midi/MidiService$Device;)V

    iput-object v1, p0, mServiceConnection:Landroid/content/ServiceConnection;

    .line 423
    iget-object v1, p0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_74

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.midi.BluetoothMidiService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.bluetoothmidiservice"

    const-string v4, "com.android.bluetoothmidiservice.BluetoothMidiService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 434
    :goto_42
    iget-object v1, p0, this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/midi/MidiService;->access$800(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 436
    const-string v1, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v1, 0x0

    invoke-direct {p0, v1}, setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 438
    const/4 v1, 0x0

    iput-object v1, p0, mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_11

    .line 444
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_71
    move-exception v1

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw v1

    .line 429
    :cond_74
    :try_start_74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.midi.MidiDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_42

    .line 441
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8c
    const-string v1, "MidiService"

    const-string v3, "No way to connect to device in addDeviceConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/midi/MidiService$DeviceConnection;->notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_97
    .catchall {:try_start_74 .. :try_end_97} :catchall_71

    goto/16 :goto_11
.end method

.method public binderDied()V
    .registers 4

    .prologue
    .line 491
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->access$900(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 493
    :try_start_1f
    invoke-virtual {p0}, closeLocked()V

    .line 494
    monitor-exit v1

    .line 495
    return-void

    .line 494
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v0
.end method

.method public closeLocked()V
    .registers 5

    .prologue
    .line 468
    iget-object v3, p0, mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v3

    .line 469
    :try_start_3
    iget-object v2, p0, mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 470
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getClient()Lcom/android/server/midi/MidiService$Client;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    goto :goto_9

    .line 473
    .end local v0    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2

    .line 472
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_20
    :try_start_20
    iget-object v2, p0, mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 473
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    .line 474
    const/4 v2, 0x0

    invoke-direct {p0, v2}, setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 478
    iget-object v2, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_43

    .line 479
    iget-object v2, p0, this$0:Lcom/android/server/midi/MidiService;

    # invokes: Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    invoke-static {v2, p0}, Lcom/android/server/midi/MidiService;->access$1000(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V

    .line 484
    :goto_33
    iget-object v2, p0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_42

    .line 485
    iget-object v2, p0, this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/midi/MidiService;->access$1100(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_42
    return-void

    .line 481
    :cond_43
    new-instance v2, Landroid/media/midi/MidiDeviceStatus;

    iget-object v3, p0, mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-direct {v2, v3}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;)V

    iput-object v2, p0, mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    goto :goto_33
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, mServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_5
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 379
    iget v0, p0, mUid:I

    return v0
.end method

.method public isUidAllowed(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 383
    iget-object v0, p0, mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, mUid:I

    if-ne v0, p1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .registers 5
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    .prologue
    .line 448
    iget-object v1, p0, mDeviceConnections:Ljava/util/ArrayList;

    monitor-enter v1

    .line 449
    :try_start_3
    iget-object v0, p0, mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_31

    .line 452
    iget-object v0, p0, this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->access$800(Lcom/android/server/midi/MidiService;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, mServiceConnection:Landroid/content/ServiceConnection;

    .line 454
    iget-object v0, p0, mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_39

    .line 456
    iget-object v0, p0, this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/midi/MidiService;->access$900(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_36

    .line 457
    :try_start_2d
    invoke-virtual {p0}, closeLocked()V

    .line 458
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_33

    .line 463
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_36

    .line 464
    return-void

    .line 458
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v0

    .line 463
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_36

    throw v0

    .line 460
    :cond_39
    const/4 v0, 0x0

    :try_start_3a
    invoke-direct {p0, v0}, setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_36

    goto :goto_31
.end method

.method public setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 355
    iput-object p1, p0, mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 356
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 2
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 363
    iput-object p1, p0, mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    .line 364
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device Info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, mDeviceStatus:Landroid/media/midi/MidiDeviceStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    const-string v1, " UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget v1, p0, mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    const-string v1, " DeviceConnection count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object v1, p0, mDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, " mServiceConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-object v1, p0, mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
