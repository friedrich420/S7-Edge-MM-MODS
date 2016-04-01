.class final Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceDiscoveryAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/DeviceDiscoveryAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceInfo"
.end annotation


# instance fields
.field private mDeviceType:I

.field private mDisplayName:Ljava/lang/String;

.field private final mLogicalAddress:I

.field private mPhysicalAddress:I

.field private mPortId:I

.field private mVendorId:I


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .param p1, "logicalAddress"    # I

    .prologue
    const/4 v1, -0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const v0, 0xffff

    iput v0, p0, mPhysicalAddress:I

    .line 73
    iput v1, p0, mPortId:I

    .line 74
    const v0, 0xffffff

    iput v0, p0, mVendorId:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, mDisplayName:Ljava/lang/String;

    .line 76
    iput v1, p0, mDeviceType:I

    .line 79
    iput p1, p0, mLogicalAddress:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/hdmi/DeviceDiscoveryAction$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, <init>(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .prologue
    .line 69
    invoke-direct {p0}, toHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .prologue
    .line 69
    iget v0, p0, mLogicalAddress:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .prologue
    .line 69
    iget v0, p0, mPhysicalAddress:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, mPhysicalAddress:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, mPortId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .prologue
    .line 69
    iget v0, p0, mDeviceType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, mDeviceType:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, mVendorId:I

    return p1
.end method

.method private toHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 8

    .prologue
    .line 83
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v1, p0, mLogicalAddress:I

    iget v2, p0, mPhysicalAddress:I

    iget v3, p0, mPortId:I

    iget v4, p0, mDeviceType:I

    iget v5, p0, mVendorId:I

    iget-object v6, p0, mDisplayName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method
