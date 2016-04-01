.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;
.super Landroid/media/tv/TvInputManager$TvInputCallback;
.source "HdmiCecLocalDeviceTv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
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
    .line 137
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$TvInputCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getTvInputManager()Landroid/media/tv/TvInputManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    .line 141
    .local v1, "tvInfo":Landroid/media/tv/TvInputInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 142
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_13

    .line 147
    :cond_12
    :goto_12
    return-void

    .line 143
    :cond_13
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v3

    # invokes: Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addTvInput(Ljava/lang/String;I)V
    invoke-static {v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->access$000(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V

    .line 144
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 145
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedActiveSource(I)V

    goto :goto_12
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    # invokes: Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeTvInput(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->access$100(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V

    .line 152
    return-void
.end method
