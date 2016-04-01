.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mExtInfoManager:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 239
    new-instance v1, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 98
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 99
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 101
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    .line 102
    iput-object p2, p0, mInputManager:Lcom/android/server/input/InputManagerService;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mUseDevInputEventForAudioJack:Z

    .line 107
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 109
    new-instance v1, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/audiofw/ExtDeviceInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mExtInfoManager:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    .line 110
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 57
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 57
    invoke-direct {p0}, onSystemReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 57
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 57
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 57
    iget-boolean v0, p0, mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/WiredAccessoryManager;)Lcom/samsung/android/audiofw/ExtDeviceInfoManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 57
    iget-object v0, p0, mExtInfoManager:Lcom/samsung/android/audiofw/ExtDeviceInfoManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 57
    iget v0, p0, mHeadsetState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method private onSystemReady()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, -0x100

    .line 115
    iget-boolean v1, p0, mUseDevInputEventForAudioJack:Z

    if-eqz v1, :cond_31

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "switchValues":I
    iget-object v1, p0, mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_14

    .line 118
    or-int/lit8 v0, v0, 0x4

    .line 120
    :cond_14
    iget-object v1, p0, mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_1f

    .line 121
    or-int/lit8 v0, v0, 0x10

    .line 123
    :cond_1f
    iget-object v1, p0, mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_2a

    .line 124
    or-int/lit8 v0, v0, 0x40

    .line 126
    :cond_2a
    const-wide/16 v2, 0x0

    const/16 v1, 0x54

    invoke-virtual {p0, v2, v3, v0, v1}, notifyWiredAccessoryChanged(JII)V

    .line 130
    .end local v0    # "switchValues":I
    :cond_31
    iget-object v1, p0, mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 131
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 12
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 270
    and-int v3, p2, p1

    and-int v4, p3, p1

    if-eq v3, v4, :cond_47

    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "outDevice":I
    const/4 v0, 0x0

    .line 275
    .local v0, "inDevice":I
    and-int v3, p2, p1

    if-eqz v3, :cond_48

    .line 276
    const/4 v2, 0x1

    .line 281
    .local v2, "state":I
    :goto_e
    if-ne p1, v6, :cond_4a

    .line 282
    const/4 v1, 0x4

    .line 283
    const v0, -0x7ffffff0

    .line 300
    :goto_14
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "headsetName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v2, v6, :cond_85

    const-string v3, " connected"

    :goto_2a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-eqz v1, :cond_3e

    .line 305
    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v4, ""

    invoke-virtual {v3, v1, v2, v4, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_3e
    if-eqz v0, :cond_47

    .line 308
    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v4, ""

    invoke-virtual {v3, v0, v2, v4, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v0    # "inDevice":I
    .end local v1    # "outDevice":I
    .end local v2    # "state":I
    :cond_47
    :goto_47
    return-void

    .line 278
    .restart local v0    # "inDevice":I
    .restart local v1    # "outDevice":I
    :cond_48
    const/4 v2, 0x0

    .restart local v2    # "state":I
    goto :goto_e

    .line 284
    :cond_4a
    const/4 v3, 0x2

    if-ne p1, v3, :cond_50

    .line 285
    const/16 v1, 0x8

    goto :goto_14

    .line 286
    :cond_50
    const/16 v3, 0x20

    if-ne p1, v3, :cond_57

    .line 287
    const/high16 v1, 0x20000

    goto :goto_14

    .line 288
    :cond_57
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5d

    .line 289
    const/16 v1, 0x800

    goto :goto_14

    .line 290
    :cond_5d
    const/16 v3, 0x8

    if-ne p1, v3, :cond_64

    .line 291
    const/16 v1, 0x1000

    goto :goto_14

    .line 292
    :cond_64
    const/16 v3, 0x10

    if-ne p1, v3, :cond_6b

    .line 293
    const/16 v1, 0x400

    goto :goto_14

    .line 295
    :cond_6b
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceState() invalid headset type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 300
    :cond_85
    const-string v3, " disconnected"

    goto :goto_2a
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .registers 8
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetName"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 258
    const/16 v0, 0x3f

    .line 259
    .local v0, "allHeadsets":I
    const/4 v1, 0x1

    .local v1, "curHeadset":I
    :goto_6
    if-eqz v0, :cond_15

    .line 260
    and-int v2, v1, v0

    if-eqz v2, :cond_12

    .line 261
    :try_start_c
    invoke-direct {p0, v1, p1, p2, p3}, setDeviceStateLocked(IIILjava/lang/String;)V

    .line 262
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 259
    :cond_12
    shl-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 265
    :cond_15
    monitor-exit v3

    .line 266
    return-void

    .line 265
    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v2
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .registers 5
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_12

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_12

    .line 317
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :cond_12
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1f

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1f

    .line 321
    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .registers 14
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .prologue
    .line 195
    and-int/lit8 v2, p2, 0x3f

    .line 196
    .local v2, "headsetState":I
    and-int/lit8 v5, v2, 0x4

    .line 197
    .local v5, "usb_headset_anlg":I
    and-int/lit8 v6, v2, 0x8

    .line 198
    .local v6, "usb_headset_dgtl":I
    and-int/lit8 v1, v2, 0x23

    .line 199
    .local v1, "h2w_headset":I
    const/4 v0, 0x1

    .line 200
    .local v0, "h2wStateChange":Z
    const/4 v4, 0x1

    .line 201
    .local v4, "usbStateChange":Z
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prev headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mHeadsetState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget v7, p0, mHeadsetState:I

    if-ne v7, v2, :cond_4f

    .line 207
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "No state change."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_4e
    return-void

    .line 214
    :cond_4f
    const/16 v7, 0x23

    if-ne v1, v7, :cond_5b

    .line 215
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting h2w flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    .line 220
    :cond_5b
    const/4 v7, 0x4

    if-ne v5, v7, :cond_6a

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6a

    .line 221
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting usb flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v4, 0x0

    .line 224
    :cond_6a
    if-nez v0, :cond_77

    if-nez v4, :cond_77

    .line 225
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "invalid transition, returning ..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 229
    :cond_77
    iget-object v7, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 231
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "MSG_NEW_DEVICE_STATE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v7, p0, mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget v9, p0, mHeadsetState:I

    const-string v10, ""

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 234
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    iput v2, p0, mHeadsetState:I

    goto :goto_4e
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .registers 10
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    .line 135
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p4}, switchCodeToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 141
    :try_start_38
    iget v1, p0, mSwitchValues:I

    xor-int/lit8 v3, p4, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, p3

    iput v1, p0, mSwitchValues:I

    .line 142
    iget v1, p0, mSwitchValues:I

    and-int/lit8 v1, v1, 0x54

    sparse-switch v1, :sswitch_data_64

    .line 165
    const/4 v0, 0x0

    .line 169
    .local v0, "headset":I
    :goto_48
    const-string/jumbo v1, "h2w"

    iget v3, p0, mHeadsetState:I

    and-int/lit8 v3, v3, -0x24

    or-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, updateLocked(Ljava/lang/String;I)V

    .line 171
    monitor-exit v2

    .line 172
    return-void

    .line 145
    .end local v0    # "headset":I
    :sswitch_55
    const/4 v0, 0x0

    .line 146
    .restart local v0    # "headset":I
    goto :goto_48

    .line 149
    .end local v0    # "headset":I
    :sswitch_57
    const/4 v0, 0x2

    .line 150
    .restart local v0    # "headset":I
    goto :goto_48

    .line 153
    .end local v0    # "headset":I
    :sswitch_59
    const/16 v0, 0x20

    .line 154
    .restart local v0    # "headset":I
    goto :goto_48

    .line 157
    .end local v0    # "headset":I
    :sswitch_5c
    const/4 v0, 0x1

    .line 158
    .restart local v0    # "headset":I
    goto :goto_48

    .line 161
    .end local v0    # "headset":I
    :sswitch_5e
    const/4 v0, 0x1

    .line 162
    .restart local v0    # "headset":I
    goto :goto_48

    .line 171
    .end local v0    # "headset":I
    :catchall_60
    move-exception v1

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_60

    throw v1

    .line 142
    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_55
        0x4 -> :sswitch_57
        0x10 -> :sswitch_5e
        0x14 -> :sswitch_5c
        0x40 -> :sswitch_59
    .end sparse-switch
.end method

.method public systemReady()V
    .registers 8

    .prologue
    .line 176
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_3
    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 179
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    monitor-exit v2

    .line 182
    return-void

    .line 181
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method
