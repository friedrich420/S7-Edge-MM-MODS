.class Lcom/android/server/usb/UsbHostRestrictor$4;
.super Landroid/os/UEventObserver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 2

    .prologue
    .line 583
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 587
    const-string v6, "UsbHostRestrictor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB HOST UEVENT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v6, "ACTION"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "action":Ljava/lang/String;
    const-string v6, "DEVPATH"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "devPath":Ljava/lang/String;
    const-string v6, "STATE"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "state":Ljava/lang/String;
    const-string v6, "SWITCH_NAME"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "name":Ljava/lang/String;
    const-string v6, "SWITCH_STATE"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "switchState":Ljava/lang/String;
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$700(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 596
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->turnOnLcd()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$800(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 598
    const-string v6, "change"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    if-eqz v4, :cond_6f

    const-string v6, "/devices/virtual/host_notify"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 600
    :try_start_56
    const-string v6, "BLOCK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 602
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$900()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ON_ALL_SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 605
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 624
    :cond_6f
    :goto_6f
    return-void

    .line 606
    :cond_70
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$900()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ON_ALL_UPSM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 608
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showToast()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$1100(Lcom/android/server/usb/UsbHostRestrictor;)V
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_81} :catch_82

    goto :goto_6f

    .line 620
    :catch_82
    move-exception v2

    .line 621
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v6, "UsbHostRestrictor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse state or devPath from event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 609
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_9c
    :try_start_9c
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$900()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ON_ALL_BOTH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 612
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 613
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showToast()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$1100(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_6f

    .line 615
    :cond_b3
    const-string v6, "UsbHostRestrictor"

    const-string v7, "USB HOST is BLOCKED by UNKNOWN. Do Nothing!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_ba} :catch_82

    goto :goto_6f
.end method
