.class Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemWakeLock"
.end annotation


# instance fields
.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .registers 5

    .prologue
    .line 391
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "HdmiCecLocalDevicePlayback"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 393
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 394
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 5

    .prologue
    .line 398
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 399
    const-string v0, "active source: %b. Wake lock acquired"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    # getter for: Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->access$000(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method public isHeld()Z
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 3

    .prologue
    .line 404
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 405
    const-string v0, "Wake lock released"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    return-void
.end method
