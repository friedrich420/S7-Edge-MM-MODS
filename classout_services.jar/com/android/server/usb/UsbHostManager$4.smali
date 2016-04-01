.class Lcom/android/server/usb/UsbHostManager$4;
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
    .line 568
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 22
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$700(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 574
    :try_start_9
    const-string v1, "DEVPATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 575
    .local v10, "devPath":Ljava/lang/String;
    const-string v1, "ACTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "action":Ljava/lang/String;
    const-string v1, "DEVTYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 577
    .local v12, "devtype":Ljava/lang/String;
    const-string v1, "DEVICE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 578
    .local v11, "device":Ljava/lang/String;
    const-string v1, "PRODUCT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 579
    .local v15, "product":Ljava/lang/String;
    const-string v1, "TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 580
    .local v17, "type":Ljava/lang/String;
    const-string v1, "INTERFACE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 582
    .local v14, "interfac":Ljava/lang/String;
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onUEvent(device) :: action = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", devtype = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", device = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", product = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", type = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", interface = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", devpath = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_9 .. :try_end_a8} :catchall_de

    .line 588
    :try_start_a8
    const-string v1, "/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 589
    .local v16, "tok":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v7, v16, v1

    .line 590
    .local v7, "Class":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v9, v16, v1

    .line 591
    .local v9, "SubClass":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v8, v16, v1
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_b7} :catch_e1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a8 .. :try_end_b7} :catch_101
    .catchall {:try_start_a8 .. :try_end_b7} :catchall_de

    .line 593
    .local v8, "Protocal":Ljava/lang/String;
    if-eqz v7, :cond_bd

    if-eqz v9, :cond_bd

    if-nez v8, :cond_bf

    :cond_bd
    :try_start_bd
    monitor-exit v18
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_de

    .line 607
    .end local v7    # "Class":Ljava/lang/String;
    .end local v8    # "Protocal":Ljava/lang/String;
    .end local v9    # "SubClass":Ljava/lang/String;
    .end local v16    # "tok":[Ljava/lang/String;
    :goto_be
    return-void

    .line 595
    .restart local v7    # "Class":Ljava/lang/String;
    .restart local v8    # "Protocal":Ljava/lang/String;
    .restart local v9    # "SubClass":Ljava/lang/String;
    .restart local v16    # "tok":[Ljava/lang/String;
    :cond_bf
    const/4 v1, 0x0

    :try_start_c0
    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 596
    .local v3, "iClass":I
    const/4 v1, 0x1

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 597
    .local v4, "iSubClass":I
    const/4 v1, 0x2

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 599
    .local v5, "iProtocal":I
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/usb/UsbHostManager;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V
    :try_end_dc
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_dc} :catch_e1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c0 .. :try_end_dc} :catch_101
    .catchall {:try_start_c0 .. :try_end_dc} :catchall_de

    .line 606
    .end local v3    # "iClass":I
    .end local v4    # "iSubClass":I
    .end local v5    # "iProtocal":I
    .end local v7    # "Class":Ljava/lang/String;
    .end local v8    # "Protocal":Ljava/lang/String;
    .end local v9    # "SubClass":Ljava/lang/String;
    .end local v16    # "tok":[Ljava/lang/String;
    :goto_dc
    :try_start_dc
    monitor-exit v18

    goto :goto_be

    .end local v2    # "action":Ljava/lang/String;
    .end local v10    # "devPath":Ljava/lang/String;
    .end local v11    # "device":Ljava/lang/String;
    .end local v12    # "devtype":Ljava/lang/String;
    .end local v14    # "interfac":Ljava/lang/String;
    .end local v15    # "product":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    :catchall_de
    move-exception v1

    monitor-exit v18
    :try_end_e0
    .catchall {:try_start_dc .. :try_end_e0} :catchall_de

    throw v1

    .line 600
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v10    # "devPath":Ljava/lang/String;
    .restart local v11    # "device":Ljava/lang/String;
    .restart local v12    # "devtype":Ljava/lang/String;
    .restart local v14    # "interfac":Ljava/lang/String;
    .restart local v15    # "product":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/String;
    :catch_e1
    move-exception v13

    .line 601
    .local v13, "e":Ljava/lang/NumberFormatException;
    :try_start_e2
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not parse state or devPath from event "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 602
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catch_101
    move-exception v13

    .line 603
    .local v13, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ArrayIndexOutOfBoundsException "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catchall {:try_start_e2 .. :try_end_11e} :catchall_de

    goto :goto_dc
.end method
