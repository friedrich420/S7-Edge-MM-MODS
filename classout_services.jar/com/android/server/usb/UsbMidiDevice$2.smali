.class Lcom/android/server/usb/UsbMidiDevice$2;
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

.field final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V
    .registers 4
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 203
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 207
    .local v1, "buffer":[B
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 208
    .local v4, "timestamp":J
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_49
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_82

    .line 209
    :try_start_f
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v0

    if-nez v0, :cond_21

    monitor-exit v9
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_7f

    .line 240
    .end local v4    # "timestamp":J
    :goto_18
    const-string v0, "UsbMidiDevice"

    const-string/jumbo v2, "input thread exit"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 212
    .restart local v4    # "timestamp":J
    :cond_21
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_22
    :try_start_22
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v0

    array-length v0, v0

    if-ge v7, v0, :cond_3d

    .line 213
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v0

    aget-object v8, v0, v7

    .line 214
    .local v8, "pfd":Landroid/system/StructPollfd;
    iget-short v0, v8, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLERR:I

    sget v10, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr v2, v10

    and-int/2addr v0, v2

    if-eqz v0, :cond_53

    .line 230
    .end local v8    # "pfd":Landroid/system/StructPollfd;
    :cond_3d
    monitor-exit v9
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_7f

    .line 233
    :try_start_3e
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_48} :catch_49
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_48} :catch_82

    goto :goto_4

    .line 235
    .end local v4    # "timestamp":J
    .end local v7    # "index":I
    :catch_49
    move-exception v6

    .line 236
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "UsbMidiDevice"

    const-string/jumbo v2, "reader thread exiting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 217
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "timestamp":J
    .restart local v7    # "index":I
    .restart local v8    # "pfd":Landroid/system/StructPollfd;
    :cond_53
    :try_start_53
    iget-short v0, v8, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_7c

    .line 219
    const/4 v0, 0x0

    iput-short v0, v8, Landroid/system/StructPollfd;->revents:S

    .line 221
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v7, v0, :cond_3d

    .line 226
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 227
    .local v3, "count":I
    iget-object v0, p0, val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v0, v0, v7

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 212
    .end local v3    # "count":I
    :cond_7c
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 230
    .end local v7    # "index":I
    .end local v8    # "pfd":Landroid/system/StructPollfd;
    :catchall_7f
    move-exception v0

    monitor-exit v9
    :try_end_81
    .catchall {:try_start_53 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v0
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_82} :catch_49
    .catch Landroid/system/ErrnoException; {:try_start_81 .. :try_end_82} :catch_82

    .line 237
    .end local v4    # "timestamp":J
    :catch_82
    move-exception v6

    .line 238
    .local v6, "e":Landroid/system/ErrnoException;
    const-string v0, "UsbMidiDevice"

    const-string/jumbo v2, "reader thread exiting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method
