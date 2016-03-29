.class final Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/HidProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/HidProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/HidProfile;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/HidProfile;Lcom/android/settingslib/bluetooth/HidProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/bluetooth/HidProfile;
    .param p2, "x1"    # Lcom/android/settingslib/bluetooth/HidProfile$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HidProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 8
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 56
    # getter for: Lcom/android/settingslib/bluetooth/HidProfile;->V:Z
    invoke-static {}, Lcom/android/settingslib/bluetooth/HidProfile;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "HidProfile"

    const-string v6, "Bluetooth service connected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v5, p2}, Lcom/android/settingslib/bluetooth/HidProfile;->access$102(Lcom/android/settingslib/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 59
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    # getter for: Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v5}, Lcom/android/settingslib/bluetooth/HidProfile;->access$100(Lcom/android/settingslib/bluetooth/HidProfile;)Landroid/bluetooth/BluetoothInputDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 60
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 62
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    # getter for: Lcom/android/settingslib/bluetooth/HidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settingslib/bluetooth/HidProfile;->access$200(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 64
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    # getter for: Lcom/android/settingslib/bluetooth/HidProfile;->V:Z
    invoke-static {}, Lcom/android/settingslib/bluetooth/HidProfile;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "HidProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bluetooth device is connected. bd_addr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    if-nez v0, :cond_2

    .line 66
    const-string v5, "HidProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HidProfile found new device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    # getter for: Lcom/android/settingslib/bluetooth/HidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settingslib/bluetooth/HidProfile;->access$200(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    # getter for: Lcom/android/settingslib/bluetooth/HidProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v6}, Lcom/android/settingslib/bluetooth/HidProfile;->access$300(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    # getter for: Lcom/android/settingslib/bluetooth/HidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v7}, Lcom/android/settingslib/bluetooth/HidProfile;->access$400(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 69
    :cond_2
    if-eqz v0, :cond_3

    .line 72
    :try_start_0
    const-string v5, "HidProfile"

    const-string v6, "update bt hid device ui state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 75
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v5, "HidProfile"

    const-string v6, "Handle NullPointerException!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_3
    const-string v5, "HidProfile"

    const-string v6, "Bluetooth device is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 84
    .end local v0    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/settingslib/bluetooth/HidProfile;->mIsProfileReady:Z
    invoke-static {v5, v6}, Lcom/android/settingslib/bluetooth/HidProfile;->access$502(Lcom/android/settingslib/bluetooth/HidProfile;Z)Z

    .line 85
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 88
    # getter for: Lcom/android/settingslib/bluetooth/HidProfile;->V:Z
    invoke-static {}, Lcom/android/settingslib/bluetooth/HidProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HidProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settingslib/bluetooth/HidProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/HidProfile;->access$502(Lcom/android/settingslib/bluetooth/HidProfile;Z)Z

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/HidProfile;->access$102(Lcom/android/settingslib/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 91
    return-void
.end method
