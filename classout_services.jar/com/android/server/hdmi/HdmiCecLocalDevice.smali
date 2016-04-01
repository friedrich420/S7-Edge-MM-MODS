.class abstract Lcom/android/server/hdmi/HdmiCecLocalDevice;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;,
        Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    }
.end annotation


# static fields
.field private static final DEVICE_CLEANUP_TIMEOUT:I = 0x1388

.field private static final FOLLOWER_SAFETY_TIMEOUT:I = 0x226

.field private static final MSG_DISABLE_DEVICE_TIMEOUT:I = 0x1

.field private static final MSG_USER_CONTROL_RELEASE_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDevice"


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveRoutingPath:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected mAddress:I

.field protected final mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

.field protected mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field protected final mDeviceType:I

.field private final mHandler:Landroid/os/Handler;

.field protected mLastKeyRepeatCount:I

.field protected mLastKeycode:I

.field protected final mLock:Ljava/lang/Object;

.field protected mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

.field protected mPreferredAddress:I

.field protected final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "deviceType"    # I

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, mLastKeycode:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, mLastKeyRepeatCount:I

    .line 116
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>()V

    iput-object v0, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 125
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;-><init>()V

    iput-object v0, p0, mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 157
    iput-object p1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 158
    iput p2, p0, mDeviceType:I

    .line 159
    const/16 v0, 0xf

    iput v0, p0, mAddress:I

    .line 160
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .prologue
    .line 43
    invoke-direct {p0}, handleDisableDeviceTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiCecLocalDevice;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .prologue
    .line 43
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 3
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "deviceType"    # I

    .prologue
    .line 165
    sparse-switch p1, :sswitch_data_12

    .line 171
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 167
    :sswitch_5
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    goto :goto_4

    .line 169
    :sswitch_b
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    goto :goto_4

    .line 165
    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_5
        0x4 -> :sswitch_b
    .end sparse-switch
.end method

.method private dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 317
    const/4 v2, 0x0

    .line 319
    .local v2, "processed":Z
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, mActions:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 321
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v3

    .line 322
    .local v3, "result":Z
    if-nez v2, :cond_23

    if-eqz v3, :cond_25

    :cond_23
    const/4 v2, 0x1

    .line 323
    :goto_24
    goto :goto_f

    .line 322
    :cond_25
    const/4 v2, 0x0

    goto :goto_24

    .line 324
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .end local v3    # "result":Z
    :cond_27
    return v2
.end method

