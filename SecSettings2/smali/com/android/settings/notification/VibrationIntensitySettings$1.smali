.class Lcom/android/settings/notification/VibrationIntensitySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VibrationIntensitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/VibrationIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VibrationIntensitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VibrationIntensitySettings;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/notification/VibrationIntensitySettings$1;->this$0:Lcom/android/settings/notification/VibrationIntensitySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    const-string v3, "VibrationIntensity"

    const-string v4, "mAoBleChangeReceiver called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-nez p2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const-string v3, "VibrationIntensity"

    const-string v4, "Receive Action : BluetoothLeAudio Connection changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 80
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, "previous_state":I
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 82
    .local v2, "state":I
    const-string v3, "VibrationIntensity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ++ DEVICE ADDRESS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v3, "VibrationIntensity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ++ BluetoothLeAudio_PREVIOUS -> CURRENT :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-nez v2, :cond_2

    if-ne v1, v7, :cond_2

    .line 86
    const/4 v2, -0x1

    .line 87
    :cond_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    const-string v3, "VibrationIntensity"

    const-string v4, "BluetoothLeAudio_STATE_CHANGE : Connection FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    :pswitch_1
    const-string v3, "VibrationIntensity"

    const-string v4, "BluetoothLeAudio_STATE_CHANGED : STATE_DISCONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings$1;->this$0:Lcom/android/settings/notification/VibrationIntensitySettings;

    # getter for: Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;
    invoke-static {v3}, Lcom/android/settings/notification/VibrationIntensitySettings;->access$000(Lcom/android/settings/notification/VibrationIntensitySettings;)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings$1;->this$0:Lcom/android/settings/notification/VibrationIntensitySettings;

    # getter for: Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;
    invoke-static {v3}, Lcom/android/settings/notification/VibrationIntensitySettings;->access$000(Lcom/android/settings/notification/VibrationIntensitySettings;)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/settings/notification/VibrationSeekBarPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 97
    :pswitch_2
    const-string v3, "VibrationIntensity"

    const-string v4, "BluetoothLeAudio_STATE_CHANGED : STATE_CONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings$1;->this$0:Lcom/android/settings/notification/VibrationIntensitySettings;

    # getter for: Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;
    invoke-static {v3}, Lcom/android/settings/notification/VibrationIntensitySettings;->access$000(Lcom/android/settings/notification/VibrationIntensitySettings;)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings$1;->this$0:Lcom/android/settings/notification/VibrationIntensitySettings;

    # getter for: Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;
    invoke-static {v3}, Lcom/android/settings/notification/VibrationIntensitySettings;->access$000(Lcom/android/settings/notification/VibrationIntensitySettings;)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/settings/notification/VibrationSeekBarPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 105
    :pswitch_3
    const-string v3, "VibrationIntensity"

    const-string v4, "BluetoothLeAudio_STATE_CHANGED : STATE_CONNECTING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
