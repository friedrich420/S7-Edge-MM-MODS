.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
.super Landroid/os/Handler;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 405
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 409
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 453
    :goto_0
    return-void

    .line 411
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    # invokes: Lcom/android/systemui/keyboard/KeyboardUI;->init()V
    invoke-static {v5}, Lcom/android/systemui/keyboard/KeyboardUI;->access$400(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_0

    .line 415
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-virtual {v5}, Lcom/android/systemui/keyboard/KeyboardUI;->onBootCompletedInternal()V

    goto :goto_0

    .line 419
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    # invokes: Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V
    invoke-static {v5}, Lcom/android/systemui/keyboard/KeyboardUI;->access$500(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_0

    .line 423
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v4, :cond_0

    .line 424
    .local v4, "enable":Z
    :goto_1
    if-eqz v4, :cond_1

    .line 425
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    # getter for: Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v5}, Lcom/android/systemui/keyboard/KeyboardUI;->access$600(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 431
    .end local v4    # "enable":Z
    :goto_2
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 432
    .local v0, "bluetoothState":I
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    # invokes: Lcom/android/systemui/keyboard/KeyboardUI;->onBluetoothStateChangedInternal(I)V
    invoke-static {v5, v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$800(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    goto :goto_0

    .line 423
    .end local v0    # "bluetoothState":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 427
    .restart local v4    # "enable":Z
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/16 v6, 0x8

    # setter for: Lcom/android/systemui/keyboard/KeyboardUI;->mState:I
    invoke-static {v5, v6}, Lcom/android/systemui/keyboard/KeyboardUI;->access$702(Lcom/android/systemui/keyboard/KeyboardUI;I)I

    goto :goto_2

    .line 436
    .end local v4    # "enable":Z
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 437
    .local v3, "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 438
    .local v1, "bondState":I
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    # invokes: Lcom/android/systemui/keyboard/KeyboardUI;->onDeviceBondStateChangedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    invoke-static {v5, v3, v1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$900(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_0

    .line 442
    .end local v1    # "bondState":I
    .end local v3    # "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 443
    .local v3, "d":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    # invokes: Lcom/android/systemui/keyboard/KeyboardUI;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v5, v3}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1000(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 444
    .local v2, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    # invokes: Lcom/android/systemui/keyboard/KeyboardUI;->onDeviceAddedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v5, v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1100(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 449
    .end local v2    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v3    # "d":Landroid/bluetooth/BluetoothDevice;
    :pswitch_7
    iget-object v5, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    # invokes: Lcom/android/systemui/keyboard/KeyboardUI;->onBleScanFailedInternal()V
    invoke-static {v5}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1200(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
