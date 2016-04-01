.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

.field private final mLock:Ljava/lang/Object;

.field private mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsByUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

.field private setByNox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 140
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 117
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, mLock:Ljava/lang/Object;

    .line 122
    iput-boolean v6, p0, setByNox:Z

    .line 125
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, mSettingsByUser:Landroid/util/SparseArray;

    .line 196
    new-instance v3, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v3, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 144
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "UsbHostNotification"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 146
    new-instance v3, Lcom/android/server/usb/UsbNotificationHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const-string v5, "UsbHostNotification"

    invoke-direct {v3, p1, v4, v5}, Lcom/android/server/usb/UsbNotificationHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v3, p0, mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    .line 148
    new-instance v3, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 150
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 151
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 152
    const-string v3, "UsbService"

    const-string v4, "UsbService -> UsbHostManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v3, Lcom/android/server/usb/UsbHostManager;

    iget-object v4, p0, mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v5, p0, mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {v3, p1, v4, v5}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbNotificationHandler;)V

    iput-object v3, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 156
    :cond_5c
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 157
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v4, p0, mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v3, p1, v4}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V

    iput-object v3, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 159
    :cond_72
    iget-object v3, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v3, :cond_7a

    iget-object v3, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_81

    .line 160
    :cond_7a
    new-instance v3, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 163
    :cond_81
    iget-object v3, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_e7

    .line 164
    const-string v3, "UsbService"

    const-string v4, "At UsbService, UsbDeviceManager -> UsbHostRestrictor"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v3, Lcom/android/server/usb/UsbHostRestrictor;

    iget-object v4, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v3, p1, v4}, Lcom/android/server/usb/UsbHostRestrictor;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    .line 170
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 171
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_ef

    .line 172
    const-string v3, "UsbService"

    const-string v4, "UsbService -> UsbMirrorLinkManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v3, Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

    .line 181
    :goto_c0
    invoke-direct {p0, v6}, setCurrentUser(I)V

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 185
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 191
    invoke-direct {p0}, registerKnoxModeChangeObserver()V

    .line 194
    return-void

    .line 167
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_e7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "USB Device Not Supported while trying to start UsbHostRestrictor"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_ef
    const-string v3, "UsbService"

    const-string v4, "UsbService -> ML Feature level is not 3"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 178
    :cond_f7
    const-string v3, "UsbService"

    const-string v4, "UsbService -> no ML Feature "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, setCurrentUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .prologue
    .line 79
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .prologue
    .line 79
    iget-object v0, p0, mSettingsByUser:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .prologue
    .line 79
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, setByNox:Z

    return p1
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 130
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_3
    iget-object v1, p0, mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbSettingsManager;

    .line 132
    .local v0, "settings":Lcom/android/server/usb/UsbSettingsManager;
    if-nez v0, :cond_1e

    .line 133
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager;

    .end local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 134
    .restart local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    :cond_1e
    monitor-exit v2

    return-object v0

    .line 137
    .end local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private static isSupportedCurrentFunction(Ljava/lang/String;)Z
    .registers 4
    .param p0, "function"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 416
    if-nez p0, :cond_4

    .line 441
    :goto_3
    :pswitch_3
    return v1

    .line 418
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_da

    :cond_c
    :goto_c
    packed-switch v0, :pswitch_data_120

    goto :goto_3

    :sswitch_10
    const-string/jumbo v2, "none"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x0

    goto :goto_c

    :sswitch_1b
    const-string v2, "audio_source"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_c

    :sswitch_25
    const-string/jumbo v2, "midi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x2

    goto :goto_c

    :sswitch_30
    const-string/jumbo v2, "mtp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x3

    goto :goto_c

    :sswitch_3b
    const-string/jumbo v2, "ptp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x4

    goto :goto_c

    :sswitch_46
    const-string/jumbo v2, "rndis"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x5

    goto :goto_c

    :sswitch_51
    const-string/jumbo v2, "mass_storage,mtp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x6

    goto :goto_c

    :sswitch_5c
    const-string/jumbo v2, "mtp,adb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x7

    goto :goto_c

    :sswitch_67
    const-string/jumbo v2, "rndis,adb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0x8

    goto :goto_c

    :sswitch_73
    const-string/jumbo v2, "ptp,adb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0x9

    goto :goto_c

    :sswitch_7f
    const-string/jumbo v2, "rndis,dm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0xa

    goto :goto_c

    :sswitch_8b
    const-string/jumbo v2, "rndis,acm,dm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0xb

    goto/16 :goto_c

    :sswitch_98
    const-string/jumbo v2, "rndis,acm,dm,adb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0xc

    goto/16 :goto_c

    :sswitch_a5
    const-string/jumbo v2, "rndis,diag"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0xd

    goto/16 :goto_c

    :sswitch_b2
    const-string/jumbo v2, "dm,acm,adb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0xe

    goto/16 :goto_c

    :sswitch_bf
    const-string/jumbo v2, "diag,acm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0xf

    goto/16 :goto_c

    :sswitch_cc
    const-string/jumbo v2, "rndis,acm,diag"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0x10

    goto/16 :goto_c

    nop

    :sswitch_data_da
    .sparse-switch
        -0x74a7b3fb -> :sswitch_a5
        -0x55c6135c -> :sswitch_1b
        -0x522b545d -> :sswitch_7f
        -0x1506607a -> :sswitch_cc
        -0xf142a21 -> :sswitch_73
        -0xe552936 -> :sswitch_bf
        0x1a7a9 -> :sswitch_30
        0x1b2ec -> :sswitch_3b
        0x332321 -> :sswitch_25
        0x33af38 -> :sswitch_10
        0x679fcd2 -> :sswitch_46
        0xcc0bcc5 -> :sswitch_67
        0x1106eb64 -> :sswitch_8b
        0x13301257 -> :sswitch_98
        0x22c8dddb -> :sswitch_b2
        0x5239241c -> :sswitch_5c
        0x6e42cc2d -> :sswitch_51
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private isUsbForKnox2_5()Z
    .registers 4

    .prologue
    .line 902
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 903
    .local v0, "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v2}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_1a

    .line 904
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 905
    .local v1, "userId":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_1a

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_1a

    .line 906
    const/4 v2, 0x1

    .line 910
    .end local v1    # "userId":I
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private isUsbHostModeEnabledForContainer()Z
    .registers 13

    .prologue
    .line 914
    const/4 v5, 0x0

    .line 915
    .local v5, "status":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 916
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 918
    .local v6, "uid":J
    :try_start_9
    const-string v9, "UsbService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isUsbHostModeEnabledForContainer: userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 920
    .local v2, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    .line 921
    .local v4, "ownerUid":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    new-instance v11, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v11, v4, v8}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v3

    .line 922
    .local v3, "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v3, :cond_69

    .line 923
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v0

    .line 924
    .local v0, "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    if-eqz v0, :cond_69

    .line 925
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->isUsbAccessEnabled()Z

    move-result v5

    .line 926
    if-nez v5, :cond_69

    .line 927
    const-string v9, "UsbService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isUsbHostModeEnabledForContainer: Usb Host Mode sdcard is disabled for User-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Ignoring USB device access request..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_69} :catch_6d
    .catchall {:try_start_9 .. :try_end_69} :catchall_8d

    .line 935
    .end local v0    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    :cond_69
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 937
    .end local v2    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v3    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v4    # "ownerUid":I
    :goto_6c
    return v5

    .line 931
    :catch_6d
    move-exception v1

    .line 932
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6e
    const-string v9, "UsbService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in isUsbHostModeEnabledForContainer:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_6e .. :try_end_89} :catchall_8d

    .line 935
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6c

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_8d
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private registerKnoxModeChangeObserver()V
    .registers 5

    .prologue
    .line 875
    :try_start_0
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 876
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 878
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_10

    .line 896
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_f
    return-void

    .line 882
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_10
    new-instance v3, Lcom/android/server/usb/UsbService$2;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbService$2;-><init>(Lcom/android/server/usb/UsbService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_f

    .line 893
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catch_19
    move-exception v1

    .line 894
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private static final removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 217
    invoke-direct {p0, p1}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    .line 218
    .local v0, "userSettings":Lcom/android/server/usb/UsbSettingsManager;
    const/4 v1, 0x0

    iput-boolean v1, p0, setByNox:Z

    .line 219
    iget-object v1, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_10

    .line 220
    iget-object v1, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbHostManager;->setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V

    .line 222
    :cond_10
    iget-object v1, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_19

    .line 223
    iget-object v1, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbSettingsManager;)V

    .line 225
    :cond_19
    return-void
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .registers 6
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 457
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_15

    .line 464
    :goto_14
    return-void

    .line 463
    :cond_15
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->allowUsbDebugging(ZLjava/lang/String;)V

    goto :goto_14
