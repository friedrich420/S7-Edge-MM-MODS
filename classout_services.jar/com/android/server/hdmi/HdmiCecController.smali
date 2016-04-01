.class final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:[B

.field private static final NUM_LOGICAL_ADDRESS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HdmiCecController"


# instance fields
.field private mControlHandler:Landroid/os/Handler;

.field private mIoHandler:Landroid/os/Handler;

.field private final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNativePtr:J

.field private final mRemoteDeviceAddressPredicate:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSystemAudioAddressPredicate:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, EMPTY_BODY:[B

    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, mRemoteDeviceAddressPredicate:Lcom/android/internal/util/Predicate;

    .line 81
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$2;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, mSystemAudioAddressPredicate:Lcom/android/internal/util/Predicate;

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mLocalDevices:Landroid/util/SparseArray;

    .line 106
    iput-object p1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecController;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, isAllocatedLocalDeviceAddress(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiCecController;III)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, sendPollMessage(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p5, "x5"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    invoke-direct {p0, p1}, runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(I[B)[B
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # [B

    .prologue
    .line 50
    invoke-static {p0, p1}, buildBody(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/hdmi/HdmiCecController;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecController;

    .prologue
    .line 50
    iget-wide v0, p0, mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$700(JII[B)I
    .registers 7
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [B

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, nativeSendCecCommand(JII[B)I

    move-result v0

    return v0
.end method

.method private assertRunOnIoThread()V
    .registers 3

    .prologue
    .line 484
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, mIoHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on io thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_14
    return-void
.end method

.method private assertRunOnServiceThread()V
    .registers 3

    .prologue
    .line 490
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_14
    return-void
.end method

.method private static buildBody(I[B)[B
    .registers 6
    .param p0, "opcode"    # I
    .param p1, "params"    # [B

    .prologue
    const/4 v3, 0x0

    .line 220
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 221
    .local v0, "body":[B
    int-to-byte v1, p0

    aput-byte v1, v0, v3

    .line 222
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 223
    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 7
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 120
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {v0, p0}, <init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 121
    .local v0, "controller":Lcom/android/server/hdmi/HdmiCecController;
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {v0, v1}, nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    move-result-wide v2

    .line 122
    .local v2, "nativePtr":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1a

    .line 123
    const/4 v0, 0x0

    .line 124
    const/4 v1, 0x0

    .line 128
    :goto_19
    return-object v1

    .line 127
    :cond_1a
    invoke-direct {v0, v2, v3}, init(J)V

    move-object v1, v0

    .line 128
    goto :goto_19
.end method

.method private handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 16
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0xf

    const/4 v11, 0x1

    const/4 v8, 0x3

    .line 172
    invoke-direct {p0}, assertRunOnIoThread()V

    .line 173
    move v6, p2

    .line 176
    .local v6, "startAddress":I
    if-ne p2, v9, :cond_16

    .line 177
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v10, :cond_16

    .line 178
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v7

    if-ne p1, v7, :cond_36

    .line 179
    move v6, v3

    .line 185
    .end local v3    # "i":I
    :cond_16
    const/16 v5, 0xf

    .line 187
    .local v5, "logicalAddress":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_19
    if-ge v3, v10, :cond_3e

    .line 188
    add-int v7, v6, v3

    rem-int/lit8 v1, v7, 0x10

    .line 189
    .local v1, "curAddress":I
    if-eq v1, v9, :cond_65

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v7

    if-ne p1, v7, :cond_65

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "failedPollingCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_29
    if-ge v4, v8, :cond_39

    .line 193
    invoke-direct {p0, v1, v1, v11}, sendPollMessage(III)Z

    move-result v7

    if-nez v7, :cond_33

    .line 194
    add-int/lit8 v2, v2, 0x1

    .line 192
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 177
    .end local v1    # "curAddress":I
    .end local v2    # "failedPollingCount":I
    .end local v4    # "j":I
    .end local v5    # "logicalAddress":I
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 199
    .restart local v1    # "curAddress":I
    .restart local v2    # "failedPollingCount":I
    .restart local v4    # "j":I
    .restart local v5    # "logicalAddress":I
    :cond_39
    mul-int/lit8 v7, v2, 0x2

    if-le v7, v8, :cond_65

    .line 200
    move v5, v1

    .line 206
    .end local v1    # "curAddress":I
    .end local v2    # "failedPollingCount":I
    .end local v4    # "j":I
    :cond_3e
    move v0, v5

    .line 207
    .local v0, "assignedAddress":I
    const-string v7, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    if-eqz p3, :cond_64

    .line 210
    new-instance v7, Lcom/android/server/hdmi/HdmiCecController$4;

    invoke-direct {v7, p0, p3, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V

    invoke-direct {p0, v7}, runOnServiceThread(Ljava/lang/Runnable;)V

    .line 217
    :cond_64
    return-void

    .line 187
    .end local v0    # "assignedAddress":I
    .restart local v1    # "curAddress":I
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_19
.end method

.method private handleHotplug(IZ)V
    .registers 7
    .param p1, "port"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 613
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 614
    const-string v0, "Hotplug event:[port:%d, connected:%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onHotplug(IZ)V

    .line 616
    return-void
.end method

.method private handleIncomingCecCommand(II[B)V
    .registers 7
    .param p1, "srcAddress"    # I
    .param p2, "dstAddress"    # I
    .param p3, "body"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 602
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 603
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 604
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[R]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    invoke-direct {p0, v0}, onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 606
    return-void
.end method

.method private init(J)V
    .registers 6
    .param p1, "nativePtr"    # J

    .prologue
    .line 132
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mIoHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mControlHandler:Landroid/os/Handler;

    .line 134
    iput-wide p1, p0, mNativePtr:J

    .line 135
    return-void
.end method

.method private isAcceptableAddress(I)Z
    .registers 3
    .param p1, "address"    # I

    .prologue
    .line 521
    const/16 v0, 0xf

    if-ne p1, v0, :cond_6

    .line 522
    const/4 v0, 0x1

    .line 524
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, isAllocatedLocalDeviceAddress(I)Z

    move-result v0

    goto :goto_5
.end method

.method private isAllocatedLocalDeviceAddress(I)Z
    .registers 4
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 425
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 427
    iget-object v1, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAddressOf(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 428
    const/4 v1, 0x1

    .line 431
    :goto_1b
    return v1

    .line 426
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 431
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static native nativeAddLogicalAddress(JI)I
.end method

.method private static native nativeClearLogicalAddress(J)V
.end method

.method private static native nativeGetPhysicalAddress(J)I
.end method

.method private static native nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;
.end method

.method private static native nativeGetVendorId(J)I
.end method

.method private static native nativeGetVersion(J)I
.end method

.method private static native nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeIsConnected(JI)Z
.end method

.method private static native nativeSendCecCommand(JII[B)I
.end method

.method private static native nativeSetAudioReturnChannel(JIZ)V
.end method

.method private static native nativeSetOption(JII)V
.end method

.method private onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 530
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    invoke-direct {p0, v0}, isAcceptableAddress(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 535
    :goto_15
    return-void

    .line 534
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_15
.end method

.method private pickPollCandidates(I)Ljava/util/List;
    .registers 8
    .param p1, "pickStrategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    and-int/lit8 v4, p1, 0x3

    .line 390
    .local v4, "strategy":I
    const/4 v2, 0x0

    .line 391
    .local v2, "pickPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Ljava/lang/Integer;>;"
    packed-switch v4, :pswitch_data_4a

    .line 397
    iget-object v2, p0, mRemoteDeviceAddressPredicate:Lcom/android/internal/util/Predicate;

    .line 401
    :goto_8
    const/high16 v5, 0x30000

    and-int v1, p1, v5

    .line 402
    .local v1, "iterationStrategy":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 403
    .local v3, "pollingCandidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    packed-switch v1, :pswitch_data_50

    .line 413
    const/16 v0, 0xe

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_48

    .line 414
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 393
    .end local v0    # "i":I
    .end local v1    # "iterationStrategy":I
    .end local v3    # "pollingCandidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :pswitch_2c
    iget-object v2, p0, mSystemAudioAddressPredicate:Lcom/android/internal/util/Predicate;

    .line 394
    goto :goto_8

    .line 405
    .restart local v1    # "iterationStrategy":I
    .restart local v3    # "pollingCandidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :pswitch_2f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_30
    const/16 v5, 0xe

    if-gt v0, v5, :cond_48

    .line 406
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 407
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 420
    :cond_48
    return-object v3

    .line 391
    nop

    :pswitch_data_4a
    .packed-switch 0x2
        :pswitch_2c
    .end packed-switch

    .line 403
    :pswitch_data_50
    .packed-switch 0x10000
        :pswitch_2f
    .end packed-switch
.end method

.method private runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 14
    .param p1, "sourceAddress"    # I
    .param p3, "retryCount"    # I
    .param p4, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "allocated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 438
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 439
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 440
    if-eqz p4, :cond_1d

    .line 441
    const-string v0, "[P]:AllocatedAddress=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-interface {p4, p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    .line 465
    :cond_1d
    :goto_1d
    return-void

    .line 447
    :cond_1e
    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 450
    .local v3, "candidate":Ljava/lang/Integer;
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$5;

    move-object v1, p0

    move v2, p1

    move v4, p3

    move-object v5, p5

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V

    invoke-direct {p0, v0}, runOnIoThread(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method private runOnIoThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 499
    iget-object v0, p0, mIoHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    return-void
.end method

.method private runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 503
    iget-object v0, p0, mControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    return-void
.end method

.method private sendPollMessage(III)Z
    .registers 8
    .param p1, "sourceAddress"    # I
    .param p2, "destinationAddress"    # I
    .param p3, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .prologue
    .line 469
    invoke-direct {p0}, assertRunOnIoThread()V

    .line 470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p3, :cond_15

    .line 475
    iget-wide v2, p0, mNativePtr:J

    sget-object v1, EMPTY_BODY:[B

    invoke-static {v2, v3, p1, p2, v1}, nativeSendCecCommand(JII[B)I

    move-result v1

    if-nez v1, :cond_12

    .line 477
    const/4 v1, 0x1

    .line 480
    :goto_11
    return v1

    .line 470
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 480
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method


# virtual methods
.method addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 4
    .param p1, "deviceType"    # I
    .param p2, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 140
    iget-object v0, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    return-void
.end method

.method addLogicalAddress(I)I
    .registers 4
    .param p1, "newLogicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 255
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 256
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeAddLogicalAddress(JI)I

    move-result v0

    .line 258
    :goto_f
    return v0

    :cond_10
    const/4 v0, -0x1

    goto :goto_f
.end method

.method allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 5
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 161
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    invoke-direct {p0, v0}, runOnIoThread(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method clearLocalDevices()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 279
    iget-object v0, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 280
    return-void
.end method

.method clearLogicalAddress()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 271
    iget-object v1, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearAddress()V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 273
    :cond_1a
    iget-wide v2, p0, mNativePtr:J

    invoke-static {v2, v3}, nativeClearLogicalAddress(J)V

    .line 274
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 619
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HdmiCecLocalDevice #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 622
    iget-object v1, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 623
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    :cond_39
    return-void
.end method

.method flush(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 508
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 509
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, runOnIoThread(Ljava/lang/Runnable;)V

    .line 517
    return-void
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 3
    .param p1, "deviceType"    # I

    .prologue
    .line 239
    iget-object v0, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object v0
.end method

.method getLocalDeviceList()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 385
    iget-object v0, p0, mLocalDevices:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPhysicalAddress()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 293
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetPhysicalAddress(J)I

    move-result v0

    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 3

    .prologue
    .line 228
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method getVendorId()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 315
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetVendorId(J)I

    move-result v0

    return v0
.end method

.method getVersion()I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 304
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1}, nativeGetVersion(J)I

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .registers 4
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 352
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1}, nativeIsConnected(JI)Z

    move-result v0

    return v0
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/16 v3, 0xf

    .line 539
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 541
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    .line 542
    .local v2, "src":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 543
    .local v0, "dest":I
    if-eq v2, v3, :cond_11

    if-ne v0, v3, :cond_12

    .line 554
    :cond_11
    :goto_11
    return-void

    .line 548
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    .line 549
    .local v1, "originalOpcode":I
    if-eqz v1, :cond_11

    .line 552
    invoke-static {v2, v0, v1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_11
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .registers 11
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 372
    invoke-direct {p0, p3}, pickPollCandidates(I)Ljava/util/List;

    move-result-object v2

    .line 373
    .local v2, "pollingCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "allocated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, p0

    move v1, p2

    move v3, p4

    move-object v4, p1

    .line 374
    invoke-direct/range {v0 .. v5}, runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    .line 375
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 560
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 566
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-direct {p0, v0}, runOnIoThread(Ljava/lang/Runnable;)V

    .line 595
    return-void
.end method

.method setAudioReturnChannel(IZ)V
    .registers 5
    .param p1, "port"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 340
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1, p2}, nativeSetAudioReturnChannel(JIZ)V

    .line 341
    return-void
.end method

.method setOption(II)V
    .registers 7
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 327
    const-string/jumbo v0, "setOption: [flag:%d, value:%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    iget-wide v0, p0, mNativePtr:J

    invoke-static {v0, v1, p1, p2}, nativeSetOption(JII)V

    .line 329
    return-void
.end method
