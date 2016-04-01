.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;,
        Lcom/android/server/usb/UsbPortManager$PortInfo;
    }
.end annotation


# static fields
.field private static final COMBO_SINK_DEVICE:I

.field private static final COMBO_SINK_HOST:I

.field private static final COMBO_SOURCE_DEVICE:I

.field private static final COMBO_SOURCE_HOST:I

.field private static final MSG_UPDATE_PORTS:I = 0x1

.field private static final PORT_DATA_ROLE_DEVICE:Ljava/lang/String; = "device"

.field private static final PORT_DATA_ROLE_HOST:Ljava/lang/String; = "host"

.field private static final PORT_MODE_DFP:Ljava/lang/String; = "dfp"

.field private static final PORT_MODE_UFP:Ljava/lang/String; = "ufp"

.field private static final PORT_POWER_ROLE_SINK:Ljava/lang/String; = "sink"

.field private static final PORT_POWER_ROLE_SOURCE:Ljava/lang/String; = "source"

.field private static final SYSFS_CLASS:Ljava/lang/String; = "/sys/class/dual_role_usb"

.field private static final SYSFS_PORT_DATA_ROLE:Ljava/lang/String; = "data_role"

.field private static final SYSFS_PORT_MODE:Ljava/lang/String; = "mode"

.field private static final SYSFS_PORT_POWER_ROLE:Ljava/lang/String; = "power_role"

.field private static final SYSFS_PORT_SUPPORTED_MODES:Ljava/lang/String; = "supported_modes"

.field private static final TAG:Ljava/lang/String; = "UsbPortManager"

.field private static final UEVENT_FILTER:Ljava/lang/String; = "SUBSYSTEM=dual_role_usb"

.field private static final USB_TYPEC_PROP_PREFIX:Ljava/lang/String; = "sys.usb.typec."

