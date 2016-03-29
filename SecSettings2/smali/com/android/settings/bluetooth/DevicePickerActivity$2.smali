.class Lcom/android/settings/bluetooth/DevicePickerActivity$2;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity;->onPostResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 255
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$100(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings/bluetooth/DevicePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$100(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z
    invoke-static {v2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings/bluetooth/DevicePickerActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$2;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z
    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$202(Lcom/android/settings/bluetooth/DevicePickerActivity;Z)Z

    .line 263
    :cond_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const-string v1, "DevicePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
