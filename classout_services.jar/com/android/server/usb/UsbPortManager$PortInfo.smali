.class final Lcom/android/server/usb/UsbPortManager$PortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PortInfo"
.end annotation


# static fields
.field public static final DISPOSITION_ADDED:I = 0x0

.field public static final DISPOSITION_CHANGED:I = 0x1

.field public static final DISPOSITION_READY:I = 0x2

.field public static final DISPOSITION_REMOVED:I = 0x3


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mDisposition:I

.field public final mUsbPort:Landroid/hardware/usb/UsbPort;

.field public mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    new-instance v0, Landroid/hardware/usb/UsbPort;

    invoke-direct {v0, p1, p2}, Landroid/hardware/usb/UsbPort;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 733
    return-void
.end method


# virtual methods
.method public setStatus(IZIZIZI)Z
    .registers 9
    .param p1, "currentMode"    # I
    .param p2, "canChangeMode"    # Z
    .param p3, "currentPowerRole"    # I
    .param p4, "canChangePowerRole"    # Z
    .param p5, "currentDataRole"    # I
    .param p6, "canChangeDataRole"    # Z
    .param p7, "supportedRoleCombinations"    # I

    .prologue
    .line 739
    iput-boolean p2, p0, mCanChangeMode:Z

    .line 740
    iput-boolean p4, p0, mCanChangePowerRole:Z

    .line 741
    iput-boolean p6, p0, mCanChangeDataRole:Z

    .line 742
    iget-object v0, p0, mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_2a

    iget-object v0, p0, mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v0

    if-ne v0, p1, :cond_2a

    iget-object v0, p0, mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    if-ne v0, p3, :cond_2a

    iget-object v0, p0, mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v0

    if-ne v0, p5, :cond_2a

    iget-object v0, p0, mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v0

    if-eq v0, p7, :cond_33

    .line 748
    :cond_2a
    new-instance v0, Landroid/hardware/usb/UsbPortStatus;

    invoke-direct {v0, p1, p3, p5, p7}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIII)V

    iput-object v0, p0, mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 750
    const/4 v0, 0x1

    .line 752
    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mCanChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canChangePowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mCanChangePowerRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canChangeDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mCanChangeDataRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