.method private handleDisableDeviceTimeout()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 875
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 879
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 880
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 881
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 882
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 883
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 885
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_1d
    iget-object v2, p0, mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    if-eqz v2, :cond_26

    .line 886
    iget-object v2, p0, mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    invoke-interface {v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 888
    :cond_26
    return-void
.end method

.method static injectKeyEvent(JIII)V
    .registers 19
    .param p0, "time"    # J
    .param p2, "action"    # I
    .param p3, "keycode"    # I
    .param p4, "repeat"    # I

    .prologue
    .line 498
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const v11, 0x2000001

    const/4 v12, 0x0

    move-wide v0, p0

    move-wide v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 501
    .local v13, "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 503
    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    .line 504
    return-void
.end method

.method static isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p0, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 516
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x44

    if-ne v2, v3, :cond_20

    aget-byte v2, v0, v1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1f

    aget-byte v2, v0, v1

    const/16 v3, 0x6c

    if-eq v2, v3, :cond_1f

    aget-byte v2, v0, v1

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method static isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p0, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v1, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 508
    .local v0, "params":[B
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x44

    if-ne v2, v3, :cond_20

    aget-byte v2, v0, v1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1f

    aget-byte v2, v0, v1

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_1f

    aget-byte v2, v0, v1

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method


# virtual methods
.method addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 5
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 652
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 654
    const-string v0, "HdmiCecLocalDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not ready to start action. Queued for deferred start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :goto_28
    return-void

    .line 657
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    goto :goto_28
.end method

.method protected assertRunOnServiceThread()V
    .registers 3

    .prologue
    .line 745
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 746
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_14
    return-void
.end method

.method protected canGoToStandby()Z
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method protected checkIfPendingActionsCleared()V
    .registers 3

    .prologue
    .line 736
    iget-object v1, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    if-eqz v1, :cond_14

    .line 737
    iget-object v0, p0, mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 739
    .local v0, "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    const/4 v1, 0x0

    iput-object v1, p0, mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 740
    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 742
    .end local v0    # "callback":Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    :cond_14
    return-void
.end method

.method clearAddress()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 645
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 646
    const/16 v0, 0xf

    iput v0, p0, mAddress:I

    .line 647
    return-void
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 7
    .param p1, "initiatedByCec"    # Z
    .param p2, "originalCallback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .prologue
    .line 862
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    iput-object v0, p0, mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 869
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 871
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 225
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 226
    .local v0, "dest":I
    iget v1, p0, mAddress:I

    if-eq v0, v1, :cond_11

    const/16 v1, 0xf

    if-eq v0, v1, :cond_11

    .line 227
    const/4 v1, 0x0

    .line 231
    :goto_10
    return v1

    .line 230
    :cond_11
    iget-object v1, p0, mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->cacheMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 231
    invoke-virtual {p0, p1}, onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    goto :goto_10
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPreferredAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mPreferredAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 916
    const-string/jumbo v0, "mActiveRoutingPath: 0x%04x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, mActiveRoutingPath:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method getActions(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

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
    .line 686
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 687
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 688
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 689
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 690
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 691
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .restart local v1    # "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 696
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_32
    return-object v1
.end method

.method getActivePath()I
    .registers 3

    .prologue
    .line 795
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_3
    iget v0, p0, mActiveRoutingPath:I

    monitor-exit v1

    return v0

    .line 797
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method getActivePortId()I
    .registers 4

    .prologue
    .line 812
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 813
    :try_start_3
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, mActiveRoutingPath:I

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 814
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .registers 3

    .prologue
    .line 773
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    :try_start_3
    iget-object v0, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    monitor-exit v1

    return-object v0

    .line 775
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 830
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 831
    iget-object v0, p0, mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    return-object v0
.end method

.method getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 626
    iget-object v0, p0, mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method protected abstract getPreferredAddress()I
.end method

.method final getService()Lcom/android/server/hdmi/HdmiControlService;
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object v0
.end method

.method getType()I
    .registers 2

    .prologue
    .line 620
    iget v0, p0, mDeviceType:I

    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method final handleAddressAllocated(II)V
    .registers 3
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 614
    iput p1, p0, mPreferredAddress:I

    iput p1, p0, mAddress:I

    .line 615
    invoke-virtual {p0, p1, p2}, onAddressAllocated(II)V

    .line 616
    invoke-virtual {p0, p1}, setPreferredAddress(I)V

    .line 617
    return-void
.end method

.method protected handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 351
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v1

    .line 352
    .local v1, "version":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 354
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 355
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 376
    const-string v0, "HdmiCecLocalDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only TV can handle <Get Menu Language>:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method protected handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 535
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    iget-object v3, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method protected handleGiveDeviceVendorId()Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 341
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v1

    .line 342
    .local v1, "vendorId":I
    iget v2, p0, mAddress:I

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 344
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 345
    const/4 v2, 0x1

    return v2
.end method

.method protected handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 394
    iget v1, p0, mAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    iget-object v3, p0, mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 396
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_1c

    .line 397
    iget-object v1, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 401
    :goto_1a
    const/4 v1, 0x1

    return v1

    .line 399
    :cond_1c
    const-string v1, "HdmiCecLocalDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to build <Get Osd Name>:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method protected handleGivePhysicalAddress()Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 331
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 332
    .local v1, "physicalAddress":I
    iget v2, p0, mAddress:I

    iget v3, p0, mDeviceType:I

    invoke-static {v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 334
    .local v0, "cecMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 335
    const/4 v2, 0x1

    return v2
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method protected handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 542
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 591
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 592
    const/4 v0, 0x1

    return v0
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 384
    const-string v0, "HdmiCecLocalDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Playback device can handle <Set Menu Language>:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 585
    const/4 v0, 0x1

    return v0
.end method

.method protected handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method protected handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 440
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 442
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 443
    const/4 v0, 0x1

    .line 445
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method protected handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 12
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 450
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 451
    iget-object v7, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    iget-object v7, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-static {p1}, isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 453
    iget-object v6, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 480
    :goto_1f
    return v5

    .line 455
    :cond_20
    iget-object v7, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-static {p1}, isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 456
    iget-object v6, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    goto :goto_1f

    .line 460
    :cond_34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 461
    .local v0, "downTime":J
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    .line 462
    .local v4, "params":[B
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecKeycode;->cecKeycodeAndParamsToAndroidKey([B)I

    move-result v3

    .line 463
    .local v3, "keycode":I
    const/4 v2, 0x0

    .line 464
    .local v2, "keyRepeatCount":I
    iget v7, p0, mLastKeycode:I

    if-eq v7, v8, :cond_4d

    .line 465
    iget v7, p0, mLastKeycode:I

    if-ne v3, v7, :cond_64

    .line 466
    iget v7, p0, mLastKeyRepeatCount:I

    add-int/lit8 v2, v7, 0x1

    .line 471
    :cond_4d
    :goto_4d
    iput v3, p0, mLastKeycode:I

    .line 472
    iput v2, p0, mLastKeyRepeatCount:I

    .line 474
    if-eq v3, v8, :cond_6a

    .line 475
    invoke-static {v0, v1, v6, v3, v2}, injectKeyEvent(JIII)V

    .line 476
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    iget-object v7, p0, mHandler:Landroid/os/Handler;

    invoke-static {v7, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x226

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1f

    .line 468
    :cond_64
    iget v7, p0, mLastKeycode:I

    invoke-static {v0, v1, v5, v7, v6}, injectKeyEvent(JIII)V

    goto :goto_4d

    :cond_6a
    move v5, v6

    .line 480
    goto :goto_1f
.end method

.method protected handleUserControlReleased()Z
    .registers 8
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 485
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 486
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iput v3, p0, mLastKeyRepeatCount:I

    .line 488
    iget v4, p0, mLastKeycode:I

    if-eq v4, v6, :cond_1e

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 490
    .local v0, "upTime":J
    iget v4, p0, mLastKeycode:I

    invoke-static {v0, v1, v2, v4, v3}, injectKeyEvent(JIII)V

    .line 491
    iput v6, p0, mLastKeycode:I

    .line 494
    .end local v0    # "upTime":J
    :goto_1d
    return v2

    :cond_1e
    move v2, v3

    goto :goto_1d
.end method

.method protected handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v6, 0x1

    .line 552
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mDeviceType:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 556
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v6}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 558
    :cond_1d
    return v6
.end method

.method protected handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x1

    .line 562
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    .line 563
    .local v4, "params":[B
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v6

    .line 564
    .local v6, "vendorId":I
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    if-ne v6, v0, :cond_2b

    .line 565
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mDeviceType:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 567
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 576
    :cond_2a
    :goto_2a
    return v5

    .line 569
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    if-eq v0, v1, :cond_45

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    if-eq v0, v1, :cond_45

    .line 571
    const-string v0, "HdmiCecLocalDevice"

    const-string v1, "Wrong direct vendor command. Replying with <Feature Abort>"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_2a

    .line 574
    :cond_45
    const-string v0, "HdmiCecLocalDevice"

    const-string v1, "Wrong broadcast vendor command. Ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method hasAction(Ljava/lang/Class;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 675
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 676
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 677
    const/4 v2, 0x1

    .line 680
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method init()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 178
    invoke-virtual {p0}, getPreferredAddress()I

    move-result v0

    iput v0, p0, mPreferredAddress:I

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 180
    return-void
.end method

.method isAddressOf(I)Z
    .registers 3
    .param p1, "addr"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 639
    iget v0, p0, mAddress:I

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method final isConnectedToArcPort(I)Z
    .registers 3
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 768
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 769
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnectedToArcPort(I)Z

    move-result v0

    return v0
.end method

.method protected isInputReady(I)Z
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onAddressAllocated(II)V
.end method

.method onHotplug(IZ)V
    .registers 3
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    .prologue
    .line 760
    return-void
.end method

.method protected final onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 237
    invoke-direct {p0, p1}, dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 238
    const/4 v0, 0x1

    .line 310
    :goto_a
    return v0

    .line 240
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ca

    .line 310
    const/4 v0, 0x0

    goto :goto_a

    .line 242
    :sswitch_14
    invoke-virtual {p0, p1}, handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 244
    :sswitch_19
    invoke-virtual {p0, p1}, handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 246
    :sswitch_1e
    invoke-virtual {p0, p1}, handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 248
    :sswitch_23
    invoke-virtual {p0, p1}, handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 250
    :sswitch_28
    invoke-virtual {p0, p1}, handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 252
    :sswitch_2d
    invoke-virtual {p0}, handleGivePhysicalAddress()Z

    move-result v0

    goto :goto_a

    .line 254
    :sswitch_32
    invoke-virtual {p0, p1}, handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 256
    :sswitch_37
    invoke-virtual {p0}, handleGiveDeviceVendorId()Z

    move-result v0

    goto :goto_a

    .line 258
    :sswitch_3c
    invoke-virtual {p0, p1}, handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 260
    :sswitch_41
    invoke-virtual {p0, p1}, handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 262
    :sswitch_46
    invoke-virtual {p0, p1}, handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 264
    :sswitch_4b
    invoke-virtual {p0, p1}, handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 266
    :sswitch_50
    invoke-virtual {p0, p1}, handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 268
    :sswitch_55
    invoke-virtual {p0, p1}, handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 270
    :sswitch_5a
    invoke-virtual {p0, p1}, handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 272
    :sswitch_5f
    invoke-virtual {p0, p1}, handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 274
    :sswitch_64
    invoke-virtual {p0, p1}, handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 276
    :sswitch_69
    invoke-virtual {p0, p1}, handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 278
    :sswitch_6e
    invoke-virtual {p0, p1}, handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 280
    :sswitch_73
    invoke-virtual {p0, p1}, handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 282
    :sswitch_78
    invoke-virtual {p0, p1}, handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 284
    :sswitch_7d
    invoke-virtual {p0}, handleUserControlReleased()Z

    move-result v0

    goto :goto_a

    .line 286
    :sswitch_82
    invoke-virtual {p0, p1}, handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_a

    .line 288
    :sswitch_87
    invoke-virtual {p0, p1}, handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 290
    :sswitch_8d
    invoke-virtual {p0, p1}, handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 292
    :sswitch_93
    invoke-virtual {p0, p1}, handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 294
    :sswitch_99
    invoke-virtual {p0, p1}, handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 296
    :sswitch_9f
    invoke-virtual {p0, p1}, handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 298
    :sswitch_a5
    invoke-virtual {p0, p1}, handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 300
    :sswitch_ab
    invoke-virtual {p0, p1}, handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 302
    :sswitch_b1
    invoke-virtual {p0, p1}, handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 304
    :sswitch_b7
    invoke-virtual {p0, p1}, handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 306
    :sswitch_bd
    invoke-virtual {p0, p1}, handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 308
    :sswitch_c3
    invoke-virtual {p0, p1}, handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto/16 :goto_a

    .line 240
    nop

    :sswitch_data_ca
    .sparse-switch
        0x4 -> :sswitch_73
        0xa -> :sswitch_c3
        0xd -> :sswitch_6e
        0xf -> :sswitch_ab
        0x32 -> :sswitch_28
        0x35 -> :sswitch_bd
        0x36 -> :sswitch_69
        0x43 -> :sswitch_b1
        0x44 -> :sswitch_78
        0x45 -> :sswitch_7d
        0x46 -> :sswitch_32
        0x47 -> :sswitch_a5
        0x72 -> :sswitch_5a
        0x7a -> :sswitch_64
        0x7e -> :sswitch_5f
        0x80 -> :sswitch_46
        0x81 -> :sswitch_4b
        0x82 -> :sswitch_14
        0x83 -> :sswitch_2d
        0x84 -> :sswitch_41
        0x85 -> :sswitch_1e
        0x86 -> :sswitch_82
        0x89 -> :sswitch_99
        0x8c -> :sswitch_37
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_93
        0x8f -> :sswitch_87
        0x90 -> :sswitch_b7
        0x91 -> :sswitch_23
        0x9d -> :sswitch_19
        0x9f -> :sswitch_3c
        0xa0 -> :sswitch_9f
        0xc0 -> :sswitch_50
        0xc5 -> :sswitch_55
    .end sparse-switch
.end method

.method protected onStandby(ZI)V
    .registers 3
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I

    .prologue
    .line 849
    return-void
.end method

.method pathToPortId(I)I
    .registers 3
    .param p1, "newPath"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 836
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 837
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    return v0
.end method

.method removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 3
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 707
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 708
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 709
    invoke-virtual {p0}, checkIfPendingActionsCleared()V

    .line 710
    return-void
.end method

.method removeAction(Ljava/lang/Class;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

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
    .line 715
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 717
    return-void
.end method

.method removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 6
    .param p2, "exception"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

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
    .line 723
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 724
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 725
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecFeatureAction;>;"
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 727
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    if-eq v0, p2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 728
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 729
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 732
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_29
    invoke-virtual {p0}, checkIfPendingActionsCleared()V

    .line 733
    return-void
.end method

.method protected sendKeyEvent(IZ)V
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z

    .prologue
    .line 897
    const-string v0, "HdmiCecLocalDevice"

    const-string/jumbo v1, "sendKeyEvent not implemented"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return-void
.end method

.method protected sendStandby(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 581
    return-void
.end method

.method sendUserControlPressedAndReleased(II)V
    .registers 5
    .param p1, "targetAddress"    # I
    .param p2, "cecKeycode"    # I

    .prologue
    .line 901
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    invoke-static {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 903
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, mAddress:I

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 905
    return-void
.end method

.method setActivePath(I)V
    .registers 4
    .param p1, "path"    # I

    .prologue
    .line 801
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 802
    :try_start_3
    iput p1, p0, mActiveRoutingPath:I

    .line 803
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 804
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, pathToPortId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setActivePortId(I)V

    .line 805
    return-void

    .line 803
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method setActivePortId(I)V
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 825
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    invoke-virtual {p0, v0}, setActivePath(I)V

    .line 826
    return-void
.end method

.method setActiveSource(II)V
    .registers 5
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I

    .prologue
    .line 787
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_3
    iget-object v0, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iput p1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 789
    iget-object v0, p0, mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iput p2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 790
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 791
    iget-object v0, p0, mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    .line 792
    return-void

    .line 790
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 783
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v0, v1}, setActiveSource(II)V

    .line 784
    return-void
.end method

.method setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .registers 4
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .prologue
    .line 779
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {p0, v0, v1}, setActiveSource(II)V

    .line 780
    return-void
.end method

.method setAutoDeviceOff(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 751
    return-void
.end method

.method setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 632
    iput-object p1, p0, mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 633
    return-void
.end method

.method protected abstract setPreferredAddress(I)V
.end method

.method startQueuedActions()V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, assertRunOnServiceThread()V

    .line 663
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 664
    .local v0, "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->started()Z

    move-result v2

    if-nez v2, :cond_9

    .line 665
    const-string v2, "HdmiCecLocalDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting queued action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    goto :goto_9

    .line 669
    .end local v0    # "action":Lcom/android/server/hdmi/HdmiCecFeatureAction;
    :cond_37
    return-void
.end method
