.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchDeviceDiscovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .registers 2

    .prologue
    .line 766
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscoveryDone(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 770
    .local v3, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_4

    .line 776
    .end local v3    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_16
    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v4, v4, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 777
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_22

    .line 780
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_38
    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    new-instance v5, Lcom/android/server/hdmi/HotplugDetectionAction;

    iget-object v6, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {v5, v6}, Lcom/android/server/hdmi/HotplugDetectionAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 781
    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    new-instance v5, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    iget-object v6, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {v5, v6}, Lcom/android/server/hdmi/PowerStatusMonitorAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 786
    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 787
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_5e

    .line 788
    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v4, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 792
    :goto_5d
    return-void

    .line 790
    :cond_5e
    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    goto :goto_5d
.end method
