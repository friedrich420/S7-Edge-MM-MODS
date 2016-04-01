.class Lcom/android/server/usb/UsbMirrorLinkManager$1;
.super Landroid/os/UEventObserver;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 67
    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, "NCM_DEVICE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "mirrorlink":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v7, "mlCommand":Landroid/content/Intent;
    const-string/jumbo v0, "mirrorlink"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    const-string v0, "START"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 77
    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "usb: f/w ncm start uevent receive "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    if-nez v0, :cond_6a

    .line 82
    iget-object v9, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "MirrorLink"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    # setter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v9, v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$202(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    .line 85
    :cond_6a
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 87
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v8

    .line 88
    .local v8, "supportedCPUFreqTable":[I
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "CPU"

    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 89
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/DVFSHelper;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 100
    .end local v8    # "supportedCPUFreqTable":[I
    :cond_a0
    :goto_a0
    return-void

    .line 93
    :cond_a1
    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " MirrorLink cpu boost : DVFSHelper mode is not supported "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 96
    :cond_ab
    const-string v0, "RELEASE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 97
    # getter for: Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "usb: f/w ncm release uevent receive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0
.end method