.end method

.method public bootCompleted()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_9

    .line 244
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 246
    :cond_9
    iget-object v0, p0, mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

    if-eqz v0, :cond_12

    .line 247
    iget-object v0, p0, mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->systemReady()V

    .line 249
    :cond_12
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 380
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, p2}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearDefaults(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .registers 4

    .prologue
    .line 483
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 487
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_15

    .line 494
    :goto_14
    return-void

    .line 493
    :cond_15
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->clearUsbDebuggingKeys()V

    goto :goto_14
.end method

.method public countKeyBoardConnectedviaUsbHost()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 836
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 837
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v1

    if-nez v1, :cond_e

    .line 848
    :goto_d
    return v0

    .line 843
    :cond_e
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v1, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_21

    .line 845
    iget-object v0, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->countKeyBoardConnectedviaUsbHost()I

    move-result v0

    goto :goto_d

    .line 847
    :cond_21
    const-string v1, "UsbService"

    const-string v2, "can\'t support usb host or not yet initalized"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public countMouseConnectedviaUsbHost()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 854
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 855
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v1

    if-nez v1, :cond_e

    .line 866
    :goto_d
    return v0

    .line 861
    :cond_e
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_21

    .line 863
    iget-object v0, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->countMouseConnectedviaUsbHost()I

    move-result v0

    goto :goto_d

    .line 865
    :cond_21
    const-string v1, "UsbService"

    const-string v2, "can\'t support usb host or not yet initalized"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public denyUsbDebugging()V
    .registers 4

    .prologue
    .line 468
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 472
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_15

    .line 479
    :goto_14
    return-void

    .line 478
    :cond_15
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->denyUsbDebugging()V

    goto :goto_14
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v17, "android.permission.DUMP"

    const-string v18, "UsbService"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 542
    .local v10, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 544
    .local v12, "ident":J
    if-eqz p3, :cond_31

    :try_start_1e
    move-object/from16 v0, p3

    array-length v2, v0

    if-eqz v2, :cond_31

    const-string v2, "-a"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 545
    :cond_31
    const-string v2, "USB Manager State:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_46

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 550
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_53

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 553
    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_60

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 556
    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz v2, :cond_76

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Lcom/android/server/usb/UsbHostRestrictor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 561
    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    if-eqz v2, :cond_85

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Lcom/android/server/usb/UsbNotificationHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 565
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_8c
    .catchall {:try_start_1e .. :try_end_8c} :catchall_df

    .line 566
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8d
    :try_start_8d
    move-object/from16 v0, p0

    iget-object v2, v0, mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_d7

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 568
    .local v16, "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/usb/UsbSettingsManager;

    .line 569
    .local v14, "settings":Lcom/android/server/usb/UsbSettingsManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Settings for user "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 571
    invoke-virtual {v14, v10}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 572
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 566
    add-int/lit8 v11, v11, 0x1

    goto :goto_8d

    .line 574
    .end local v14    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    .end local v16    # "userId":I
    :cond_d7
    monitor-exit v17
    :try_end_d8
    .catchall {:try_start_8d .. :try_end_d8} :catchall_dc

    .line 751
    .end local v11    # "i":I
    :cond_d8
    :goto_d8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    :goto_db
    return-void

    .line 574
    .restart local v11    # "i":I
    :catchall_dc
    move-exception v2

    :try_start_dd
    monitor-exit v17
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    :try_start_de
    throw v2
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_df

    .line 751
    .end local v11    # "i":I
    :catchall_df
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 575
    :cond_e4
    :try_start_e4
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v2, v0, :cond_1c5

    const-string/jumbo v2, "set-port-roles"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 576
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 578
    .local v3, "portId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v17, p3, v2

    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_520

    :cond_10a
    :goto_10a
    packed-switch v2, :pswitch_data_52e

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid power role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x2

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_e4 .. :try_end_12b} :catchall_df

    .line 751
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_db

    .line 578
    :sswitch_12f
    :try_start_12f
    const-string/jumbo v18, "source"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10a

    const/4 v2, 0x0

    goto :goto_10a

    :sswitch_13a
    const-string/jumbo v18, "sink"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10a

    const/4 v2, 0x1

    goto :goto_10a

    :sswitch_145
    const-string/jumbo v18, "no-power"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10a

    const/4 v2, 0x2

    goto :goto_10a

    .line 580
    :pswitch_150
    const/4 v6, 0x1

    .line 593
    .local v6, "powerRole":I
    :goto_151
    const/4 v2, 0x3

    aget-object v17, p3, v2

    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_538

    :cond_15c
    :goto_15c
    packed-switch v2, :pswitch_data_546

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid data role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x3

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_17d
    .catchall {:try_start_12f .. :try_end_17d} :catchall_df

    .line 751
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_db

    .line 583
    .end local v6    # "powerRole":I
    :pswitch_182
    const/4 v6, 0x2

    .line 584
    .restart local v6    # "powerRole":I
    goto :goto_151

    .line 586
    .end local v6    # "powerRole":I
    :pswitch_184
    const/4 v6, 0x0

    .line 587
    .restart local v6    # "powerRole":I
    goto :goto_151

    .line 593
    :sswitch_186
    :try_start_186
    const-string/jumbo v18, "host"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15c

    const/4 v2, 0x0

    goto :goto_15c

    :sswitch_191
    const-string/jumbo v18, "device"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15c

    const/4 v2, 0x1

    goto :goto_15c

    :sswitch_19c
    const-string/jumbo v18, "no-data"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15c

    const/4 v2, 0x2

    goto :goto_15c

    .line 595
    :pswitch_1a7
    const/4 v8, 0x1

    .line 607
    .local v8, "dataRole":I
    :goto_1a8
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_d8

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v6, v8, v10}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 614
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_d8

    .line 598
    .end local v8    # "dataRole":I
    :pswitch_1c1
    const/4 v8, 0x2

    .line 599
    .restart local v8    # "dataRole":I
    goto :goto_1a8

    .line 601
    .end local v8    # "dataRole":I
    :pswitch_1c3
    const/4 v8, 0x0

    .line 602
    .restart local v8    # "dataRole":I
    goto :goto_1a8

    .line 617
    .end local v3    # "portId":Ljava/lang/String;
    .end local v6    # "powerRole":I
    .end local v8    # "dataRole":I
    :cond_1c5
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v2, v0, :cond_25c

    const-string v2, "add-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25c

    .line 618
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 620
    .restart local v3    # "portId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v17, p3, v2

    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_550

    :cond_1ea
    :goto_1ea
    packed-switch v2, :pswitch_data_562

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid mode: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x2

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_20b
    .catchall {:try_start_186 .. :try_end_20b} :catchall_df

    .line 751
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_db

    .line 620
    :sswitch_210
    :try_start_210
    const-string/jumbo v18, "ufp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1ea

    const/4 v2, 0x0

    goto :goto_1ea

    :sswitch_21b
    const-string/jumbo v18, "dfp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1ea

    const/4 v2, 0x1

    goto :goto_1ea

    :sswitch_226
    const-string/jumbo v18, "dual"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1ea

    const/4 v2, 0x2

    goto :goto_1ea

    :sswitch_231
    const-string/jumbo v18, "none"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1ea

    const/4 v2, 0x3

    goto :goto_1ea

    .line 622
    :pswitch_23c
    const/4 v15, 0x2

    .line 637
    .local v15, "supportedModes":I
    :goto_23d
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_d8

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v15, v10}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 639
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_d8

    .line 625
    .end local v15    # "supportedModes":I
    :pswitch_256
    const/4 v15, 0x1

    .line 626
    .restart local v15    # "supportedModes":I
    goto :goto_23d

    .line 628
    .end local v15    # "supportedModes":I
    :pswitch_258
    const/4 v15, 0x3

    .line 629
    .restart local v15    # "supportedModes":I
    goto :goto_23d

    .line 631
    .end local v15    # "supportedModes":I
    :pswitch_25a
    const/4 v15, 0x0

    .line 632
    .restart local v15    # "supportedModes":I
    goto :goto_23d

    .line 642
    .end local v3    # "portId":Ljava/lang/String;
    .end local v15    # "supportedModes":I
    :cond_25c
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v2, v0, :cond_3b8

    const-string v2, "connect-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b8

    .line 643
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 645
    .restart local v3    # "portId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p3, v2

    const-string v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 646
    .local v5, "canChangeMode":Z
    if-eqz v5, :cond_2ba

    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-static {v2}, removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_28c
    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_56e

    :cond_294
    :goto_294
    packed-switch v2, :pswitch_data_578

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid mode: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x2

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b5
    .catchall {:try_start_210 .. :try_end_2b5} :catchall_df

    .line 751
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_db

    .line 646
    :cond_2ba
    const/4 v2, 0x2

    :try_start_2bb
    aget-object v2, p3, v2

    move-object/from16 v17, v2

    goto :goto_28c

    :sswitch_2c0
    const-string/jumbo v18, "ufp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_294

    const/4 v2, 0x0

    goto :goto_294

    :sswitch_2cb
    const-string/jumbo v18, "dfp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_294

    const/4 v2, 0x1

    goto :goto_294

    .line 648
    :pswitch_2d6
    const/4 v4, 0x2

    .line 658
    .local v4, "mode":I
    :goto_2d7
    const/4 v2, 0x3

    aget-object v2, p3, v2

    const-string v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 659
    .local v7, "canChangePowerRole":Z
    if-eqz v7, :cond_31d

    const/4 v2, 0x3

    aget-object v2, p3, v2

    invoke-static {v2}, removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_2ed
    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_580

    :cond_2f5
    :goto_2f5
    packed-switch v2, :pswitch_data_58a

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid power role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x3

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_316
    .catchall {:try_start_2bb .. :try_end_316} :catchall_df

    .line 751
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_db

    .line 651
    .end local v4    # "mode":I
    .end local v7    # "canChangePowerRole":Z
    :pswitch_31b
    const/4 v4, 0x1

    .line 652
    .restart local v4    # "mode":I
    goto :goto_2d7

    .line 659
    .restart local v7    # "canChangePowerRole":Z
    :cond_31d
    const/4 v2, 0x3

    :try_start_31e
    aget-object v2, p3, v2

    move-object/from16 v17, v2

    goto :goto_2ed

    :sswitch_323
    const-string/jumbo v18, "source"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2f5

    const/4 v2, 0x0

    goto :goto_2f5

    :sswitch_32e
    const-string/jumbo v18, "sink"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2f5

    const/4 v2, 0x1

    goto :goto_2f5

    .line 661
    :pswitch_339
    const/4 v6, 0x1

    .line 671
    .restart local v6    # "powerRole":I
    :goto_33a
    const/4 v2, 0x4

    aget-object v2, p3, v2

    const-string v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 672
    .local v9, "canChangeDataRole":Z
    if-eqz v9, :cond_380

    const/4 v2, 0x4

    aget-object v2, p3, v2

    invoke-static {v2}, removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_350
    const/4 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_592

    :cond_358
    :goto_358
    packed-switch v2, :pswitch_data_59c

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid data role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x4

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_379
    .catchall {:try_start_31e .. :try_end_379} :catchall_df

    .line 751
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_db

    .line 664
    .end local v6    # "powerRole":I
    .end local v9    # "canChangeDataRole":Z
    :pswitch_37e
    const/4 v6, 0x2

    .line 665
    .restart local v6    # "powerRole":I
    goto :goto_33a

    .line 672
    .restart local v9    # "canChangeDataRole":Z
    :cond_380
    const/4 v2, 0x4

    :try_start_381
    aget-object v2, p3, v2

    move-object/from16 v17, v2

    goto :goto_350

    :sswitch_386
    const-string/jumbo v18, "host"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_358

    const/4 v2, 0x0

    goto :goto_358

    :sswitch_391
    const-string/jumbo v18, "device"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_358

    const/4 v2, 0x1

    goto :goto_358

    .line 674
    :pswitch_39c
    const/4 v8, 0x1

    .line 683
    .restart local v8    # "dataRole":I
    :goto_39d
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_d8

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 686
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_d8

    .line 677
    .end local v8    # "dataRole":I
    :pswitch_3b6
    const/4 v8, 0x2

    .line 678
    .restart local v8    # "dataRole":I
    goto :goto_39d

    .line 689
    .end local v3    # "portId":Ljava/lang/String;
    .end local v4    # "mode":I
    .end local v5    # "canChangeMode":Z
    .end local v6    # "powerRole":I
    .end local v7    # "canChangePowerRole":Z
    .end local v8    # "dataRole":I
    .end local v9    # "canChangeDataRole":Z
    :cond_3b8
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v2, v0, :cond_3ec

    const-string/jumbo v2, "disconnect-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ec

    .line 690
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 691
    .restart local v3    # "portId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_d8

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v10}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 693
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_d8

    .line 696
    .end local v3    # "portId":Ljava/lang/String;
    :cond_3ec
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v2, v0, :cond_420

    const-string/jumbo v2, "remove-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_420

    .line 697
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 698
    .restart local v3    # "portId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_d8

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v10}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 700
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_d8

    .line 703
    .end local v3    # "portId":Ljava/lang/String;
    :cond_420
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_451

    const-string/jumbo v2, "reset"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_451

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_d8

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 706
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_d8

    .line 709
    :cond_451
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_478

    const-string/jumbo v2, "ports"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_478

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_d8

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_d8

    .line 714
    :cond_478
    const-string v2, "Dump current USB state or issue command:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 715
    const-string v2, "  ports"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    const-string v2, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 717
    const-string v2, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 718
    const-string v2, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 719
    const-string v2, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 720
    const-string v2, "  disconnect-port <id>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 721
    const-string v2, "  remove-port <id>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 722
    const-string v2, "  reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 724
    const-string v2, "Example USB type C port role switch:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 725
    const-string v2, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 727
    const-string v2, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 728
    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 729
    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 730
    const-string v2, "  dumpsys usb ports"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 731
    const-string v2, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 732
    const-string v2, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 733
    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 735
    const-string v2, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 736
    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 737
    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 738
    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 740
    const-string v2, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 741
    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 742
    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 743
    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 745
    const-string v2, "Example USB device-only port:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 746
    const-string v2, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 747
    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 748
    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_51d
    .catchall {:try_start_381 .. :try_end_51d} :catchall_df

    goto/16 :goto_d8

    .line 578
    nop

    :sswitch_data_520
    .sparse-switch
        -0x356f97e5 -> :sswitch_12f
        -0x1a426a07 -> :sswitch_145
        0x35de93 -> :sswitch_13a
    .end sparse-switch

    :pswitch_data_52e
    .packed-switch 0x0
        :pswitch_150
        :pswitch_182
        :pswitch_184
    .end packed-switch

    .line 593
    :sswitch_data_538
    .sparse-switch
        -0x4f94e1aa -> :sswitch_191
        0x30f5a8 -> :sswitch_186
        0x7b007436 -> :sswitch_19c
    .end sparse-switch

    :pswitch_data_546
    .packed-switch 0x0
        :pswitch_1a7
        :pswitch_1c1
        :pswitch_1c3
    .end packed-switch

    .line 620
    :sswitch_data_550
    .sparse-switch
        0x1842e -> :sswitch_21b
        0x1c3ff -> :sswitch_210
        0x2f387c -> :sswitch_226
        0x33af38 -> :sswitch_231
    .end sparse-switch

    :pswitch_data_562
    .packed-switch 0x0
        :pswitch_23c
        :pswitch_256
        :pswitch_258
        :pswitch_25a
    .end packed-switch

    .line 646
    :sswitch_data_56e
    .sparse-switch
        0x1842e -> :sswitch_2cb
        0x1c3ff -> :sswitch_2c0
    .end sparse-switch

    :pswitch_data_578
    .packed-switch 0x0
        :pswitch_2d6
        :pswitch_31b
    .end packed-switch

    .line 659
    :sswitch_data_580
    .sparse-switch
        -0x356f97e5 -> :sswitch_323
        0x35de93 -> :sswitch_32e
    .end sparse-switch

    :pswitch_data_58a
    .packed-switch 0x0
        :pswitch_339
        :pswitch_37e
    .end packed-switch

    .line 672
    :sswitch_data_592
    .sparse-switch
        -0x4f94e1aa -> :sswitch_391
        0x30f5a8 -> :sswitch_386
    .end sparse-switch

    :pswitch_data_59c
    .packed-switch 0x0
        :pswitch_39c
        :pswitch_3b6
    .end packed-switch
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 290
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v1

    if-nez v1, :cond_e

    .line 299
    :cond_d
    :goto_d
    return-object v0

    .line 296
    :cond_e
    iget-object v1, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_d

    .line 297
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    goto :goto_d
.end method

