.class Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 79
    const-string v6, "BluetoothPermissionActivity"

    const-string v7, "onReceive :: Intent.getAction() is return null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v6, "BluetoothPermissionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive :: getAction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 87
    .local v5, "state":I
    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    .line 88
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    goto :goto_0

    .line 91
    .end local v5    # "state":I
    :cond_2
    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    const-string v6, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v7, 0x2

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 94
    .local v4, "requestType":I
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    # getter for: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$000(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 95
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 96
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    # getter for: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$100(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    # invokes: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$200(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    goto :goto_0

    .line 97
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "requestType":I
    :cond_3
    const-string v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 100
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string v6, "android.bluetooth.profile.extra.STATE"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 101
    .local v2, "newState":I
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    # getter for: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$100(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v2, :cond_0

    .line 102
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    goto/16 :goto_0

    .line 105
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "newState":I
    :cond_4
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "homekey"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    # invokes: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onCancel()V
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$300(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    .line 109
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    goto/16 :goto_0
.end method
