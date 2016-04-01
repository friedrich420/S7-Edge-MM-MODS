.class final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDeviceTv.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceTv"


# instance fields
.field private mArcEstablished:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

.field private mAutoDeviceOff:Z

.field private mAutoWakeup:Z

.field private final mCecSwitches:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

.field private final mDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalDeviceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevPortId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSafeAllDeviceInfos:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeExternalInputs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipRoutingControl:Z

.field private final mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

.field private mSystemAudioActivated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSystemAudioMute:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSystemAudioVolume:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final mTvInputs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 72
    iput-boolean v1, p0, mArcEstablished:Z

    .line 76
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 80
    iput-boolean v1, p0, mSystemAudioActivated:Z

    .line 91
    iput v2, p0, mSystemAudioVolume:I

    .line 94
    iput-boolean v1, p0, mSystemAudioMute:Z

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mSafeAllDeviceInfos:Ljava/util/List;

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mSafeExternalInputs:Ljava/util/List;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mDeviceInfos:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mCecSwitches:Landroid/util/ArraySet;

    .line 132
    new-instance v0, Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 137
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    iput-object v0, p0, mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mTvInputs:Ljava/util/HashMap;

    .line 182
    iput v2, p0, mPrevPortId:I

    .line 183
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, mAutoDeviceOff:Z

    .line 185
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, mAutoWakeup:Z

    .line 186
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    iput-object v0, p0, mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, addTvInput(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, removeTvInput(Ljava/lang/String;)V

    return-void
.end method

.method private addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1237
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1238
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1239
    .local v0, "oldDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_14

    .line 1240
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1242
    :cond_14
    iget-object v1, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1243
    invoke-direct {p0}, updateSafeDeviceInfoList()V

    .line 1244
    return-object v0
.end method

.method private addTvInput(Ljava/lang/String;I)V
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 164
    iget-object v0, p0, mTvInputs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method private canStartArcUpdateAction(IZ)Z
    .registers 5
    .param p1, "avrAddress"    # I
    .param p2, "shouldCheckArcFeatureEnabled"    # Z

    .prologue
    .line 1106
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1107
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-ne p1, v1, :cond_2d

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, isConnectedToArcPort(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-direct {p0, v1}, isDirectConnectAddress(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1111
    if-eqz p2, :cond_2b

    .line 1112
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v1

    invoke-virtual {p0, v1}, isArcFeatureEnabled(I)Z

    move-result v1

    .line 1117
    :goto_2a
    return v1

    .line 1114
    :cond_2b
    const/4 v1, 0x1

    goto :goto_2a

    .line 1117
    :cond_2d
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method private checkRecordSource([B)Z
    .registers 3
    .param p1, "recordSource"    # [B

    .prologue
    .line 1755
    if-eqz p1, :cond_a

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiRecordSources;->checkRecordSource([B)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private checkRecorder(I)Z
    .registers 5
    .param p1, "recorderAddress"    # I

    .prologue
    const/4 v1, 0x1

    .line 1748
    invoke-virtual {p0, p1}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1749
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v2

    if-ne v2, v1, :cond_e

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private checkTimerRecordingSource(I[B)Z
    .registers 4
    .param p1, "sourceType"    # I
    .param p2, "recordSource"    # [B

    .prologue
    .line 1790
    if-eqz p2, :cond_a

    invoke-static {p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private clearDeviceInfoList()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 812
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 813
    iget-object v2, p0, mSafeExternalInputs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 814
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_9

    .line 816
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1a
    iget-object v2, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 817
    invoke-direct {p0}, updateSafeDeviceInfoList()V

    .line 818
    return-void
.end method

.method private disableArcIfExist()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1648
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1649
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1650
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_a

    .line 1659
    :cond_9
    :goto_9
    return-void

    .line 1655
    :cond_a
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, removeAction(Ljava/lang/Class;)V

    .line 1656
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, isArcEstablished()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1657
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_9
.end method

.method private disableSystemAudioIfExist()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1633
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1634
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1644
    :goto_9
    return-void

    .line 1639
    :cond_a
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1640
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1641
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1642
    const-class v0, Lcom/android/server/hdmi/SystemAudioStatusAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1643
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    goto :goto_9
.end method

.method private findKeyReceiverAddress()I
    .registers 3

    .prologue
    .line 452
    invoke-virtual {p0}, getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 453
    invoke-virtual {p0}, getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 459
    :goto_10
    return v1

    .line 455
    :cond_11
    invoke-virtual {p0}, getActivePath()I

    move-result v1

    invoke-virtual {p0, v1}, getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 456
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_20

    .line 457
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    goto :goto_10

    .line 459
    :cond_20
    const/4 v1, -0x1

    goto :goto_10
.end method

.method private getInputDevices()Ljava/util/List;
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
    .line 1316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v3, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_33

    .line 1318
    iget-object v3, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1319
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1317
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1322
    :cond_23
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-direct {p0, v1}, hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1323
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1326
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_33
    return-object v2
.end method

.method private handleNewDeviceAtTheTailOfActivePath(I)Z
    .registers 6
    .param p1, "path"    # I

    .prologue
    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0}, getActivePath()I

    move-result v2

    invoke-static {p1, v2}, isTailOfActivePath(II)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 651
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, getActivePortId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 652
    .local v0, "newPath":I
    invoke-virtual {p0, v0}, setActivePath(I)V

    .line 653
    invoke-virtual {p0}, getActivePath()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 654
    const/4 v1, 0x1

    .line 656
    .end local v0    # "newPath":I
    :cond_21
    return v1
.end method

.method private handleSelectInternalSource()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 285
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v2, p0, mAddress:I

    if-eq v1, v2, :cond_25

    .line 286
    iget v1, p0, mAddress:I

    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0, v1, v2}, updateActiveSource(II)V

    .line 287
    iget-boolean v1, p0, mSkipRoutingControl:Z

    if-eqz v1, :cond_26

    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, mSkipRoutingControl:Z

    .line 295
    :cond_25
    :goto_25
    return-void

    .line 291
    :cond_26
    iget v1, p0, mAddress:I

    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 293
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_25
.end method

.method private hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 1333
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    iget-object v1, p0, mCecSwitches:Landroid/util/ArraySet;

    invoke-static {v0, v1}, isConnectedToCecSwitch(ILjava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private initLocalDeviceAddresses()Ljava/util/List;
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 217
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 219
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_2e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 6
    .param p0, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p1, "result"    # I

    .prologue
    .line 463
    if-nez p0, :cond_3

    .line 471
    :goto_2
    return-void

    .line 467
    :cond_3
    :try_start_3
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 468
    :catch_7
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    .prologue
    .line 1360
    invoke-direct {p0, p1}, hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1361
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1363
    :cond_b
    return-void
.end method

.method private static isConnectedToCecSwitch(ILjava/util/Collection;)Z
    .registers 5
    .param p0, "path"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1338
    .local p1, "switches":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1339
    .local v1, "switchPath":I
    invoke-static {v1, p0}, isParentPath(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1340
    const/4 v2, 0x1

    .line 1343
    .end local v1    # "switchPath":I
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private isDirectConnectAddress(I)Z
    .registers 3
    .param p1, "physicalAddress"    # I

    .prologue
    .line 1011
    const v0, 0xf000

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isLocalDeviceAddress(I)Z
    .registers 4
    .param p1, "address"    # I

    .prologue
    .line 1366
    iget-object v0, p0, mLocalDeviceAddresses:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 1218
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_25

    :cond_1d
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private static isParentPath(II)Z
    .registers 8
    .param p0, "parentPath"    # I
    .param p1, "childPath"    # I

    .prologue
    const/4 v3, 0x0

    .line 1349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v4, 0xc

    if-gt v0, v4, :cond_1d

    .line 1350
    shr-int v4, p1, v0

    and-int/lit8 v1, v4, 0xf

    .line 1351
    .local v1, "nibble":I
    if-eqz v1, :cond_1e

    .line 1352
    shr-int v4, p0, v0

    and-int/lit8 v2, v4, 0xf

    .line 1353
    .local v2, "parentNibble":I
    if-nez v2, :cond_1d

    add-int/lit8 v4, v0, 0x4

    shr-int v4, p1, v4

    add-int/lit8 v5, v0, 0x4

    shr-int v5, p0, v5

    if-ne v4, v5, :cond_1d

    const/4 v3, 0x1

    .line 1356
    .end local v1    # "nibble":I
    .end local v2    # "parentNibble":I
    :cond_1d
    return v3

    .line 1349
    .restart local v1    # "nibble":I
    :cond_1e
    add-int/lit8 v0, v0, 0x4

    goto :goto_2
.end method

.method static isTailOfActivePath(II)Z
    .registers 7
    .param p0, "path"    # I
    .param p1, "activePath"    # I

    .prologue
    const/4 v3, 0x0

    .line 669
    if-nez p1, :cond_4

    .line 683
    :cond_3
    :goto_3
    return v3

    .line 672
    :cond_4
    const/16 v2, 0xc

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_3

    .line 673
    shr-int v4, p1, v2

    and-int/lit8 v0, v4, 0xf

    .line 674
    .local v0, "curActivePath":I
    if-nez v0, :cond_10

    .line 675
    const/4 v3, 0x1

    goto :goto_3

    .line 677
    :cond_10
    shr-int v4, p0, v2

    and-int/lit8 v1, v4, 0xf

    .line 678
    .local v1, "curPath":I
    if-ne v1, v0, :cond_3

    .line 672
    add-int/lit8 v2, v2, -0x4

    goto :goto_6
.end method

.method private launchDeviceDiscovery()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 763
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 764
    invoke-direct {p0}, clearDeviceInfoList()V

    .line 765
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 794
    .local v0, "action":Lcom/android/server/hdmi/DeviceDiscoveryAction;
    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 795
    return-void
.end method

.method private notifyArcStatusToAudioService(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    .line 937
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    const/high16 v2, 0x40000

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :goto_b
    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 940
    return-void

    .line 937
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private removeCecSwitches(I)V
    .registers 5
    .param p1, "portId"    # I

    .prologue
    .line 1577
    iget-object v2, p0, mCecSwitches:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1578
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1579
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1580
    .local v1, "path":I
    invoke-virtual {p0, v1}, pathToPortId(I)I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 1581
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 1584
    .end local v1    # "path":I
    :cond_20
    return-void
.end method

.method private removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .param p1, "id"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1258
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1259
    iget-object v1, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1260
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_12

    .line 1261
    iget-object v1, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1263
    :cond_12
    invoke-direct {p0}, updateSafeDeviceInfoList()V

    .line 1264
    return-object v0
.end method

.method private removeTvInput(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 170
    iget-object v0, p0, mTvInputs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method private sendClearTimerMessage(II[B)V
    .registers 8
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    .prologue
    .line 1822
    const/4 v0, 0x0

    .line 1823
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    packed-switch p2, :pswitch_data_42

    .line 1837
    const-string v1, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid source type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const/16 v1, 0xa1

    invoke-virtual {p0, p1, v1}, announceClearTimerRecordingResult(II)V

    .line 1852
    :goto_21
    return-void

    .line 1825
    :pswitch_22
    iget v1, p0, mAddress:I

    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1843
    :goto_28
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_21

    .line 1829
    :pswitch_33
    iget v1, p0, mAddress:I

    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1831
    goto :goto_28

    .line 1833
    :pswitch_3a
    iget v1, p0, mAddress:I

    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1835
    goto :goto_28

    .line 1823
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_22
        :pswitch_33
        :pswitch_3a
    .end packed-switch
.end method

.method private updateArcFeatureStatus(IZ)V
    .registers 6
    .param p1, "portId"    # I
    .param p2, "isConnected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 909
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v1

    .line 910
    .local v1, "portInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v2

    if-nez v2, :cond_10

    .line 927
    :cond_f
    :goto_f
    return-void

    .line 913
    :cond_10
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 914
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_1e

    .line 915
    if-eqz p2, :cond_f

    .line 918
    iget-object v2, p0, mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_f

    .line 924
    :cond_1e
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v2

    if-ne v2, p1, :cond_f

    .line 925
    invoke-virtual {p0, p1, p2}, changeArcFeatureEnabled(IZ)V

    goto :goto_f
.end method

.method private updateAudioManagerForSystemAudio(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 857
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    move-result v0

    .line 858
    .local v0, "device":I
    const-string v1, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 859
    return-void
.end method

.method private updateSafeDeviceInfoList()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1300
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1301
    iget-object v2, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    .line 1302
    .local v0, "copiedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {p0}, getInputDevices()Ljava/util/List;

    move-result-object v1

    .line 1303
    .local v1, "externalInputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1304
    :try_start_10
    iput-object v0, p0, mSafeAllDeviceInfos:Ljava/util/List;

    .line 1305
    iput-object v1, p0, mSafeExternalInputs:Ljava/util/List;

    .line 1306
    monitor-exit v3

    .line 1307
    return-void

    .line 1306
    :catchall_16
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw v2
.end method


# virtual methods
.method final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1435
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1436
    invoke-direct {p0, p1}, addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1437
    .local v0, "old":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    iget v2, p0, mAddress:I

    if-ne v1, v2, :cond_11

    .line 1447
    :cond_10
    :goto_10
    return-void

    .line 1441
    :cond_11
    if-nez v0, :cond_17

    .line 1442
    invoke-direct {p0, p1, v3}, invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_10

    .line 1443
    :cond_17
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1444
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1445
    invoke-direct {p0, p1, v3}, invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_10
.end method

.method announceClearTimerRecordingResult(II)V
    .registers 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1214
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeClearTimerRecordingResult(II)V

    .line 1215
    return-void
.end method

.method announceOneTouchRecordResult(II)V
    .registers 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1206
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeOneTouchRecordResult(II)V

    .line 1207
    return-void
.end method

.method announceTimerRecordingResult(II)V
    .registers 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1210
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeTimerRecordingResult(II)V

    .line 1211
    return-void
.end method

.method broadcastMenuLanguage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 559
    iget v1, p0, mAddress:I

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 561
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_12

    .line 562
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 563
    const/4 v1, 0x1

    .line 565
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method changeArcFeatureEnabled(IZ)V
    .registers 4
    .param p1, "portId"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 958
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 960
    iget-object v0, p0, mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eq v0, p2, :cond_1a

    .line 961
    iget-object v0, p0, mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 962
    if-eqz p2, :cond_1b

    .line 963
    iget-boolean v0, p0, mArcEstablished:Z

    if-nez v0, :cond_1a

    .line 964
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, startArcAction(Z)V

    .line 972
    :cond_1a
    :goto_1a
    return-void

    .line 967
    :cond_1b
    iget-boolean v0, p0, mArcEstablished:Z

    if-eqz v0, :cond_1a

    .line 968
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, startArcAction(Z)V

    goto :goto_1a
.end method

.method changeMute(Z)V
    .registers 6
    .param p1, "mute"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1058
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1059
    const-string v0, "[A]:Change mute:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1061
    :try_start_15
    iget-boolean v0, p0, mSystemAudioMute:Z

    if-ne v0, p1, :cond_23

    .line 1062
    const-string v0, "No need to change mute."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    monitor-exit v1

    .line 1076
    :goto_22
    return-void

    .line 1065
    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_32

    .line 1066
    invoke-virtual {p0}, isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1067
    const-string v0, "[A]:System audio is not activated."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22

    .line 1065
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 1072
    :cond_35
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1073
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-eqz p1, :cond_4a

    const/16 v0, 0x65

    :goto_46
    invoke-virtual {p0, v1, v0}, sendUserControlPressedAndReleased(II)V

    goto :goto_22

    :cond_4a
    const/16 v0, 0x66

    goto :goto_46
.end method

.method changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 823
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 824
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v1}, hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 825
    :cond_15
    invoke-virtual {p0, v2, v3}, setSystemAudioMode(ZZ)V

    .line 826
    const/4 v1, 0x6

    invoke-static {p2, v1}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 838
    :goto_1c
    return-void

    .line 829
    :cond_1d
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 830
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_2b

    .line 831
    invoke-virtual {p0, v2, v3}, setSystemAudioMode(ZZ)V

    .line 832
    const/4 v1, 0x3

    invoke-static {p2, v1}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    goto :goto_1c

    .line 836
    :cond_2b
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v1}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_1c
.end method

.method changeVolume(III)V
    .registers 12
    .param p1, "curVolume"    # I
    .param p2, "delta"    # I
    .param p3, "maxVolume"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1029
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1030
    if-eqz p2, :cond_d

    invoke-virtual {p0}, isSystemAudioActivated()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1054
    :cond_d
    :goto_d
    return-void

    .line 1034
    :cond_e
    add-int v2, p1, p2

    .line 1035
    .local v2, "targetVolume":I
    invoke-static {v2, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCecVolume(II)I

    move-result v1

    .line 1036
    .local v1, "cecVolume":I
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1039
    :try_start_17
    iget v3, p0, mSystemAudioVolume:I

    if-ne v1, v3, :cond_2c

    .line 1041
    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v4, 0x0

    iget v5, p0, mSystemAudioVolume:I

    invoke-static {v5, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V

    .line 1043
    monitor-exit v6

    goto :goto_d

    .line 1045
    :catchall_29
    move-exception v3

    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_29

    throw v3

    :cond_2c
    :try_start_2c
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 1047
    const-class v3, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v3}, getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1048
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/VolumeControlAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1049
    new-instance v6, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v7

    if-lez p2, :cond_4d

    move v3, v4

    :goto_46
    invoke-direct {v6, p0, v7, v3}, Lcom/android/server/hdmi/VolumeControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    invoke-virtual {p0, v6}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_d

    :cond_4d
    move v3, v5

    goto :goto_46

    .line 1052
    :cond_4f
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/VolumeControlAction;

    if-lez p2, :cond_5b

    :goto_57
    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/VolumeControlAction;->handleVolumeChange(Z)V

    goto :goto_d

    :cond_5b
    move v4, v5

    goto :goto_57
.end method

.method clearTimerRecording(II[B)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1796
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1797
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1798
    const-string v0, "HdmiCecLocalDeviceTv"

    const-string v1, "Can not start one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    const/16 v0, 0xa2

    invoke-virtual {p0, p1, v0}, announceClearTimerRecordingResult(II)V

    .line 1818
    :goto_17
    return-void

    .line 1803
    :cond_18
    invoke-direct {p0, p1}, checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1804
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const/16 v0, 0xa0

    invoke-virtual {p0, p1, v0}, announceClearTimerRecordingResult(II)V

    goto :goto_17

    .line 1810
    :cond_3c
    invoke-direct {p0, p2, p3}, checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1811
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid record source."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const/16 v0, 0xa1

    invoke-virtual {p0, p1, v0}, announceClearTimerRecordingResult(II)V

    goto :goto_17

    .line 1817
    :cond_64
    invoke-direct {p0, p1, p2, p3}, sendClearTimerMessage(II[B)V

    goto :goto_17
.end method

.method deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 251
    iget-object v3, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 252
    .local v2, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v2, :cond_13

    .line 253
    const/4 v3, 0x3

    invoke-static {p2, v3}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 279
    :goto_12
    return-void

    .line 256
    :cond_13
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 257
    .local v1, "targetAddress":I
    invoke-virtual {p0}, getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 258
    .local v0, "active":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v3

    if-nez v3, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget v3, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v1, v3, :cond_2f

    .line 261
    invoke-static {p2, v4}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    goto :goto_12

    .line 264
    :cond_2f
    if-nez v1, :cond_4a

    .line 265
    invoke-direct {p0}, handleSelectInternalSource()V

    .line 267
    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    invoke-virtual {p0, v1, v3}, setActiveSource(II)V

    .line 268
    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    invoke-virtual {p0, v3}, setActivePath(I)V

    .line 269
    invoke-static {p2, v4}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    goto :goto_12

    .line 272
    :cond_4a
    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 273
    invoke-virtual {p0, v2}, setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 274
    const/4 v3, 0x6

    invoke-static {p2, v3}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    goto :goto_12

    .line 277
    :cond_5a
    const-class v3, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {p0, v3}, removeAction(Ljava/lang/Class;)V

    .line 278
    new-instance v3, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/hdmi/DeviceSelectAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v3}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_12
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5
    .param p1, "initiatedByCec"    # Z
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1608
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1609
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 1614
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1615
    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1616
    const-class v0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1618
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1619
    const-class v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1621
    invoke-direct {p0}, disableSystemAudioIfExist()V

    .line 1622
    invoke-direct {p0}, disableArcIfExist()V

    .line 1624
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 1625
    invoke-direct {p0}, clearDeviceInfoList()V

    .line 1626
    invoke-virtual {p0}, getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 1627
    const v0, 0xffff

    invoke-virtual {p0, v0}, setActivePath(I)V

    .line 1628
    invoke-virtual {p0}, checkIfPendingActionsCleared()V

    .line 1629
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 236
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_14
.end method

.method displayOsd(I)V
    .registers 3
    .param p1, "messageId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1685
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1686
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(I)V

    .line 1687
    return-void
.end method

.method displayOsd(II)V
    .registers 4
    .param p1, "messageId"    # I
    .param p2, "extra"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1691
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1692
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(II)V

    .line 1693
    return-void
.end method

.method doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 8
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 370
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 372
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->isValidPortId(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 373
    invoke-static {p2, v3}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 395
    :goto_10
    return-void

    .line 376
    :cond_11
    invoke-virtual {p0}, getActivePortId()I

    move-result v2

    if-ne p1, v2, :cond_1b

    .line 377
    invoke-static {p2, v4}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    goto :goto_10

    .line 380
    :cond_1b
    iget-object v2, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 381
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 382
    invoke-virtual {p0, p1}, setActivePortId(I)V

    .line 383
    invoke-static {p2, v3}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    goto :goto_10

    .line 386
    :cond_2f
    invoke-virtual {p0}, getActivePortId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4a

    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, getActivePortId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v1

    .line 388
    .local v1, "oldPath":I
    :goto_40
    invoke-virtual {p0, v1}, setActivePath(I)V

    .line 389
    iget-boolean v2, p0, mSkipRoutingControl:Z

    if-eqz v2, :cond_53

    .line 390
    iput-boolean v4, p0, mSkipRoutingControl:Z

    goto :goto_10

    .line 386
    .end local v1    # "oldPath":I
    :cond_4a
    invoke-virtual {p0}, getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    goto :goto_40

    .line 393
    .restart local v1    # "oldPath":I
    :cond_53
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 394
    .local v0, "newPath":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, p2}, startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_10
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1908
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mArcEstablished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mArcEstablished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mArcFeatureEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSystemAudioActivated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mSystemAudioActivated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSystemAudioMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mSystemAudioMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAutoDeviceOff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mAutoDeviceOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAutoWakeup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mAutoWakeup:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSkipRoutingControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mSkipRoutingControl:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPrevPortId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mPrevPortId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    const-string v2, "CEC devices:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1919
    iget-object v2, p0, mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1920
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_d9

    .line 1922
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_e9
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1923
    return-void
.end method

.method getAutoWakeup()Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1601
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1602
    iget-boolean v0, p0, mAutoWakeup:Z

    return v0
.end method

.method getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1371
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1372
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1386
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1387
    iget-object v0, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method final getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1510
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1511
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1512
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_c

    .line 1516
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_1e
    return-object v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method getDeviceInfoList(Z)Ljava/util/List;
    .registers 6
    .param p1, "includeLocalDevice"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1276
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1277
    if-eqz p1, :cond_c

    .line 1278
    iget-object v3, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v2

    .line 1287
    :cond_b
    return-object v2

    .line 1280
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v3, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 1282
    iget-object v3, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1283
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, isLocalDeviceAddress(I)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1284
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method getPortId(I)I
    .registers 3
    .param p1, "physicalAddress"    # I

    .prologue
    .line 324
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    return v0
.end method

.method getPowerStatus()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 415
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result v0

    return v0
.end method

.method protected getPreferredAddress()I
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method getPrevPortId()I
    .registers 3

    .prologue
    .line 331
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_3
    iget v0, p0, mPrevPortId:I

    monitor-exit v1

    return v0

    .line 333
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .prologue
    .line 1395
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 6
    .param p1, "logicalAddress"    # I

    .prologue
    .line 1406
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1407
    :try_start_3
    iget-object v2, p0, mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1408
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_9

    .line 1409
    monitor-exit v3

    .line 1412
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_22
    return-object v1

    :cond_23
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_22

    .line 1413
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2
.end method

.method getSafeCecDevicesLocked()Ljava/util/List;
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
    .line 1417
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v3, p0, mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1419
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, isLocalDeviceAddress(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1422
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1424
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_25
    return-object v2
.end method

.method getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 6
    .param p1, "path"    # I

    .prologue
    .line 1528
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1529
    :try_start_3
    iget-object v2, p0, mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1530
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_9

    .line 1531
    monitor-exit v3

    .line 1534
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_1c

    .line 1535
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method

.method getSafeExternalInputsLocked()Ljava/util/List;
    .registers 2
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
    .line 1295
    iget-object v0, p0, mSafeExternalInputs:Ljava/util/List;

    return-object v0
.end method

.method getSystemAudioModeSetting()Z
    .registers 4

    .prologue
    .line 871
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_system_audio_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 11
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 476
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 477
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 478
    .local v2, "logicalAddress":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v3

    .line 479
    .local v3, "physicalAddress":I
    invoke-virtual {p0, v2}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 480
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_30

    .line 481
    invoke-direct {p0, v3}, handleNewDeviceAtTheTailOfActivePath(I)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 482
    const-string v4, "Device info %X not found; buffering the command"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    iget-object v4, p0, mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 493
    :cond_2f
    :goto_2f
    return v8

    .line 485
    :cond_30
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, isInputReady(I)Z

    move-result v4

    if-nez v4, :cond_51

    .line 486
    const-string v4, "Input not ready for device: %X; buffering the command"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v4, p0, mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_2f

    .line 489
    :cond_51
    invoke-virtual {p0, v2, v7}, updateDevicePowerStatus(II)V

    .line 490
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 491
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/server/hdmi/ActiveSourceHandler;->create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/server/hdmi/ActiveSourceHandler;->process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    goto :goto_2f
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 550
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, broadcastMenuLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 551
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to respond to <Get Menu Language>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 727
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 729
    invoke-virtual {p0, p1}, handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 499
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 503
    invoke-virtual {p0}, getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    iget v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 531
    :cond_11
    :goto_11
    return v4

    .line 506
    :cond_12
    invoke-virtual {p0}, isProhibitMode()Z

    move-result v2

    if-nez v2, :cond_11

    .line 509
    invoke-virtual {p0}, getPrevPortId()I

    move-result v1

    .line 510
    .local v1, "portId":I
    if-eq v1, v5, :cond_3c

    .line 513
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p0, v2}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 514
    .local v0, "inactiveSource":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_11

    .line 517
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v2

    if-eq v2, v1, :cond_11

    .line 522
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 523
    invoke-virtual {p0, v5}, setPrevPortId(I)V

    goto :goto_11

    .line 527
    .end local v0    # "inactiveSource":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_3c
    iget-object v2, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 528
    const v2, 0xffff

    invoke-virtual {p0, v2}, setActivePath(I)V

    .line 529
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    sget-object v3, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_11
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1081
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1083
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-direct {p0, v1, v3}, canStartArcUpdateAction(IZ)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1084
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 1086
    iget-object v1, p0, mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1102
    :cond_19
    :goto_19
    return v3

    .line 1089
    :cond_1a
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1090
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-virtual {p0, v1}, isConnectedToArcPort(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1091
    invoke-virtual {p0, v3}, displayOsd(I)V

    goto :goto_19

    .line 1098
    :cond_2e
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, removeAction(Ljava/lang/Class;)V

    .line 1099
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-direct {v0, p0, v1, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1101
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_19
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 1875
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 613
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1176
    const-class v5, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v5}, getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 1177
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/OneTouchRecordAction;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1179
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 1180
    .local v0, "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v6

    if-eq v5, v6, :cond_26

    .line 1181
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v5

    const/16 v6, 0x30

    invoke-virtual {p0, v5, v6}, announceOneTouchRecordResult(II)V

    .line 1185
    :cond_26
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v5

    .line 1194
    .end local v0    # "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    :goto_2a
    return v5

    .line 1188
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v4

    .line 1189
    .local v4, "recorderAddress":I
    iget-object v5, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeRecordRequestListener(I)[B

    move-result-object v3

    .line 1190
    .local v3, "recordSource":[B
    invoke-virtual {p0, v4, v3}, startOneTouchRecord(I[B)I

    move-result v2

    .line 1191
    .local v2, "reason":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_41

    .line 1192
    iget-object v5, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1194
    :cond_41
    const/4 v5, 0x1

    goto :goto_2a
.end method

.method handleRemoveActiveRoutingPath(I)V
    .registers 6
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1465
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1467
    invoke-virtual {p0}, getActivePath()I

    move-result v1

    invoke-static {p1, v1}, isTailOfActivePath(II)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1468
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, getActivePortId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 1469
    .local v0, "newPath":I
    invoke-virtual {p0}, getActivePath()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1471
    .end local v0    # "newPath":I
    :cond_20
    return-void
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 705
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 707
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 708
    .local v1, "params":[B
    aget-byte v5, v1, v3

    and-int/lit16 v0, v5, 0x80

    .line 709
    .local v0, "mute":I
    aget-byte v5, v1, v3

    and-int/lit8 v2, v5, 0x7f

    .line 710
    .local v2, "volume":I
    const/16 v5, 0x80

    if-ne v0, v5, :cond_16

    move v3, v4

    :cond_16
    invoke-virtual {p0, v3, v2}, setAudioStatus(ZI)V

    .line 711
    return v4
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 10
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 571
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 572
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v2

    .line 573
    .local v2, "path":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 574
    .local v1, "address":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    const/4 v5, 0x2

    aget-byte v4, v3, v5

    .line 576
    .local v4, "type":I
    invoke-virtual {p0, v1, v4, v2}, updateCecSwitchInfo(III)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 594
    :goto_1d
    return v7

    .line 579
    :cond_1e
    const-class v3, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v3}, hasAction(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 580
    const-string v3, "HdmiCecLocalDeviceTv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored while Device Discovery Action is in progress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 584
    :cond_3f
    invoke-virtual {p0, v1, v2}, isInDeviceList(II)Z

    move-result v3

    if-nez v3, :cond_48

    .line 585
    invoke-direct {p0, v2}, handleNewDeviceAtTheTailOfActivePath(I)Z

    .line 590
    :cond_48
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0, v2}, getPortId(I)I

    move-result v3

    const v5, 0xffffff

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 592
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0, v0}, addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 593
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    goto :goto_1d
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 599
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 600
    .local v0, "newStatus":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-virtual {p0, v1, v0}, updateDevicePowerStatus(II)V

    .line 601
    const/4 v1, 0x1

    return v1
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 539
    iget v0, p0, mAddress:I

    invoke-virtual {p0}, getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v0, v1, :cond_1c

    .line 540
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    invoke-virtual {p0}, getActivePath()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 543
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 689
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 691
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    .line 692
    .local v2, "params":[B
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 693
    .local v0, "currentPath":I
    invoke-virtual {p0}, getActivePath()I

    move-result v3

    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiUtils;->isAffectingActiveRoutingPath(II)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 694
    iget-object v3, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 695
    const-class v3, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v3}, removeAction(Ljava/lang/Class;)V

    .line 696
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v1

    .line 697
    .local v1, "newPath":I
    new-instance v3, Lcom/android/server/hdmi/RoutingControlAction;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v5, v4}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v3}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 699
    .end local v1    # "newPath":I
    :cond_2e
    return v5
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 13
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 735
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v9

    .line 736
    .local v9, "source":I
    invoke-virtual {p0, v9}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v7

    .line 738
    .local v7, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v7, :cond_24

    .line 739
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No source device info for <Set Osd Name>."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_23
    return v10

    .line 742
    :cond_24
    const/4 v6, 0x0

    .line 744
    .local v6, "osdName":Ljava/lang/String;
    :try_start_25
    new-instance v6, Ljava/lang/String;

    .end local v6    # "osdName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_30} :catch_53

    .line 750
    .restart local v6    # "osdName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 751
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore incoming <Set Osd Name> having same osd name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 745
    .end local v6    # "osdName":Ljava/lang/String;
    :catch_53
    move-exception v8

    .line 746
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid <Set Osd Name> request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 755
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "osdName":Ljava/lang/String;
    :cond_6d
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v4

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v5

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_23
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1142
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1143
    invoke-direct {p0, p1}, isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1144
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_16

    .line 1146
    iget-object v1, p0, mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1156
    :goto_15
    return v4

    .line 1149
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid <Set System Audio Mode> message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_15

    .line 1153
    :cond_36
    new-instance v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1155
    .local v0, "action":Lcom/android/server/hdmi/SystemAudioActionFromAvr;
    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_15
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1162
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1163
    invoke-direct {p0, p1}, isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid <System Audio Mode Status> message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    :goto_23
    return v2

    .line 1168
    :cond_24
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    invoke-virtual {p0, v0, v2}, setSystemAudioMode(ZZ)V

    goto :goto_23
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1124
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1125
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1126
    invoke-virtual {p0, v2}, setArcStatus(Z)Z

    .line 1136
    :goto_10
    return v3

    .line 1132
    :cond_11
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, removeAction(Ljava/lang/Class;)V

    .line 1133
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1135
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_10
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 717
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 718
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, mAutoWakeup:Z

    if-eqz v0, :cond_14

    .line 719
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 721
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 1199
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 1200
    .local v0, "params":[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 1201
    .local v1, "timerClearedStatusData":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p0, v2, v1}, announceTimerRecordingResult(II)V

    .line 1202
    const/4 v2, 0x1

    return v2
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method hasSystemAudioDevice()Z
    .registers 2

    .prologue
    .line 1391
    invoke-virtual {p0}, getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method isArcEstablished()Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 947
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 948
    iget-boolean v1, p0, mArcEstablished:Z

    if-eqz v1, :cond_1d

    .line 949
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 950
    iget-object v1, p0, mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    .line 953
    .end local v0    # "i":I
    :goto_19
    return v1

    .line 949
    .restart local v0    # "i":I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 953
    .end local v0    # "i":I
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method isArcFeatureEnabled(I)Z
    .registers 3
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 976
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 977
    iget-object v0, p0, mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .registers 3
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 931
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 932
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnected(I)Z

    move-result v0

    return v0
.end method

.method isInDeviceList(II)Z
    .registers 6
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1549
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1550
    invoke-virtual {p0, p1}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1551
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_b

    .line 1554
    :cond_a
    :goto_a
    return v1

    :cond_b
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p2, :cond_a

    const/4 v1, 0x1

    goto :goto_a
.end method

.method protected isInputReady(I)Z
    .registers 4
    .param p1, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 177
    iget-object v0, p0, mTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPowerStandbyOrTransient()Z
    .registers 2

    .prologue
    .line 1680
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    return v0
.end method

.method isProhibitMode()Z
    .registers 2

    .prologue
    .line 1676
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result v0

    return v0
.end method

.method isSystemAudioActivated()Z
    .registers 3

    .prologue
    .line 862
    invoke-virtual {p0}, hasSystemAudioDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 863
    const/4 v0, 0x0

    .line 866
    :goto_7
    return v0

    .line 865
    :cond_8
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 866
    :try_start_b
    iget-boolean v0, p0, mSystemAudioActivated:Z

    monitor-exit v1

    goto :goto_7

    .line 867
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method launchRoutingControl(Z)V
    .registers 6
    .param p1, "routingForBootup"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1481
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1483
    invoke-virtual {p0}, getActivePortId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    .line 1484
    if-nez p1, :cond_27

    invoke-virtual {p0}, isProhibitMode()Z

    move-result v2

    if-nez v2, :cond_27

    .line 1485
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, getActivePortId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v1

    .line 1486
    .local v1, "newPath":I
    invoke-virtual {p0, v1}, setActivePath(I)V

    .line 1487
    invoke-virtual {p0}, getActivePath()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, p1, v3}, startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1498
    .end local v1    # "newPath":I
    :cond_27
    :goto_27
    return-void

    .line 1490
    :cond_28
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 1491
    .local v0, "activePath":I
    invoke-virtual {p0, v0}, setActivePath(I)V

    .line 1492
    if-nez p1, :cond_27

    iget-object v2, p0, mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/DelayedMessageBuffer;->isBuffered(I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1494
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, mAddress:I

    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_27
.end method

.method protected onAddressAllocated(II)V
    .registers 12
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 192
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 193
    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v2

    .line 194
    .local v2, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 195
    .local v1, "port":Landroid/hardware/hdmi/HdmiPortInfo;
    iget-object v3, p0, mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v6

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_f

    .line 197
    .end local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_29
    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v6, p0, mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 198
    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v6, p0, mAddress:I

    iget-object v7, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v7

    iget v8, p0, mDeviceType:I

    invoke-static {v6, v7, v8}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 200
    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v6, p0, mAddress:I

    iget-object v7, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 202
    iget-object v3, p0, mCecSwitches:Landroid/util/ArraySet;

    iget-object v6, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v3, p0, mTvInputs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 204
    const/4 v3, 0x3

    if-ne p2, v3, :cond_7f

    move v3, v4

    :goto_6c
    iput-boolean v3, p0, mSkipRoutingControl:Z

    .line 205
    if-eqz p2, :cond_81

    if-eq p2, v4, :cond_81

    :goto_72
    invoke-virtual {p0, v4}, launchRoutingControl(Z)V

    .line 207
    invoke-direct {p0}, initLocalDeviceAddresses()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, mLocalDeviceAddresses:Ljava/util/List;

    .line 208
    invoke-direct {p0}, launchDeviceDiscovery()V

    .line 209
    return-void

    :cond_7f
    move v3, v5

    .line 204
    goto :goto_6c

    :cond_81
    move v4, v5

    .line 205
    goto :goto_72
.end method

.method onHotplug(IZ)V
    .registers 5
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1560
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1562
    if-nez p2, :cond_8

    .line 1563
    invoke-direct {p0, p1}, removeCecSwitches(I)V

    .line 1566
    :cond_8
    const-class v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, v1}, getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1567
    .local v0, "hotplugActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HotplugDetectionAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1571
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevicesNow()V

    .line 1573
    :cond_1e
    invoke-direct {p0, p1, p2}, updateArcFeatureStatus(IZ)V

    .line 1574
    return-void
.end method

.method onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "avr"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 799
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 800
    invoke-virtual {p0}, getSystemAudioModeSetting()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 801
    new-instance v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 803
    :cond_1b
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {p0, v0}, isArcFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_31

    const-class v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0, v0}, hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 805
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, startArcAction(Z)V

    .line 807
    :cond_31
    return-void
.end method

.method protected onStandby(ZI)V
    .registers 6
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1664
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1666
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1673
    :cond_b
    :goto_b
    return-void

    .line 1669
    :cond_c
    if-nez p1, :cond_b

    iget-boolean v0, p0, mAutoDeviceOff:Z

    if-eqz v0, :cond_b

    .line 1670
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_b
.end method

.method processAllDelayedMessages()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1890
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1891
    iget-object v0, p0, mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processAllMessages()V

    .line 1892
    return-void
.end method

.method processDelayedActiveSource(I)V
    .registers 3
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1902
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1903
    iget-object v0, p0, mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processActiveSource(I)V

    .line 1904
    return-void
.end method

.method processDelayedMessages(I)V
    .registers 3
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1896
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1897
    iget-object v0, p0, mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processMessagesForDevice(I)V

    .line 1898
    return-void
.end method

.method final removeCecDevice(I)V
    .registers 4
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1456
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1457
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v1

    invoke-direct {p0, v1}, removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1459
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushMessagesFrom(I)V

    .line 1460
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1461
    return-void
.end method

.method protected sendKeyEvent(IZ)V
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 428
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isSupportedKeycode(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 429
    const-string v2, "HdmiCecLocalDeviceTv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_21
    return-void

    .line 432
    :cond_22
    const-class v2, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, v2}, getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 433
    .local v0, "action":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/SendKeyAction;>;"
    invoke-direct {p0}, findKeyReceiverAddress()I

    move-result v1

    .line 434
    .local v1, "logicalAddress":I
    iget v2, p0, mAddress:I

    if-ne v1, v2, :cond_53

    .line 435
    const-string v2, "HdmiCecLocalDeviceTv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard key event to itself :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pressed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 438
    :cond_53
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 439
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    goto :goto_21

    .line 441
    :cond_64
    if-eqz p2, :cond_72

    .line 442
    const/4 v2, -0x1

    if-eq v1, v2, :cond_72

    .line 443
    new-instance v2, Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    invoke-virtual {p0, v2}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_21

    .line 447
    :cond_72
    const-string v2, "HdmiCecLocalDeviceTv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard key event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pressed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method protected sendStandby(I)V
    .registers 6
    .param p1, "deviceId"    # I

    .prologue
    .line 1880
    iget-object v2, p0, mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1881
    .local v1, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_b

    .line 1886
    :goto_a
    return-void

    .line 1884
    :cond_b
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 1885
    .local v0, "targetAddress":I
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, mAddress:I

    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_a
.end method

.method setArcStatus(Z)Z
    .registers 7
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 881
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 883
    const-string v1, "Set Arc Status[old:%b new:%b]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, mArcEstablished:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    iget-boolean v0, p0, mArcEstablished:Z

    .line 886
    .local v0, "oldStatus":Z
    invoke-virtual {p0, p1}, setAudioReturnChannel(Z)V

    .line 888
    invoke-direct {p0, p1}, notifyArcStatusToAudioService(Z)V

    .line 890
    iput-boolean p1, p0, mArcEstablished:Z

    .line 891
    return v0
.end method

.method setAudioReturnChannel(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 899
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 900
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 901
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_12

    .line 902
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->setAudioReturnChannel(IZ)V

    .line 904
    :cond_12
    return-void
.end method

.method setAudioStatus(ZI)V
    .registers 7
    .param p1, "mute"    # Z
    .param p2, "volume"    # I

    .prologue
    .line 1015
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1016
    :try_start_3
    iput-boolean p1, p0, mSystemAudioMute:Z

    .line 1017
    iput p2, p0, mSystemAudioVolume:I

    .line 1018
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 1020
    .local v0, "maxVolume":I
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2, v0}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    move-result v3

    invoke-virtual {v1, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V

    .line 1022
    const/4 v1, 0x2

    if-eqz p1, :cond_20

    const/16 p2, 0x65

    .end local p2    # "volume":I
    :cond_20
    invoke-virtual {p0, v1, p2}, displayOsd(II)V

    .line 1024
    monitor-exit v2

    .line 1025
    return-void

    .line 1024
    .end local v0    # "maxVolume":I
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method setAutoDeviceOff(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1589
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1590
    iput-boolean p1, p0, mAutoDeviceOff:Z

    .line 1591
    return-void
.end method

.method setAutoWakeup(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1595
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1596
    iput-boolean p1, p0, mAutoWakeup:Z

    .line 1597
    return-void
.end method

.method protected setPreferredAddress(I)V
    .registers 4
    .param p1, "addr"    # I

    .prologue
    .line 229
    const-string v0, "HdmiCecLocalDeviceTv"

    const-string v1, "Preferred addres will not be stored for TV"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method setPrevPortId(I)V
    .registers 4
    .param p1, "portId"    # I

    .prologue
    .line 341
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_3
    iput p1, p0, mPrevPortId:I

    .line 343
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method setSystemAudioMode(ZZ)V
    .registers 7
    .param p1, "on"    # Z
    .param p2, "updateSetting"    # Z

    .prologue
    .line 842
    const-string v0, "System Audio Mode change[old:%b new:%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, mSystemAudioActivated:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    if-eqz p2, :cond_22

    .line 845
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_system_audio_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeBooleanSetting(Ljava/lang/String;Z)V

    .line 847
    :cond_22
    invoke-direct {p0, p1}, updateAudioManagerForSystemAudio(Z)V

    .line 848
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 849
    :try_start_28
    iget-boolean v0, p0, mSystemAudioActivated:Z

    if-eq v0, p1, :cond_33

    .line 850
    iput-boolean p1, p0, mSystemAudioActivated:Z

    .line 851
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    .line 853
    :cond_33
    monitor-exit v1

    .line 854
    return-void

    .line 853
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_35

    throw v0
.end method

.method startArcAction(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 982
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 983
    invoke-virtual {p0}, getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 984
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_11

    .line 985
    const-string v1, "HdmiCecLocalDeviceTv"

    const-string v2, "Failed to start arc action; No AVR device."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_10
    :goto_10
    return-void

    .line 988
    :cond_11
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-direct {p0, v1, p1}, canStartArcUpdateAction(IZ)Z

    move-result v1

    if-nez v1, :cond_33

    .line 989
    const-string v1, "HdmiCecLocalDeviceTv"

    const-string v2, "Failed to start arc action; ARC configuration check failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    if-eqz p1, :cond_10

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, isConnectedToArcPort(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 991
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, displayOsd(I)V

    goto :goto_10

    .line 997
    :cond_33
    if-eqz p1, :cond_4f

    .line 998
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, removeAction(Ljava/lang/Class;)V

    .line 999
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1000
    new-instance v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_10

    .line 1003
    :cond_4f
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, removeAction(Ljava/lang/Class;)V

    .line 1004
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1005
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_10
.end method

.method startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .registers 8
    .param p1, "activeSource"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .param p2, "deviceType"    # I

    .prologue
    .line 630
    const-class v2, Lcom/android/server/hdmi/NewDeviceAction;

    invoke-virtual {p0, v2}, getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/NewDeviceAction;

    .line 639
    .local v0, "action":Lcom/android/server/hdmi/NewDeviceAction;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/NewDeviceAction;->isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 646
    .end local v0    # "action":Lcom/android/server/hdmi/NewDeviceAction;
    :goto_1c
    return-void

    .line 644
    :cond_1d
    new-instance v2, Lcom/android/server/hdmi/NewDeviceAction;

    iget v3, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v4, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-direct {v2, p0, v3, v4, p2}, Lcom/android/server/hdmi/NewDeviceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V

    invoke-virtual {p0, v2}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_1c
.end method

.method startOneTouchRecord(I[B)I
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1698
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1699
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1700
    const-string v1, "HdmiCecLocalDeviceTv"

    const-string v2, "Can not start one touch record. CEC control is disabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/16 v1, 0x33

    invoke-virtual {p0, p1, v1}, announceOneTouchRecordResult(II)V

    .line 1722
    :goto_18
    return v0

    .line 1705
    :cond_19
    invoke-direct {p0, p1}, checkRecorder(I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1706
    const-string v1, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid recorder address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/16 v1, 0x31

    invoke-virtual {p0, p1, v1}, announceOneTouchRecordResult(II)V

    goto :goto_18

    .line 1712
    :cond_3d
    invoke-direct {p0, p2}, checkRecordSource([B)Z

    move-result v0

    if-nez v0, :cond_66

    .line 1713
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid record source."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, announceOneTouchRecordResult(II)V

    .line 1716
    const/4 v0, 0x2

    goto :goto_18

    .line 1719
    :cond_66
    new-instance v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchRecordAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V

    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1720
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start new [One Touch Record]-Target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recordSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const/4 v0, -0x1

    goto :goto_18
.end method

.method startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 7
    .param p1, "oldPath"    # I
    .param p2, "newPath"    # I
    .param p3, "queryDevicePowerStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 401
    if-ne p1, p2, :cond_6

    .line 410
    :goto_5
    return-void

    .line 404
    :cond_6
    iget v1, p0, mAddress:I

    invoke-static {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 406
    .local v0, "routingChange":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 407
    const-class v1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v1}, removeAction(Ljava/lang/Class;)V

    .line 408
    new-instance v1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v1}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_5
.end method

.method startTimerRecording(II[B)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1760
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1761
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1762
    const-string v0, "HdmiCecLocalDeviceTv"

    const-string v1, "Can not start one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, announceTimerRecordingResult(II)V

    .line 1787
    :goto_16
    return-void

    .line 1768
    :cond_17
    invoke-direct {p0, p1}, checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1769
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, announceTimerRecordingResult(II)V

    goto :goto_16

    .line 1775
    :cond_3a
    invoke-direct {p0, p2, p3}, checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_61

    .line 1776
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid record source."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, announceTimerRecordingResult(II)V

    goto :goto_16

    .line 1783
    :cond_61
    new-instance v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/TimerRecordingAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V

    invoke-virtual {p0, v0}, addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1785
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start [Timer Recording]-Target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SourceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RecordSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method

.method stopOneTouchRecord(I)V
    .registers 5
    .param p1, "recorderAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1727
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 1728
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1729
    const-string v0, "HdmiCecLocalDeviceTv"

    const-string v1, "Can not stop one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0}, announceOneTouchRecordResult(II)V

    .line 1745
    :goto_17
    return-void

    .line 1734
    :cond_18
    invoke-direct {p0, p1}, checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1735
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const/16 v0, 0x31

    invoke-virtual {p0, p1, v0}, announceOneTouchRecordResult(II)V

    goto :goto_17

    .line 1742
    :cond_3c
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, removeAction(Ljava/lang/Class;)V

    .line 1743
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1744
    const-string v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop [One Touch Record]-Target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method updateActiveInput(IZ)V
    .registers 7
    .param p1, "path"    # I
    .param p2, "notifyInputChange"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 350
    invoke-virtual {p0, p1}, setActivePath(I)V

    .line 353
    if-eqz p2, :cond_2e

    .line 354
    invoke-virtual {p0}, getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 355
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p0, v2}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 356
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_29

    .line 357
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, getActivePortId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 358
    if-nez v1, :cond_29

    .line 361
    new-instance v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0}, getActivePortId()I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    .line 364
    .restart local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_29
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 366
    .end local v0    # "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2e
    return-void
.end method

.method updateActiveSource(II)V
    .registers 4
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 300
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {p0, v0}, updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 301
    return-void
.end method

.method updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .registers 5
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 307
    iget-object v1, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 321
    :cond_b
    :goto_b
    return-void

    .line 310
    :cond_c
    invoke-virtual {p0, p1}, setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 311
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 312
    .local v0, "logicalAddress":I
    invoke-virtual {p0, v0}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    iget v1, p0, mAddress:I

    if-eq v0, v1, :cond_b

    .line 313
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v1

    invoke-virtual {p0}, getActivePortId()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 314
    invoke-virtual {p0}, getActivePortId()I

    move-result v1

    invoke-virtual {p0, v1}, setPrevPortId(I)V

    goto :goto_b
.end method

.method updateCecSwitchInfo(III)Z
    .registers 6
    .param p1, "address"    # I
    .param p2, "type"    # I
    .param p3, "path"    # I

    .prologue
    .line 617
    const/16 v0, 0xf

    if-ne p1, v0, :cond_15

    const/4 v0, 0x6

    if-ne p2, v0, :cond_15

    .line 619
    iget-object v0, p0, mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-direct {p0}, updateSafeDeviceInfoList()V

    .line 621
    const/4 v0, 0x1

    .line 626
    :goto_14
    return v0

    .line 623
    :cond_15
    const/4 v0, 0x5

    if-ne p2, v0, :cond_21

    .line 624
    iget-object v0, p0, mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_21
    const/4 v0, 0x0

    goto :goto_14
.end method

.method updateDevicePowerStatus(II)V
    .registers 8
    .param p1, "logicalAddress"    # I
    .param p2, "newPowerStatus"    # I

    .prologue
    .line 1855
    invoke-virtual {p0, p1}, getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1856
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_1f

    .line 1857
    const-string v2, "HdmiCecLocalDeviceTv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not update power status of non-existing device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :cond_1e
    :goto_1e
    return-void

    .line 1861
    :cond_1f
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v2

    if-eq v2, p2, :cond_1e

    .line 1865
    invoke-static {v0, p2}, Lcom/android/server/hdmi/HdmiUtils;->cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 1867
    .local v1, "newInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-direct {p0, v1}, addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1869
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_1e
.end method
