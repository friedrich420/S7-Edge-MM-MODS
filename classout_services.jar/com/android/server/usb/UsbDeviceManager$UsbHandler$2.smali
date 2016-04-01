.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .registers 2

    .prologue
    .line 441
    iput-object p1, p0, this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 443
    iget-object v0, p0, this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V

    .line 444
    return-void
.end method
