.class Lcom/android/server/usb/UsbAlsaManager$1;
.super Landroid/os/FileObserver;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbAlsaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;I)V
    .registers 4
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 130
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 132
    sparse-switch p1, :sswitch_data_10

    .line 140
    :goto_3
    return-void

    .line 134
    :sswitch_4
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbAlsaManager;

    # invokes: Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/server/usb/UsbAlsaManager;->access$000(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V

    goto :goto_3

    .line 137
    :sswitch_a
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbAlsaManager;

    # invokes: Lcom/android/server/usb/UsbAlsaManager;->alsaFileRemoved(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/server/usb/UsbAlsaManager;->access$100(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V

    goto :goto_3

    .line 132
    :sswitch_data_10
    .sparse-switch
        0x100 -> :sswitch_4
        0x200 -> :sswitch_a
    .end sparse-switch
.end method
