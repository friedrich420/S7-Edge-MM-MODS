.class final Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceLightState"
.end annotation


# static fields
.field public static final LIGHT_STATE_OFF:I = 0x0

.field public static final LIGHT_STATE_ON:I = 0x1

.field public static final LIGHT_STATE_UNKNOWN:I = 0x2

.field public static final MSG_LIGHT_OFF:I = 0x0

.field public static final MSG_LIGHT_ON:I = 0x1


# instance fields
.field private mHandlerInputDeviceLight:Landroid/os/Handler;

.field private mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

.field private final mInputDeviceLight:Lcom/android/server/lights/Light;

.field private mInputDeviceLightState:I

.field private mInputDeviceLightTimeout:I

.field private mIsKeepLight:Z

.field private mIsMsgPending:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;I)V
    .registers 5
    .param p2, "lightsId"    # I

    .prologue
    .line 6741
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6742
    # getter for: Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$13500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/LightsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, mInputDeviceLight:Lcom/android/server/lights/Light;

    .line 6743
    const/4 v0, 0x0

    iput v0, p0, mInputDeviceLightState:I

    .line 6744
    const/16 v0, 0x5dc

    iput v0, p0, mInputDeviceLightTimeout:I

    .line 6746
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputDeviceLight"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    .line 6747
    iget-object v0, p0, mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6748
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;

    iget-object v1, p0, mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;-><init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Landroid/os/Looper;Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    .line 6761
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setInputDeviceLightOn(I)V

    .line 6762
    return-void
.end method

.method static synthetic access$13600(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 6721
    invoke-direct {p0}, handleInputDeviceLightOn()V

    return-void
.end method

.method static synthetic access$13700(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 6721
    invoke-direct {p0}, handleInputDeviceLightOff()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 6721
    invoke-direct {p0}, getInputDeviceLightTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1, "x1"    # I

    .prologue
    .line 6721
    invoke-direct {p0, p1}, setInputDeviceLightTimeout(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 6721
    invoke-direct {p0}, getInputDeviceLightKeep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1, "x1"    # Z

    .prologue
    .line 6721
    invoke-direct {p0, p1}, setInputDeviceLightKeep(Z)V

    return-void
.end method

.method private getInputDeviceLightKeep()Z
    .registers 2

    .prologue
    .line 6822
    iget-boolean v0, p0, mIsKeepLight:Z

    return v0
.end method

.method private getInputDeviceLightState()I
    .registers 2

    .prologue
    .line 6794
    iget v0, p0, mInputDeviceLightState:I

    return v0
.end method

.method private getInputDeviceLightTimeout()I
    .registers 2

    .prologue
    .line 6814
    iget v0, p0, mInputDeviceLightTimeout:I

    return v0
.end method

.method private handleInputDeviceLightOff()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 6802
    iget-object v0, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6803
    iput-boolean v1, p0, mIsMsgPending:Z

    .line 6804
    iget-object v0, p0, mInputDeviceLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 6805
    return-void
.end method

.method private handleInputDeviceLightOn()V
    .registers 3

    .prologue
    .line 6798
    iget-object v0, p0, mInputDeviceLight:Lcom/android/server/lights/Light;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 6799
    return-void
.end method

.method private setInputDeviceLightKeep(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 6818
    iput-boolean p1, p0, mIsKeepLight:Z

    .line 6819
    return-void
.end method

.method private setInputDeviceLightTimeout(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 6808
    iget v0, p0, mInputDeviceLightTimeout:I

    if-eq v0, p1, :cond_6

    .line 6809
    iput p1, p0, mInputDeviceLightTimeout:I

    .line 6811
    :cond_6
    return-void
.end method


# virtual methods
.method public setInputDeviceLightOn(I)V
    .registers 7
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 6767
    iget-boolean v1, p0, mIsMsgPending:Z

    if-eqz v1, :cond_d

    .line 6768
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6769
    iput-boolean v3, p0, mIsMsgPending:Z

    .line 6772
    :cond_d
    if-ne p1, v4, :cond_3c

    .line 6773
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6774
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6775
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6777
    iget v1, p0, mInputDeviceLightTimeout:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    iget-boolean v1, p0, mIsKeepLight:Z

    if-nez v1, :cond_39

    .line 6779
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6780
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6781
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    iget v2, p0, mInputDeviceLightTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6782
    iput-boolean v4, p0, mIsMsgPending:Z

    .line 6790
    :cond_39
    :goto_39
    iput p1, p0, mInputDeviceLightState:I

    .line 6791
    return-void

    .line 6785
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3c
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6786
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6787
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_39
.end method
