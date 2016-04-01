.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;,
        Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field private static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field private static final AUDIO_MODE_SOURCE:I = 0x1

.field private static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field private static final AUDIT_URI:Ljava/lang/String; = "content://com.sec.knox.provider/AuditLog"

.field private static final AuditEvents_USB_EVENT:Ljava/lang/String; = "Received USB event"

.field private static final AuditLog_AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field private static final AuditLog_NOTICE:I = 0x5

.field private static final BATTERY_ONLINE_MHL:I = 0x12

.field private static final BATTERY_ONLINE_MHL_USB:I = 0xf

.field private static final BATTERY_ONLINE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/online"

.field private static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field private static final DEBUG:Z = true

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final MIDI_ALSA_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_midi/alsa"

.field private static final MPS_CODE_PATH:Ljava/lang/String; = "/efs/imei/mps_code.dat"

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_POWER_STATE:I = 0x64

.field private static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field private static final MSG_SET_USB_DATA_UNLOCKED:I = 0x6

.field private static final MSG_SHOW_UPSM_BLOCK_TOAST:I = 0x9

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_UPDATE_HOST_STATE:I = 0x8

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_UPDATE_USER_RESTRICTIONS:I = 0x7

.field private static final MSG_USER_SWITCHED:I = 0x5

.field private static final MTP_DISABLED:Ljava/lang/String; = "edm.intent.action.disable.mtp"

.field private static final MTP_DISABLED_PERMISSION:Ljava/lang/String; = "com.sec.restriction.permission.MTP_DISABLED"

.field private static final RESTRICTION3_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy3"

.field private static final RESTRICTION4_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy4"

.field private static final RESTRICTIONPOLICY_USBDEBUGGING_METHOD:Ljava/lang/String; = "isUsbDebuggingEnabled"

.field private static final RESTRICTIONPOLICY_USBMASSSTORAGE_METHOD:Ljava/lang/String; = "isUsbMassStorageEnabled"

.field private static final RESTRICTIONPOLICY_USBMEDIAPLAYERAVAILABLE_METHOD:Ljava/lang/String; = "isUsbMediaPlayerAvailable"

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "/system/csc/sales_code.dat"

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String; = "UsbDeviceManager"

.field private static final UPDATE_DELAY:I = 0x5dc

.field private static final USB_CONFIG_PROPERTY:Ljava/lang/String; = "sys.usb.config"

.field private static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"

.field private static final USB_PERSISTENT_QCOM_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.q_config"

.field private static final USB_PERSISTENT_VZW_CONNECTED_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.vzw_connected"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

.field private static final USB_STATE_PROPERTY:Ljava/lang/String; = "sys.usb.state"


# instance fields
.field private mAccessoryModeRequestTime:J

