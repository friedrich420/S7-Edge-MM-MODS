.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;
.super Landroid/os/Handler;
.source "DeviceProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Landroid/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 596
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 598
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->removeMessages(I)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 602
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->removeMessages(I)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
