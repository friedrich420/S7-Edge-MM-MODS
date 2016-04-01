.class Lcom/android/server/usb/UsbPortManager$2;
.super Landroid/os/Handler;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 694
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 697
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 705
    :goto_5
    return-void

    .line 699
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbPortManager;

    # getter for: Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->access$100(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 700
    :try_start_d
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbPortManager;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    invoke-static {v0, v2}, Lcom/android/server/usb/UsbPortManager;->access$200(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 701
    monitor-exit v1

    goto :goto_5

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0

    .line 697
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