.field private static final USB_TYPEC_STATE:Ljava/lang/String; = "sys.usb.typec.state"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHaveKernelSupport:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 101
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, COMBO_SOURCE_HOST:I

    .line 103
    invoke-static {v1, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, COMBO_SOURCE_DEVICE:I

    .line 105
    invoke-static {v2, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, COMBO_SINK_HOST:I

    .line 107
    invoke-static {v2, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, COMBO_SINK_DEVICE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPorts:Landroid/util/ArrayMap;

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    .line 694
    new-instance v0, Lcom/android/server/usb/UsbPortManager$2;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbPortManager$2;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 708
    new-instance v0, Lcom/android/server/usb/UsbPortManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbPortManager$3;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    iput-object v0, p0, mUEventObserver:Landroid/os/UEventObserver;

    .line 130
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/dual_role_usb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, mHaveKernelSupport:Z

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .prologue
    .line 58
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .prologue
    .line 58
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 58
    invoke-direct {p0, p1}, updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbPortManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .prologue
    .line 58
    invoke-direct {p0}, scheduleUpdatePorts()V

    return-void
.end method

.method private addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 19
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "currentMode"    # I
    .param p4, "canChangeMode"    # Z
    .param p5, "currentPowerRole"    # I
    .param p6, "canChangePowerRole"    # Z
    .param p7, "currentDataRole"    # I
    .param p8, "canChangeDataRole"    # Z
    .param p9, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 468
    const/4 v2, 0x3

    if-eq p2, v2, :cond_34

    .line 469
    const/4 p4, 0x0

    .line 470
    if-eqz p3, :cond_34

    if-eq p3, p2, :cond_34

    .line 471
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-static {v2, v0, v3}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 474
    const/4 p3, 0x0

    .line 481
    :cond_34
    move/from16 v0, p7

    invoke-static {p5, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v8

    .line 483
    .local v8, "supportedRoleCombinations":I
    if-eqz p3, :cond_50

    if-eqz p5, :cond_50

    if-eqz p7, :cond_50

    .line 484
    if-eqz p6, :cond_70

    if-eqz p8, :cond_70

    .line 487
    sget v2, COMBO_SOURCE_HOST:I

    sget v3, COMBO_SOURCE_DEVICE:I

    or-int/2addr v2, v3

    sget v3, COMBO_SINK_HOST:I

    or-int/2addr v2, v3

    sget v3, COMBO_SINK_DEVICE:I

    or-int/2addr v2, v3

    or-int/2addr v8, v2

    .line 513
    :cond_50
    :goto_50
    iget-object v2, p0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 514
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v1, :cond_9b

    .line 515
    new-instance v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    invoke-direct {v1, p1, p2}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Ljava/lang/String;I)V

    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 516
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    .line 520
    iget-object v2, p0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :goto_6f
    return-void

    .line 490
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_70
    if-eqz p6, :cond_83

    .line 493
    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    .line 495
    const/4 v2, 0x2

    move/from16 v0, p7

    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    goto :goto_50

    .line 497
    :cond_83
    if-eqz p8, :cond_92

    .line 500
    const/4 v2, 0x1

    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    .line 502
    const/4 v2, 0x2

    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    goto :goto_50

    .line 504
    :cond_92
    if-eqz p4, :cond_50

    .line 508
    sget v2, COMBO_SOURCE_HOST:I

    sget v3, COMBO_SINK_DEVICE:I

    or-int/2addr v2, v3

    or-int/2addr v8, v2

    goto :goto_50

    .line 523
    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_9b
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    if-eq p2, v2, :cond_d4

    .line 524
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-static {v2, v0, v3}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    :cond_d4
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 531
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 535
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_6f

    .line 537
    :cond_e6
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_6f
.end method

.method private static canChangeDataRole(Ljava/io/File;)Z
    .registers 3
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 650
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "data_role"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, fileIsRootWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static canChangeMode(Ljava/io/File;)Z
    .registers 3
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 642
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "mode"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, fileIsRootWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static canChangePowerRole(Ljava/io/File;)Z
    .registers 3
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 646
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "power_role"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, fileIsRootWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static fileIsRootWritable(Ljava/lang/String;)Z
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 635
    :try_start_1
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    sget v3, Landroid/system/OsConstants;->S_IWUSR:I
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_9} :catch_e

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    .line 637
    :cond_d
    :goto_d
    return v1

    .line 636
    :catch_e
    move-exception v0

    .line 637
    .local v0, "e":Landroid/system/ErrnoException;
    goto :goto_d
.end method

.method private handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 543
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB port added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0, p1}, sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 545
    return-void
.end method

.method private handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 548
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB port changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, p1}, sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 550
    return-void
.end method

.method private handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 553
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB port removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 554
    invoke-direct {p0, p1}, sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 555
    return-void
.end method

.method private static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "priority"    # I
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 688
    const-string v0, "UsbPortManager"

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 689
    if-eqz p1, :cond_a

    .line 690
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 692
    :cond_a
    return-void
.end method

