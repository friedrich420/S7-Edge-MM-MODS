.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v12, -0x80000000

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 47
    const-string v9, "BluetoothPairingRequest"

    const-string v10, "onReceive :: Intent.getAction() is return null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v9, "BluetoothPairingRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive :: getAction = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v9, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 55
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 56
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v9, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 58
    .local v8, "type":I
    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_3

    .line 59
    :cond_2
    const-string v9, "BluetoothPairingRequest"

    const-string v10, "onReceive :: mDevice is null or mDevice bonded already."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    .line 64
    .local v4, "mBluetoothManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-nez v4, :cond_4

    .line 65
    const-string v9, "BluetoothPairingRequest"

    const-string v10, "onReceive :: mBluetoothManager is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    .line 70
    .local v3, "mBluetoothAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    if-nez v3, :cond_5

    .line 71
    const-string v9, "BluetoothPairingRequest"

    const-string v10, "onReceive :: BluetoothAdapter not supported by system"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    .line 74
    const-string v9, "BluetoothPairingRequest"

    const-string v10, "onReceive :: BluetoothAdapter is not enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    goto :goto_0

    .line 79
    :cond_6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v6, "pairingIntent":Landroid/content/Intent;
    const-class v9, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v6, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    const-string v9, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    const/4 v9, 0x4

    if-eq v8, v9, :cond_7

    const/4 v9, 0x5

    if-ne v8, v9, :cond_8

    .line 86
    :cond_7
    const-string v9, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 88
    .local v7, "pairingKey":I
    const-string v9, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    .end local v7    # "pairingKey":I
    :cond_8
    const-string v9, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "deviceAddress":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->makeNotiSound(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 97
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceAddress":Ljava/lang/String;
    .end local v3    # "mBluetoothAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .end local v4    # "mBluetoothManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .end local v6    # "pairingIntent":Landroid/content/Intent;
    .end local v8    # "type":I
    :cond_9
    const-string v9, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 99
    const-string v9, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 100
    const-string v9, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 102
    .local v5, "oldState":I
    const/16 v9, 0xb

    if-ne v5, v9, :cond_0

    goto/16 :goto_0
.end method
