.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

.field final synthetic val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAttributesChanged()V
    .locals 4

    .prologue
    .line 223
    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceAttributesChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    .line 226
    .local v0, "isConnected":Z
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    # setter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$202(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 231
    :cond_3
    return-void
.end method