.method private static propertyFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sys.usb.typec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readCurrentDataRole(Ljava/io/File;)I
    .registers 3
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 620
    const-string/jumbo v1, "data_role"

    invoke-static {p0, v1}, readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 622
    const-string/jumbo v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 623
    const/4 v1, 0x1

    .line 629
    :goto_13
    return v1

    .line 625
    :cond_14
    const-string/jumbo v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 626
    const/4 v1, 0x2

    goto :goto_13

    .line 629
    :cond_1f
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static readCurrentMode(Ljava/io/File;)I
    .registers 3
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 594
    const-string/jumbo v1, "mode"

    invoke-static {p0, v1}, readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 596
    const-string/jumbo v1, "dfp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 597
    const/4 v1, 0x1

    .line 603
    :goto_13
    return v1

    .line 599
    :cond_14
    const-string/jumbo v1, "ufp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 600
    const/4 v1, 0x2

    goto :goto_13

    .line 603
    :cond_1f
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static readCurrentPowerRole(Ljava/io/File;)I
    .registers 3
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 607
    const-string/jumbo v1, "power_role"

    invoke-static {p0, v1}, readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 609
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 610
    const/4 v1, 0x1

    .line 616
    :goto_13
    return v1

    .line 612
    :cond_14
    const-string/jumbo v1, "sink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 613
    const/4 v1, 0x2

    goto :goto_13

    .line 616
    :cond_1f
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 654
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 656
    .local v1, "file":Ljava/io/File;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12

    move-result-object v2

    .line 658
    :goto_11
    return-object v2

    .line 657
    :catch_12
    move-exception v0

    .line 658
    .local v0, "ex":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private static readSupportedModes(Ljava/io/File;)I
    .registers 4
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 581
    .local v1, "modes":I
    const-string/jumbo v2, "supported_modes"

    invoke-static {p0, v2}, readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 583
    const-string/jumbo v2, "dfp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 584
    or-int/lit8 v1, v1, 0x1

    .line 586
    :cond_15
    const-string/jumbo v2, "ufp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 587
    or-int/lit8 v1, v1, 0x2

    .line 590
    :cond_20
    return v1
.end method

.method private scheduleUpdatePorts()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 575
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 577
    :cond_e
    return-void
.end method

