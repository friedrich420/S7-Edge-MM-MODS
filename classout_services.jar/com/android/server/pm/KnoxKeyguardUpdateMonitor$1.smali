.class Lcom/android/server/pm/KnoxKeyguardUpdateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxKeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, this$0:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v8, -0x80000000

    .line 72
    const-string v5, "KnoxKeyguardUpdateMonitor"

    const-string v6, "BroadcastReceiver onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string v5, "KnoxKeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadcastReceiver onReceive action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 126
    :cond_45
    :goto_45
    return-void

    .line 85
    :cond_46
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 87
    const-string v5, "KnoxKeyguardUpdateMonitor"

    const-string v6, "BroadcastReceiver onReceive BT state is changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "samsung.knox.trust.action.BT_STATE_CHANGE_INTERNAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "btIntent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.permission.RECEIVE_BT_GEAR"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_45

    .line 94
    .end local v2    # "btIntent":Landroid/content/Intent;
    :cond_71
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 96
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_45

    .line 100
    const/4 v2, 0x0

    .line 101
    .restart local v2    # "btIntent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 102
    const-string v5, "KnoxKeyguardUpdateMonitor"

    const-string v6, "BroadcastReceiver ACTION_ACL_CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "btIntent":Landroid/content/Intent;
    const-string/jumbo v5, "samsung.knox.trust.action.DEVICE_CONNECTED_INTERNAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .restart local v2    # "btIntent":Landroid/content/Intent;
    :cond_93
    :goto_93
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.permission.RECEIVE_BT_GEAR"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_45

    .line 104
    :cond_a0
    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 105
    const-string v5, "KnoxKeyguardUpdateMonitor"

    const-string v6, "BroadcastReceiver ACTION_ACL_DISCONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "btIntent":Landroid/content/Intent;
    const-string/jumbo v5, "samsung.knox.trust.action.DEVICE_DISCONNECTED_INTERNAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "btIntent":Landroid/content/Intent;
    goto :goto_93

    .line 107
    :cond_b8
    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 108
    const-string v5, "KnoxKeyguardUpdateMonitor"

    const-string v6, "BroadcastReceiver ACTION_BOND_STATE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v5, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 110
    .local v4, "prevBondState":I
    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, "bondState":I
    const-string v5, "KnoxKeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadcastReceiver ACTION_BOND_STATE_CHANGED prevBondState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v5, "KnoxKeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadcastReceiver ACTION_BOND_STATE_CHANGED bondState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v5, 0xb

    if-ne v4, v5, :cond_11c

    const/16 v5, 0xc

    if-ne v1, v5, :cond_11c

    .line 116
    const-string v5, "KnoxKeyguardUpdateMonitor"

    const-string v6, "BroadcastReceiver ACTION_BOND_STATE_CHANGED it is bonded"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "btIntent":Landroid/content/Intent;
    const-string/jumbo v5, "samsung.knox.trust.action.DEVICE_BONDED_STATE_INTERNAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "btIntent":Landroid/content/Intent;
    goto/16 :goto_93

    .line 119
    :cond_11c
    const-string v5, "KnoxKeyguardUpdateMonitor"

    const-string v6, "BroadcastReceiver ACTION_BOND_STATE_CHANGED it is NOT bonded. quit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45
.end method