.method public getCurrentFunctions()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 761
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 762
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v1

    if-nez v1, :cond_e

    .line 771
    :cond_d
    :goto_d
    return-object v0

    .line 768
    :cond_e
    iget-object v1, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_d

    .line 769
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "devices"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 256
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_d

    .line 265
    :cond_c
    :goto_c
    return-void

    .line 262
    :cond_d
    iget-object v0, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_c

    .line 263
    iget-object v0, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    goto :goto_c
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 510
    const-string/jumbo v3, "portId must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_USB"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 515
    .local v0, "ident":J
    :try_start_12
    iget-object v3, p0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_1c

    iget-object v2, p0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_20

    move-result-object v2

    .line 517
    :cond_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_USB"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 502
    .local v0, "ident":J
    :try_start_c
    iget-object v3, p0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_16

    iget-object v2, p0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1a

    move-result-object v2

    .line 504
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .prologue
    .line 367
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 369
    .local v0, "userId":I
    invoke-direct {p0, v0}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 370
    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .prologue
    .line 360
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 362
    .local v0, "userId":I
    invoke-direct {p0, v0}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 363
    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 341
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 342
    .local v0, "userId":I
    invoke-direct {p0, v0}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    return v1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 374
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, p2}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasDefaults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 335
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 336
    .local v0, "userId":I
    invoke-direct {p0, v0}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isUsb30Available()Z
    .registers 4

    .prologue
    .line 823
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 824
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_e

    .line 825
    const/4 v0, 0x0

    .line 831
    :goto_d
    return v0

    .line 830
    :cond_e
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->isUsb30Available()Z

    move-result v0

    goto :goto_d
