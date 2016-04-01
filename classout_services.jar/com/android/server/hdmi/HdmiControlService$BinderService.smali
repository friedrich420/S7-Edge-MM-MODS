.class final Lcom/android/server/hdmi/HdmiControlService$BinderService;
.super Landroid/hardware/hdmi/IHdmiControlService$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    .prologue
    .line 1185
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiControlService$1;

    .prologue
    .line 1185
    invoke-direct {p0, p1}, <init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-void
.end method


# virtual methods
.method public addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    .line 1333
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1334
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3500(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 1335
    return-void
.end method

.method public addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    .line 1628
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1629
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$4200(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 1630
    return-void
.end method

.method public addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1321
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1322
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3300(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 1323
    return-void
.end method

.method public addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 1383
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1384
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3600(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 1385
    return-void
.end method

.method public addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    .prologue
    .line 1487
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1488
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->access$4000(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 1489
    return-void
.end method

.method public canChangeSystemAudioMode()Z
    .registers 3

    .prologue
    .line 1345
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1346
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1347
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_f

    .line 1348
    const/4 v1, 0x0

    .line 1350
    :goto_e
    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result v1

    goto :goto_e
.end method

.method public clearTimerRecording(II[B)V
    .registers 6
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    .prologue
    .line 1591
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1592
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1602
    return-void
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 1221
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1222
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1251
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1634
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    const-string v5, "HdmiControlService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1637
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHdmiControlEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$4300(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProhibitMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$4400(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 1640
    const-string/jumbo v3, "mCecController: "

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1642
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1643
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1646
    :cond_6b
    const-string/jumbo v3, "mMhlController: "

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1648
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$1400(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1649
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1651
    const-string/jumbo v3, "mPortInfo: "

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1653
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$4500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 1654
    .local v0, "hdmiPortInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_93

    .line 1656
    .end local v0    # "hdmiPortInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_b6
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPowerStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$4600(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    return-void
.end method

.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 1199
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1200
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v10

    .line 1201
    .local v10, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v10, :cond_17

    .line 1202
    const-string v1, "HdmiControlService"

    const-string v2, "Local tv device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_16
    :goto_16
    return-object v0

    .line 1205
    :cond_17
    invoke-virtual {v10}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v8

    .line 1206
    .local v8, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1207
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v1, v8, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v2, v8, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    const/4 v5, 0x0

    const-string v6, ""

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    goto :goto_16

    .line 1211
    :cond_2f
    invoke-virtual {v10}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v7

    .line 1212
    .local v7, "activePath":I
    const v1, 0xffff

    if-eq v7, v1, :cond_16

    .line 1213
    invoke-virtual {v10, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v9

    .line 1214
    .local v9, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v9, :cond_40

    .end local v9    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_3e
    move-object v0, v9

    goto :goto_16

    .restart local v9    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_40
    new-instance v9, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .end local v9    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v10}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v0

    invoke-direct {v9, v7, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    goto :goto_3e
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1419
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1420
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1421
    if-nez v0, :cond_1a

    :try_start_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_18
    monitor-exit v2

    return-object v1

    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeCecDevicesLocked()Ljava/util/List;

    move-result-object v1

    goto :goto_18

    .line 1424
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getInputDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1402
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1405
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    .line 1406
    .local v1, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1407
    if-nez v1, :cond_24

    :try_start_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1410
    .local v0, "cecDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :goto_18
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->getMhlDevicesLocked()Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$3900(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiUtils;->mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 1407
    .end local v0    # "cecDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeExternalInputsLocked()Ljava/util/List;

    move-result-object v0

    goto :goto_18

    .line 1411
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1340
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedTypes()[I
    .registers 4

    .prologue
    .line 1188
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1190
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 1191
    .local v1, "localDevices":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v2, v1

    if-ge v0, v2, :cond_2a

    .line 1192
    iget-object v2, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 1191
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1194
    :cond_2a
    return-object v1
.end method

.method public getSystemAudioMode()Z
    .registers 3

    .prologue
    .line 1355
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1356
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1357
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_f

    .line 1358
    const/4 v1, 0x0

    .line 1360
    :goto_e
    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v1

    goto :goto_e
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 1299
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1300
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1306
    return-void
.end method

.method public portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 1255
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1256
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1272
    return-void
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 1310
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1311
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1317
    return-void
.end method

.method public removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1327
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1328
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3400(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 1329
    return-void
.end method

.method public removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 1390
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1391
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3700(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 1392
    return-void
.end method

.method public sendKeyEvent(IIZ)V
    .registers 6
    .param p1, "deviceType"    # I
    .param p2, "keyCode"    # I
    .param p3, "isPressed"    # Z

    .prologue
    .line 1276
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1277
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1295
    return-void
.end method

.method public sendMhlVendorCommand(III[B)V
    .registers 12
    .param p1, "portId"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .prologue
    .line 1607
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1608
    iget-object v6, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III[B)V

    invoke-virtual {v6, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1623
    return-void
.end method

.method public sendStandby(II)V
    .registers 5
    .param p1, "deviceType"    # I
    .param p2, "deviceId"    # I

    .prologue
    .line 1517
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1518
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1534
    return-void
.end method

.method public sendVendorCommand(II[BZ)V
    .registers 12
    .param p1, "deviceType"    # I
    .param p2, "targetAddress"    # I
    .param p3, "params"    # [B
    .param p4, "hasVendorId"    # Z

    .prologue
    .line 1494
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1495
    iget-object v6, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V

    invoke-virtual {v6, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1513
    return-void
.end method

.method public setArcMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1462
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1463
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1473
    return-void
.end method

.method public setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .prologue
    .line 1538
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1539
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$4100(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    .line 1540
    return-void
.end method

.method public setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    .line 1396
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1397
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->access$3800(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    .line 1398
    return-void
.end method

.method public setProhibitMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1477
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1478
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1482
    :goto_d
    return-void

    .line 1481
    :cond_e
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setProhibitMode(Z)V

    goto :goto_d
.end method

.method public setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 1365
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1366
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1378
    return-void
.end method

.method public setSystemAudioMute(Z)V
    .registers 4
    .param p1, "mute"    # Z

    .prologue
    .line 1446
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1447
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1458
    return-void
.end method

.method public setSystemAudioVolume(III)V
    .registers 6
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "maxIndex"    # I

    .prologue
    .line 1430
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1431
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1442
    return-void
.end method

.method public startOneTouchRecord(I[B)V
    .registers 5
    .param p1, "recorderAddress"    # I
    .param p2, "recordSource"    # [B

    .prologue
    .line 1544
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1545
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1555
    return-void
.end method

.method public startTimerRecording(II[B)V
    .registers 6
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    .prologue
    .line 1575
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1576
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1586
    return-void
.end method

.method public stopOneTouchRecord(I)V
    .registers 4
    .param p1, "recorderAddress"    # I

    .prologue
    .line 1559
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2800(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1560
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1570
    return-void
.end method
