.class Lcom/android/server/usb/UsbMidiDevice$3;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field final synthetic val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

.field final synthetic val$outputStreamF:Ljava/io/FileOutputStream;

.field final synthetic val$portF:I


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V
    .registers 6
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    iput-object p4, p0, val$outputStreamF:Ljava/io/FileOutputStream;

    iput p5, p0, val$portF:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 256
    :goto_0
    :try_start_0
    iget-object v2, p0, val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v2}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v1

    check-cast v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_13

    .line 261
    .local v1, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    if-nez v1, :cond_15

    .line 271
    const-string v2, "UsbMidiDevice"

    const-string/jumbo v3, "output thread exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 257
    .end local v1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :catch_13
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 265
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_15
    :try_start_15
    iget-object v2, p0, val$outputStreamF:Ljava/io/FileOutputStream;

    iget-object v3, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_25

    .line 269
    :goto_1f
    iget-object v2, p0, val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v2, v1}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_0

    .line 266
    :catch_25
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsbMidiDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write failed for port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, val$portF:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