.field private mAccessoryStrings:[Ljava/lang/String;

.field private mAdbEnabled:Z

.field private mAdbShowNotificationBar:Z

.field private mAudioSourceEnabled:Z

.field private mBootCompleted:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private final mHostReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private mMidiCard:I

.field private mMidiDevice:I

.field private mMidiEnabled:Z

.field private final mMtpDisabledReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOemModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mSupportedMassStorage:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUseUsbNotification:Z

.field private usbDisableSettingVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mAccessoryModeRequestTime:J

    .line 195
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, mLock:Ljava/lang/Object;

    .line 214
    iput-boolean v6, p0, mSupportedMassStorage:Z

    .line 215
    iput-boolean v6, p0, mAdbShowNotificationBar:Z

    .line 217
    const-string v3, "OFF"

    iput-object v3, p0, usbDisableSettingVal:Ljava/lang/String;

    .line 236
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, mUEventObserver:Landroid/os/UEventObserver;

    .line 258
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$2;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, mHostReceiver:Landroid/content/BroadcastReceiver;

    .line 1830
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$3;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, mMtpDisabledReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 271
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 272
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.usb.accessory"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, mHasUsbAccessory:Z

    .line 273
    invoke-static {}, initRndisAddress()V

    .line 275
    invoke-direct {p0}, readOemUsbOverrideConfig()V

    .line 277
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 279
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V

    iput-object v3, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 281
    invoke-direct {p0}, nativeIsStartRequested()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 282
    const-string v3, "UsbDeviceManager"

    const-string v4, "accessory attached at boot"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, startAccessoryMode()V

    .line 286
    :cond_76
    const-string/jumbo v3, "ro.adb.secure"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 287
    .local v2, "secureAdbEnabled":Z
    const-string/jumbo v3, "trigger_restart_min_framework"

    const-string/jumbo v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 288
    .local v0, "dataEncrypted":Z
    if-eqz v2, :cond_96

    if-nez v0, :cond_96

    .line 289
    new-instance v3, Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    .line 291
    :cond_96
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mHostReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    return-void
.end method

.method private AuditLog(Ljava/lang/String;)V
    .registers 7
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1893
    :try_start_0
    const-string v2, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1894
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1895
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "severity"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1896
    const-string/jumbo v2, "group"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1897
    const-string/jumbo v2, "outcome"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1898
    const-string/jumbo v2, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1899
    const-string v2, "component"

    const-string v3, "UsbDeviceManager"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    const-string/jumbo v2, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received USB event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_63} :catch_64

    .line 1906
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_63
    return-void

    .line 1902
    :catch_64
    move-exception v2

    goto :goto_63
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbDeviceManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-wide v0, p0, mAccessoryModeRequestTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/usb/UsbDeviceManager;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # J

    .prologue
    .line 109
    iput-wide p1, p0, mAccessoryModeRequestTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, mAccessoryStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, mAccessoryStrings:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-boolean v0, p0, mBootCompleted:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    invoke-direct {p0}, getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/usb/UsbDeviceManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-boolean v0, p0, mAudioSourceEnabled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, mAudioSourceEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/usb/UsbDeviceManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-boolean v0, p0, mMidiEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, mMidiEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/usb/UsbDeviceManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget v0, p0, mMidiCard:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/usb/UsbDeviceManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, mMidiCard:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, AuditLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/usb/UsbDeviceManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget v0, p0, mMidiDevice:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/usb/UsbDeviceManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 109
    iput p1, p0, mMidiDevice:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, usbDisableSettingVal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/usb/UsbDeviceManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-boolean v0, p0, mUseUsbNotification:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/usb/UsbDeviceManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-boolean v0, p0, mAdbShowNotificationBar:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    invoke-direct {p0}, startAccessoryMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDeviceManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-boolean v0, p0, mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, mUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 109
    invoke-direct {p0}, registerDeviceRestriction()V

    return-void
.end method

