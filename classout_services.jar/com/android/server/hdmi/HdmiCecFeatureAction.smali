.class abstract Lcom/android/server/hdmi/HdmiCecFeatureAction;
.super Ljava/lang/Object;
.source "HdmiCecFeatureAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;,
        Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;
    }
.end annotation


# static fields
.field protected static final MSG_TIMEOUT:I = 0x64

.field protected static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdmiCecFeatureAction"


# instance fields
.field protected mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

.field private mOnFinishedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field protected mState:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 3
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 65
    iput-object p1, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 66
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 67
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, createActionTimer(Landroid/os/Looper;)Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    move-result-object v0

    iput-object v0, p0, mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 68
    return-void
.end method

.method private createActionTimer(Landroid/os/Looper;)Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 156
    new-instance v0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;-><init>(Lcom/android/server/hdmi/HdmiCecFeatureAction;Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method protected final addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 3
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .prologue
    .line 179
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 180
    return-void
.end method

.method protected final addOnFinishedCallback(Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 272
    iget-object v0, p0, mOnFinishedCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mOnFinishedCallbacks:Ljava/util/ArrayList;

    .line 275
    :cond_b
    iget-object v0, p0, mOnFinishedCallbacks:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method protected addTimer(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "delayMillis"    # I

    .prologue
    .line 162
    iget-object v0, p0, mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    int-to-long v2, p2

    invoke-interface {v0, p1, v2, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->sendTimerMessage(IJ)V

    .line 163
    return-void
.end method

.method clear()V
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 222
    iget-object v0, p0, mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 223
    return-void
.end method

.method protected finish()V
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, finish(Z)V

    .line 230
    return-void
.end method

.method finish(Z)V
    .registers 5
    .param p1, "removeSelf"    # Z

    .prologue
    .line 233
    invoke-virtual {p0}, clear()V

    .line 234
    if-eqz p1, :cond_8

    .line 235
    invoke-virtual {p0, p0}, removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 237
    :cond_8
    iget-object v2, p0, mOnFinishedCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_31

    .line 238
    iget-object v2, p0, mOnFinishedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 239
    .local v0, "actionCallbackPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    iget v2, v2, mState:I

    if-eqz v2, :cond_12

    .line 240
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_12

    .line 243
    .end local v0    # "actionCallbackPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;>;"
    :cond_2e
    const/4 v2, 0x0

    iput-object v2, p0, mOnFinishedCallbacks:Ljava/util/ArrayList;

    .line 245
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_31
    return-void
.end method

.method protected final getActions(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object v0

    return-object v0
.end method

.method protected final getSourceAddress()I
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0
.end method

.method protected final getSourcePath()I
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    return v0
.end method

.method abstract handleTimerEvent(I)V
.end method

.method protected final localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object v0
.end method

.method protected final playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    return-object v0
.end method

.method protected final pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V
    .registers 6
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "pickStrategy"    # I
    .param p3, "retryCount"    # I

    .prologue
    .line 211
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, getSourceAddress()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    .line 212
    return-void
.end method

.method abstract processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
.end method

.method protected final removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 3
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .prologue
    .line 197
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 198
    return-void
.end method

.method protected final removeAction(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 202
    return-void
.end method

.method protected final removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 4
    .param p2, "exception"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 207
    return-void
.end method

.method protected final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 170
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 171
    return-void
.end method

.method protected final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .prologue
    .line 175
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 176
    return-void
.end method

.method protected final sendUserControlPressedAndReleased(II)V
    .registers 4
    .param p1, "targetAddress"    # I
    .param p2, "uiCommand"    # I

    .prologue
    .line 268
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 269
    return-void
.end method

.method setActionTimer(Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;)V
    .registers 2
    .param p1, "actionTimer"    # Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .prologue
    .line 72
    iput-object p1, p0, mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 73
    return-void
.end method

.method abstract start()Z
.end method

.method started()Z
    .registers 2

    .prologue
    .line 166
    iget v0, p0, mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object v0
.end method
