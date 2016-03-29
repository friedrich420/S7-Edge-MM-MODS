.class public final Lcom/android/settingslib/bluetooth/BleAudioProfile;
.super Ljava/lang/Object;
.source "BleAudioProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BleAudioProfile$1;,
        Lcom/android/settingslib/bluetooth/BleAudioProfile$BleAudioServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 99
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 100
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 101
    new-instance v0, Lcom/android/settingslib/bluetooth/BleAudioProfile$BleAudioServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/bluetooth/BleAudioProfile$BleAudioServiceListener;-><init>(Lcom/android/settingslib/bluetooth/BleAudioProfile;Lcom/android/settingslib/bluetooth/BleAudioProfile$1;)V

    invoke-static {p1, v0}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z

    .line 102
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/BleAudioProfile;)Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BleAudioProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/BleAudioProfile;Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;)Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BleAudioProfile;
    .param p1, "x1"    # Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/BleAudioProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BleAudioProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/BleAudioProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BleAudioProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/BleAudioProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BleAudioProfile;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settingslib/bluetooth/BleAudioProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BleAudioProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 113
    const-string v3, "BleAudioProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect :: device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    if-nez v3, :cond_0

    .line 144
    :goto_0
    return v2

    .line 115
    :cond_0
    const-string v3, "BleAudioProfile"

    const-string v4, "connect :: mService is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/BleAudioProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    const-string v3, "BleAudioProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect :: Can\'t process connect, device("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is connecting already"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 124
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v1

    .line 126
    .local v1, "mManufacturerData":[B
    if-eqz v1, :cond_2

    .line 127
    const/16 v3, 0xa

    aget-byte v3, v1, v3

    packed-switch v3, :pswitch_data_0

    .line 135
    const-string v3, "BleAudioProfile"

    const-string v4, "connect :: Can\'t connect with SLD device, Not has channel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :pswitch_0
    const-string v3, "BleAudioProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect :: Try to connect with SLD device, using Channel left. Encryption="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getEncryption()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    sget v4, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->BLE_AUDIO_CHANNEL_LEFT:I

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getEncryption()Z

    move-result v5

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->connect(Landroid/bluetooth/BluetoothDevice;IZZ)Z

    move-result v2

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v3, "BleAudioProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect :: Try to connect with SLD device, using Channel right. Encryption="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getEncryption()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    sget v4, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->BLE_AUDIO_CHANNEL_RIGHT:I

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getEncryption()Z

    move-result v5

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->connect(Landroid/bluetooth/BluetoothDevice;IZZ)Z

    move-result v2

    goto/16 :goto_0

    .line 139
    :cond_2
    const-string v3, "BleAudioProfile"

    const-string v4, "connect :: Can\'t try connect to BleAudioProfile, mManufacturerData is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v1    # "mManufacturerData":[B
    :cond_3
    const-string v3, "BleAudioProfile"

    const-string v4, "connect :: Can\'t try connect to BleAudioProfile, cachedDevice is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    if-nez v0, :cond_0

    .line 151
    const-string v0, "BleAudioProfile"

    const-string v1, "disconnect :: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 154
    :cond_0
    const-string v0, "BleAudioProfile"

    const-string v1, "disconnect :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 182
    const/16 v0, 0x12c

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "BLEAUDIO"

    return-object v0
.end method