.method private applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "usbFunctions"    # Ljava/lang/String;

    .prologue
    .line 1716
    if-eqz p1, :cond_6

    iget-object v4, p0, mOemModeMap:Ljava/util/Map;

    if-nez v4, :cond_7

    .line 1730
    .end local p1    # "usbFunctions":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p1

    .line 1718
    .restart local p1    # "usbFunctions":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "ro.bootmode"

    const-string/jumbo v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1720
    .local v0, "bootMode":Ljava/lang/String;
    iget-object v4, p0, mOemModeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1721
    .local v2, "overrides":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_6

    .line 1722
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1723
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1724
    const-string v5, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM USB override: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ==> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object p1, v4

    goto :goto_6
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .registers 3

    .prologue
    .line 296
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_3
    iget-object v0, p0, mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-object v0

    .line 298
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private hasDeviceRestriction(Ljava/lang/String;)Z
    .registers 7
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1868
    const-string/jumbo v1, "mtp_and_ptp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1869
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v2, "isUsbMediaPlayerAvailable"

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "false"

    aput-object v4, v3, v0

    invoke-direct {p0, p1, v1, v2, v3}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 1879
    :cond_1b
    :goto_1b
    return v0

    .line 1870
    :cond_1c
    const-string/jumbo v1, "mass_storage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1871
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v2, "isUsbMassStorageEnabled"

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "false"

    aput-object v4, v3, v0

    invoke-direct {p0, p1, v1, v2, v3}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b

    .line 1872
    :cond_36
    const-string v1, "adb"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1873
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v1, "isUsbDebuggingEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b

    .line 1874
    :cond_49
    const-string/jumbo v1, "rndis"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1877
    const-string v1, "UsbDeviceManager"

    const-string/jumbo v2, "not define policy !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method private hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 14
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1838
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1840
    .local v1, "uri":Landroid/net/Uri;
    :try_start_4
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1841
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_53

    .line 1842
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1843
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1844
    .local v8, "restrict":Ljava/lang/String;
    const-string v0, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", restrict(allow) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    const-string/jumbo v0, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1846
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1847
    const/4 v0, 0x1

    .line 1857
    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :goto_4f
    return v0

    .line 1849
    .restart local v6    # "cr":Landroid/database/Cursor;
    .restart local v8    # "restrict":Ljava/lang/String;
    :cond_50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_53} :catch_55

    .line 1857
    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :cond_53
    :goto_53
    const/4 v0, 0x0

    goto :goto_4f

    .line 1853
    :catch_55
    move-exception v7

    .line 1854
    .local v7, "ex":Ljava/lang/Exception;
    const-string v0, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method private static initRndisAddress()V
    .registers 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 383
    const/4 v0, 0x6

    .line 384
    .local v0, "ETH_ALEN":I
    const/4 v7, 0x6

    new-array v2, v7, [I

    .line 386
    .local v2, "address":[I
    aput v12, v2, v11

    .line 388
    const-string/jumbo v7, "ro.serialno"

    const-string v8, "1234567890ABCDEF"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "serial":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 391
    .local v6, "serialLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v6, :cond_2b

    .line 392
    rem-int/lit8 v7, v4, 0x5

    add-int/lit8 v7, v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v2, v7

    .line 391
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 394
    :cond_2b
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aget v10, v2, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    aget v10, v2, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    aget v10, v2, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aget v10, v2, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    aget v10, v2, v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v15

    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "addrString":Ljava/lang/String;
    :try_start_68
    const-string v7, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6d} :catch_6e

    .line 401
    :goto_6d
    return-void

    .line 398
    :catch_6e
    move-exception v3

    .line 399
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "UsbDeviceManager"

    const-string/jumbo v8, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method private isHiddenMenuAppRunningForeground()Z
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 1638
    const-string v3, "com.sec.hiddenmenu"

    .line 1639
    .local v3, "hiddenmenu_app_name":Ljava/lang/String;
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1640
    .local v0, "am":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 1641
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string/jumbo v7, "ro.build.type"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1643
    .local v1, "checkType":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1645
    .local v5, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string/jumbo v7, "eng"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1646
    const-string v7, "UsbDeviceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isTelephonyAppRunningForeground: task.topActivity.getPackageName() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1650
    .end local v5    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_58
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1654
    .local v2, "foregroundApp":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1656
    const/4 v7, 0x1

    .line 1659
    :goto_6f
    return v7

    :cond_70
    move v7, v8

    goto :goto_6f
.end method

.method private isTelephonyAppRunningForeground()Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1607
    const-string v6, "com.sec.usbsettings"

    .line 1608
    .local v6, "telephony_app_name":Ljava/lang/String;
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1609
    .local v0, "am":Landroid/app/ActivityManager;
    const v7, 0x7fffffff

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 1610
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string/jumbo v7, "ro.build.type"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1612
    .local v1, "checkType":Ljava/lang/String;
    if-eqz v5, :cond_28

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-ne v7, v8, :cond_32

    .line 1613
    :cond_28
    const-string v7, "UsbDeviceManager"

    const-string/jumbo v8, "isTelephonyAppRunningForeground : tasks isn\'t avilable"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 1633
    :goto_31
    return v7

    .line 1617
    :cond_32
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1619
    .local v4, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string/jumbo v7, "eng"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1620
    const-string v7, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isTelephonyAppRunningForeground: task.topActivity.getPackageName() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 1624
    .end local v4    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_6b
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1628
    .local v2, "foregroundApp":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    move v7, v8

    .line 1630
    goto :goto_31

    :cond_83
    move v7, v9

    .line 1633
    goto :goto_31
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private readOemUsbOverrideConfig()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1694
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1697
    .local v2, "configList":[Ljava/lang/String;
    if-eqz v2, :cond_55

    .line 1698
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_13
    if-ge v3, v5, :cond_55

    aget-object v1, v0, v3

    .line 1699
    .local v1, "config":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1700
    .local v4, "items":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_52

    .line 1701
    iget-object v7, p0, mOemModeMap:Ljava/util/Map;

    if-nez v7, :cond_2c

    .line 1702
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, mOemModeMap:Ljava/util/Map;

    .line 1704
    :cond_2c
    iget-object v7, p0, mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1705
    .local v6, "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v6, :cond_44

    .line 1706
    new-instance v6, Ljava/util/LinkedList;

    .end local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1707
    .restart local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v7, p0, mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    :cond_44
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    .end local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1713
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_55
    return-void
.end method

.method private registerDeviceRestriction()V
    .registers 6

    .prologue
    .line 1827
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mMtpDisabledReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "edm.intent.action.disable.mtp"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.restriction.permission.MTP_DISABLED"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1829
    return-void
.end method

.method private startAccessoryMode()V
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 347
    iget-boolean v11, p0, mHasUsbAccessory:Z

    if-nez v11, :cond_7

    .line 378
    :cond_6
    :goto_6
    return-void

    .line 349
    :cond_7
    invoke-direct {p0}, nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, mAccessoryStrings:[Ljava/lang/String;

    .line 350
    invoke-direct {p0}, nativeGetAudioMode()I

    move-result v11

    if-ne v11, v9, :cond_5d

    move v2, v9

    .line 352
    .local v2, "enableAudio":Z
    :goto_14
    iget-object v11, p0, mAccessoryStrings:[Ljava/lang/String;

    if-eqz v11, :cond_5f

    iget-object v11, p0, mAccessoryStrings:[Ljava/lang/String;

    aget-object v11, v11, v10

    if-eqz v11, :cond_5f

    iget-object v11, p0, mAccessoryStrings:[Ljava/lang/String;

    aget-object v11, v11, v9

    if-eqz v11, :cond_5f

    move v1, v9

    .line 355
    .local v1, "enableAccessory":Z
    :goto_25
    const/4 v3, 0x0

    .line 356
    .local v3, "functions":Ljava/lang/String;
    iget-object v9, p0, mAccessoryStrings:[Ljava/lang/String;

    if-eqz v9, :cond_61

    .line 357
    const/4 v4, 0x0

    .line 358
    .local v4, "i":I
    iget-object v0, p0, mAccessoryStrings:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_30
    if-ge v6, v7, :cond_69

    aget-object v8, v0, v6

    .line 359
    .local v8, "s":Ljava/lang/String;
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startAccessoryMode["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_30

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "enableAccessory":Z
    .end local v2    # "enableAudio":Z
    .end local v3    # "functions":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_5d
    move v2, v10

    .line 350
    goto :goto_14

    .restart local v2    # "enableAudio":Z
    :cond_5f
    move v1, v10

    .line 352
    goto :goto_25

    .line 362
    .restart local v1    # "enableAccessory":Z
    .restart local v3    # "functions":Ljava/lang/String;
    :cond_61
    const-string v9, "UsbDeviceManager"

    const-string/jumbo v10, "startAccessoryMode mAccessoryStrings NULL"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_69
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startAccessoryMode enableAccessory "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",enableAudio "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v1, :cond_9f

    if-eqz v2, :cond_9f

    .line 366
    const-string v3, "accessory,audio_source"

    .line 374
    :cond_92
    :goto_92
    if-eqz v3, :cond_6

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, mAccessoryModeRequestTime:J

    .line 376
    invoke-virtual {p0, v3}, setCurrentFunctions(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 368
    :cond_9f
    if-eqz v1, :cond_a4

    .line 369
    const-string v3, "accessory"

    goto :goto_92

    .line 370
    :cond_a4
    if-eqz v2, :cond_92

    .line 371
    const-string v3, "audio_source"

    goto :goto_92
.end method

.method private validateDeviceRestriction(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    .line 1909
    move-object v1, p1

    .line 1910
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "adb"

    invoke-static {p1, v2}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1911
    const-string v2, "adb"

    invoke-direct {p0, v2}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 1912
    .local v0, "isallow":Z
    if-eqz v0, :cond_17

    .line 1913
    const-string v2, "adb"

    invoke-static {v1, v2}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1932
    .end local v0    # "isallow":Z
    :cond_17
    return-object v1
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .registers 4
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 1734
    iget-object v0, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_9

    .line 1735
    iget-object v0, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 1737
    :cond_9
    return-void
.end method

.method public bootCompleted()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 329
    const-string v0, "UsbDeviceManager"

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput-boolean v2, p0, mBootCompleted:Z

    .line 331
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V
    invoke-static {v0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V

    .line 332
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 333
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .registers 3

    .prologue
    .line 1746
    iget-object v0, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_a

    .line 1747
    iget-object v0, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->clearUsbDebuggingKeys()V

    .line 1752
    return-void

    .line 1749
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot clear Usb Debugging keys, UsbDebuggingManager not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public denyUsbDebugging()V
    .registers 2

    .prologue
    .line 1740
    iget-object v0, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_9

    .line 1741
    iget-object v0, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->denyUsbDebugging()V

    .line 1743
    :cond_9
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1756
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz v0, :cond_9

    .line 1757
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1759
    :cond_9
    iget-object v0, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_12

    .line 1760
    iget-object v0, p0, mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1762
    :cond_12
    return-void
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .prologue
    .line 1583
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFunctions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1770
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFunction()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1808
    iget-object v1, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$2900(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    .local v0, "defaultFunc":Ljava/lang/String;
    return-object v0
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 1603
    const-string/jumbo v0, "sys.usb.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsb30Available()Z
    .registers 2

    .prologue
    .line 1774
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsb30Available()Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$2700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v0

    return v0
.end method

.method public isUsb30Enabled()Z
    .registers 2

    .prologue
    .line 1778
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsb30Enabled()Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$2800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v0

    return v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 1588
    iget-object v2, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 1589
    .local v0, "currentAccessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_11

    .line 1590
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "no accessory attached"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1592
    :cond_11
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match current accessory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1596
    .local v1, "error":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1598
    .end local v1    # "error":Ljava/lang/String;
    :cond_38
    invoke-direct {p0}, getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    .line 1599
    invoke-direct {p0}, nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public setCurrentFunctions(Ljava/lang/String;)V
    .registers 5
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    .line 1664
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    invoke-virtual {p0}, getCurrentFunctions()Ljava/lang/String;

    move-result-object v0

    const-string v1, "askon"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1666
    const-string/jumbo v0, "mtp"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string/jumbo v0, "ptp"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1668
    :cond_3d
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 1669
    const-string v0, "UsbDeviceManager"

    const-string v1, "Askon disconnected when setting function"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_4b
    invoke-direct {p0}, isTelephonyAppRunningForeground()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-direct {p0}, isHiddenMenuAppRunningForeground()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1676
    :cond_57
    const-string/jumbo v0, "mtp"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1678
    const-string v0, "UsbDeviceManager"

    const-string v1, "Telephony App or HiddenMenu App set as MTP. So initialize the PROPERTY for QXDM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const-string/jumbo v0, "persist.sys.usb.q_config"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    :cond_70
    :goto_70
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 1686
    return-void

    .line 1681
    :cond_77
    const-string/jumbo v0, "persist.sys.usb.q_config"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70
.end method

.method public setCurrentUser(ILcom/android/server/usb/UsbSettingsManager;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "settings"    # Lcom/android/server/usb/UsbSettingsManager;

    .prologue
    .line 336
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_3
    iput-object p2, p0, mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    .line 338
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 339
    monitor-exit v1

    .line 340
    return-void

    .line 339
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setUsb30Mode(Z)V
    .registers 3
    .param p1, "modeUSB30on"    # Z

    .prologue
    .line 1782
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsb30Mode(Z)V

    .line 1783
    return-void
.end method

.method public setUsbDataUnlocked(Z)V
    .registers 5
    .param p1, "unlocked"    # Z

    .prologue
    .line 1689
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbDataUnlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 1691
    return-void
.end method

.method public setUsbDisableVariable(Ljava/lang/String;)V
    .registers 2
    .param p1, "setVal"    # Ljava/lang/String;

    .prologue
    .line 1798
    iput-object p1, p0, usbDisableSettingVal:Ljava/lang/String;

    .line 1799
    return-void
.end method

.method public showUsbBlockToastbyUPSM()V
    .registers 4

    .prologue
    .line 1815
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 1816
    return-void
.end method

.method public systemReady()V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 302
    const-string v4, "UsbDeviceManager"

    const-string/jumbo v7, "systemReady"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, mNotificationManager:Landroid/app/NotificationManager;

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "massStorageSupported":Z
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    .line 311
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 312
    .local v2, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v4

    if-eqz v4, :cond_69

    move v1, v5

    .line 313
    :goto_2b
    if-nez v1, :cond_6b

    move v4, v5

    :goto_2e
    iput-boolean v4, p0, mUseUsbNotification:Z

    .line 317
    :try_start_30
    iget-object v4, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "adb_enabled"

    iget-boolean v8, p0, mAdbEnabled:Z

    if-eqz v8, :cond_6d

    :goto_38
    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_3b} :catch_6f

    .line 323
    :goto_3b
    const-string v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "systemReady : mAdbEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, mAdbEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUseUsbNotification = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, mUseUsbNotification:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v4, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 326
    return-void

    :cond_69
    move v1, v6

    .line 312
    goto :goto_2b

    :cond_6b
    move v4, v6

    .line 313
    goto :goto_2e

    :cond_6d
    move v5, v6

    .line 317
    goto :goto_38

    .line 319
    :catch_6f
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "UsbDeviceManager"

    const-string v5, "ADB_ENABLED is restricted."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method public updateUsbNotificationRefresh()V
    .registers 3

    .prologue
    .line 1802
    const-string v0, "UsbDeviceManager"

    const-string/jumbo v1, "updateUsbNotificationRefresh"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotificationRefresh()V

    .line 1804
    return-void
.end method

.method public updateUserRestrictions()V
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 344
    return-void
.end method