.method private sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 560
    const-string/jumbo v1, "port"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 561
    const-string/jumbo v1, "portStatus"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 565
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 24
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .local v15, "i":I
    move/from16 v16, v15

    .end local v15    # "i":I
    .local v16, "i":I
    :goto_a
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    if-lez v16, :cond_1e

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    const/4 v12, 0x3

    iput v12, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_a

    .line 404
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_67

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 406
    .local v14, "count":I
    const/4 v15, 0x0

    :goto_31
    if-ge v15, v14, :cond_ba

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 408
    .local v21, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mPortId:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    move-object/from16 v0, v21

    iget-boolean v7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    move-object/from16 v0, v21

    iget-boolean v9, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    move-object/from16 v0, v21

    iget-boolean v11, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    move-object/from16 v3, p0

    move-object/from16 v12, p1

    invoke-direct/range {v3 .. v12}, addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 406
    add-int/lit8 v15, v15, 0x1

    goto :goto_31

    .line 413
    .end local v14    # "count":I
    .end local v21    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_67
    move-object/from16 v0, p0

    iget-boolean v3, v0, mHaveKernelSupport:Z

    if-eqz v3, :cond_ba

    .line 414
    new-instance v3, Ljava/io/File;

    const-string v12, "/sys/class/dual_role_usb"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v20

    .line 415
    .local v20, "portDirs":[Ljava/io/File;
    if-eqz v20, :cond_ba

    .line 416
    move-object/from16 v13, v20

    .local v13, "arr$":[Ljava/io/File;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_81
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_ba

    aget-object v19, v13, v17

    .line 417
    .local v19, "portDir":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_92

    .line 416
    :goto_8f
    add-int/lit8 v17, v17, 0x1

    goto :goto_81

    .line 422
    :cond_92
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "portId":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, readSupportedModes(Ljava/io/File;)I

    move-result v5

    .line 424
    .local v5, "supportedModes":I
    invoke-static/range {v19 .. v19}, readCurrentMode(Ljava/io/File;)I

    move-result v6

    .line 425
    .local v6, "currentMode":I
    invoke-static/range {v19 .. v19}, canChangeMode(Ljava/io/File;)Z

    move-result v7

    .line 426
    .local v7, "canChangeMode":Z
    invoke-static/range {v19 .. v19}, readCurrentPowerRole(Ljava/io/File;)I

    move-result v8

    .line 427
    .local v8, "currentPowerRole":I
    invoke-static/range {v19 .. v19}, canChangePowerRole(Ljava/io/File;)Z

    move-result v9

    .line 428
    .local v9, "canChangePowerRole":Z
    invoke-static/range {v19 .. v19}, readCurrentDataRole(Ljava/io/File;)I

    move-result v10

    .line 429
    .local v10, "currentDataRole":I
    invoke-static/range {v19 .. v19}, canChangeDataRole(Ljava/io/File;)Z

    move-result v11

    .local v11, "canChangeDataRole":Z
    move-object/from16 v3, p0

    move-object/from16 v12, p1

    .line 430
    invoke-direct/range {v3 .. v12}, addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_8f

    .line 440
    .end local v4    # "portId":Ljava/lang/String;
    .end local v5    # "supportedModes":I
    .end local v6    # "currentMode":I
    .end local v7    # "canChangeMode":Z
    .end local v8    # "currentPowerRole":I
    .end local v9    # "canChangePowerRole":Z
    .end local v10    # "currentDataRole":I
    .end local v11    # "canChangeDataRole":Z
    .end local v13    # "arr$":[Ljava/io/File;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "portDir":Ljava/io/File;
    .end local v20    # "portDirs":[Ljava/io/File;
    :cond_ba
    move-object/from16 v0, p0

    iget-object v3, v0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v15

    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    :goto_c4
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    if-lez v16, :cond_110

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 442
    .local v21, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    packed-switch v3, :pswitch_data_112

    :goto_d9
    :pswitch_d9
    move/from16 v16, v15

    .line 457
    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto :goto_c4

    .line 444
    .end local v16    # "i":I
    .restart local v15    # "i":I
    :pswitch_dc
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 445
    const/4 v3, 0x2

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_d9

    .line 448
    :pswitch_eb
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 449
    const/4 v3, 0x2

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_d9

    .line 452
    :pswitch_fa
    move-object/from16 v0, p0

    iget-object v3, v0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 453
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_d9

    .line 458
    .end local v21    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_110
    return-void

    .line 442
    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_eb
        :pswitch_d9
        :pswitch_fa
    .end packed-switch
.end method

.method private static waitForState(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 667
    const/4 v1, 0x0

    .line 668
    .local v1, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1a

    .line 670
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    .line 675
    :goto_11
    return v2

    .line 672
    :cond_12
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 674
    :cond_1a
    const-string v2, "UsbPortManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FAILED: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private static writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;

    .prologue
    .line 683
    invoke-static {p1}, propertyFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string/jumbo v0, "sys.usb.typec.state"

    invoke-static {v0, p2}, waitForState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 283
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_3
    iget-object v0, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 285
    const-string v0, "Port with same name already exists.  Please remove it first."

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 286
    monitor-exit v1

    .line 295
    :goto_11
    return-void

    .line 289
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding simulated port: portId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", supportedModes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-direct {p0, p3}, updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 294
    monitor-exit v1

    goto :goto_11

    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 13
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "canChangeMode"    # Z
    .param p4, "powerRole"    # I
    .param p5, "canChangePowerRole"    # Z
    .param p6, "dataRole"    # I
    .param p7, "canChangeDataRole"    # Z
    .param p8, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 300
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 301
    :try_start_3
    iget-object v1, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 302
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_14

    .line 303
    const-string v1, "Cannot connect simulated port which does not exist."

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 304
    monitor-exit v2

    .line 333
    :goto_13
    return-void

    .line 307
    :cond_14
    if-eqz p2, :cond_1a

    if-eqz p4, :cond_1a

    if-nez p6, :cond_24

    .line 308
    :cond_1a
    const-string v1, "Cannot connect simulated port in null mode, power role, or data role."

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 310
    monitor-exit v2

    goto :goto_13

    .line 332
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1

    .line 313
    .restart local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_24
    :try_start_24
    iget v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    and-int/2addr v1, p2

    if-nez v1, :cond_45

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulated port does not support mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 315
    monitor-exit v2

    goto :goto_13

    .line 318
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canChangeMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", powerRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canChangePowerRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canChangeDataRole="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    iput p2, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    .line 326
    iput-boolean p3, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    .line 327
    iput p4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    .line 328
    iput-boolean p5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    .line 329
    iput p6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    .line 330
    iput-boolean p7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    .line 331
    invoke-direct {p0, p8}, updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 332
    monitor-exit v2
    :try_end_b3
    .catchall {:try_start_24 .. :try_end_b3} :catchall_21

    goto/16 :goto_13
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 336
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 337
    :try_start_3
    iget-object v1, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 338
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_14

    .line 339
    const-string v1, "Cannot disconnect simulated port which does not exist."

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 340
    monitor-exit v2

    .line 352
    :goto_13
    return-void

    .line 343
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 344
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    .line 346
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    .line 348
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    .line 350
    invoke-direct {p0, p2}, updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 351
    monitor-exit v2

    goto :goto_13

    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 379
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 380
    :try_start_3
    const-string v2, "USB Port State:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 382
    const-string v2, " (simulation active; end with \'dumpsys usb reset\')"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 384
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 386
    iget-object v2, p0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 387
    const-string v2, "  <no ports>"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 393
    :cond_25
    monitor-exit v3

    .line 394
    return-void

    .line 389
    :cond_27
    iget-object v2, p0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 390
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_31

    .line 393
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_64
    move-exception v2

    monitor-exit v3
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 5
    .param p1, "portId"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 152
    :try_start_3
    iget-object v1, p0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 153
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    :goto_f
    monitor-exit v2

    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_f

    .line 154
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .registers 6

    .prologue
    .line 140
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 141
    :try_start_3
    iget-object v3, p0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 142
    .local v0, "count":I
    new-array v2, v0, [Landroid/hardware/usb/UsbPort;

    .line 143
    .local v2, "result":[Landroid/hardware/usb/UsbPort;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1d

    .line 144
    iget-object v3, p0, mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v3, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    aput-object v3, v2, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 146
    :cond_1d
    monitor-exit v4

    return-object v2

    .line 147
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "result":[Landroid/hardware/usb/UsbPort;
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 355
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 356
    :try_start_3
    iget-object v1, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 357
    .local v0, "index":I
    if-gez v0, :cond_12

    .line 358
    const-string v1, "Cannot remove simulated port which does not exist."

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 359
    monitor-exit v2

    .line 366
    :goto_11
    return-void

    .line 362
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 364
    invoke-direct {p0, p2}, updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 365
    monitor-exit v2

    goto :goto_11

    .end local v0    # "index":I
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 369
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_3
    const-string v0, "Removing all simulated ports and ending simulation."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 372
    iget-object v0, p0, mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 373
    invoke-direct {p0, p1}, updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 375
    :cond_18
    monitor-exit v1

    .line 376
    return-void

    .line 375
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 21
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "newDataRole"    # I
    .param p4, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 160
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, mPorts:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 161
    .local v10, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v10, :cond_31

    .line 162
    if-eqz p4, :cond_2f

    .line 163
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No such USB port: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 165
    :cond_2f
    monitor-exit v13

    .line 280
    :goto_30
    return-void

    .line 169
    :cond_31
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v12

    if-nez v12, :cond_79

    .line 170
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 174
    monitor-exit v13

    goto :goto_30

    .line 279
    .end local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_76
    move-exception v12

    monitor-exit v13
    :try_end_78
    .catchall {:try_start_5 .. :try_end_78} :catchall_76

    throw v12

    .line 178
    .restart local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_79
    :try_start_79
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    .line 179
    .local v5, "currentDataRole":I
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    .line 180
    .local v7, "currentPowerRole":I
    move/from16 v0, p3

    if-ne v5, v0, :cond_98

    move/from16 v0, p2

    if-ne v7, v0, :cond_98

    .line 181
    if-eqz p4, :cond_96

    .line 182
    const-string v12, "No change."

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 184
    :cond_96
    monitor-exit v13

    goto :goto_30

    .line 193
    :cond_98
    iget-boolean v3, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 194
    .local v3, "canChangeMode":Z
    iget-boolean v4, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 195
    .local v4, "canChangePowerRole":Z
    iget-boolean v2, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 196
    .local v2, "canChangeDataRole":Z
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v6

    .line 198
    .local v6, "currentMode":I
    if-nez v4, :cond_aa

    move/from16 v0, p2

    if-ne v7, v0, :cond_b0

    :cond_aa
    if-nez v2, :cond_195

    move/from16 v0, p3

    if-eq v5, v0, :cond_195

    .line 200
    :cond_b0
    if-eqz v3, :cond_14e

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_14e

    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_14e

    .line 202
    const/4 v8, 0x1

    .line 218
    .local v8, "newMode":I
    :goto_bd
    const/4 v12, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting USB port mode and role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", currentDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, mSimulatedPorts:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 227
    .local v11, "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-eqz v11, :cond_198

    .line 229
    iput v8, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    .line 230
    move/from16 v0, p2

    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    .line 231
    move/from16 v0, p3

    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    .line 278
    :cond_144
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 279
    monitor-exit v13

    goto/16 :goto_30

    .line 203
    .end local v8    # "newMode":I
    .end local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_14e
    if-eqz v3, :cond_15d

    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_15d

    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_15d

    .line 205
    const/4 v8, 0x2

    .restart local v8    # "newMode":I
    goto/16 :goto_bd

    .line 207
    .end local v8    # "newMode":I
    :cond_15d
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 211
    monitor-exit v13

    goto/16 :goto_30

    .line 214
    :cond_195
    move v8, v6

    .restart local v8    # "newMode":I
    goto/16 :goto_bd

    .line 232
    .restart local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_198
    move-object/from16 v0, p0

    iget-boolean v12, v0, mHaveKernelSupport:Z

    if-eqz v12, :cond_144

    .line 234
    new-instance v9, Ljava/io/File;

    const-string v12, "/sys/class/dual_role_usb"

    move-object/from16 v0, p1

    invoke-direct {v9, v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v9, "portDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1cb

    .line 236
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USB port not found: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 237
    monitor-exit v13

    goto/16 :goto_30

    .line 240
    :cond_1cb
    if-eq v6, v8, :cond_20c

    .line 247
    const-string/jumbo v14, "mode"

    const/4 v12, 0x1

    if-ne v8, v12, :cond_208

    const-string/jumbo v12, "dfp"

    :goto_1d6
    invoke-static {v9, v14, v12}, writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_144

    .line 249
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set the USB port mode: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 252
    monitor-exit v13

    goto/16 :goto_30

    .line 247
    :cond_208
    const-string/jumbo v12, "ufp"

    goto :goto_1d6

    .line 256
    :cond_20c
    move/from16 v0, p2

    if-eq v7, v0, :cond_251

    .line 257
    const-string/jumbo v14, "power_role"

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_24d

    const-string/jumbo v12, "source"

    :goto_21b
    invoke-static {v9, v14, v12}, writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_251

    .line 260
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set the USB port power role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newPowerRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 263
    monitor-exit v13

    goto/16 :goto_30

    .line 257
    :cond_24d
    const-string/jumbo v12, "sink"

    goto :goto_21b

    .line 266
    :cond_251
    move/from16 v0, p3

    if-eq v5, v0, :cond_144

    .line 267
    const-string/jumbo v14, "data_role"

    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_292

    const-string/jumbo v12, "host"

    :goto_260
    invoke-static {v9, v14, v12}, writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_144

    .line 270
    const/4 v12, 0x6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set the USB port data role: portId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newDataRole="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-static {v12, v0, v14}, logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 273
    monitor-exit v13

    goto/16 :goto_30

    .line 267
    :cond_292
    const-string/jumbo v12, "device"
    :try_end_295
    .catchall {:try_start_79 .. :try_end_295} :catchall_76

    goto :goto_260
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SUBSYSTEM=dual_role_usb"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, scheduleUpdatePorts()V

    .line 137
    return-void
.end method
