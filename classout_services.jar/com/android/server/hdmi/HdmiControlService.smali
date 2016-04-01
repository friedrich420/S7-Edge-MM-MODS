.class public final Lcom/android/server/hdmi/HdmiControlService;
.super Lcom/android/server/SystemService;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$BinderService;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;,
        Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;,
        Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;,
        Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    }
.end annotation


# static fields
.field static final INITIATED_BY_BOOT_UP:I = 0x1

.field static final INITIATED_BY_ENABLE_CEC:I = 0x0

.field static final INITIATED_BY_HOTPLUG:I = 0x4

.field static final INITIATED_BY_SCREEN_ON:I = 0x2

.field static final INITIATED_BY_WAKE_UP_MESSAGE:I = 0x3

.field static final PERMISSION:Ljava/lang/String; = "android.permission.HDMI_CEC"

.field static final STANDBY_SCREEN_OFF:I = 0x0

.field static final STANDBY_SHUTDOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiControlService"


# instance fields
.field private final HONG_KONG:Ljava/util/Locale;

.field private final MACAU:Ljava/util/Locale;

.field private mActivePortId:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mAddressAllocated:Z

.field private mCecController:Lcom/android/server/hdmi/HdmiCecController;

.field private mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

.field private final mDeviceEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

.field private mHdmiControlEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHotplugEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIoThread:Landroid/os/HandlerThread;

.field private mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mLastInputMhl:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mLocalDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

.field private mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field private mMhlDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMhlInputChangeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

.field private mPortInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerStatus:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mProhibitMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

.field private mStandbyMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTvInputManager:Landroid/media/tv/TvInputManager;

