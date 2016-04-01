.class Lcom/android/server/tv/TvInputHardwareManager;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHal$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;,
        Lcom/android/server/tv/TvInputHardwareManager$Listener;,
        Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;,
        Lcom/android/server/tv/TvInputHardwareManager$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/tv/TvInputHardwareManager$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentMaxIndex:I

.field private final mHal:Lcom/android/server/tv/TvInputHal;

.field private final mHandler:Landroid/os/Handler;

.field private final mHardwareInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHardwareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field private final mHdmiDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field private final mHdmiInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiStateMap:Landroid/util/SparseBooleanArray;

.field private final mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

.field private final mInputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingHdmiDeviceEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-class v0, Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/tv/TvInputHardwareManager$Listener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/server/tv/TvInputHal;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHal;-><init>(Lcom/android/server/tv/TvInputHal$Callback;)V

    iput-object v0, p0, mHal:Lcom/android/server/tv/TvInputHal;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mConnections:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mHardwareList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mHdmiDeviceList:Ljava/util/List;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mInputMap:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 93
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .line 94
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 96
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHardwareManager$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    iput-object v0, p0, mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput v2, p0, mCurrentIndex:I

    .line 103
    iput v2, p0, mCurrentMaxIndex:I

    .line 106
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mPendingHdmiDeviceEvents:Ljava/util/List;

    .line 110
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 115
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    .line 117
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    .line 118
    iget-object v0, p0, mHal:Lcom/android/server/tv/TvInputHal;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHal;->init()V

    .line 119
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mHal:Lcom/android/server/tv/TvInputHal;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    invoke-direct {p0}, updateVolume()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/tv/TvInputHardwareManager;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    invoke-direct {p0}, getMediaStreamVolume()F

    move-result v0

    return v0
.end method

