.class final Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
.super Landroid/media/midi/MidiReceiver;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputReceiverProxy"
.end annotation


# instance fields
.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/usb/UsbMidiDevice;
    .param p2, "x1"    # Lcom/android/server/usb/UsbMidiDevice$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, <init>(Lcom/android/server/usb/UsbMidiDevice;)V

    return-void
.end method


# virtual methods
.method public onSend([BIIJ)V
    .registers 12
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, mReceiver:Landroid/media/midi/MidiReceiver;

    .line 122
    .local v0, "receiver":Landroid/media/midi/MidiReceiver;
    if-eqz v0, :cond_b

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 125
    :cond_b
    return-void
.end method

.method public setReceiver(Landroid/media/midi/MidiReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .prologue
    .line 128
    iput-object p1, p0, mReceiver:Landroid/media/midi/MidiReceiver;

    .line 129
    return-void
.end method
