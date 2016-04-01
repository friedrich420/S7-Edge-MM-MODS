.class Lcom/android/server/midi/MidiService$Device$1;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/midi/MidiService$Device;->addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/midi/MidiService$Device;


# direct methods
.method constructor <init>(Lcom/android/server/midi/MidiService$Device;)V
    .registers 2

    .prologue
    .line 395
    iput-object p1, p0, this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 398
    const/4 v3, 0x0

    .line 399
    .local v3, "server":Landroid/media/midi/IMidiDeviceServer;
    iget-object v4, p0, this$1:Lcom/android/server/midi/MidiService$Device;

    # getter for: Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/server/midi/MidiService$Device;->access$500(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 400
    invoke-static {p2}, Landroid/media/midi/IBluetoothMidiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IBluetoothMidiService;

    move-result-object v2

    .line 404
    .local v2, "mBluetoothMidiService":Landroid/media/midi/IBluetoothMidiService;
    :try_start_d
    iget-object v4, p0, this$1:Lcom/android/server/midi/MidiService$Device;

    # getter for: Lcom/android/server/midi/MidiService$Device;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/server/midi/MidiService$Device;->access$500(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/media/midi/IBluetoothMidiService;->addBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/os/IBinder;

    move-result-object v0

    .line 405
    .local v0, "deviceBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_21

    move-result-object v3

    .line 412
    .end local v0    # "deviceBinder":Landroid/os/IBinder;
    .end local v2    # "mBluetoothMidiService":Landroid/media/midi/IBluetoothMidiService;
    :goto_1b
    iget-object v4, p0, this$1:Lcom/android/server/midi/MidiService$Device;

    # invokes: Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    invoke-static {v4, v3}, Lcom/android/server/midi/MidiService$Device;->access$600(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    .line 413
    return-void

    .line 406
    .restart local v2    # "mBluetoothMidiService":Landroid/media/midi/IBluetoothMidiService;
    :catch_21
    move-exception v1

    .line 407
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MidiService"

    const-string v5, "Could not call addBluetoothDevice()"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 410
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "mBluetoothMidiService":Landroid/media/midi/IBluetoothMidiService;
    :cond_2a
    invoke-static {p2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v3

    goto :goto_1b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, this$1:Lcom/android/server/midi/MidiService$Device;

    # invokes: Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    invoke-static {v0, v1}, Lcom/android/server/midi/MidiService$Device;->access$600(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    .line 418
    iget-object v0, p0, this$1:Lcom/android/server/midi/MidiService$Device;

    # setter for: Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/android/server/midi/MidiService$Device;->access$702(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 419
    return-void
.end method