.method static synthetic access$1800([II)Z
    .registers 3
    .param p0, "x0"    # [I
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-static {p0, p1}, intArrayContains([II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mHdmiInputIdMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mHdmiStateMap:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mHardwareInputIdMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/tv/TvInputHardwareManager;Z)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, convertConnectedToState(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mHdmiDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mPendingHdmiDeviceEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mConnections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvInputHardwareManager;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 75
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private buildHardwareListLocked()V
    .registers 4

    .prologue
    .line 162
    iget-object v1, p0, mHardwareList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 164
    iget-object v2, p0, mHardwareList:Ljava/util/List;

    iget-object v1, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 166
    :cond_22
    return-void
.end method

.method private checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z
    .registers 7
    .param p1, "connection"    # Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallingUidLocked()Ljava/lang/Integer;

    move-result-object v0

    .line 254
    .local v0, "connectionCallingUid":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getResolvedUserIdLocked()Ljava/lang/Integer;

    move-result-object v1

    .line 255
    .local v1, "connectionResolvedUserId":Ljava/lang/Integer;
    if-eqz v0, :cond_18

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_18

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p3, :cond_1a

    :cond_18
    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private convertConnectedToState(Z)I
    .registers 3
    .param p1, "connected"    # Z

    .prologue
    .line 260
    if-eqz p1, :cond_4

    .line 261
    const/4 v0, 0x0

    .line 263
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x2

    goto :goto_3
.end method

.method private findDeviceIdForInputIdLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 419
    iget-object v2, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 420
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInfoLocked()Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 424
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "i":I
    :goto_1f
    return v1

    .line 418
    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v1    # "i":I
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_23
    const/4 v1, -0x1

    goto :goto_1f
.end method

.method private findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    .registers 6
    .param p1, "port"    # I

    .prologue
    .line 408
    iget-object v2, p0, mHardwareList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 409
    .local v0, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 414
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private getMediaStreamVolume()F
    .registers 3

    .prologue
    .line 542
    iget v0, p0, mCurrentIndex:I

    int-to-float v0, v0

    iget v1, p0, mCurrentMaxIndex:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 504
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_82

    :cond_e
    move v5, v7

    :goto_f
    packed-switch v5, :pswitch_data_8c

    .line 528
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_2a
    :goto_2a
    return-void

    .line 505
    :sswitch_2b
    const-string v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v6

    goto :goto_f

    :sswitch_35
    const-string v5, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_f

    .line 507
    :pswitch_3f
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 508
    .local v4, "streamType":I
    if-ne v4, v8, :cond_2a

    .line 511
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 512
    .local v3, "index":I
    iget v5, p0, mCurrentIndex:I

    if-eq v3, v5, :cond_2a

    .line 515
    iput v3, p0, mCurrentIndex:I

    .line 531
    .end local v3    # "index":I
    :cond_53
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 532
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    :try_start_57
    iget-object v5, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_7c

    .line 533
    iget-object v5, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object v1

    .line 534
    .local v1, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v1, :cond_70

    .line 535
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->onMediaStreamVolumeChanged()V
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_7e

    .line 532
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 519
    .end local v1    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local v2    # "i":I
    .end local v4    # "streamType":I
    :pswitch_73
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 520
    .restart local v4    # "streamType":I
    if-eq v4, v8, :cond_53

    goto :goto_2a

    .line 538
    .restart local v2    # "i":I
    :cond_7c
    :try_start_7c
    monitor-exit v6

    goto :goto_2a

    :catchall_7e
    move-exception v5

    monitor-exit v6
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_7e

    throw v5

    .line 505
    nop

    :sswitch_data_82
    .sparse-switch
        -0x73abbf83 -> :sswitch_2b
        0x727c71d1 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_73
    .end packed-switch
.end method

.method private static indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 307
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 311
    .end local v0    # "i":I
    :goto_11
    return v0

    .line 306
    .restart local v0    # "i":I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method private static intArrayContains([II)Z
    .registers 7
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_e

    aget v1, v0, v2

    .line 316
    .local v1, "element":I
    if-ne v1, p1, :cond_b

    const/4 v4, 0x1

    .line 318
    .end local v1    # "element":I
    :goto_a
    return v4

    .line 315
    .restart local v1    # "element":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 318
    .end local v1    # "element":I
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private processPendingHdmiDeviceEventsLocked()V
    .registers 6

    .prologue
    .line 486
    iget-object v4, p0, mPendingHdmiDeviceEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 487
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 488
    .local v3, "msg":Landroid/os/Message;
    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 489
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v4

    invoke-direct {p0, v4}, findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    .line 491
    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-eqz v1, :cond_6

    .line 492
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 493
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 496
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_27
    return-void
.end method

.method private updateVolume()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 499
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, mCurrentMaxIndex:I

    .line 500
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, mCurrentIndex:I

    .line 501
    return-void
.end method


# virtual methods
.method public acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    .registers 14
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    .prologue
    const/4 v2, 0x0

    .line 364
    if-nez p2, :cond_9

    .line 365
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 367
    :cond_9
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 368
    :try_start_c
    iget-object v3, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 369
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_30

    .line 370
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid deviceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    monitor-exit v7

    .line 384
    :goto_2f
    return-object v2

    .line 373
    :cond_30
    invoke-direct {p0, v0, p4, p5}, checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 374
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_5a

    .line 377
    .local v1, "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :try_start_3f
    invoke-interface {p2}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_47} :catch_5d
    .catchall {:try_start_3f .. :try_end_47} :catchall_5a

    .line 382
    :try_start_47
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 384
    .end local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_54
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object v2

    monitor-exit v7

    goto :goto_2f

    .line 385
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_5a
    move-exception v2

    monitor-exit v7
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_5a

    throw v2

    .line 378
    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :catch_5d
    move-exception v6

    .line 379
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_5e
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    .line 380
    monitor-exit v7
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_5a

    goto :goto_2f
.end method

.method public addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 14
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 268
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 269
    :try_start_5
    iget-object v8, p0, mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 270
    .local v4, "oldInputId":Ljava/lang/String;
    if-eqz v4, :cond_4b

    .line 271
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to override previous registration: old = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mInputMap:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_4b
    iget-object v8, p0, mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    iget-object v8, p0, mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5e
    iget-object v8, p0, mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_a4

    .line 282
    iget-object v8, p0, mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-direct {p0, v8}, findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    .line 284
    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-nez v1, :cond_75

    .line 281
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 287
    :cond_75
    iget-object v8, p0, mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_72

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 289
    iget-object v5, p0, mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    iget-object v8, p0, mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    invoke-direct {p0, v8}, convertConnectedToState(Z)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 292
    monitor-exit v7

    .line 303
    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "inputId":Ljava/lang/String;
    :goto_a3
    return-void

    .line 296
    :cond_a4
    iget-object v8, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 297
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-eqz v0, :cond_c8

    .line 298
    iget-object v8, p0, mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_cd

    :goto_b8
    invoke-direct {p0, v5}, convertConnectedToState(Z)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v5, v6, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 302
    :cond_c8
    monitor-exit v7

    goto :goto_a3

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v2    # "i":I
    .end local v4    # "oldInputId":Ljava/lang/String;
    :catchall_ca
    move-exception v5

    monitor-exit v7
    :try_end_cc
    .catchall {:try_start_5 .. :try_end_cc} :catchall_ca

    throw v5

    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v2    # "i":I
    .restart local v4    # "oldInputId":Ljava/lang/String;
    :cond_cd
    move v5, v6

    .line 298
    goto :goto_b8
.end method

.method public addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    .prologue
    .line 322
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v3

    const/16 v4, 0x3ef

    if-eq v3, v4, :cond_28

    .line 323
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "info ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") has non-HDMI type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 325
    :cond_28
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 326
    :try_start_2b
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "parentId":Ljava/lang/String;
    iget-object v3, p0, mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v3, v1}, indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v2

    .line 328
    .local v2, "parentIndex":I
    if-gez v2, :cond_5a

    .line 329
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "info ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") has invalid parentId."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 339
    .end local v1    # "parentId":Ljava/lang/String;
    .end local v2    # "parentIndex":I
    :catchall_57
    move-exception v3

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_2b .. :try_end_59} :catchall_57

    throw v3

    .line 331
    .restart local v1    # "parentId":Ljava/lang/String;
    .restart local v2    # "parentIndex":I
    :cond_5a
    :try_start_5a
    iget-object v3, p0, mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    .local v0, "oldInputId":Ljava/lang/String;
    if-eqz v0, :cond_a0

    .line 333
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to override previous registration: old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mInputMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_a0
    iget-object v3, p0, mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    iget-object v3, p0, mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    monitor-exit v4
    :try_end_b3
    .catchall {:try_start_5a .. :try_end_b3} :catchall_57

    .line 340
    return-void
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    .registers 15
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 455
    :try_start_4
    invoke-direct {p0, p1}, findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v1

    .line 456
    .local v1, "deviceId":I
    if-gez v1, :cond_24

    .line 457
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid inputId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    monitor-exit v6

    .line 482
    :goto_23
    return v3

    .line 460
    :cond_24
    iget-object v5, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 461
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object v2

    .line 462
    .local v2, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v2, :cond_52

    .line 464
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v4

    .line 465
    .local v4, "runnable":Ljava/lang/Runnable;
    if-eqz v4, :cond_3f

    .line 466
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 467
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 470
    :cond_3f
    # invokes: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    invoke-static {v2, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$500(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v3

    .line 471
    .local v3, "result":Z
    if-eqz v3, :cond_4d

    .line 472
    new-instance v5, Lcom/android/server/tv/TvInputHardwareManager$2;

    invoke-direct {v5, p0, v2, p3}, Lcom/android/server/tv/TvInputHardwareManager$2;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V

    invoke-virtual {v0, v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 479
    :cond_4d
    monitor-exit v6

    goto :goto_23

    .line 481
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "deviceId":I
    .end local v2    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local v3    # "result":Z
    .end local v4    # "runnable":Ljava/lang/Runnable;
    :catchall_4f
    move-exception v5

    monitor-exit v6
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_4f

    throw v5

    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v1    # "deviceId":I
    .restart local v2    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_52
    :try_start_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4f

    goto :goto_23
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    .registers 15
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v2, "configsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 434
    :try_start_8
    invoke-direct {p0, p1}, findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v4

    .line 435
    .local v4, "deviceId":I
    if-gez v4, :cond_28

    .line 436
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid inputId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    monitor-exit v8

    .line 446
    :goto_27
    return-object v2

    .line 439
    :cond_28
    iget-object v7, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 440
    .local v3, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object v0

    .local v0, "arr$":[Landroid/media/tv/TvStreamConfig;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_36
    if-ge v5, v6, :cond_47

    aget-object v1, v0, v5

    .line 441
    .local v1, "config":Landroid/media/tv/TvStreamConfig;
    invoke-virtual {v1}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_44

    .line 442
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 445
    .end local v1    # "config":Landroid/media/tv/TvStreamConfig;
    :cond_47
    monitor-exit v8

    goto :goto_27

    .end local v0    # "arr$":[Landroid/media/tv/TvStreamConfig;
    .end local v3    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v4    # "deviceId":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_49
    move-exception v7

    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw v7
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_3
    iget-object v0, p0, mHardwareList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 242
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getHdmiDeviceList()Ljava/util/List;
    .registers 3
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
    .line 246
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_3
    iget-object v0, p0, mHdmiDeviceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 248
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .prologue
    .line 122
    const/16 v3, 0x1f4

    if-ne p1, v3, :cond_42

    .line 123
    const-string/jumbo v3, "hdmi_control"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object v2

    .line 125
    .local v2, "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    if-eqz v2, :cond_4c

    .line 127
    :try_start_11
    iget-object v3, p0, mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 128
    iget-object v3, p0, mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 129
    iget-object v3, p0, mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 131
    iget-object v3, p0, mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiControlService;->getInputDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_29} :catch_43

    .line 138
    :goto_29
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    invoke-direct {p0}, updateVolume()V

    .line 144
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    :cond_42
    return-void

    .line 132
    .restart local v2    # "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    :catch_43
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Error registering listeners to HdmiControlService:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4c
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "HdmiControlService is not available"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
    .registers 9
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .prologue
    .line 148
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_3
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-direct {v0, p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V

    .line 150
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 151
    iget-object v1, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    invoke-direct {p0}, buildHardwareListLocked()V

    .line 153
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 155
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2e

    .line 156
    invoke-direct {p0}, processPendingHdmiDeviceEventsLocked()V

    .line 158
    :cond_2e
    monitor-exit v2

    .line 159
    return-void

    .line 158
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public onDeviceUnavailable(I)V
    .registers 12
    .param p1, "deviceId"    # I

    .prologue
    .line 170
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 171
    :try_start_3
    iget-object v1, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 172
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_28

    .line 173
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceUnavailable: Cannot find a connection with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-exit v9

    .line 194
    :goto_27
    return-void

    .line 176
    :cond_28
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 177
    iget-object v1, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 178
    invoke-direct {p0}, buildHardwareListLocked()V

    .line 179
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v7

    .line 180
    .local v7, "info":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_73

    .line 182
    iget-object v1, p0, mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_4a
    :goto_4a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 183
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 184
    .local v6, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v1

    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v2

    if-ne v1, v2, :cond_4a

    .line 185
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_4a

    .line 193
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v6    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v7    # "info":Landroid/media/tv/TvInputHardwareInfo;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :catchall_70
    move-exception v1

    monitor-exit v9
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw v1

    .line 191
    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v7    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :cond_73
    :try_start_73
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    monitor-exit v9
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_70

    goto :goto_27
.end method

.method public onFirstFrameCaptured(II)V
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "streamId"    # I

    .prologue
    .line 224
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    :try_start_3
    iget-object v2, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 226
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_27

    .line 227
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FirstFrameCaptured: Cannot find a connection with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    monitor-exit v3

    .line 237
    :goto_26
    return-void

    .line 231
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v1

    .line 232
    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_34

    .line 233
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 234
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 236
    :cond_34
    monitor-exit v3

    goto :goto_26

    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;)V
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 198
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 199
    :try_start_5
    iget-object v7, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 200
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v1, :cond_29

    .line 201
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StreamConfigurationChanged: Cannot find a connection with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v6

    .line 220
    :goto_28
    return-void

    .line 205
    :cond_29
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 206
    iget-object v7, p0, mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_48

    .line 208
    iget-object v7, p0, mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    array-length v9, p2

    if-lez v9, :cond_56

    :goto_3c
    invoke-direct {p0, v4}, convertConnectedToState(Z)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v7, v8, v4, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 211
    :cond_48
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_53

    move-result-object v0

    .line 212
    .local v0, "callback":Landroid/media/tv/ITvInputHardwareCallback;
    if-eqz v0, :cond_51

    .line 214
    :try_start_4e
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_58
    .catchall {:try_start_4e .. :try_end_51} :catchall_53

    .line 219
    :cond_51
    :goto_51
    :try_start_51
    monitor-exit v6

    goto :goto_28

    .end local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v3    # "inputId":Ljava/lang/String;
    :catchall_53
    move-exception v4

    monitor-exit v6
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_53

    throw v4

    .restart local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v3    # "inputId":Ljava/lang/String;
    :cond_56
    move v4, v5

    .line 208
    goto :goto_3c

    .line 215
    .restart local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    :catch_58
    move-exception v2

    .line 216
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_59
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "error in onStreamConfigurationChanged"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_53

    goto :goto_51
.end method

.method public releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    .registers 12
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "callingUid"    # I
    .param p4, "resolvedUserId"    # I

    .prologue
    .line 393
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 394
    :try_start_3
    iget-object v1, p0, mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 395
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_27

    .line 396
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid deviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    monitor-exit v6

    .line 405
    :goto_26
    return-void

    .line 399
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object v1

    if-ne v1, p2, :cond_33

    invoke-direct {p0, v0, p3, p4}, checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 401
    :cond_33
    monitor-exit v6

    goto :goto_26

    .line 404
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_35
    move-exception v1

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1

    .line 403
    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_38
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_3d
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 404
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_35

    goto :goto_26
.end method

.method public removeTvInput(Ljava/lang/String;)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 344
    :try_start_3
    iget-object v2, p0, mInputMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v2, p0, mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, p1}, indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    .line 346
    .local v1, "hardwareIndex":I
    if-ltz v1, :cond_15

    .line 347
    iget-object v2, p0, mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 349
    :cond_15
    iget-object v2, p0, mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, p1}, indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v0

    .line 350
    .local v0, "deviceIndex":I
    if-ltz v0, :cond_22

    .line 351
    iget-object v2, p0, mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 353
    :cond_22
    monitor-exit v3

    .line 354
    return-void

    .line 353
    .end local v0    # "deviceIndex":I
    .end local v1    # "hardwareIndex":I
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method
