.class Lcom/android/server/audio/AudioService$5;
.super Landroid/os/UEventObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .prologue
    .line 9329
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/16 v1, 0x67

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9332
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 9361
    :cond_d
    :goto_d
    return-void

    .line 9335
    :cond_e
    const-string v0, "USB_CONNECTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9336
    .local v7, "USB_CONNECTION":Ljava/lang/String;
    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUEvent(device) :: USB_CONNECTION = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9337
    const-string v0, "READY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 9338
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isUSBCheckStreamActive()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isInCommunication()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15500(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mFakeState:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUSBDetected:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 9339
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getCurOutDevice()I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_d

    .line 9340
    const-string v0, "AudioService"

    const-string v4, "### set usb check device"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9341
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mFakeState:Z
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;Z)Z

    .line 9342
    const-string v0, ""

    const-string v4, ""

    invoke-static {v6, v2, v0, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 9343
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0xdac

    move v4, v3

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_d

    .line 9346
    :cond_7f
    const-string v0, "CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 9347
    :cond_8f
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mFakeState:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 9348
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 9349
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mFakeState:Z
    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;Z)Z

    .line 9350
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getCurOutDevice()I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_bd

    .line 9351
    const-string v0, "AudioService"

    const-string v1, "### release usb check device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9352
    const-string v0, ""

    const-string v1, ""

    invoke-static {v6, v3, v0, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 9356
    :cond_bd
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUSBDetected:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_d2

    const-string v0, "CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mUSBDetected:Z
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$15602(Lcom/android/server/audio/AudioService;Z)Z

    .line 9357
    :cond_d2
    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mUSBDetected:Z
    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$15602(Lcom/android/server/audio/AudioService;Z)Z

    goto/16 :goto_d

    .line 9359
    :cond_e1
    const-string v0, "AudioService"

    const-string v1, "Other USB event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method