.field private final mVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 366
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "zh"

    const-string v2, "HK"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, HONG_KONG:Ljava/util/Locale;

    .line 98
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "zh"

    const-string v2, "MO"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, MACAU:Ljava/util/Locale;

    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Hdmi Control Io Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mIoThread:Landroid/os/HandlerThread;

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V

    iput-object v0, p0, mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 260
    const/4 v0, 0x1

    iput v0, p0, mPowerStatus:I

    .line 263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mLanguage:Ljava/lang/String;

    .line 266
    iput-boolean v3, p0, mStandbyMessageReceived:Z

    .line 269
    iput-boolean v3, p0, mWakeUpMessageReceived:Z

    .line 272
    iput v4, p0, mActivePortId:I

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 299
    iput v4, p0, mLastInputMhl:I

    .line 303
    iput-boolean v3, p0, mAddressAllocated:Z

    .line 363
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V

    iput-object v0, p0, mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    .line 367
    const-string/jumbo v0, "ro.hdmi.device_type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, getIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mLocalDevices:Ljava/util/List;

    .line 368
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    invoke-direct {p0}, assertRunOnServiceThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, onStandby(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Z)I
    .registers 2
    .param p0, "x0"    # Z

    .prologue
    .line 95
    invoke-static {p0}, toInt(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mLocalDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/hdmi/HdmiControlService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, mAddressAllocated:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, onInitializeCecComplete(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, notifyAddressAllocated(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    invoke-direct {p0}, onWakeUp()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mHotplugEventListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mDeviceEventListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .prologue
    .line 95
    iput-object p1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    invoke-direct {p0}, enforceAccessPermission()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "x2"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget v0, p0, mActivePortId:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 95
    invoke-direct {p0, p1}, oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 95
    invoke-direct {p0, p1}, queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 95
    invoke-direct {p0, p1}, addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 95
    invoke-direct {p0, p1}, removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    .line 95
    invoke-direct {p0, p1}, addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 95
    invoke-direct {p0, p1}, addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 95
    invoke-direct {p0, p1}, removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    .line 95
    invoke-direct {p0, p1}, setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    invoke-direct {p0}, getMhlDevicesLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, onLanguageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "x2"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .prologue
    .line 95
    invoke-direct {p0, p1}, setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    .line 95
    invoke-direct {p0, p1}, addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-boolean v0, p0, mHdmiControlEnabled:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/hdmi/HdmiControlService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-boolean v0, p0, mProhibitMode:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/hdmi/HdmiControlService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget v0, p0, mPowerStatus:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "x2"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, HONG_KONG:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    .prologue
    .line 95
    iput-object p1, p0, mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, onStandbyCompleted(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    invoke-direct {p0}, disableHdmiControlService()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    invoke-direct {p0}, clearLocalDevices()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 95
    iget-object v0, p0, MACAU:Ljava/util/Locale;

    return-object v0
.end method

.method private addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    .line 1729
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 1731
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_17

    .line 1736
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1737
    :try_start_10
    iget-object v2, p0, mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_20

    .line 1739
    :goto_16
    return-void

    .line 1732
    :catch_17
    move-exception v0

    .line 1733
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1738
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    .line 2140
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 2143
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_17

    .line 2149
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2150
    :try_start_10
    iget-object v2, p0, mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_20

    .line 2152
    :goto_16
    return-void

    .line 2144
    :catch_17
    move-exception v0

    .line 2145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2151
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1686
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 1688
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_1f

    .line 1693
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1694
    :try_start_10
    iget-object v2, p0, mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_28

    .line 1699
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual {p0, v2}, runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1714
    :goto_1e
    return-void

    .line 1689
    :catch_1f
    move-exception v0

    .line 1690
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1695
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method private addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 1754
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 1757
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_17

    .line 1762
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1763
    :try_start_10
    iget-object v2, p0, mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1764
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_20

    .line 1765
    :goto_16
    return-void

    .line 1758
    :catch_17
    move-exception v0

    .line 1759
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1764
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    .prologue
    .line 2091
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 2093
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_5
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_17

    .line 2098
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2099
    :try_start_10
    iget-object v2, p0, mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_20

    .line 2101
    :goto_16
    return-void

    .line 2094
    :catch_17
    move-exception v0

    .line 2095
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2100
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .registers 14
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "allocatingDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 580
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 581
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v3, "allocatedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 583
    .local v5, "finished":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, mAddressAllocated:Z

    .line 585
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 586
    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-object v8, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getType()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v10

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    invoke-virtual {v8, v9, v10, v0}, Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    goto :goto_1a

    .line 617
    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_3c
    return-void
.end method

.method private announceHotplugEvent(IZ)V
    .registers 8
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    .prologue
    .line 1898
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 1899
    .local v0, "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1900
    :try_start_8
    iget-object v3, p0, mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1901
    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->access$4800(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v3

    invoke-direct {p0, v3, v0}, invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    goto :goto_e

    .line 1903
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_25
    :try_start_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 1904
    return-void
.end method

.method private assertRunOnServiceThread()V
    .registers 3

    .prologue
    .line 806
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 807
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_14
    return-void
.end method

.method private canGoToStandby()Z
    .registers 4

    .prologue
    .line 2029
    iget-object v2, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2030
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    .line 2032
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method private checkPollStrategy(I)I
    .registers 7
    .param p1, "pickStrategy"    # I

    .prologue
    .line 935
    and-int/lit8 v1, p1, 0x3

    .line 936
    .local v1, "strategy":I
    if-nez v1, :cond_1d

    .line 937
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid poll strategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 939
    :cond_1d
    const/high16 v2, 0x30000

    and-int v0, p1, v2

    .line 940
    .local v0, "iterationStrategy":I
    if-nez v0, :cond_3c

    .line 941
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid iteration strategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 943
    :cond_3c
    or-int v2, v1, v0

    return v2
.end method

.method private clearLocalDevices()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2064
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2065
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v0, :cond_8

    .line 2070
    :goto_7
    return-void

    .line 2068
    :cond_8
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 2069
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLocalDevices()V

    goto :goto_7
.end method

.method private createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 11
    .param p1, "logicalAddress"    # I
    .param p2, "deviceType"    # I
    .param p3, "powerStatus"    # I

    .prologue
    .line 984
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 985
    .local v6, "displayName":Ljava/lang/String;
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, pathToPortId(I)I

    move-result v3

    invoke-virtual {p0}, getVendorId()I

    move-result v5

    move v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method private disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .prologue
    .line 2053
    iget-object v2, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v2, :cond_20

    .line 2054
    iget-object v2, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2055
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, mStandbyMessageReceived:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    goto :goto_e

    .line 2059
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_20
    iget-object v2, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->clearAllLocalDevices()V

    .line 2060
    return-void
.end method

.method private disableHdmiControlService()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2220
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$5;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-direct {p0, v0}, disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 2234
    return-void
.end method

.method private dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x0

    .line 873
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 874
    iget-object v3, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 875
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    if-eq v3, v4, :cond_10

    .line 877
    const/4 v2, 0x1

    .line 884
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_29
    :goto_29
    return v2

    .line 881
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    if-eq v3, v4, :cond_29

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled cec command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29
.end method

.method private enableHdmiControlService()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2212
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 2213
    iget-object v0, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, initializeCec(I)V

    .line 2216
    return-void
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 1182
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.HDMI_CEC"

    const-string v2, "HdmiControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    return-void
.end method

.method private static getIntList(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 374
    .local v4, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v4, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 377
    .local v2, "item":Ljava/lang/String;
    :try_start_1f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_13

    .line 378
    :catch_2b
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "HdmiControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t parseInt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 382
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "item":Ljava/lang/String;
    :cond_45
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method private getMhlDevicesLocked()Ljava/util/List;
    .registers 2
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
    .line 1073
    iget-object v0, p0, mMhlDevices:Ljava/util/List;

    return-object v0
.end method

.method private initPortInfo()V
    .registers 20
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 632
    invoke-direct/range {p0 .. p0}, assertRunOnServiceThread()V

    .line 633
    const/4 v9, 0x0

    .line 637
    .local v9, "cecPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_12

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecController;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v9

    .line 640
    :cond_12
    if-nez v9, :cond_15

    .line 680
    :goto_14
    return-void

    .line 644
    :cond_15
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 645
    .local v17, "portInfoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    new-instance v16, Landroid/util/SparseIntArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseIntArray;-><init>()V

    .line 646
    .local v16, "portIdMap":Landroid/util/SparseIntArray;
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 647
    .local v15, "portDeviceMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    move-object v8, v9

    .local v8, "arr$":[Landroid/hardware/hdmi/HdmiPortInfo;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_27
    if-ge v10, v12, :cond_58

    aget-object v11, v8, v10

    .line 648
    .local v11, "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v1

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 650
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    new-instance v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v3

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    invoke-virtual {v15, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    .line 652
    .end local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_58
    new-instance v1, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;-><init>(Landroid/util/SparseIntArray;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    .line 653
    new-instance v1, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 654
    new-instance v1, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v1, v15}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 656
    move-object/from16 v0, p0

    iget-object v1, v0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v13

    .line 657
    .local v13, "mhlPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v14, Landroid/util/ArraySet;

    array-length v1, v13

    invoke-direct {v14, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 658
    .local v14, "mhlSupportedPorts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object v8, v13

    array-length v12, v8

    const/4 v10, 0x0

    :goto_88
    if-ge v10, v12, :cond_a0

    aget-object v11, v8, v10

    .line 659
    .restart local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->isMhlSupported()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 660
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_9d
    add-int/lit8 v10, v10, 0x1

    goto :goto_88

    .line 666
    .end local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_a0
    invoke-virtual {v14}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 667
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mPortInfo:Ljava/util/List;

    goto/16 :goto_14

    .line 670
    :cond_b4
    new-instance v18, Ljava/util/ArrayList;

    array-length v1, v9

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 671
    .local v18, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    move-object v8, v9

    array-length v12, v8

    const/4 v10, 0x0

    :goto_bf
    if-ge v10, v12, :cond_f9

    aget-object v11, v8, v10

    .line 672
    .restart local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 673
    new-instance v1, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v2

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v4

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->isCecSupported()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v7

    invoke-direct/range {v1 .. v7}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :goto_f0
    add-int/lit8 v10, v10, 0x1

    goto :goto_bf

    .line 676
    :cond_f3
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f0

    .line 679
    .end local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_f9
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mPortInfo:Ljava/util/List;

    goto/16 :goto_14
.end method

.method private initializeCec(I)V
    .registers 5
    .param p1, "initiatedBy"    # I

    .prologue
    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, mAddressAllocated:Z

    .line 552
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 553
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x5

    iget-object v2, p0, mLanguage:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->languageToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 554
    invoke-direct {p0, p1}, initializeLocalDevices(I)V

    .line 555
    return-void
.end method

.method private initializeLocalDevices(I)V
    .registers 7
    .param p1, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 559
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 561
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v2, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v4, p0, mLocalDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 563
    .local v3, "type":I
    iget-object v4, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    .line 564
    .local v1, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v1, :cond_2a

    .line 565
    invoke-static {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    .line 567
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 568
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 572
    .end local v1    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v3    # "type":I
    :cond_31
    invoke-direct {p0}, clearLocalDevices()V

    .line 573
    invoke-direct {p0, v2, p1}, allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 574
    return-void
.end method

.method private invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I

    .prologue
    .line 1882
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1886
    :goto_3
    return-void

    .line 1883
    :catch_4
    move-exception v0

    .line 1884
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .prologue
    .line 1909
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1913
    :goto_3
    return-void

    .line 1910
    :catch_4
    move-exception v0

    .line 1911
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report hotplug event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    .param p2, "enabled"    # Z

    .prologue
    .line 1891
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1895
    :goto_3
    return-void

    .line 1892
    :catch_4
    move-exception v0

    .line 1893
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private notifyAddressAllocated(Ljava/util/ArrayList;I)V
    .registers 7
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 622
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 623
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 624
    .local v0, "address":I
    invoke-virtual {v1, v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleAddressAllocated(II)V

    goto :goto_7

    .line 626
    .end local v0    # "address":I
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1f
    return-void
.end method

.method private onInitializeCecComplete(I)V
    .registers 7
    .param p1, "initiatedBy"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 458
    iget v1, p0, mPowerStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 459
    iput v3, p0, mPowerStatus:I

    .line 461
    :cond_9
    iput-boolean v3, p0, mWakeUpMessageReceived:Z

    .line 463
    invoke-virtual {p0}, isTvDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 464
    iget-object v1, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v2

    invoke-static {v2}, toInt(Z)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 466
    :cond_22
    const/4 v0, -0x1

    .line 467
    .local v0, "reason":I
    packed-switch p1, :pswitch_data_34

    .line 479
    :goto_26
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    .line 480
    invoke-virtual {p0, v4, v0}, invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 482
    :cond_2c
    return-void

    .line 469
    :pswitch_2d
    const/4 v0, 0x0

    .line 470
    goto :goto_26

    .line 472
    :pswitch_2f
    const/4 v0, 0x1

    .line 473
    goto :goto_26

    .line 476
    :pswitch_31
    const/4 v0, 0x2

    goto :goto_26

    .line 467
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2d
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private onLanguageChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2037
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2038
    iput-object p1, p0, mLanguage:Ljava/lang/String;

    .line 2040
    invoke-virtual {p0}, isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2041
    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    .line 2042
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x5

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->languageToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 2044
    :cond_1c
    return-void
.end method

.method private onStandby(I)V
    .registers 5
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 2006
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2007
    invoke-direct {p0}, canGoToStandby()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2026
    :goto_a
    return-void

    .line 2008
    :cond_b
    iput v2, p0, mPowerStatus:I

    .line 2009
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 2012
    invoke-virtual {p0}, getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    .line 2013
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    invoke-direct {p0, v1}, disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    goto :goto_a
.end method

.method private onStandbyCompleted(I)V
    .registers 8
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2074
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2075
    const-string v2, "HdmiControlService"

    const-string/jumbo v3, "onStandbyCompleted"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    iget v2, p0, mPowerStatus:I

    if-eq v2, v5, :cond_12

    .line 2088
    :goto_11
    return-void

    .line 2080
    :cond_12
    const/4 v2, 0x1

    iput v2, p0, mPowerStatus:I

    .line 2081
    iget-object v2, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2082
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, mStandbyMessageReceived:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    goto :goto_1f

    .line 2084
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_31
    iput-boolean v4, p0, mStandbyMessageReceived:Z

    .line 2085
    iput-boolean v4, p0, mAddressAllocated:Z

    .line 2086
    iget-object v2, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 2087
    iget-object v2, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    goto :goto_11
.end method

.method private onWakeUp()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1988
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1989
    const/4 v1, 0x2

    iput v1, p0, mPowerStatus:I

    .line 1990
    iget-object v1, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_18

    .line 1991
    iget-boolean v1, p0, mHdmiControlEnabled:Z

    if-eqz v1, :cond_17

    .line 1992
    const/4 v0, 0x2

    .line 1993
    .local v0, "startReason":I
    iget-boolean v1, p0, mWakeUpMessageReceived:Z

    if-eqz v1, :cond_14

    .line 1994
    const/4 v0, 0x3

    .line 1996
    :cond_14
    invoke-direct {p0, v0}, initializeCec(I)V

    .line 2002
    .end local v0    # "startReason":I
    :cond_17
    :goto_17
    return-void

    .line 1999
    :cond_18
    const-string v1, "HdmiControlService"

    const-string v2, "Device does not support HDMI-CEC."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1663
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1664
    invoke-direct {p0}, playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 1665
    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_15

    .line 1666
    const-string v1, "HdmiControlService"

    const-string v2, "Local playback device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1671
    :goto_14
    return-void

    .line 1670
    :cond_15
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_14
.end method

.method private playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .registers 3

    .prologue
    .line 1928
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    return-object v0
.end method

.method private queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1675
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1676
    invoke-direct {p0}, playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 1677
    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_15

    .line 1678
    const-string v1, "HdmiControlService"

    const-string v2, "Local playback device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1683
    :goto_14
    return-void

    .line 1682
    :cond_15
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_14
.end method

.method private registerContentObserver()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 485
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 486
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "hdmi_control_enabled"

    aput-object v6, v5, v9

    const/4 v6, 0x1

    const-string/jumbo v7, "hdmi_control_auto_wakeup_enabled"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "hdmi_control_auto_device_off_enabled"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "mhl_input_switching_enabled"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "mhl_power_charge_enabled"

    aput-object v7, v5, v6

    .line 493
    .local v5, "settings":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2c
    if-ge v1, v2, :cond_3d

    aget-object v4, v0, v1

    .line 494
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    const/4 v8, -0x1

    invoke-virtual {v3, v6, v9, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 497
    .end local v4    # "s":Ljava/lang/String;
    :cond_3d
    return-void
.end method

.method private removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1717
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1718
    :try_start_3
    iget-object v2, p0, mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1719
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->access$4800(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_9

    .line 1720
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1721
    iget-object v2, p0, mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1725
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :cond_30
    monitor-exit v3

    .line 1726
    return-void

    .line 1725
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v2
.end method

.method private removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 1768
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1770
    :try_start_3
    iget-object v2, p0, mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 1771
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->access$2000(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_9

    .line 1772
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1773
    iget-object v2, p0, mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1777
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :cond_2c
    monitor-exit v3

    .line 1778
    return-void

    .line 1777
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method private setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .prologue
    .line 1820
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1821
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    iput-object v1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    .line 1823
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16
    .catchall {:try_start_a .. :try_end_14} :catchall_1f

    .line 1827
    :goto_14
    :try_start_14
    monitor-exit v2

    .line 1828
    return-void

    .line 1824
    :catch_16
    move-exception v0

    .line 1825
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Listener already died."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 1827
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    .line 1796
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1797
    :try_start_3
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    iput-object v1, p0, mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_20

    .line 1799
    :try_start_a
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16
    .catchall {:try_start_a .. :try_end_14} :catchall_20

    .line 1804
    :try_start_14
    monitor-exit v2

    .line 1805
    :goto_15
    return-void

    .line 1800
    :catch_16
    move-exception v0

    .line 1801
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    monitor-exit v2

    goto :goto_15

    .line 1804
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private static toInt(Z)I
    .registers 2
    .param p0, "enabled"    # Z

    .prologue
    .line 537
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .registers 3

    .prologue
    .line 1916
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object v0
.end method

.method private updateSafeMhlInput()V
    .registers 8
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1054
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1055
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 1056
    .local v4, "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v5, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getAllLocalDevices()Landroid/util/SparseArray;

    move-result-object v1

    .line 1057
    .local v1, "devices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_35

    .line 1058
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    .line 1059
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    .line 1060
    .local v3, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v3, :cond_32

    .line 1061
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1062
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .restart local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1067
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v3    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_35
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1068
    :try_start_38
    iput-object v4, p0, mMhlDevices:Ljava/util/List;

    .line 1069
    monitor-exit v6

    .line 1070
    return-void

    .line 1069
    :catchall_3c
    move-exception v5

    monitor-exit v6
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3c

    throw v5
.end method


# virtual methods
.method announceSystemAudioModeChange(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 974
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 976
    :try_start_3
    iget-object v2, p0, mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 977
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->access$2000(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-direct {p0, v2, p1}, invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V

    goto :goto_9

    .line 979
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 980
    return-void
.end method

.method changeInputForMhl(IZ)V
    .registers 8
    .param p1, "portId"    # I
    .param p2, "contentOn"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 2266
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2267
    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    if-nez v4, :cond_b

    .line 2292
    :goto_a
    return-void

    .line 2268
    :cond_b
    if-eqz p2, :cond_3a

    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    .line 2269
    .local v2, "lastInput":I
    :goto_15
    if-eq p1, v3, :cond_23

    .line 2270
    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$6;

    invoke-direct {v4, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2282
    :cond_23
    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    .line 2288
    iget-object v3, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 2289
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 2291
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_36
    invoke-virtual {p0, v1}, invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_a

    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v2    # "lastInput":I
    :cond_3a
    move v2, v3

    .line 2268
    goto :goto_15

    .line 2289
    .restart local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .restart local v2    # "lastInput":I
    :cond_3c
    iget-object v3, p0, mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    sget-object v4, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object v1, v3

    goto :goto_36
.end method

.method displayOsd(I)V
    .registers 6
    .param p1, "messageId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2310
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2312
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2313
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HDMI_CEC"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2315
    return-void
.end method

.method displayOsd(II)V
    .registers 7
    .param p1, "messageId"    # I
    .param p2, "extra"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2319
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2321
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2322
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2323
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HDMI_CEC"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2325
    return-void
.end method

.method getAllLocalDevices()Ljava/util/List;
    .registers 2
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
    .line 947
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 948
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 1933
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method getCecVersion()I
    .registers 2

    .prologue
    .line 777
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVersion()I

    move-result v0

    return v0
.end method

.method getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 759
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 760
    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    goto :goto_a
.end method

.method getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 765
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 766
    iget-object v1, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 767
    .local v0, "info":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_10

    .line 768
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 770
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method getIoLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getLanguage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2048
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2049
    iget-object v0, p0, mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method getLastInputForMhl()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2254
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2255
    iget v0, p0, mLastInputMhl:I

    return v0
.end method

.method getPhysicalAddress()I
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getPhysicalAddress()I

    move-result v0

    return v0
.end method

.method getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 4
    .param p1, "portId"    # I

    .prologue
    .line 693
    iget-object v0, p0, mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method getPowerManager()Landroid/os/PowerManager;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method getPowerStatus()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1944
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1945
    iget v0, p0, mPowerStatus:I

    return v0
.end method

.method getServiceLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 952
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method getServiceLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getTvInputManager()Landroid/media/tv/TvInputManager;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, mTvInputManager:Landroid/media/tv/TvInputManager;

    return-object v0
.end method

.method getVendorId()I
    .registers 2

    .prologue
    .line 754
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVendorId()I

    move-result v0

    return v0
.end method

.method handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 850
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 851
    iget-boolean v2, p0, mAddressAllocated:Z

    if-nez v2, :cond_f

    .line 852
    iget-object v2, p0, mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 864
    :cond_e
    :goto_e
    return v1

    .line 855
    :cond_f
    iget-object v2, p0, mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    .line 856
    .local v0, "errorCode":I
    if-eqz v0, :cond_1d

    .line 859
    if-ne v0, v3, :cond_e

    .line 860
    invoke-virtual {p0, p1, v3}, maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_e

    .line 864
    :cond_1d
    invoke-direct {p0, p1}, dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    goto :goto_e
.end method

.method handleMhlBusModeChanged(II)V
    .registers 7
    .param p1, "portId"    # I
    .param p2, "busmode"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1018
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1019
    iget-object v1, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1020
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_f

    .line 1021
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setBusMode(I)V

    .line 1026
    :goto_e
    return-void

    .line 1023
    :cond_f
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mhl device exists for bus mode change[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", busmode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method handleMhlBusOvercurrent(IZ)V
    .registers 7
    .param p1, "portId"    # I
    .param p2, "on"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1030
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1031
    iget-object v1, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1032
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_f

    .line 1033
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onBusOvercurrentDetected(Z)V

    .line 1037
    :goto_e
    return-void

    .line 1035
    :cond_f
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mhl device exists for bus overcurrent event[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method handleMhlDeviceStatusChanged(III)V
    .registers 8
    .param p1, "portId"    # I
    .param p2, "adopterId"    # I
    .param p3, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1041
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1042
    iget-object v1, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1044
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_f

    .line 1045
    invoke-virtual {v0, p2, p3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setDeviceStatusChange(II)V

    .line 1050
    :goto_e
    return-void

    .line 1047
    :cond_f
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mhl device exists for device status event[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adopterId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method handleMhlHotplugEvent(IZ)V
    .registers 9
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 992
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 994
    if-eqz p2, :cond_42

    .line 995
    new-instance v1, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 996
    .local v1, "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    iget-object v3, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v2

    .line 997
    .local v2, "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v2, :cond_33

    .line 998
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 999
    const-string v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old device of port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_33
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1002
    invoke-direct {p0}, updateSafeMhlInput()V

    .line 1013
    .end local v1    # "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v2    # "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    :goto_3e
    invoke-direct {p0, p1, p2}, announceHotplugEvent(IZ)V

    .line 1014
    return-void

    .line 1004
    :cond_42
    iget-object v3, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1005
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_59

    .line 1006
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 1007
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1008
    invoke-direct {p0}, updateSafeMhlInput()V

    goto :goto_3e

    .line 1010
    :cond_59
    const-string v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No device to remove:[portId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method invokeClearTimerRecordingResult(II)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1868
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1869
    :try_start_3
    iget-object v1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-eqz v1, :cond_10

    .line 1871
    :try_start_7
    iget-object v1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5200(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onClearTimerRecordingResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12
    .catchall {:try_start_7 .. :try_end_10} :catchall_1b

    .line 1877
    :cond_10
    :goto_10
    :try_start_10
    monitor-exit v2

    .line 1878
    return-void

    .line 1873
    :catch_12
    move-exception v0

    .line 1874
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Failed to call onClearTimerRecordingResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 1877
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 10
    .param p1, "device"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    .prologue
    .line 1742
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1743
    :try_start_3
    iget-object v3, p0, mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_37

    .line 1745
    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_15
    # getter for: Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->access$4900(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_37

    goto :goto_9

    .line 1746
    :catch_1d
    move-exception v0

    .line 1747
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v3, "HdmiControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to report device event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1750
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_37

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3a
    :try_start_3a
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    .line 1751
    return-void
.end method

.method invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 1808
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1809
    :try_start_3
    iget-object v1, p0, mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c

    if-eqz v1, :cond_10

    .line 1811
    :try_start_7
    iget-object v1, p0, mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->access$5100(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12
    .catchall {:try_start_7 .. :try_end_10} :catchall_2c

    .line 1816
    :cond_10
    :goto_10
    :try_start_10
    monitor-exit v2

    .line 1817
    return-void

    .line 1812
    :catch_12
    move-exception v0

    .line 1813
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown by IHdmiInputChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1816
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method invokeMhlVendorCommandListeners(III[B)V
    .registers 11
    .param p1, "portId"    # I
    .param p2, "offest"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .prologue
    .line 2155
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2156
    :try_start_3
    iget-object v3, p0, mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_26

    .line 2158
    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_15
    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->access$5600(Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->onReceived(III[B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_26

    goto :goto_9

    .line 2159
    :catch_1d
    move-exception v0

    .line 2160
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v3, "HdmiControlService"

    const-string v5, "Failed to notify MHL vendor command"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2163
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :catchall_26
    move-exception v3

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_29
    :try_start_29
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    .line 2164
    return-void
.end method

.method invokeOneTouchRecordResult(II)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1844
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1845
    :try_start_3
    iget-object v1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-eqz v1, :cond_10

    .line 1847
    :try_start_7
    iget-object v1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5200(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onOneTouchRecordResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12
    .catchall {:try_start_7 .. :try_end_10} :catchall_1b

    .line 1852
    :cond_10
    :goto_10
    :try_start_10
    monitor-exit v2

    .line 1853
    return-void

    .line 1848
    :catch_12
    move-exception v0

    .line 1849
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Failed to call onOneTouchRecordResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 1852
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method invokeRecordRequestListener(I)[B
    .registers 6
    .param p1, "recorderAddress"    # I

    .prologue
    .line 1831
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1832
    :try_start_3
    iget-object v1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1f

    if-eqz v1, :cond_1b

    .line 1834
    :try_start_7
    iget-object v1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5200(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->getOneTouchRecordSource(I)[B
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_13
    .catchall {:try_start_7 .. :try_end_10} :catchall_1f

    move-result-object v1

    :try_start_11
    monitor-exit v2

    .line 1839
    :goto_12
    return-object v1

    .line 1835
    :catch_13
    move-exception v0

    .line 1836
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Failed to start record."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1839
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    monitor-exit v2

    goto :goto_12

    .line 1840
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method invokeTimerRecordingResult(II)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1856
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1857
    :try_start_3
    iget-object v1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-eqz v1, :cond_10

    .line 1859
    :try_start_7
    iget-object v1, p0, mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5200(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onTimerRecordingResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12
    .catchall {:try_start_7 .. :try_end_10} :catchall_1b

    .line 1864
    :cond_10
    :goto_10
    :try_start_10
    monitor-exit v2

    .line 1865
    return-void

    .line 1860
    :catch_12
    move-exception v0

    .line 1861
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Failed to call onTimerRecordingResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 1864
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method invokeVendorCommandListenersOnControlStateChanged(ZI)Z
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 2124
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2125
    :try_start_3
    iget-object v3, p0, mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2126
    const/4 v3, 0x0

    monitor-exit v4

    .line 2135
    :goto_d
    return v3

    .line 2128
    :cond_e
    iget-object v3, p0, mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_31

    .line 2130
    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_20
    # getter for: Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->access$5500(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_31

    goto :goto_14

    .line 2131
    :catch_28
    move-exception v0

    .line 2132
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v3, "HdmiControlService"

    const-string v5, "Failed to notify control-state-changed to vendor handler"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 2136
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v3

    .line 2135
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_34
    const/4 v3, 0x1

    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_31

    goto :goto_d
.end method

.method invokeVendorCommandListenersOnReceived(III[BZ)Z
    .registers 12
    .param p1, "deviceType"    # I
    .param p2, "srcAddress"    # I
    .param p3, "destAddress"    # I
    .param p4, "params"    # [B
    .param p5, "hasVendorId"    # Z

    .prologue
    .line 2105
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2106
    :try_start_3
    iget-object v3, p0, mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2107
    const/4 v3, 0x0

    monitor-exit v4

    .line 2119
    :goto_d
    return v3

    .line 2109
    :cond_e
    iget-object v3, p0, mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 2110
    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mDeviceType:I
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->access$5400(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_37

    move-result v3

    if-ne v3, p1, :cond_14

    .line 2114
    :try_start_26
    # getter for: Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->access$5500(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2e
    .catchall {:try_start_26 .. :try_end_2d} :catchall_37

    goto :goto_14

    .line 2115
    :catch_2e
    move-exception v0

    .line 2116
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2f
    const-string v3, "HdmiControlService"

    const-string v5, "Failed to notify vendor command reception"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 2120
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v3

    .line 2119
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3a
    const/4 v3, 0x1

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_37

    goto :goto_d
.end method

.method isConnected(I)Z
    .registers 3
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 793
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 794
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result v0

    return v0
.end method

.method isConnectedToArcPort(I)Z
    .registers 4
    .param p1, "physicalAddress"    # I

    .prologue
    .line 784
    invoke-virtual {p0, p1}, pathToPortId(I)I

    move-result v0

    .line 785
    .local v0, "portId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 786
    iget-object v1, p0, mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v1

    .line 788
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method isControlEnabled()Z
    .registers 3

    .prologue
    .line 1937
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1938
    :try_start_3
    iget-boolean v0, p0, mHdmiControlEnabled:Z

    monitor-exit v1

    return v0

    .line 1939
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method isMhlInputChangeEnabled()Z
    .registers 3

    .prologue
    .line 2303
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2304
    :try_start_3
    iget-boolean v0, p0, mMhlInputChangeEnabled:Z

    monitor-exit v1

    return v0

    .line 2305
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method isPowerOnOrTransient()Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1950
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1951
    iget v0, p0, mPowerStatus:I

    if-eqz v0, :cond_c

    iget v0, p0, mPowerStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isPowerStandby()Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1964
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1965
    iget v1, p0, mPowerStatus:I

    if-ne v1, v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isPowerStandbyOrTransient()Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1957
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1958
    iget v1, p0, mPowerStatus:I

    if-eq v1, v0, :cond_d

    iget v1, p0, mPowerStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isProhibitMode()Z
    .registers 3

    .prologue
    .line 2167
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2168
    :try_start_3
    iget-boolean v0, p0, mProhibitMode:Z

    monitor-exit v1

    return v0

    .line 2169
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method isTvDevice()Z
    .registers 3

    .prologue
    .line 1920
    iget-object v0, p0, mLocalDevices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTvDeviceEnabled()Z
    .registers 2

    .prologue
    .line 1924
    invoke-virtual {p0}, isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isValidPortId(I)Z
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 721
    invoke-virtual {p0, p1}, getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 4
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 844
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 845
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 846
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 429
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_22

    .line 430
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 432
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 434
    :cond_22
    return-void
.end method

.method onHotplug(IZ)V
    .registers 9
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 895
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 897
    if-eqz p2, :cond_3d

    invoke-virtual {p0}, isTvDevice()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 898
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .local v3, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v5, p0, mLocalDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 900
    .local v4, "type":I
    iget-object v5, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    .line 901
    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v2, :cond_35

    .line 902
    invoke-static {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    .line 903
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 905
    :cond_35
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 907
    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v4    # "type":I
    :cond_39
    const/4 v5, 0x4

    invoke-direct {p0, v3, v5}, allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 910
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    :cond_3d
    iget-object v5, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 911
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onHotplug(IZ)V

    goto :goto_47

    .line 913
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_57
    invoke-direct {p0, p1, p2}, announceHotplugEvent(IZ)V

    .line 914
    return-void
.end method

.method public onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 387
    iget-object v1, p0, mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 388
    const/4 v1, 0x2

    iput v1, p0, mPowerStatus:I

    .line 389
    const/4 v1, 0x0

    iput-boolean v1, p0, mProhibitMode:Z

    .line 390
    const-string/jumbo v1, "hdmi_control_enabled"

    invoke-virtual {p0, v1, v4}, readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, mHdmiControlEnabled:Z

    .line 391
    const-string/jumbo v1, "mhl_input_switching_enabled"

    invoke-virtual {p0, v1, v4}, readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, mMhlInputChangeEnabled:Z

    .line 393
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecController;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iput-object v1, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 394
    iget-object v1, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_8c

    .line 395
    iget-boolean v1, p0, mHdmiControlEnabled:Z

    if-eqz v1, :cond_2f

    .line 396
    invoke-direct {p0, v4}, initializeCec(I)V

    .line 403
    :cond_2f
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iput-object v1, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 404
    iget-object v1, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->isReady()Z

    move-result v1

    if-nez v1, :cond_44

    .line 405
    const-string v1, "HdmiControlService"

    const-string v2, "Device does not support MHL-control."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, mMhlDevices:Ljava/util/List;

    .line 409
    invoke-direct {p0}, initPortInfo()V

    .line 410
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v1, p0, mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    .line 411
    const-string/jumbo v1, "hdmi_control"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V

    invoke-virtual {p0, v1, v2}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 413
    iget-object v1, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_84

    .line 415
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    invoke-direct {p0}, registerContentObserver()V

    .line 424
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_84
    iget-object v1, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 425
    :goto_8b
    return-void

    .line 399
    :cond_8c
    const-string v1, "HdmiControlService"

    const-string v2, "Device does not support HDMI-CEC."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b
.end method

.method pathToPortId(I)I
    .registers 5
    .param p1, "path"    # I

    .prologue
    .line 716
    const v1, 0xf000

    and-int v0, p1, v1

    .line 717
    .local v0, "portAddress":I
    iget-object v1, p0, mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->get(II)I

    move-result v1

    return v1
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .registers 7
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 929
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 930
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0, p3}, checkPollStrategy(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/hdmi/HdmiCecController;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    .line 932
    return-void
.end method

.method portIdToPath(I)I
    .registers 6
    .param p1, "portId"    # I

    .prologue
    .line 701
    invoke-virtual {p0, p1}, getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    .line 702
    .local v0, "portInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    if-nez v0, :cond_22

    .line 703
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the port info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const v1, 0xffff

    .line 706
    :goto_21
    return v1

    :cond_22
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v1

    goto :goto_21
.end method

.method readBooleanSetting(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Z

    .prologue
    const/4 v1, 0x1

    .line 541
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 542
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, toInt(Z)I

    move-result v2

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_14

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .prologue
    .line 441
    iget-object v0, p0, mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_5

    .line 443
    :goto_4
    return-void

    .line 442
    :cond_5
    iget-object v0, p0, mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    goto :goto_4
.end method

.method runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 798
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method

.method runOnServiceThreadAtFrontOfQueue(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 802
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 803
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 832
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 834
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 5
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 819
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 820
    iget-object v0, p0, mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    if-nez v0, :cond_11

    .line 821
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 828
    :cond_10
    :goto_10
    return-void

    .line 823
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    if-eqz p2, :cond_10

    .line 825
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    goto :goto_10
.end method

.method setActivePortId(I)V
    .registers 3
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2238
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2239
    iput p1, p0, mActivePortId:I

    .line 2243
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, setLastInputForMhl(I)V

    .line 2244
    return-void
.end method

.method setAudioReturnChannel(IZ)V
    .registers 4
    .param p1, "portId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 868
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setAudioReturnChannel(IZ)V

    .line 869
    return-void
.end method

.method setAudioStatus(ZI)V
    .registers 7
    .param p1, "mute"    # Z
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x3

    .line 956
    invoke-virtual {p0}, getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 957
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 958
    .local v1, "muted":Z
    if-eqz p1, :cond_12

    .line 959
    if-nez v1, :cond_11

    .line 960
    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 971
    :cond_11
    :goto_11
    return-void

    .line 963
    :cond_12
    if-eqz v1, :cond_18

    .line 964
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 968
    :cond_18
    const/16 v2, 0x101

    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_11
.end method

.method setCecOption(II)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2180
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2181
    iget-object v0, p0, mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 2182
    return-void
.end method

.method setControlEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2186
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2188
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2189
    :try_start_6
    iput-boolean p1, p0, mHdmiControlEnabled:Z

    .line 2190
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    .line 2192
    if-eqz p1, :cond_12

    .line 2193
    invoke-direct {p0}, enableHdmiControlService()V

    .line 2207
    :goto_e
    return-void

    .line 2190
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0

    .line 2197
    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 2201
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$4;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, v0}, runOnServiceThread(Ljava/lang/Runnable;)V

    goto :goto_e
.end method

.method setLastInputForMhl(I)V
    .registers 2
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2248
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 2249
    iput p1, p0, mLastInputMhl:I

    .line 2250
    return-void
.end method

.method setMhlInputChangeEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2295
    iget-object v0, p0, mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x65

    invoke-static {p1}, toInt(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2297
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2298
    :try_start_e
    iput-boolean p1, p0, mMhlInputChangeEnabled:Z

    .line 2299
    monitor-exit v1

    .line 2300
    return-void

    .line 2299
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0
.end method

.method setProhibitMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2173
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2174
    :try_start_3
    iput-boolean p1, p0, mProhibitMode:Z

    .line 2175
    monitor-exit v1

    .line 2176
    return-void

    .line 2175
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method standby()V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1979
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1980
    const/4 v0, 0x1

    iput-boolean v0, p0, mStandbyMessageReceived:Z

    .line 1981
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1984
    return-void
.end method

.method unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .prologue
    .line 446
    iget-object v0, p0, mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_5

    .line 448
    :goto_4
    return-void

    .line 447
    :cond_5
    iget-object v0, p0, mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    goto :goto_4
.end method

.method wakeUp()V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1970
    invoke-direct {p0}, assertRunOnServiceThread()V

    .line 1971
    const/4 v0, 0x1

    iput-boolean v0, p0, mWakeUpMessageReceived:Z

    .line 1972
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v1, "android.server.hdmi:WAKE"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 1975
    return-void
.end method

.method writeBooleanSetting(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 546
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 547
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, toInt(Z)I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    return-void
.end method
