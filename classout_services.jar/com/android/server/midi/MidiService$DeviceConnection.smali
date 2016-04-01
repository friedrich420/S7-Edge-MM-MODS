.class final Lcom/android/server/midi/MidiService$DeviceConnection;
.super Ljava/lang/Object;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceConnection"
.end annotation


# instance fields
.field private mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

.field private final mClient:Lcom/android/server/midi/MidiService$Client;

.field private final mDevice:Lcom/android/server/midi/MidiService$Device;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 6
    .param p2, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p3, "client"    # Lcom/android/server/midi/MidiService$Client;
    .param p4, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    .line 520
    iput-object p1, p0, this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    .line 521
    iput-object p2, p0, mDevice:Lcom/android/server/midi/MidiService$Device;

    .line 522
    iput-object p3, p0, mClient:Lcom/android/server/midi/MidiService$Client;

    .line 523
    iput-object p4, p0, mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 524
    return-void
.end method


# virtual methods
.method public getClient()Lcom/android/server/midi/MidiService$Client;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, mClient:Lcom/android/server/midi/MidiService$Client;

    return-object v0
.end method

.method public getDevice()Lcom/android/server/midi/MidiService$Device;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, mDevice:Lcom/android/server/midi/MidiService$Device;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 5
    .param p1, "deviceServer"    # Landroid/media/midi/IMidiDeviceServer;

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    if-eqz v0, :cond_f

    .line 541
    :try_start_5
    iget-object v2, p0, mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    if-nez p1, :cond_10

    move-object v0, v1

    :goto_a
    invoke-interface {v2, p1, v0}, Landroid/media/midi/IMidiDeviceOpenCallback;->onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_13

    .line 545
    :goto_d
    iput-object v1, p0, mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 547
    :cond_f
    return-void

    .line 541
    :cond_10
    :try_start_10
    iget-object v0, p0, mToken:Landroid/os/IBinder;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_12} :catch_13

    goto :goto_a

    .line 542
    :catch_13
    move-exception v0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConnection Device ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mDevice:Lcom/android/server/midi/MidiService$Device;

    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