.end method

.method public isUsb30Enabled()Z
    .registers 4

    .prologue
    .line 809
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 810
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_e

    .line 811
    const/4 v0, 0x0

    .line 817
    :goto_d
    return v0

    .line 816
    :cond_e
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->isUsb30Enabled()Z

    move-result v0

    goto :goto_d
.end method

.method public isUsbBlocked()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 777
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 778
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v1

    if-nez v1, :cond_e

    .line 788
    :goto_d
    return v0

    .line 784
    :cond_e
    iget-object v1, p0, mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz v1, :cond_19

    .line 785
    iget-object v0, p0, mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isUsbBlocked()Z

    move-result v0

    goto :goto_d

    .line 787
    :cond_19
    const-string v1, "UsbService"

    const-string v2, "UsbService mHostRestrictor is NULL, so return false as a default value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 308
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v1

    if-nez v1, :cond_e

    .line 317
    :cond_d
    :goto_d
    return-object v0

    .line 314
    :cond_e
    iget-object v1, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_d

    .line 315
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_d
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 272
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v1

    if-nez v1, :cond_e

    .line 281
    :cond_d
    :goto_d
    return-object v0

    .line 278
    :cond_e
    iget-object v1, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_d

    .line 279
    iget-object v0, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_d
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 354
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 355
    .local v0, "userId":I
    invoke-direct {p0, v0}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 356
    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 347
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 348
    .local v0, "userId":I
    invoke-direct {p0, v0}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 349
    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 329
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, p3}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;)V
    .registers 5
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 396
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_15

    .line 413
    :goto_14
    return-void

    .line 402
    :cond_15
    invoke-static {p1}, isSupportedCurrentFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 403
    const-string v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller of setCurrentFunction() requested unsupported USB function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string/jumbo p1, "none"

    .line 408
    :cond_36
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_40

    .line 409
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_14

    .line 411
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "USB device mode not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 323
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0, p3}, getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .registers 9
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    .prologue
    const/4 v4, 0x0

    .line 523
    const-string/jumbo v2, "portId must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 525
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 529
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_1f

    .line 530
    iget-object v2, p0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 533
    :cond_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    return-void

    .line 533
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUsb30Mode(Z)V
    .registers 5
    .param p1, "modeUSB30on"    # Z

    .prologue
    .line 795
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 796
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_d

    .line 804
    :goto_c
    return-void

    .line 802
    :cond_d
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setUsb30Mode(Z)V

    goto :goto_c
.end method

.method public setUsbDataUnlocked(Z)V
    .registers 5
    .param p1, "unlocked"    # Z

    .prologue
    .line 447
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDataUnlocked(Z)V

    .line 449
    return-void
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 231
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    .line 232
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 234
    :cond_e
    iget-object v0, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_17

    .line 235
    iget-object v0, p0, mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 237
    :cond_17
    iget-object v0, p0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_20

    .line 238
    iget-object v0, p0, mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    .line 240
    :cond_20
    return-void
.end method
