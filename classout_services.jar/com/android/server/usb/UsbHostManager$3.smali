.class Lcom/android/server/usb/UsbHostManager$3;
.super Landroid/os/UEventObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .registers 2

    .prologue
    .line 474
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 478
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB HOST UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, "action":Ljava/lang/String;
    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 482
    .local v8, "devPath":Ljava/lang/String;
    const-string v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 483
    .local v11, "state":Ljava/lang/String;
    const-string v0, "SWITCH_NAME"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 484
    .local v10, "name":Ljava/lang/String;
    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 485
    .local v12, "switchState":Ljava/lang/String;
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # invokes: Lcom/android/server/usb/UsbHostManager;->getPowerManager()V
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$300(Lcom/android/server/usb/UsbHostManager;)V

    .line 490
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # invokes: Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;)V

    .line 495
    const-string/jumbo v0, "remove"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 498
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler;->clearAllNotificaton()V

    .line 501
    :cond_58
    const-string v0, "change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    if-eqz v11, :cond_a8

    const-string v0, "/devices/virtual/host_notify"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 503
    :try_start_6a
    const-string v0, "ADD"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 506
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x1040bd0

    const/4 v2, 0x0

    const v3, 0x1080786

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "UsbDevices"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    .line 512
    new-instance v13, Landroid/content/Intent;

    const-string v0, "com.samsung.UsbOtgCableConnection"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v13, "usbOtgCableIntent":Landroid/content/Intent;
    const-string v0, "Connect"

    const-string v1, "On"

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$600(Lcom/android/server/usb/UsbHostManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 515
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send USB OTG CABLE Connection intent (Connected)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .end local v13    # "usbOtgCableIntent":Landroid/content/Intent;
    :cond_a8
    :goto_a8
    return-void

    .line 518
    :cond_a9
    const-string v0, "REMOVE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 522
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler;->clearAllNotificaton()V

    .line 523
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x1040bd1

    const/4 v2, 0x0

    const v3, 0x1080786

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "UsbDevices"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    .line 529
    new-instance v13, Landroid/content/Intent;

    const-string v0, "com.samsung.UsbOtgCableConnection"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .restart local v13    # "usbOtgCableIntent":Landroid/content/Intent;
    const-string v0, "Connect"

    const-string v1, "Off"

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$600(Lcom/android/server/usb/UsbHostManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 532
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send USB OTG CABLE Connection intent (Disconnected)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_f0} :catch_f1

    goto :goto_a8

    .line 559
    .end local v13    # "usbOtgCableIntent":Landroid/content/Intent;
    :catch_f1
    move-exception v9

    .line 560
    .local v9, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse state or devPath from event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 535
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_10d
    :try_start_10d
    const-string v0, "OVERCURRENT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 536
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x1040bd2

    const v2, 0x1040bd3

    const v3, 0x1080787

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "OVERCURRENT"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_a8

    .line 542
    :cond_12d
    const-string v0, "UNKNOWN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 543
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;

    move-result-object v0

    const v1, 0x1040bd4

    const/4 v2, 0x0

    const v3, 0x1080788

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "UNKNOWN"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_a8

    .line 549
    :cond_14b
    const-string v0, "LOWBATT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_150
    .catch Ljava/lang/NumberFormatException; {:try_start_10d .. :try_end_150} :catch_f1

    move-result v0

    if-eqz v0, :cond_a8

    goto/16 :goto_a8
.end method
