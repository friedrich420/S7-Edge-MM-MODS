.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.super Landroid/app/enterprise/IRestrictionPolicy$Stub;
.source "RestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;
    }
.end annotation


# static fields
.field private static final ACTIVATION_LOCK_MASK:J = 0x8000000L

.field private static final ADVANCED_RESTRICTION_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

.field private static final AIRPLANE_MODE_MASK:J = 0x80L

.field private static final ALLOW_NON_MARKET_MASK:J = 0x1000000000000L

.field private static final ANDROID_BEAM_MASK:J = 0x40000L

.field private static final AUDIO_RECORD_MASK:J = 0x1L

.field private static final BACKGROUND_DATA_MASK:J = 0x4000000000000L

.field private static final BACKGROUND_LIMIT_MASK:J = 0x4000L

.field private static final BACKUP_MASK:J = 0x100000000000L

.field private static final BLUETOOTH_TETHERING_MASK:J = 0x8000000000L

.field private static final BROADCAST_DELAY:I = 0x1388

.field private static final CAMERA_MASK:J = 0x1000000000L

.field private static final CCMODE_MASK:J = 0x40000000L

.field private static final CELLULAR_DATA_MASK:J = 0x400000000000L

.field private static final CLIPBOARD_MASK:J = 0x200L

.field private static final CLIPBOARD_SHARE_MASK:J = 0x20000L

.field static final CONF_FILE:Ljava/lang/String; = "/data/system/enterprise.conf"

.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final DEFAULT_NETWORK_POLICY_APPLIED:Ljava/lang/String; = "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

.field private static final DEFAULT_RESTRICTION_MASK:J = 0x3fffffc3b9fffefL

.field private static final DEVELOPER_MODE_MASK:J = 0x40L

.field private static final EDM_SDCARD_WRITEACCESS_BLOCKED:Ljava/lang/String; = "sdCardWriteAccessBlocked"

.field private static final FACTORYRESET_EFS_DIR_PATH:Ljava/lang/String; = "/efs/MDM"

.field private static final FACTORYRESET_EFS_FILE_PATH:Ljava/lang/String; = "/efs/MDM/FactoryReset"

.field private static final FACTORY_RESET_MASK:J = 0x8000000000000L

.field private static final FAST_ENCRYPTION_MASK:J = 0x10L

.field private static final FIRMWARE_RECOVER_MASK:J = 0x1000000L

.field private static final FIRMWARE_UPDATE_MASK:J = 0x4000000L

.field private static final GOOGLE_AUTOSYNC_MASK:J = 0x2000000L

.field private static final GOOGLE_CRASH_REPORT_MASK:J = 0x80000000000000L

.field private static final HEADPHONE_MASK:J = 0x10000000L

.field private static final HOME_KEY_MASK:J = 0x10000000000000L

.field private static final KILL_ACTIVITY_MASK:J = 0x8000L

.field private static final LOCKSCREEN_STATE_MASK:J = 0x800000L

.field static final MASK_AND_COLUMN_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MASS_STORAGE_MASK:J = 0x40000000000L

.field private static final MAX_BACKGROUND_PROCESSES:I = 0x14

.field private static final MESSAGE_ID:I = 0x1

.field private static final MICROPHONE_MASK:J = 0x4L

.field private static final MOBILE_LIMIT_MASK:J = 0x10000L

.field private static final MOCK_LOCATION_MASK:J = 0x80000000000L

.field private static final NFC_MASK:J = 0x200000000000L

.field private static final NON_TRUSTED_APP_MASK:J = 0x400000L

.field private static final ODE_VERIFICATION_MASK:J = 0x80000000L

.field private static final OTA_UPGRADE_MASK:J = 0x40000000000000L

.field private static final PACKAGE_CAMERA_APP:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final PACKAGE_DIRECT_SHARE_PKGNAME:Ljava/lang/String; = "com.sec.android.directshare"

.field private static final PACKAGE_SETTINGS_APP:Ljava/lang/String; = "com.android.settings"

.field static final PARAM_INDEX_FACTORY_RESET:I = 0x3

.field static final PARAM_INDEX_FIRMWARE_RECOVERY:I = 0x7

.field static final PARAM_INDEX_MDM1:I = 0x1e

.field static final PARAM_INDEX_MDM2:I = 0x1f

.field static final PARAM_MDM1_VALUE:I = 0x2

.field static final PARAM_MDM2_VALUE:I = 0x6

.field static final PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field static final PARAM_POLICY_VALUE:I = 0x8

.field static final PARAM_START_POS:I = 0x600

.field private static final POWER_OFF_MASK:J = 0x800L

.field private static final PREVENT_ADMIN_ACTIVATION_MASK:J = 0x200000000L

.field private static final PREVENT_ADMIN_INSTALL_MASK:J = 0x100000000L

.field private static final SBEAM_MASK:J = 0x400L

.field private static final SCREEN_CAPTURE_MASK:J = 0x10000000000L

.field private static final SCREEN_PINNING_MASK:J = 0x200000000000000L

.field private static final SDCARD_MASK:J = 0x800000000000L

.field private static final SDCARD_MOVE_MASK:J = 0x20000000L

.field private static final SDCARD_WRITE_MASK:J = 0x800000000L

.field private static final SECURE_KEY_PAD_MASK:J = 0x200000L

.field private static final SETTINGS_MASK:J = 0x8L

.field private static final SHARE_LIST_MASK:J = 0x100000L

.field private static final SMART_CLIP_MASK:J = 0x100000000000000L

.field private static final STATUS_BAR_MASK:J = 0x100L

.field private static final STOP_SYSTEM_APP_MASK:J = 0x1000L

.field private static final SVOICE_MASK:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "RestrictionPolicy"

.field private static final USB_DEBUGGING_MASK:J = 0x20000000000L

.field private static final USB_MEDIAPLAYER_MASK:J = 0x2000000000000L

.field private static final USB_STORAGE_MASK:J = 0x80000L

.field private static final USB_TETHERING_MASK:J = 0x2000000000L

.field private static final VIDEO_RECORD_MASK:J = 0x2L

.field private static final VPN_MASK:J = 0x20000000000000L

.field private static final WALLPAPER_CHANGE_MASK:J = 0x400000000L

.field private static final WIFI_DIRECT_MASK:J = 0x2000L

.field private static final WIFI_TETHERING_MASK:J = 0x4000000000L

.field private static final excludedAdminList:[Ljava/lang/String;


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsbMassStorageAvailable:Z

.field private mPersonaMgr:Landroid/os/PersonaManager;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRestrictionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private preAdminRemoval_SDCardWrite:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.sprextension.phoneinfo"

    aput-object v2, v0, v1

    sput-object v0, excludedAdminList:[Ljava/lang/String;

    .line 292
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;-><init>()V

    sput-object v0, MASK_AND_COLUMN_NAME:Ljava/util/Map;

    .line 402
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/vpn/VpnInfoPolicy;)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p3, "vpnPolicy"    # Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 414
    invoke-direct {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;-><init>()V

    .line 209
    iput-object v3, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 210
    iput-object v3, p0, mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 213
    iput-object v3, p0, mStorageManager:Landroid/os/storage/StorageManager;

    .line 223
    iput-boolean v1, p0, preAdminRemoval_SDCardWrite:Z

    .line 224
    iput-boolean v1, p0, mIsUsbMassStorageAvailable:Z

    .line 378
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mRestrictionCache:Ljava/util/HashMap;

    .line 379
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 450
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 492
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 584
    iput-object v3, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 868
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 2581
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 415
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 416
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 417
    iput-object p2, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 418
    iput-object p3, p0, mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 419
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 420
    .local v0, "filterBoot":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v1, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, mPersonaMgr:Landroid/os/PersonaManager;

    .line 430
    iget-object v1, p0, mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v1, :cond_90

    .line 431
    iget-object v1, p0, mPersonaMgr:Landroid/os/PersonaManager;

    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 433
    :cond_90
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, mStatusBar:Landroid/app/StatusBarManager;

    .line 434
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, mUserManager:Landroid/os/UserManager;

    .line 437
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, mWindowManager:Landroid/view/IWindowManager;

    .line 438
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    .line 440
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    invoke-direct {p0}, mountSdCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 198
    iput-object p1, p0, mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/storage/StorageEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    iget-object v0, p0, mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/PersonaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    iget-object v0, p0, mPersonaMgr:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    invoke-direct {p0}, enforceStatusBarExpansion()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    invoke-direct {p0}, updateUSBMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    iget-object v0, p0, mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, isScreenCaptureEnabled(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 198
    invoke-direct {p0, p1}, onUserAdded(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 198
    invoke-direct {p0, p1}, onUserRemoved(I)V

    return-void
.end method

.method private applySdCardWriteAccessPolicy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2559
    const-string/jumbo v1, "sdCardWriteAccessBlocked"

    invoke-virtual {p0, v3}, isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "0"

    :goto_c
    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2560
    invoke-direct {p0}, isExternalSdCardPresent()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, v3}, isSdCardEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2561
    invoke-virtual {p0}, getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 2562
    const/4 v0, 0x1

    invoke-direct {p0, v0}, unmountSdCard(Z)Z

    .line 2564
    :cond_2a
    return-void

    .line 2559
    :cond_2b
    const-string v0, "1"

    goto :goto_c
.end method

.method private clearCacheAsUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2714
    iget-object v0, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2716
    :try_start_9
    iget-object v0, p0, mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1c

    .line 2718
    iget-object v0, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2720
    return-void

    .line 2718
    :catchall_1c
    move-exception v0

    iget-object v1, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private createEFSFile(Ljava/io/File;)Z
    .registers 9
    .param p1, "efsFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    .line 5066
    const/4 v1, 0x0

    .line 5067
    .local v1, "ret":Z
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "createEFSFile"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5069
    if-nez p1, :cond_16

    .line 5070
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "createEFSFile : efsFile fail"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5071
    const/4 v4, 0x0

    .line 5087
    :goto_15
    return v4

    .line 5073
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 5074
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "createEFSFile : efsFile exist"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 5079
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 5080
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    .line 5081
    .local v2, "retread":Z
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3

    .line 5082
    .local v3, "retwrite":Z
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createEFSFile: setReadable - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setWritable - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_58} :catch_73

    .line 5086
    .end local v2    # "retread":Z
    .end local v3    # "retwrite":Z
    :goto_58
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createEFSFile : create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    .line 5087
    goto :goto_15

    .line 5083
    :catch_73
    move-exception v0

    .line 5084
    .local v0, "ie":Ljava/io/IOException;
    const-string v4, "RestrictionPolicy"

    const-string v5, "Exception : "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58
.end method

.method private deleteEFSFile(Ljava/io/File;)Z
    .registers 6
    .param p1, "efsFile"    # Ljava/io/File;

    .prologue
    .line 5091
    const/4 v0, 0x0

    .line 5092
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "createEFSFile"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5094
    if-nez p1, :cond_15

    .line 5095
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "deleteEFSFile : efsFile fail"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5096
    const/4 v1, 0x0

    .line 5104
    :goto_14
    return v1

    .line 5098
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    .line 5099
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "deleteEFSFile : efsFile exist"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5100
    const/4 v1, 0x1

    goto :goto_14

    .line 5102
    :cond_25
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 5103
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteEFSFile : delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 5104
    goto :goto_14
.end method

.method private disableNFC()V
    .registers 6

    .prologue
    .line 1554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1556
    .local v2, "token":J
    :try_start_4
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 1558
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_11

    .line 1566
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1567
    return-void

    .line 1563
    :catch_11
    move-exception v0

    .line 1564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method private enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 657
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 662
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 600
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 628
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .registers 9

    .prologue
    .line 553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 554
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 555
    .local v3, "pid":I
    const-string v2, ""

    .line 557
    .local v2, "packageName":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_65

    move-result-object v2

    .line 561
    :goto_12
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check permission for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "caller":Ljava/lang/String;
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_42

    if-eqz v0, :cond_42

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 567
    :cond_42
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Container Migration Permission to calling Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 558
    .end local v0    # "caller":Ljava/lang/String;
    :catch_65
    move-exception v1

    .line 559
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to getPackageFromAppProcesses : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 569
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "caller":Ljava/lang/String;
    :cond_7f
    return-void
.end method

.method private enforceOwnerOnlyAndAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 652
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 605
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 633
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 647
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 619
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 642
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceStatusBarExpansion()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2938
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, isStatusBarExpansionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2939
    iget-object v0, p0, mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 2943
    :goto_f
    return-void

    .line 2941
    :cond_10
    iget-object v0, p0, mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_f
.end method

.method private enforceTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 614
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 615
    return-object p1
.end method

.method private extractFromRestrictionCache(JZI)Z
    .registers 10
    .param p1, "policyMask"    # J
    .param p3, "defaultValue"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 927
    move v1, p3

    .line 929
    .local v1, "result":Z
    invoke-direct {p0, p4}, getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v0

    .line 931
    .local v0, "restrictionPolicies":Ljava/lang/Long;
    if-eqz v0, :cond_11

    .line 932
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v2, p1

    cmp-long v2, v2, p1

    if-nez v2, :cond_12

    const/4 v1, 0x1

    .line 935
    :cond_11
    :goto_11
    return v1

    .line 932
    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private getAppUid(ILjava/lang/String;)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1249
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1251
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_6
    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v2

    .line 1254
    :goto_a
    return v2

    .line 1252
    :catch_b
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package Name not found error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/4 v2, -0x1

    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 589
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 592
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExternalSdCardPath()Ljava/lang/String;
    .registers 8

    .prologue
    .line 2635
    invoke-virtual {p0}, getStorageManagerAdapter()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 2636
    .local v3, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v3

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_24

    aget-object v4, v0, v1

    .line 2637
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2638
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 2641
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :goto_20
    return-object v5

    .line 2636
    .restart local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2641
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_24
    const/4 v5, 0x0

    goto :goto_20
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .registers 6

    .prologue
    .line 2567
    monitor-enter p0

    const/4 v1, 0x0

    .line 2569
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_2
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2570
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_11

    .line 2571
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_19
    .catchall {:try_start_2 .. :try_end_e} :catchall_1e

    move-result-object v1

    .line 2578
    .end local v2    # "service":Landroid/os/IBinder;
    :goto_f
    monitor-exit p0

    return-object v1

    .line 2573
    .restart local v2    # "service":Landroid/os/IBinder;
    :cond_11
    :try_start_11
    const-string v3, "RestrictionPolicy"

    const-string v4, "Can\'t get mount service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_19
    .catchall {:try_start_11 .. :try_end_18} :catchall_1e

    goto :goto_f

    .line 2575
    .end local v2    # "service":Landroid/os/IBinder;
    :catch_19
    move-exception v0

    .line 2576
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_f

    .line 2567
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 4980
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_INFO"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4982
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 4983
    const/4 v2, 0x0

    .line 4987
    :goto_d
    return-object v2

    .line 4986
    :cond_e
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4987
    .local v0, "compName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method

.method private getRestrictionPoliciesLocked(I)Ljava/lang/Long;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 979
    const/4 v0, 0x0

    .line 980
    .local v0, "restrictionPolicies":Ljava/lang/Long;
    iget-object v1, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 982
    :try_start_a
    iget-object v1, p0, mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "restrictionPolicies":Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_20

    .line 984
    .restart local v0    # "restrictionPolicies":Ljava/lang/Long;
    iget-object v1, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 986
    return-object v0

    .line 984
    .end local v0    # "restrictionPolicies":Ljava/lang/Long;
    :catchall_20
    move-exception v1

    iget-object v2, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method private getService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 444
    const-string/jumbo v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 447
    :cond_11
    iget-object v0, p0, mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method private getTopActivityUserId()I
    .registers 8

    .prologue
    .line 2360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2361
    .local v2, "token":J
    const/4 v1, 0x0

    .line 2364
    .local v1, "userId":I
    :try_start_5
    iget-object v4, p0, mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v4, :cond_13

    .line 2365
    iget-object v4, p0, mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getFocusedUser()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_27
    .catchall {:try_start_5 .. :try_end_e} :catchall_33

    move-result v1

    .line 2372
    :goto_f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2375
    :goto_12
    return v1

    .line 2367
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_27
    .catchall {:try_start_13 .. :try_end_26} :catchall_33

    goto :goto_f

    .line 2369
    :catch_27
    move-exception v0

    .line 2370
    .local v0, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v4, "RestrictionPolicy"

    const-string v5, "Failed to get top activity user id"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_33

    .line 2372
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private getUidForAdminActivation(I)I
    .registers 12
    .param p1, "userId"    # I

    .prologue
    const/4 v5, -0x1

    .line 4840
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 4842
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4844
    .local v3, "uid":Ljava/lang/Integer;
    :try_start_1b
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "RESTRICTION"

    const-string/jumbo v9, "preventAdminActivation"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 4846
    .local v2, "ret":Z
    if-eqz v2, :cond_f

    .line 4847
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2f
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1b .. :try_end_2f} :catch_31

    move-result v5

    .line 4854
    .end local v2    # "ret":Z
    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_30
    :goto_30
    return v5

    .line 4848
    .restart local v3    # "uid":Ljava/lang/Integer;
    :catch_31
    move-exception v0

    .line 4849
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v6, "RestrictionPolicy"

    const-string v7, "Admin not found on database "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method private getUidForAdminInstallation(I)I
    .registers 12
    .param p1, "userId"    # I

    .prologue
    const/4 v5, -0x1

    .line 4860
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 4862
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4864
    .local v3, "uid":Ljava/lang/Integer;
    :try_start_1b
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "RESTRICTION"

    const-string/jumbo v9, "preventAdminInstallation"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 4866
    .local v2, "ret":Z
    if-eqz v2, :cond_f

    .line 4867
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2f
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1b .. :try_end_2f} :catch_31

    move-result v5

    .line 4874
    .end local v2    # "ret":Z
    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_30
    :goto_30
    return v5

    .line 4868
    .restart local v3    # "uid":Ljava/lang/Integer;
    :catch_31
    move-exception v0

    .line 4869
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v6, "RestrictionPolicy"

    const-string v7, "Admin not found on database "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method private getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3947
    if-nez p1, :cond_b

    .line 3948
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 3951
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3952
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_3b

    .line 3953
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3954
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_27

    .line 3955
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3957
    :cond_27
    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 3958
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3959
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 3960
    .local v4, "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3964
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_3a
    return v4

    :cond_3b
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    goto :goto_3a
.end method

.method private initializeCacheAsUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2705
    iget-object v0, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2707
    :try_start_9
    iget-object v0, p0, mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v2, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_25

    .line 2709
    iget-object v0, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2711
    return-void

    .line 2709
    :catchall_25
    move-exception v0

    iget-object v1, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private isCameraEnabledAsUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 778
    const-wide v0, 0x1000000000L

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method private isCameraEnabledEx(ILandroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "useId"    # I
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 750
    invoke-direct {p0, v1}, isCameraEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 751
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isCameraEnabledEx isCameraEnabledEx with OWNER return false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :goto_f
    return v1

    .line 755
    :cond_10
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 756
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isCameraEnabledEx isRestrictedByConstrainedState return true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 760
    :cond_24
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 762
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_43

    const/4 v2, 0x0

    iget v3, p2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabledWithUID(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 763
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isCameraEnabledEx dpm.getCameraDisabledWithUID return true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 767
    :cond_43
    invoke-direct {p0, p1}, isCameraEnabledAsUser(I)Z

    move-result v1

    goto :goto_f
.end method

.method private isExistEFSFile()Z
    .registers 8

    .prologue
    .line 5109
    const/4 v1, 0x0

    .line 5110
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5111
    .local v2, "token":J
    new-instance v0, Ljava/io/File;

    const-string v4, "/efs/MDM/FactoryReset"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5113
    .local v0, "efsFile":Ljava/io/File;
    if-nez v0, :cond_18

    .line 5114
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "isExistEFSFile : efsFile fail"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5115
    const/4 v4, 0x0

    .line 5122
    :goto_17
    return v4

    .line 5118
    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 5119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5121
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isExistEFSFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    .line 5122
    goto :goto_17
.end method

.method private isExternalSdCardPresent()Z
    .registers 4

    .prologue
    .line 2627
    invoke-virtual {p0}, getStorageManagerAdapter()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 2628
    .local v0, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    .line 2629
    const/4 v1, 0x1

    .line 2631
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isFactoryResetAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2303
    const-wide/high16 v0, 0x8000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method private isFirmwareRecoveryAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4094
    const-wide/32 v2, 0x1000000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4098
    .local v0, "ret":Z
    return v0
.end method

.method private isNewAdminActivationEnabledInternal(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 4915
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, isNewAdminActivationEnabledInternal(IZ)Z

    move-result v0

    return v0
.end method

.method private isNewAdminActivationEnabledInternal(IZ)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4903
    const-wide v4, 0x200000000L

    invoke-direct {p0, v4, v5, v3, p1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4907
    .local v0, "ret":Z
    if-eqz p2, :cond_15

    if-eqz v0, :cond_15

    .line 4908
    const v1, 0x1040b92

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4910
    :cond_15
    const-string v4, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isNewAdminActivationEnabledInternal : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_34

    move v1, v2

    :goto_26
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    if-nez v0, :cond_36

    :goto_33
    return v2

    :cond_34
    move v1, v3

    .line 4910
    goto :goto_26

    :cond_36
    move v2, v3

    .line 4911
    goto :goto_33
.end method

.method private isNewAdminInstallationEnabledInternal(IZ)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4787
    const-wide v2, 0x100000000L

    invoke-direct {p0, v2, v3, v1, p1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4791
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNewAdminInstallationEnabledInternal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    if-eqz p2, :cond_2d

    if-eqz v0, :cond_2d

    .line 4793
    const v2, 0x1040b93

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4795
    :cond_2d
    if-nez v0, :cond_30

    const/4 v1, 0x1

    :cond_30
    return v1
.end method

.method private isScreenCaptureEnabled(IZ)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 1303
    invoke-virtual {p0, p1, p2}, isScreenCaptureEnabledEx(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1304
    const/4 v0, 0x0

    .line 1306
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private isSmartClipModeAllowedAsUser(ZI)Z
    .registers 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 5152
    const-wide/high16 v2, 0x100000000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p2}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 5156
    .local v0, "ret":Z
    if-eqz p1, :cond_11

    if-nez v0, :cond_11

    .line 5157
    const v1, 0x1040b95

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5160
    :cond_11
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSmartClipModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    return v0
.end method

.method private isValidDevice(I)Z
    .registers 3
    .param p1, "device"    # I

    .prologue
    const/4 v0, 0x1

    .line 5365
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private loadRestrictionCache(I)V
    .registers 32
    .param p1, "userId"    # I

    .prologue
    .line 2723
    const-wide v24, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2725
    .local v14, "restrictionPolicies":Ljava/lang/Long;
    const/16 v16, 0x0

    .line 2726
    .local v16, "selectionValues":Landroid/content/ContentValues;
    const/16 v23, -0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_15b

    .line 2727
    new-instance v16, Landroid/content/ContentValues;

    .end local v16    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2728
    .restart local v16    # "selectionValues":Landroid/content/ContentValues;
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v23

    const-string v24, "#SelectClause#"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2733
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_14c

    .line 2735
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2751
    :goto_58
    sget-object v23, MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    .line 2753
    .local v10, "hashValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 2755
    .local v5, "columns":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    const-string v24, "adminUid"

    aput-object v24, v5, v23

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "RESTRICTION"

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2762
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_224

    .line 2763
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2765
    :try_start_a0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2766
    :goto_a3
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v23

    if-nez v23, :cond_214

    .line 2767
    const-wide v24, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2769
    const-string v23, "adminUid"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2775
    .local v6, "adminUid":J
    long-to-int v0, v6

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v23, v6, v24

    if-nez v23, :cond_1fd

    .line 2776
    long-to-int v0, v6

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 2780
    .local v19, "userIdInternal":I
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_f6

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/Long;

    move-object v14, v0

    .line 2784
    :cond_f6
    sget-object v23, MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_100
    :goto_100
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1ec

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2785
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2786
    .local v15, "ret":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 2788
    .local v13, "restrictionMask":Ljava/lang/Long;
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_1c3

    const-wide v24, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    and-long v24, v24, v26

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-eqz v23, :cond_1c3

    .line 2789
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    or-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_14a
    .catchall {:try_start_a0 .. :try_end_14a} :catchall_202

    move-result-object v14

    goto :goto_100

    .line 2735
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "adminUid":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v10    # "hashValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "restrictionMask":Ljava/lang/Long;
    .end local v15    # "ret":I
    .end local v19    # "userIdInternal":I
    :catchall_14c
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v23

    .line 2738
    :cond_15b
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "user"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 2739
    .local v20, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v21

    .line 2740
    .local v21, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2742
    :try_start_17b
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_17f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1b4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 2743
    .local v17, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a4
    .catchall {:try_start_17b .. :try_end_1a4} :catchall_1a5

    goto :goto_17f

    .line 2746
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "user":Landroid/content/pm/UserInfo;
    :catchall_1a5
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v23

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_1b4
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_58

    .line 2790
    .end local v20    # "userManager":Landroid/os/UserManager;
    .end local v21    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v6    # "adminUid":J
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v10    # "hashValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v13    # "restrictionMask":Ljava/lang/Long;
    .restart local v15    # "ret":I
    .restart local v19    # "userIdInternal":I
    :cond_1c3
    if-nez v15, :cond_100

    const-wide v24, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    :try_start_1ca
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    and-long v24, v24, v26

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-nez v23, :cond_100

    .line 2791
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, -0x1

    xor-long v26, v26, v28

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto/16 :goto_100

    .line 2795
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v13    # "restrictionMask":Ljava/lang/Long;
    .end local v15    # "ret":I
    :cond_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v19    # "userIdInternal":I
    :cond_1fd
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_200
    .catchall {:try_start_1ca .. :try_end_200} :catchall_202

    goto/16 :goto_a3

    .line 2800
    .end local v6    # "adminUid":J
    :catchall_202
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2801
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v23

    .line 2800
    :cond_214
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2801
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2806
    :cond_224
    const/16 v23, -0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_249

    .line 2807
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, isScreenCaptureEnabled(IZ)Z

    move-result v23

    if-nez v23, :cond_246

    const/16 v23, 0x1

    :goto_23c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 2819
    :cond_245
    return-void

    .line 2807
    :cond_246
    const/16 v23, 0x0

    goto :goto_23c

    .line 2810
    :cond_249
    move-object/from16 v0, p0

    iget-object v0, v0, mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v22

    .line 2811
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    .line 2812
    .local v4, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_25a
    if-ge v11, v4, :cond_245

    .line 2813
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 2815
    .local v18, "userHandle":I
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, isScreenCaptureEnabled(IZ)Z

    move-result v23

    if-nez v23, :cond_286

    const/16 v23, 0x1

    :goto_27a
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 2812
    add-int/lit8 v11, v11, 0x1

    goto :goto_25a

    .line 2815
    :cond_286
    const/16 v23, 0x0

    goto :goto_27a
.end method

.method private manageEFSFile(Z)Z
    .registers 13
    .param p1, "allow"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 5029
    const-string v8, "RestrictionPolicy"

    const-string/jumbo v9, "manageEFSFile"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5031
    const/4 v2, 0x0

    .line 5032
    .local v2, "ret":Z
    new-instance v0, Ljava/io/File;

    const-string v8, "/efs/MDM"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5034
    .local v0, "efsDir":Ljava/io/File;
    if-nez v0, :cond_1d

    .line 5035
    const-string v8, "RestrictionPolicy"

    const-string/jumbo v9, "manageEFSFile : efsDir fail"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5062
    :goto_1c
    return v5

    .line 5039
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5040
    .local v6, "token":J
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_76

    .line 5041
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 5042
    invoke-virtual {v0, v10, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    .line 5043
    .local v3, "retread":Z
    invoke-virtual {v0, v10, v10}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v4

    .line 5044
    .local v4, "retwrite":Z
    const-string v5, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "manageEFSFile: setReadable - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " setWritable - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5055
    .end local v3    # "retread":Z
    .end local v4    # "retwrite":Z
    :goto_58
    new-instance v1, Ljava/io/File;

    const-string v5, "/efs/MDM/FactoryReset"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5056
    .local v1, "efsFile":Ljava/io/File;
    if-eqz p1, :cond_7d

    .line 5057
    invoke-direct {p0, v1}, deleteEFSFile(Ljava/io/File;)Z

    move-result v2

    .line 5061
    :goto_65
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v2

    .line 5062
    goto :goto_1c

    .line 5046
    .end local v1    # "efsFile":Ljava/io/File;
    :cond_6a
    const-string v8, "RestrictionPolicy"

    const-string/jumbo v9, "manageEFSFile : mkdirs fail"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5047
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 5051
    :cond_76
    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 5052
    invoke-virtual {v0, v10, v10}, Ljava/io/File;->setWritable(ZZ)Z

    goto :goto_58

    .line 5059
    .restart local v1    # "efsFile":Ljava/io/File;
    :cond_7d
    invoke-direct {p0, v1}, createEFSFile(Ljava/io/File;)Z

    move-result v2

    goto :goto_65
.end method

.method private matchRegex([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "tetherableRegexs"    # [Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 992
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 993
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 994
    const/4 v4, 0x1

    .line 996
    .end local v3    # "regex":Ljava/lang/String;
    :goto_e
    return v4

    .line 992
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 996
    .end local v3    # "regex":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method private mountSdCard()Z
    .registers 11

    .prologue
    .line 2645
    const/4 v5, 0x0

    .line 2646
    .local v5, "success":Z
    invoke-direct {p0}, getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 2647
    .local v3, "mountService":Landroid/os/storage/IMountService;
    if-eqz v3, :cond_1e

    .line 2649
    :try_start_7
    invoke-direct {p0}, getExternalSdCardPath()Ljava/lang/String;

    move-result-object v2

    .line 2650
    .local v2, "ex_path":Ljava/lang/String;
    if-nez v2, :cond_17

    .line 2651
    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "mountSdCard() : fail to mount media because path is null."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 2667
    .end local v2    # "ex_path":Ljava/lang/String;
    .end local v5    # "success":Z
    .local v6, "success":I
    :goto_16
    return v6

    .line 2654
    .end local v6    # "success":I
    .restart local v2    # "ex_path":Ljava/lang/String;
    .restart local v5    # "success":Z
    :cond_17
    invoke-interface {v3, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    move-result v4

    .line 2655
    .local v4, "result":I
    if-nez v4, :cond_20

    .line 2656
    const/4 v5, 0x1

    .end local v2    # "ex_path":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_1e
    :goto_1e
    move v6, v5

    .line 2667
    .restart local v6    # "success":I
    goto :goto_16

    .line 2658
    .end local v6    # "success":I
    .restart local v2    # "ex_path":Ljava/lang/String;
    .restart local v4    # "result":I
    :cond_20
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mountSdCard() : Unable to mount media - error code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_39} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_39} :catch_44

    goto :goto_1e

    .line 2661
    .end local v2    # "ex_path":Ljava/lang/String;
    .end local v4    # "result":I
    :catch_3a
    move-exception v1

    .line 2662
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "mountSdCard() : failed by RemoteException."

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 2663
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_44
    move-exception v0

    .line 2664
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "mountSdCard() : failed by Exception."

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method private onUserAdded(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 545
    invoke-direct {p0, p1}, loadRestrictionCache(I)V

    .line 546
    return-void
.end method

.method private onUserRemoved(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 581
    invoke-direct {p0, p1}, clearCacheAsUser(I)V

    .line 582
    return-void
.end method

.method private readData(I)Z
    .registers 10
    .param p1, "index"    # I

    .prologue
    .line 4102
    const/4 v0, 0x1

    .line 4103
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4106
    .local v2, "token":J
    invoke-direct {p0}, readParamData()[B

    move-result-object v4

    .line 4107
    .local v4, "value":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4109
    if-nez v4, :cond_18

    .line 4110
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "readParamData : fail to read"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4124
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_17
    return v1

    .line 4113
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_18
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readParamData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    const/16 v5, 0x1e

    aget-byte v5, v4, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    const/16 v5, 0x1f

    aget-byte v5, v4, v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_46

    aget-byte v5, v4, p1

    const/16 v6, 0x8

    if-ne v5, v6, :cond_46

    .line 4120
    const/4 v0, 0x0

    .line 4123
    :cond_46
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readParamData : index - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ret - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4124
    .restart local v1    # "ret":I
    goto :goto_17
.end method

.method private native readParamData()[B
.end method

.method private rollBackSVoice(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 3316
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, isSVoiceAllowedAsUser(ZI)Z

    move-result v1

    .line 3318
    .local v1, "state":Z
    if-eqz v1, :cond_29

    .line 3320
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "voiceControl"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3323
    .local v0, "oldState":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 3324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3326
    .local v2, "token":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_input_control"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3328
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3331
    .end local v0    # "oldState":Ljava/lang/String;
    .end local v2    # "token":J
    :cond_29
    return-void
.end method

.method private sendIntentGearManagerforUpdate(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 5435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5437
    .local v2, "token":J
    :try_start_4
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.edm.intent.action.GEARPOLICY_ENABLE_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_19
    .catchall {:try_start_4 .. :try_end_15} :catchall_26

    .line 5441
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5443
    :goto_18
    return-void

    .line 5438
    :catch_19
    move-exception v0

    .line 5439
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1a
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v4, "sendIntentGearManagerforUpdate() fas failed."

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    .line 5441
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_26
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private setLockScreenViewProperty(IZ)Z
    .registers 9
    .param p1, "view"    # I
    .param p2, "on"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3828
    const/4 v0, 0x0

    .line 3829
    .local v0, "ret":Z
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v2, :cond_2c

    .line 3830
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "kg_multiple_lockscreen"

    if-eqz p2, :cond_28

    move v1, v2

    :goto_13
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 3833
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "kg_enable_camera_widget"

    if-eqz p2, :cond_2a

    :goto_22
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 3842
    :cond_27
    :goto_27
    return v0

    :cond_28
    move v1, v3

    .line 3830
    goto :goto_13

    :cond_2a
    move v2, v3

    .line 3833
    goto :goto_22

    .line 3835
    :cond_2c
    and-int/lit8 v1, p1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_27

    .line 3836
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_screen_shortcut"

    if-eqz p2, :cond_52

    move v1, v2

    :goto_3d
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 3839
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "set_shortcuts_mode"

    if-eqz p2, :cond_54

    :goto_4c
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_27

    :cond_52
    move v1, v3

    .line 3836
    goto :goto_3d

    :cond_54
    move v2, v3

    .line 3839
    goto :goto_4c
.end method

.method private unmountSdCard(Z)Z
    .registers 7
    .param p1, "force"    # Z

    .prologue
    .line 2608
    const/4 v3, 0x0

    .line 2609
    .local v3, "success":Z
    invoke-direct {p0}, getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 2610
    .local v2, "mountService":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_12

    .line 2611
    invoke-direct {p0}, getExternalSdCardPath()Ljava/lang/String;

    move-result-object v1

    .line 2613
    .local v1, "extStoragePath":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 2614
    const/4 v4, 0x0

    :try_start_e
    invoke-interface {v2, v1, p1, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_13

    .line 2615
    const/4 v3, 0x1

    .line 2623
    .end local v1    # "extStoragePath":Ljava/lang/String;
    :cond_12
    :goto_12
    return v3

    .line 2617
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 2619
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 2620
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private updateRestrictionCache(Ljava/lang/String;JZI)V
    .registers 16
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "policyMask"    # J
    .param p4, "defaultValue"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 940
    move v2, p4

    .line 941
    .local v2, "result":Z
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v6, 0x0

    const-string v7, "RESTRICTION"

    invoke-virtual {v5, v6, v7, p1, p5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 944
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 945
    .local v3, "value":Z
    if-eq v3, p4, :cond_e

    .line 946
    move v2, v3

    .line 951
    .end local v3    # "value":Z
    :cond_21
    invoke-direct {p0, p5}, getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v1

    .line 952
    .local v1, "restrictionPolicies":Ljava/lang/Long;
    if-nez v1, :cond_36

    .line 957
    iget-object v5, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 958
    invoke-direct {p0, p5}, initializeCacheAsUser(I)V

    .line 959
    invoke-direct {p0, p5}, getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v1

    .line 963
    :cond_36
    iget-object v5, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 965
    if-eqz v1, :cond_55

    .line 966
    if-eqz v2, :cond_5f

    .line 967
    :try_start_43
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 971
    :goto_4c
    iget-object v5, p0, mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_43 .. :try_end_55} :catchall_6c

    .line 974
    :cond_55
    iget-object v5, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 976
    return-void

    .line 969
    :cond_5f
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    xor-long/2addr v8, p2

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_6c

    move-result-object v1

    goto :goto_4c

    .line 974
    :catchall_6c
    move-exception v5

    iget-object v6, p0, mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v5
.end method

.method private updateScreenCaptureDisabledInWindowManager(IZ)V
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 1259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1261
    .local v2, "ident":J
    :try_start_4
    iget-object v1, p0, mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_d
    .catchall {:try_start_4 .. :try_end_9} :catchall_19

    .line 1265
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1267
    :goto_c
    return-void

    .line 1262
    :catch_d
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v1, "RestrictionPolicy"

    const-string v4, "Unable to notify WindowManager."

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 1265
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_19
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updateUSBMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2072
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 2075
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2078
    :cond_22
    return-void
.end method

.method private writeData(IZ)Z
    .registers 11
    .param p1, "index"    # I
    .param p2, "allow"    # Z

    .prologue
    const/16 v7, 0x1f

    const/16 v6, 0x1e

    .line 4128
    const/4 v1, 0x0

    .line 4129
    .local v1, "ret":Z
    const/16 v5, 0x20

    new-array v4, v5, [B

    .line 4130
    .local v4, "value":[B
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4131
    .local v0, "random":Ljava/security/SecureRandom;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4133
    .local v2, "token":J
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4138
    if-nez p2, :cond_4c

    .line 4139
    const/16 v5, 0x8

    aput-byte v5, v4, p1

    .line 4140
    const/4 v5, 0x2

    aput-byte v5, v4, v6

    .line 4141
    const/4 v5, 0x6

    aput-byte v5, v4, v7

    .line 4148
    :goto_21
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeData : index - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    invoke-direct {p0, v4}, writeParamData([B)Z

    move-result v1

    .line 4151
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4152
    return v1

    .line 4143
    :cond_4c
    const/4 v5, 0x7

    aput-byte v5, v4, p1

    .line 4144
    const/4 v5, 0x1

    aput-byte v5, v4, v6

    .line 4145
    const/4 v5, 0x5

    aput-byte v5, v4, v7

    goto :goto_21
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public addAllowedFOTAVersions(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "version":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 5268
    const/4 v5, 0x1

    .line 5269
    .local v5, "result":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5272
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5273
    .local v1, "fotaVersion":Ljava/lang/String;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 5274
    :cond_1e
    const-string v7, "RestrictionPolicy"

    const-string v8, "addAllowedFotaVersion : null string"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5298
    .end local v1    # "fotaVersion":Ljava/lang/String;
    :cond_25
    :goto_25
    return v6

    .line 5278
    .restart local v1    # "fotaVersion":Ljava/lang/String;
    :cond_26
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 5279
    .local v3, "index1":I
    const-string v7, "/"

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 5281
    .local v4, "index2":I
    if-eq v3, v6, :cond_38

    if-ne v4, v6, :cond_51

    .line 5282
    :cond_38
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllowedFotaVersion : invalid format : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 5286
    :cond_51
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllowedFotaVersion : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5289
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5290
    const-string/jumbo v7, "version"

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5291
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "RESTRICTION_FOTALIST"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v7

    and-int/2addr v5, v7

    .line 5293
    goto :goto_a

    .line 5295
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "fotaVersion":Ljava/lang/String;
    .end local v3    # "index1":I
    .end local v4    # "index2":I
    :cond_89
    if-eqz v5, :cond_25

    .line 5296
    const/4 v6, 0x0

    goto :goto_25
.end method

.method public addNewAdminActivationAppWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4919
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4920
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 4922
    .local v3, "userId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4923
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3e

    .line 4924
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4925
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13

    .line 4926
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 4930
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :cond_3e
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "preventAdminActivationWhiteList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method public allowActivationLock(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4397
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4399
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowActivationLock"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 4403
    .local v6, "ret":Z
    const-string v1, "allowActivationLock"

    const-wide/32 v2, 0x8000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4409
    return v6
.end method

.method public allowAirplaneMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 4213
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4214
    const/4 v13, 0x1

    .line 4215
    .local v13, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowAirplaneMode : allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    if-nez p2, :cond_10f

    .line 4219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4222
    .local v14, "token":J
    const/4 v12, 0x0

    .line 4223
    .local v12, "put":Z
    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6b

    .line 4224
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v12

    .line 4225
    const-string v3, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowAirplaneMode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v12, :cond_105

    const-string/jumbo v2, "success"

    :goto_59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "to change settings value"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4229
    :cond_6b
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowAirplaneMode"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v13, v2

    .line 4233
    if-eqz v12, :cond_96

    .line 4234
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4235
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4236
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_96
    .catchall {:try_start_26 .. :try_end_96} :catchall_10a

    .line 4239
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_96
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4247
    .end local v12    # "put":Z
    .end local v14    # "token":J
    :goto_99
    const-string v3, "allowAirplaneMode"

    const-wide/16 v4, 0x80

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4253
    if-eqz v13, :cond_ec

    .line 4254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4256
    .local v10, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_ad
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_123

    const-string v7, "allowed"

    :goto_d0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " airplane mode."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e9
    .catchall {:try_start_ad .. :try_end_e9} :catchall_127

    .line 4261
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4265
    .end local v10    # "psToken":J
    :cond_ec
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowAirplaneMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    return v13

    .line 4225
    .restart local v12    # "put":Z
    .restart local v14    # "token":J
    :cond_105
    :try_start_105
    const-string/jumbo v2, "fail"
    :try_end_108
    .catchall {:try_start_105 .. :try_end_108} :catchall_10a

    goto/16 :goto_59

    .line 4239
    :catchall_10a
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4242
    .end local v12    # "put":Z
    .end local v14    # "token":J
    :cond_10f
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowAirplaneMode"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v13, v2

    goto/16 :goto_99

    .line 4256
    .restart local v10    # "psToken":J
    :cond_123
    :try_start_123
    const-string/jumbo v7, "disallowed"
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_d0

    .line 4261
    :catchall_127
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowAndroidBeam(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3523
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3524
    const/4 v11, 0x1

    .line 3525
    .local v11, "ret":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowAndroidBeam"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v11, v2

    .line 3529
    const-string v3, "allowAndroidBeam"

    const-wide/32 v4, 0x40000

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3535
    if-eqz v11, :cond_44

    if-nez p2, :cond_44

    .line 3536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3538
    .local v14, "token":J
    :try_start_2c
    const-string/jumbo v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v10

    .line 3540
    .local v10, "nfcAdapter":Landroid/nfc/INfcAdapter;
    if-nez v10, :cond_a8

    .line 3542
    const-string v2, "RestrictionPolicy"

    const-string v3, "RestrictionPolicy.allowAndroidBeam(): can\'t bind service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_40} :catch_b6

    .line 3543
    const/4 v11, 0x0

    .line 3552
    .end local v10    # "nfcAdapter":Landroid/nfc/INfcAdapter;
    :goto_41
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3554
    .end local v14    # "token":J
    :cond_44
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowAndroidBeam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    if-eqz v11, :cond_a7

    .line 3556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3558
    .local v12, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_67
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_c0

    const-string/jumbo v7, "enabled"

    :goto_8b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Android Beam."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a4
    .catchall {:try_start_67 .. :try_end_a4} :catchall_c4

    .line 3564
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3567
    .end local v12    # "psToken":J
    :cond_a7
    return v11

    .line 3545
    .restart local v10    # "nfcAdapter":Landroid/nfc/INfcAdapter;
    .restart local v14    # "token":J
    :cond_a8
    :try_start_a8
    invoke-interface {v10}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    .line 3546
    invoke-interface {v10}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_ae} :catch_b6

    move-result v2

    if-nez v2, :cond_b4

    const/4 v2, 0x1

    :goto_b2
    and-int/2addr v11, v2

    goto :goto_41

    :cond_b4
    const/4 v2, 0x0

    goto :goto_b2

    .line 3548
    .end local v10    # "nfcAdapter":Landroid/nfc/INfcAdapter;
    :catch_b6
    move-exception v9

    .line 3549
    .local v9, "e":Landroid/os/RemoteException;
    const/4 v11, 0x0

    .line 3550
    const-string v2, "RestrictionPolicy"

    const-string v3, "RestrictionPolicy.allowAndroidBeam() exception : "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 3558
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "token":J
    .restart local v12    # "psToken":J
    :cond_c0
    :try_start_c0
    const-string/jumbo v7, "disabled"
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_8b

    .line 3564
    :catchall_c4
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowAudioRecord(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 2993
    invoke-direct {p0, p1}, enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2995
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowAudioRecording"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2998
    .local v6, "result":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowAudioRecord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    const-string v1, "allowAudioRecording"

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3006
    return v6
.end method

.method public allowBackgroundProcessLimit(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3124
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3125
    const/4 v7, 0x1

    .line 3126
    .local v7, "ret":Z
    if-nez p2, :cond_16

    .line 3128
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3130
    .local v8, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 3131
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_4b

    .line 3137
    .end local v8    # "token":J
    :cond_16
    :goto_16
    if-eqz v7, :cond_31

    .line 3138
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "limitOfBackgroundProcess"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v7, v0

    .line 3141
    const-string/jumbo v1, "limitOfBackgroundProcess"

    const-wide/16 v2, 0x4000

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3147
    :cond_31
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiDirectAllowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    return v7

    .line 3132
    :catch_4b
    move-exception v6

    .line 3133
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail getting ActivityManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3134
    const/4 v7, 0x0

    goto :goto_16
.end method

.method public allowClipboardShare(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3278
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3279
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3280
    .local v5, "userId":I
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowClipboardShare"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3283
    .local v6, "ret":Z
    const-string v1, "allowClipboardShare"

    const-wide/32 v2, 0x20000

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3289
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowClipboardShare : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    return v6
.end method

.method public allowDeveloperMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 4160
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4164
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowDeveloperMode"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 4170
    .local v8, "ret":Z
    const-string v1, "allowDeveloperMode"

    const-wide/16 v2, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4180
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_68

    const-string v5, "allowed"

    :goto_3e
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " developer mode."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 4184
    if-nez p2, :cond_6e

    .line 4189
    new-instance v7, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    .line 4193
    .local v7, "allowDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    if-eqz v8, :cond_6c

    invoke-virtual {v7}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetDeveloperModeOptions()Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x1

    .line 4195
    .end local v7    # "allowDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :goto_67
    return v0

    .line 4180
    :cond_68
    const-string/jumbo v5, "disallowed"

    goto :goto_3e

    .line 4193
    .restart local v7    # "allowDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :cond_6c
    const/4 v0, 0x0

    goto :goto_67

    .end local v7    # "allowDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :cond_6e
    move v0, v8

    .line 4195
    goto :goto_67
.end method

.method public allowFactoryReset(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2224
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2225
    const/4 v10, 0x0

    .line 2226
    .local v10, "ret":Z
    invoke-direct {p0, p1}, isFactoryResetAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    .line 2227
    .local v9, "oldState":Z
    const/4 v8, 0x1

    .line 2229
    .local v8, "newState":Z
    new-instance v7, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2231
    .local v7, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFactoryReset : oldState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allow - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "factoryresetallowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 2236
    const-string/jumbo v1, "factoryresetallowed"

    const-wide/high16 v2, 0x8000000000000L

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2242
    if-eqz v10, :cond_5e

    .line 2243
    invoke-direct {p0, p1}, isFactoryResetAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    .line 2245
    if-ne v9, v8, :cond_5b

    .line 2246
    const-string v0, "RestrictionPolicy"

    const-string v1, "allowFactoryReset : do not need to update"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :goto_5a
    return v4

    .line 2258
    :cond_5b
    invoke-direct {p0, p2}, manageEFSFile(Z)Z

    .line 2261
    :cond_5e
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFactoryReset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :try_start_76
    const-string v0, "Restriction"

    const-string v1, "allowFactoryReset"

    invoke-virtual {p0, p1}, isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2265
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFactoryReset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " allow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a3} :catch_a5

    :goto_a3
    move v4, v10

    .line 2270
    goto :goto_5a

    .line 2266
    :catch_a5
    move-exception v6

    .line 2267
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a3
.end method

.method public allowFastEncryption(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4537
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4539
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowFastEncryption"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 4542
    .local v8, "ret":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowFastEncryption : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4544
    const-string v1, "allowFastEncryption"

    const-wide/16 v2, 0x10

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4550
    if-eqz v8, :cond_45

    .line 4551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4553
    .local v10, "token":J
    :try_start_38
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_42} :catch_46
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_42} :catch_68
    .catchall {:try_start_38 .. :try_end_42} :catchall_75

    .line 4562
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4565
    .end local v10    # "token":J
    :cond_45
    :goto_45
    return v8

    .line 4555
    .restart local v10    # "token":J
    :catch_46
    move-exception v7

    .line 4556
    .local v7, "re":Landroid/os/RemoteException;
    :try_start_47
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail getting ActivityManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_75

    .line 4557
    const/4 v8, 0x0

    .line 4562
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_45

    .line 4558
    .end local v7    # "re":Landroid/os/RemoteException;
    :catch_68
    move-exception v6

    .line 4559
    .local v6, "e":Ljava/lang/Exception;
    :try_start_69
    const-string v0, "RestrictionPolicy"

    const-string v1, "RestrictionPolicy.allowFastEncryption() exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_75

    .line 4560
    const/4 v8, 0x0

    .line 4562
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_45

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public allowFirmwareAutoUpdate(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4360
    invoke-direct {p0, p1}, enforceOwnerOnlyAndAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4361
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowFirmwareAutoUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowFirmwareAutoUpdate"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 4366
    .local v6, "ret":Z
    const-string v1, "allowFirmwareAutoUpdate"

    const-wide/32 v2, 0x4000000

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4372
    return v6
.end method

.method public allowFirmwareRecovery(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4036
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4037
    const/4 v9, 0x0

    .line 4038
    .local v9, "ret":Z
    invoke-direct {p0, p1}, isFirmwareRecoveryAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    .line 4039
    .local v7, "oldState":Z
    const/4 v6, 0x1

    .line 4041
    .local v6, "newState":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFirmwareRecovery :oldState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allow - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "firmwarerecoveryallowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4046
    const-string/jumbo v1, "firmwarerecoveryallowed"

    const-wide/32 v2, 0x1000000

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4052
    if-eqz v9, :cond_64

    .line 4053
    invoke-direct {p0, p1}, isFirmwareRecoveryAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 4055
    if-ne v7, v6, :cond_55

    .line 4056
    const-string v0, "RestrictionPolicy"

    const-string v1, "allowFirmwareRecovery : do not need to update"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    :goto_54
    return v4

    .line 4059
    :cond_55
    const/4 v8, 0x0

    .line 4060
    .local v8, "param":Z
    const/4 v0, 0x7

    invoke-direct {p0, v0, p2}, writeData(IZ)Z

    move-result v8

    .line 4061
    if-nez v8, :cond_64

    .line 4062
    const-string v0, "RestrictionPolicy"

    const-string v1, "allowFirmwareRecovery : write fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    .end local v8    # "param":Z
    :cond_64
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFirmwareRecovery : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    .line 4068
    goto :goto_54
.end method

.method public allowGoogleAccountsAutoSync(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 31
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 4283
    invoke-direct/range {p0 .. p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4284
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4286
    .local v8, "userId":I
    if-nez p2, :cond_9b

    invoke-virtual/range {p0 .. p1}, isGoogleAccountsAutoSyncAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 4288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 4290
    .local v26, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    .line 4291
    .local v10, "accountMngr":Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v15

    .line 4295
    .local v15, "googleAccounts":[Landroid/accounts/Account;
    array-length v2, v15

    if-eqz v2, :cond_98

    .line 4296
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v13

    .line 4298
    .local v13, "contentService":Landroid/content/IContentService;
    :try_start_32
    invoke-interface {v13, v8}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v24

    .line 4300
    .local v24, "syncAdapters":[Landroid/content/SyncAdapterType;
    move-object v11, v15

    .local v11, "arr$":[Landroid/accounts/Account;
    array-length v0, v11

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v11    # "arr$":[Landroid/accounts/Account;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .local v17, "i$":I
    :goto_3e
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_98

    aget-object v9, v11, v17

    .line 4301
    .local v9, "account":Landroid/accounts/Account;
    move-object/from16 v12, v24

    .local v12, "arr$":[Landroid/content/SyncAdapterType;
    array-length v0, v12

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .end local v17    # "i$":I
    .restart local v16    # "i$":I
    :goto_4d
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_76

    aget-object v23, v12, v16

    .line 4302
    .local v23, "sa":Landroid/content/SyncAdapterType;
    const-string v2, "com.google"

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v13, v9, v2, v8}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 4305
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v13, v9, v2, v3, v8}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_73} :catch_7b

    .line 4301
    :cond_73
    add-int/lit8 v16, v16, 0x1

    goto :goto_4d

    .line 4300
    .end local v23    # "sa":Landroid/content/SyncAdapterType;
    :cond_76
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_3e

    .line 4312
    .end local v9    # "account":Landroid/accounts/Account;
    .end local v12    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v17    # "i$":I
    .end local v19    # "len$":I
    .end local v24    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :catch_7b
    move-exception v14

    .line 4313
    .local v14, "ex":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get content service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    .end local v13    # "contentService":Landroid/content/IContentService;
    .end local v14    # "ex":Landroid/os/RemoteException;
    :cond_98
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4319
    .end local v10    # "accountMngr":Landroid/accounts/AccountManager;
    .end local v15    # "googleAccounts":[Landroid/accounts/Account;
    .end local v26    # "token":J
    :cond_9b
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowGoogleAccountsAutoSync"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v22

    .line 4322
    .local v22, "ret":Z
    if-eqz v22, :cond_fa

    .line 4323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 4325
    .local v20, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_b6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Admin "

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v25, " has "

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz p2, :cond_106

    const-string/jumbo v7, "enabled"

    :goto_e2
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v25, " Autosync of Google account."

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_f7
    .catchall {:try_start_b6 .. :try_end_f7} :catchall_10a

    .line 4329
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4333
    .end local v20    # "psToken":J
    :cond_fa
    const-string v4, "allowGoogleAccountsAutoSync"

    const-wide/32 v5, 0x2000000

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4339
    return v22

    .line 4325
    .restart local v20    # "psToken":J
    :cond_106
    :try_start_106
    const-string/jumbo v7, "disabled"
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_10a

    goto :goto_e2

    .line 4329
    :catchall_10a
    move-exception v2

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowGoogleCrashReport(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2474
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2476
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "googleCrashReportEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2480
    .local v6, "result":Z
    const-string/jumbo v1, "googleCrashReportEnabled"

    const-wide/high16 v2, 0x80000000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2486
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowGoogleCrashReport : allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    return v6
.end method

.method public allowKillingActivitiesOnLeave(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3167
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3168
    const/4 v7, 0x1

    .line 3169
    .local v7, "ret":Z
    if-nez p2, :cond_28

    .line 3171
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3172
    .local v8, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V

    .line 3173
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_finish_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_41

    move v0, v4

    :goto_24
    and-int/2addr v7, v0

    .line 3175
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_28} :catch_43

    .line 3181
    .end local v8    # "token":J
    :cond_28
    :goto_28
    if-eqz v7, :cond_40

    .line 3182
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowKeepActivities"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v7, v0

    .line 3185
    const-string v1, "allowKeepActivities"

    const-wide/32 v2, 0x8000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3191
    :cond_40
    return v7

    .restart local v8    # "token":J
    :cond_41
    move v0, v5

    .line 3173
    goto :goto_24

    .line 3176
    .end local v8    # "token":J
    :catch_43
    move-exception v6

    .line 3177
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail getting ActivityManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    const/4 v7, 0x0

    goto :goto_28
.end method

.method public allowLockScreenView(Landroid/app/enterprise/ContextInfo;IZ)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "view"    # I
    .param p3, "allow"    # Z

    .prologue
    const/4 v10, 0x1

    .line 3846
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3848
    const/4 v3, 0x0

    .line 3849
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3852
    .local v4, "token":J
    if-eq p2, v10, :cond_21

    const/4 v6, 0x2

    if-eq p2, v6, :cond_21

    .line 3853
    :try_start_f
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-direct {v6}, Ljava/security/InvalidParameterException;-><init>()V

    throw v6
    :try_end_15
    .catch Ljava/security/InvalidParameterException; {:try_start_f .. :try_end_15} :catch_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_64
    .catchall {:try_start_f .. :try_end_15} :catchall_74

    .line 3878
    :catch_15
    move-exception v0

    .line 3879
    .local v0, "e":Ljava/security/InvalidParameterException;
    :try_start_16
    const-string v6, "RestrictionPolicy"

    const-string v7, "allowLockScreenView() failed: INVALID PARAMETER INPUT"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_74

    .line 3883
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3886
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :goto_20
    return v3

    .line 3856
    :cond_21
    const/4 v2, 0x0

    .line 3857
    .local v2, "propertySet":Z
    :try_start_22
    invoke-virtual {p0, p1, p2}, isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 3858
    invoke-direct {p0, p2, p3}, setLockScreenViewProperty(IZ)Z
    :try_end_2b
    .catch Ljava/security/InvalidParameterException; {:try_start_22 .. :try_end_2b} :catch_15
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2b} :catch_64
    .catchall {:try_start_22 .. :try_end_2b} :catchall_74

    move-result v2

    .line 3861
    :cond_2c
    const v1, 0xffff

    .line 3863
    .local v1, "lValue":I
    :try_start_2f
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "RESTRICTION"

    const-string v9, "allowLockScreenViews"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2f .. :try_end_3a} :catch_5b
    .catch Ljava/security/InvalidParameterException; {:try_start_2f .. :try_end_3a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_64
    .catchall {:try_start_2f .. :try_end_3a} :catchall_74

    move-result v1

    .line 3869
    :goto_3b
    if-ne v10, p3, :cond_70

    or-int/2addr v1, p2

    .line 3870
    :goto_3e
    :try_start_3e
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "RESTRICTION"

    const-string v9, "allowLockScreenViews"

    invoke-virtual {v6, v7, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 3875
    if-eqz v3, :cond_57

    if-nez v2, :cond_57

    invoke-virtual {p0, p1, p2}, isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 3876
    invoke-direct {p0, p2, p3}, setLockScreenViewProperty(IZ)Z
    :try_end_57
    .catch Ljava/security/InvalidParameterException; {:try_start_3e .. :try_end_57} :catch_15
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_57} :catch_64
    .catchall {:try_start_3e .. :try_end_57} :catchall_74

    .line 3883
    :cond_57
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 3865
    :catch_5b
    move-exception v0

    .line 3866
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :try_start_5c
    const-string v6, "RestrictionPolicy"

    const-string v7, "allowLockScreenView() failed: cannot get value from edmstorageprovider."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/security/InvalidParameterException; {:try_start_5c .. :try_end_63} :catch_15
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_63} :catch_64
    .catchall {:try_start_5c .. :try_end_63} :catchall_74

    goto :goto_3b

    .line 3880
    .end local v0    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    .end local v1    # "lValue":I
    .end local v2    # "propertySet":Z
    :catch_64
    move-exception v0

    .line 3881
    .local v0, "e":Ljava/lang/Exception;
    :try_start_65
    const-string v6, "RestrictionPolicy"

    const-string v7, "allowLockScreenView() failed: unexpected exception"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_74

    .line 3883
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 3869
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "lValue":I
    .restart local v2    # "propertySet":Z
    :cond_70
    xor-int/lit8 v6, p2, -0x1

    and-int/2addr v1, v6

    goto :goto_3e

    .line 3883
    .end local v1    # "lValue":I
    .end local v2    # "propertySet":Z
    :catchall_74
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public allowOTAUpgrade(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 2431
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2433
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowOTAUpgrade : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    invoke-virtual {p0, v8}, isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    .line 2436
    .local v7, "oldState":Z
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "OTAUpgradeEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2440
    const-string v1, "OTAUpgradeEnabled"

    const-wide/high16 v2, 0x40000000000000L

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2446
    invoke-virtual {p0, v8}, isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 2447
    .local v6, "newState":Z
    if-eq v6, v7, :cond_51

    .line 2448
    iget-object v0, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v1, "com.sec.android.fotaclient"

    invoke-virtual {v0, p1, v1, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    .line 2449
    iget-object v0, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v1, "com.wssyncmldm"

    invoke-virtual {v0, p1, v1, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    .line 2450
    iget-object v0, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v1, "com.ws.dm"

    invoke-virtual {v0, p1, v1, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    .line 2452
    :cond_51
    return v4
.end method

.method public allowPowerOff(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 2946
    invoke-direct {p0, p1}, enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2950
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2951
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed. Caller is not COM container or owner"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    const/4 v6, 0x0

    .line 2968
    :goto_12
    return v6

    .line 2955
    :cond_13
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2957
    .local v5, "userId":I
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowPowerOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "powerOffAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2962
    .local v6, "ret":Z
    const-string/jumbo v1, "powerOffAllowed"

    const-wide/16 v2, 0x800

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    goto :goto_12
.end method

.method public allowSBeam(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3465
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3466
    const/4 v12, 0x1

    .line 3467
    .local v12, "ret":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSBeam"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v12, v2

    .line 3471
    const-string v3, "allowSBeam"

    const-wide/16 v4, 0x400

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3477
    if-eqz v12, :cond_43

    if-nez p2, :cond_43

    .line 3478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3481
    .local v14, "token":J
    new-instance v9, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3482
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "turn_on"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3483
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3484
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3486
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v14    # "token":J
    :cond_43
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSBeam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    if-eqz v12, :cond_a6

    .line 3488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3490
    .local v10, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_66
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_a7

    const-string/jumbo v7, "enabled"

    :goto_8a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SBeam."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a3
    .catchall {:try_start_66 .. :try_end_a3} :catchall_ab

    .line 3495
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3498
    .end local v10    # "psToken":J
    :cond_a6
    return v12

    .line 3490
    .restart local v10    # "psToken":J
    :cond_a7
    :try_start_a7
    const-string/jumbo v7, "disabled"
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_8a

    .line 3495
    :catchall_ab
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowSDCardMove(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4495
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4496
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4499
    .local v5, "userId":I
    const/16 v0, 0x64

    if-lt v5, v0, :cond_e

    .line 4500
    const/4 v6, 0x0

    .line 4512
    :goto_d
    return v6

    .line 4502
    :cond_e
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowSDCardMove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowSDCardMove"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 4506
    .local v6, "ret":Z
    const-string v1, "allowSDCardMove"

    const-wide/32 v2, 0x20000000

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    goto :goto_d
.end method

.method public allowSDCardWrite(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v9, 0x0

    .line 2526
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2527
    invoke-virtual {p0, v9}, isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    .line 2528
    .local v7, "oldState":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowSDCardWrite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "sdCardWriteEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 2533
    .local v8, "ret":Z
    const-string/jumbo v1, "sdCardWriteEnabled"

    const-wide v2, 0x800000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2539
    if-eqz v8, :cond_4e

    .line 2540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2541
    .local v10, "token":J
    invoke-virtual {p0, v9}, isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 2542
    .local v6, "newState":Z
    if-eq v6, v7, :cond_4b

    .line 2543
    invoke-direct {p0}, applySdCardWriteAccessPolicy()V

    .line 2545
    :cond_4b
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2547
    .end local v6    # "newState":Z
    .end local v10    # "token":J
    :cond_4e
    return v8
.end method

.method public allowSVoice(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 31
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3339
    invoke-direct/range {p0 .. p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3340
    const/16 v23, 0x1

    .line 3342
    .local v23, "ret":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 3344
    .local v7, "userId":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v24

    .line 3346
    .local v24, "state":Z
    if-nez p2, :cond_5a

    if-eqz v24, :cond_5a

    .line 3347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 3349
    .local v26, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wake_up_lock_screen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3353
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    .line 3357
    .local v17, "currentState":I
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "voiceControl"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3362
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3364
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3367
    .end local v17    # "currentState":I
    .end local v26    # "token":J
    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSVoice"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int v23, v23, v2

    .line 3371
    const-string v3, "allowSVoice"

    const-wide/16 v4, 0x20

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3377
    if-eqz p2, :cond_7f

    .line 3379
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, rollBackSVoice(I)V

    .line 3382
    :cond_7f
    if-eqz v23, :cond_106

    if-eqz v24, :cond_106

    if-nez p2, :cond_106

    .line 3383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 3384
    .restart local v26    # "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager;

    .line 3387
    .local v15, "am":Landroid/app/ActivityManager;
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v22

    .line 3388
    .local v22, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_103

    .line 3390
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_a6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 3391
    .local v25, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    .line 3392
    .local v20, "origInt":Landroid/content/Intent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 3393
    .local v16, "cmp":Landroid/content/ComponentName;
    if-eqz v16, :cond_a6

    .line 3394
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 3395
    .local v21, "packageName":Ljava/lang/String;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    if-eqz v21, :cond_a6

    const-string v2, "com.vlingo.midas"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    const-string v2, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 3399
    :cond_f3
    move-object/from16 v0, v25

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v15, v2}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 3404
    :try_start_fa
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v2, v0, v7}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_103} :catch_16a

    .line 3414
    .end local v16    # "cmp":Landroid/content/ComponentName;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "origInt":Landroid/content/Intent;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_103
    :goto_103
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3416
    .end local v15    # "am":Landroid/app/ActivityManager;
    .end local v22    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v26    # "token":J
    :cond_106
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSVoice : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    if-eqz v23, :cond_169

    .line 3418
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 3420
    .restart local v26    # "token":J
    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x1

    :try_start_129
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_18b

    const-string/jumbo v2, "enabled"

    :goto_14d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SVoice."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_166
    .catchall {:try_start_129 .. :try_end_166} :catchall_18f

    .line 3425
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3428
    .end local v26    # "token":J
    :cond_169
    return v23

    .line 3405
    .restart local v15    # "am":Landroid/app/ActivityManager;
    .restart local v16    # "cmp":Landroid/content/ComponentName;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v20    # "origInt":Landroid/content/Intent;
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v25    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v26    # "token":J
    :catch_16a
    move-exception v18

    .line 3406
    .local v18, "e":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    const/16 v23, 0x0

    .line 3409
    goto/16 :goto_103

    .line 3420
    .end local v15    # "am":Landroid/app/ActivityManager;
    .end local v16    # "cmp":Landroid/content/ComponentName;
    .end local v18    # "e":Landroid/os/RemoteException;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "origInt":Landroid/content/Intent;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v25    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_18b
    :try_start_18b
    const-string/jumbo v2, "disabled"
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_18f

    goto :goto_14d

    .line 3425
    :catchall_18f
    move-exception v2

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowSafeMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3789
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3791
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSafeMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    const/4 v1, 0x0

    .line 3795
    .local v1, "ret":Z
    :try_start_1d
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSafeMode"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_2a

    move-result v1

    .line 3801
    :goto_29
    return v1

    .line 3797
    :catch_2a
    move-exception v0

    .line 3798
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    const-string v3, "allowSafeMode() failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public allowScreenPinning(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v9, 0x0

    .line 5225
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5226
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 5230
    .local v12, "userId":I
    const/16 v0, 0x64

    if-lt v12, v0, :cond_10

    .line 5264
    :cond_f
    :goto_f
    return v9

    .line 5234
    :cond_10
    if-nez p2, :cond_25

    .line 5235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5236
    .local v10, "token":J
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_to_app_enabled"

    invoke-static {v0, v1, v9, v12}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5238
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5241
    .end local v10    # "token":J
    :cond_25
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "screenPinningAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 5244
    .local v9, "result":Z
    const-string/jumbo v1, "screenPinningAllowed"

    const-wide/high16 v2, 0x200000000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 5250
    if-eqz v9, :cond_f

    if-nez p2, :cond_f

    .line 5251
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 5253
    .local v6, "am":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5255
    :try_start_56
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_5d} :catch_68

    goto :goto_f

    .line 5256
    :catch_5e
    move-exception v7

    .line 5257
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "failed taking activity manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 5258
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_68
    move-exception v8

    .line 5260
    .local v8, "ignore":Ljava/lang/SecurityException;
    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "trying to un pin app from different user, just ignore"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public allowSettingsChanges(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 25
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1681
    invoke-direct/range {p0 .. p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1682
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1684
    .local v7, "userId":I
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1687
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/16 v2, 0x64

    if-lt v7, v2, :cond_18

    .line 1688
    const/16 v16, 0x0

    .line 1743
    :goto_17
    return v16

    .line 1691
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSettingsChanges"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 1694
    .local v16, "ret":Z
    const-string v3, "allowSettingsChanges"

    const-wide/16 v4, 0x8

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1700
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSettingsChanges : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    if-eqz v16, :cond_108

    .line 1703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1704
    .local v20, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 1706
    .local v8, "am":Landroid/app/ActivityManager;
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v15

    .line 1707
    .local v15, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v17, "com.android.settings"

    .line 1708
    .local v17, "settingsPkg":Ljava/lang/String;
    if-nez p2, :cond_f1

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f1

    .line 1709
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_75
    :goto_75
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1710
    .local v18, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, v18

    iget-object v13, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1711
    .local v13, "origInt":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 1712
    .local v9, "cmp":Landroid/content/ComponentName;
    if-eqz v9, :cond_75

    .line 1713
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1714
    .local v14, "packageName":Ljava/lang/String;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    if-eqz v14, :cond_75

    const-string v2, "com.android.settings"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1717
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v2

    if-nez v2, :cond_75

    .line 1718
    move-object/from16 v0, v18

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v8, v2}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 1721
    :try_start_c7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-interface {v2, v3, v7}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_d0} :catch_d1

    goto :goto_75

    .line 1722
    :catch_d1
    move-exception v10

    .line 1723
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const/16 v16, 0x0

    goto :goto_75

    .line 1731
    .end local v9    # "cmp":Landroid/content/ComponentName;
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "origInt":Landroid/content/Intent;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v18    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_f1
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.allow.settings"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1733
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1737
    .end local v8    # "am":Landroid/app/ActivityManager;
    .end local v15    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v17    # "settingsPkg":Ljava/lang/String;
    .end local v20    # "token":J
    :cond_108
    :try_start_108
    const-string v2, "Restriction"

    const-string v3, "allowSettingsChanges"

    move/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1738
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_12b} :catch_12d

    goto/16 :goto_17

    .line 1739
    :catch_12d
    move-exception v10

    .line 1740
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17
.end method

.method public allowShareList(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3664
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3665
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3666
    .local v5, "userId":I
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowShareList"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3669
    .local v6, "ret":Z
    const-string v1, "allowShareList"

    const-wide/32 v2, 0x100000

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3675
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowShareList : allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    return v6
.end method

.method public allowSmartClipMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 5173
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5175
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "smartClipAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 5179
    .local v6, "result":Z
    const-string/jumbo v1, "smartClipAllowed"

    const-wide/high16 v2, 0x100000000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 5185
    return v6
.end method

.method public allowStatusBarExpansion(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2881
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2885
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2886
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed. Caller is not COM container or owner"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    const/4 v6, 0x0

    .line 2908
    :goto_12
    return v6

    .line 2890
    :cond_13
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2891
    .local v5, "userId":I
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "statusBarExpansionEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2894
    .local v6, "ret":Z
    const-string/jumbo v1, "statusBarExpansionEnabled"

    const-wide/16 v2, 0x100

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2900
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowStatusBarExpansion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2904
    .local v8, "token":J
    :try_start_56
    invoke-direct {p0}, enforceStatusBarExpansion()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5d

    .line 2906
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    :catchall_5d
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public allowStopSystemApp(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3060
    const/4 v6, 0x1

    .line 3061
    .local v6, "ret":Z
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3062
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3064
    .local v5, "userId":I
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowStopSystemApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3067
    const-string v1, "allowStopSystemApp"

    const-wide/16 v2, 0x1000

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3073
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowStopSystemApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    return v6
.end method

.method public allowUsbHostStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 25
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3592
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 3594
    .local v20, "token":J
    const/4 v13, 0x1

    .line 3595
    .local v13, "ret":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowUsbHostStorage"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v13, v2

    .line 3598
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowUsbHostStorage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    const-string v3, "allowUsbHostStorage"

    const-wide/32 v4, 0x80000

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3606
    if-eqz v13, :cond_83

    .line 3607
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_9f

    const-string v7, "allowed"

    :goto_6a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " USB Host Storage."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3614
    :cond_83
    if-eqz v13, :cond_ed

    if-nez p2, :cond_ed

    .line 3615
    :try_start_87
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageManager;

    .line 3617
    .local v15, "storageManager":Landroid/os/storage/StorageManager;
    if-nez v15, :cond_a3

    .line 3618
    const-string v2, "RestrictionPolicy"

    const-string v3, "Failed to get StorageManager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9d} :catch_e8

    .line 3619
    const/4 v2, 0x0

    .line 3645
    .end local v15    # "storageManager":Landroid/os/storage/StorageManager;
    :goto_9e
    return v2

    .line 3607
    :cond_9f
    const-string/jumbo v7, "disallowed"

    goto :goto_6a

    .line 3621
    .restart local v15    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_a3
    :try_start_a3
    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v18

    .line 3622
    .local v18, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object/from16 v0, v18

    array-length v11, v0

    .line 3623
    .local v11, "length":I
    const-string v16, ""

    .line 3624
    .local v16, "storagePath":Ljava/lang/String;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v12

    .line 3626
    .local v12, "mountService":Landroid/os/storage/IMountService;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b8
    if-ge v10, v11, :cond_ed

    .line 3627
    aget-object v17, v18, v10

    .line 3628
    .local v17, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v19

    .line 3629
    .local v19, "subsystem":Ljava/lang/String;
    if-eqz v19, :cond_e5

    const-string/jumbo v2, "usb"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 3630
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 3631
    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3633
    .local v14, "state":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 3634
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v12, v0, v2, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_e5} :catch_e8

    .line 3626
    .end local v14    # "state":Ljava/lang/String;
    :cond_e5
    add-int/lit8 v10, v10, 0x1

    goto :goto_b8

    .line 3640
    .end local v10    # "i":I
    .end local v11    # "length":I
    .end local v12    # "mountService":Landroid/os/storage/IMountService;
    .end local v15    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v16    # "storagePath":Ljava/lang/String;
    .end local v17    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v18    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    .end local v19    # "subsystem":Ljava/lang/String;
    :catch_e8
    move-exception v9

    .line 3641
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 3642
    const/4 v13, 0x0

    .line 3644
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_ed
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v13

    .line 3645
    goto :goto_9e
.end method

.method public allowUserMobileDataLimit(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3211
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3212
    const/16 v16, 0x1

    .line 3213
    .local v16, "ret":Z
    const-wide/16 v18, 0x0

    .line 3215
    .local v18, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowMobileDataLimit"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int v16, v16, v2

    .line 3219
    const-string v3, "allowMobileDataLimit"

    const-wide/32 v4, 0x10000

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3225
    if-nez p2, :cond_7a

    if-eqz v16, :cond_7a

    .line 3228
    :try_start_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3229
    const-string/jumbo v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v13

    .line 3233
    .local v13, "networkPolicyService":Landroid/net/INetworkPolicyManager;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3235
    .local v12, "networkPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v14

    .line 3238
    .local v14, "policies":[Landroid/net/NetworkPolicy;
    if-eqz v14, :cond_62

    array-length v2, v14

    if-lez v2, :cond_62

    .line 3239
    move-object v8, v14

    .local v8, "arr$":[Landroid/net/NetworkPolicy;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_54
    if-ge v10, v11, :cond_62

    aget-object v15, v8, v10

    .line 3240
    .local v15, "policy":Landroid/net/NetworkPolicy;
    const-wide/16 v2, -0x1

    iput-wide v2, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3241
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3239
    add-int/lit8 v10, v10, 0x1

    goto :goto_54

    .line 3245
    .end local v8    # "arr$":[Landroid/net/NetworkPolicy;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    :cond_62
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_77

    .line 3246
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/NetworkPolicy;

    invoke-interface {v13, v2}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3251
    :cond_77
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_7a} :catch_7b

    .line 3258
    .end local v12    # "networkPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    .end local v13    # "networkPolicyService":Landroid/net/INetworkPolicyManager;
    .end local v14    # "policies":[Landroid/net/NetworkPolicy;
    :cond_7a
    :goto_7a
    return v16

    .line 3252
    :catch_7b
    move-exception v9

    .line 3253
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 3254
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RestrictionPolicy.allowUserMobileDataLimit() exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    const/16 v16, 0x0

    goto :goto_7a
.end method

.method public allowVideoRecord(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 3028
    invoke-direct {p0, p1}, enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3029
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowVideoRecording"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3032
    .local v6, "result":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowVideoRecord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    const-string v1, "allowVideoRecording"

    const-wide/16 v2, 0x2

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3039
    return v6
.end method

.method public allowVpn(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2383
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2384
    const/4 v7, 0x0

    .line 2386
    .local v7, "ret":Z
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "nativeVpnAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 2389
    const-string/jumbo v1, "nativeVpnAllowed"

    const-wide/high16 v2, 0x20000000000000L

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2395
    if-eqz v7, :cond_26

    if-nez p2, :cond_26

    .line 2396
    iget-object v0, p0, mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnectActiveVpnConnections()V

    .line 2398
    :cond_26
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowVpn():set :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    if-eqz v7, :cond_8e

    .line 2400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2402
    .local v8, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_8f

    const-string/jumbo v5, "enabled"

    :goto_74
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Vpn."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8b
    .catchall {:try_start_52 .. :try_end_8b} :catchall_93

    .line 2407
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2410
    .end local v8    # "token":J
    :cond_8e
    return v7

    .line 2402
    .restart local v8    # "token":J
    :cond_8f
    :try_start_8f
    const-string/jumbo v5, "disabled"
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_74

    .line 2407
    :catchall_93
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public allowWallpaperChange(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2850
    const/4 v6, 0x1

    .line 2851
    .local v6, "ret":Z
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2852
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "wallpaperEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2855
    const-string/jumbo v1, "wallpaperEnabled"

    const-wide v2, 0x400000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2861
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowWallpaperChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    return v6
.end method

.method public allowWifiDirect(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3092
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3093
    const/4 v7, 0x1

    .line 3094
    .local v7, "ret":Z
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowWifiDirect"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v7, v0

    .line 3097
    const-string v1, "allowWifiDirect"

    const-wide/16 v2, 0x2000

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3103
    if-eqz v7, :cond_2d

    if-nez p2, :cond_2d

    .line 3104
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.action.internal.RESTRICTION_DISABLE_WFD"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3105
    .local v6, "intent":Landroid/content/Intent;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3107
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_2d
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowWifiDirect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    return v7
.end method

.method public applyBackgroundDataRestriction()V
    .registers 25

    .prologue
    .line 2141
    :try_start_0
    const-string v20, "RestrictionPolicy"

    const-string v21, "Applying Background Data Policy"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    const-string/jumbo v20, "netpolicy"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v16

    .line 2147
    .local v16, "networkPolicyService":Landroid/net/INetworkPolicyManager;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 2150
    const-wide/16 v6, 0x400

    .line 2151
    .local v6, "KB_IN_BYTES":J
    const-wide/32 v10, 0x100000

    .line 2152
    .local v10, "MB_IN_BYTES":J
    const-wide/32 v4, 0x40000000

    .line 2153
    .local v4, "GB_IN_BYTES":J
    const-wide/16 v8, 0x64

    .line 2155
    .local v8, "MAXIMUM_SETABLE_GB_VALUE":J
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2157
    .local v19, "setPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v17

    .line 2159
    .local v17, "policies":[Landroid/net/NetworkPolicy;
    if-eqz v17, :cond_de

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_de

    .line 2160
    move-object/from16 v12, v17

    .local v12, "arr$":[Landroid/net/NetworkPolicy;
    array-length v15, v12

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_49
    if-ge v14, v15, :cond_de

    aget-object v18, v12, v14

    .line 2161
    .local v18, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v20

    packed-switch v20, :pswitch_data_104

    .line 2185
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2160
    :goto_61
    add-int/lit8 v14, v14, 0x1

    goto :goto_49

    .line 2163
    :pswitch_64
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_7b

    .line 2164
    const-wide v20, 0x1900000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2166
    :cond_7b
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_82} :catch_83

    goto :goto_61

    .line 2196
    .end local v4    # "GB_IN_BYTES":J
    .end local v6    # "KB_IN_BYTES":J
    .end local v8    # "MAXIMUM_SETABLE_GB_VALUE":J
    .end local v10    # "MB_IN_BYTES":J
    .end local v12    # "arr$":[Landroid/net/NetworkPolicy;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "networkPolicyService":Landroid/net/INetworkPolicyManager;
    .end local v17    # "policies":[Landroid/net/NetworkPolicy;
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .end local v19    # "setPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    :catch_83
    move-exception v13

    .line 2197
    .local v13, "e":Ljava/lang/Exception;
    const-string v20, "RestrictionPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setBackgroundData EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_9f
    return-void

    .line 2170
    .restart local v4    # "GB_IN_BYTES":J
    .restart local v6    # "KB_IN_BYTES":J
    .restart local v8    # "MAXIMUM_SETABLE_GB_VALUE":J
    .restart local v10    # "MB_IN_BYTES":J
    .restart local v12    # "arr$":[Landroid/net/NetworkPolicy;
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    .restart local v16    # "networkPolicyService":Landroid/net/INetworkPolicyManager;
    .restart local v17    # "policies":[Landroid/net/NetworkPolicy;
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    .restart local v19    # "setPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    :pswitch_a0
    :try_start_a0
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_b7

    .line 2171
    const-wide v20, 0x1900000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2173
    :cond_b7
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 2177
    :pswitch_bf
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_d6

    .line 2178
    const-wide v20, 0x1900000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2180
    :cond_d6
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 2191
    .end local v12    # "arr$":[Landroid/net/NetworkPolicy;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_de
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_fb

    .line 2192
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Landroid/net/NetworkPolicy;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/net/NetworkPolicy;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 2195
    :cond_fb
    const-string v20, "RestrictionPolicy"

    const-string v21, "Applied Background Data Policy"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_102} :catch_83

    goto :goto_9f

    .line 2161
    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_64
        :pswitch_a0
        :pswitch_bf
    .end packed-switch
.end method

.method public checkAdminActivationEnabled(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4992
    invoke-direct {p0, p1}, isNewAdminActivationEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4993
    invoke-virtual {p0, p1, p2}, checkPackageWhiteList(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4994
    const v0, 0x1040b92

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4995
    const/4 v0, 0x0

    .line 4998
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public checkPackageSource(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .prologue
    .line 5016
    if-eqz p2, :cond_14

    .line 5017
    invoke-direct {p0, p1}, getUidForAdminInstallation(I)I

    move-result v1

    .line 5018
    .local v1, "uid":I
    invoke-direct {p0, v1}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5019
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5020
    const/4 v2, 0x1

    .line 5024
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "uid":I
    :goto_13
    return v2

    .line 5023
    :cond_14
    const v2, 0x1040b93

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5024
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public checkPackageWhiteList(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5003
    invoke-direct {p0, p1}, getUidForAdminActivation(I)I

    move-result v0

    .line 5005
    .local v0, "uid":I
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "preventAdminActivationWhiteList"

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5008
    .local v1, "whiteList":Ljava/lang/String;
    if-eqz v1, :cond_19

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5009
    const/4 v2, 0x1

    .line 5011
    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public clearNewAdminActivationAppWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4963
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, addNewAdminActivationAppWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public enableODETrustedBootVerification(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4674
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4675
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableODETrustedBootVerification  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    const/4 v11, 0x0

    .line 4678
    .local v11, "ret":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 4679
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/app/admin/DevicePolicyManager;->isSupportTrustedBootForODE(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 4680
    const-string v2, "RestrictionPolicy"

    const-string v3, "This device doesn\'t support TrustZone for ODE!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .line 4710
    .end local v11    # "ret":Z
    .local v12, "ret":I
    :goto_3c
    return v12

    .line 4684
    .end local v12    # "ret":I
    .restart local v11    # "ret":Z
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "ODETrustedBootVerification"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 4687
    const-string v3, "ODETrustedBootVerification"

    const-wide v4, 0x80000000L

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4693
    if-eqz v11, :cond_84

    .line 4694
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v9

    .line 4695
    .local v9, "mountService":Landroid/os/storage/IMountService;
    if-nez v9, :cond_6e

    move v12, v11

    .line 4696
    .restart local v12    # "ret":I
    goto :goto_3c

    .line 4698
    .end local v12    # "ret":I
    :cond_6e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4700
    .local v14, "token":J
    :try_start_72
    invoke-virtual/range {p0 .. p1}, isODETrustedBootVerificationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 4701
    const-string/jumbo v2, "security.mdm.trustedboot"

    const-string/jumbo v3, "true"

    invoke-interface {v9, v2, v3}, Landroid/os/storage/IMountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_81} :catch_90

    .line 4707
    :goto_81
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v9    # "mountService":Landroid/os/storage/IMountService;
    .end local v14    # "token":J
    :cond_84
    move v12, v11

    .line 4710
    .restart local v12    # "ret":I
    goto :goto_3c

    .line 4703
    .end local v12    # "ret":I
    .restart local v9    # "mountService":Landroid/os/storage/IMountService;
    .restart local v14    # "token":J
    :cond_86
    :try_start_86
    const-string/jumbo v2, "security.mdm.trustedboot"

    const-string/jumbo v3, "false"

    invoke-interface {v9, v2, v3}, Landroid/os/storage/IMountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8f} :catch_90

    goto :goto_81

    .line 4704
    :catch_90
    move-exception v10

    .line 4705
    .local v10, "re":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableODETrustedBootVerification : RemoteException - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81
.end method

.method public enableWearablePolicy(Landroid/app/enterprise/ContextInfo;IZ)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "device"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 5398
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5399
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5400
    .local v4, "userId":I
    const/4 v2, 0x0

    .line 5401
    .local v2, "ret":Z
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enableGearPolicy() : userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    const/16 v5, 0x64

    if-lt v4, v5, :cond_4d

    .line 5404
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enableGearPolicy() : this api doesn\'t support multi-user. userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 5430
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_4c
    return v3

    .line 5408
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_4d
    invoke-direct {p0, p2}, isValidDevice(I)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 5409
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enableGearPolicy() : this api called unsupport device. device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 5410
    .restart local v3    # "ret":I
    goto :goto_4c

    .line 5413
    .end local v3    # "ret":I
    :cond_6e
    const v0, 0xffff

    .line 5415
    .local v0, "lValue":I
    :try_start_71
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string/jumbo v8, "wearablePolicyEnabled"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_71 .. :try_end_7d} :catch_9b

    move-result v0

    .line 5421
    :goto_7e
    const/4 v5, 0x1

    if-ne v5, p3, :cond_99

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v0, v5

    .line 5423
    :goto_84
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string/jumbo v8, "wearablePolicyEnabled"

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 5425
    .local v1, "result":Z
    if-eqz v1, :cond_97

    .line 5426
    invoke-direct {p0, v4}, sendIntentGearManagerforUpdate(I)V

    .line 5427
    const/4 v2, 0x1

    :cond_97
    move v3, v2

    .line 5430
    .restart local v3    # "ret":I
    goto :goto_4c

    .line 5421
    .end local v1    # "result":Z
    .end local v3    # "ret":I
    :cond_99
    or-int/2addr v0, p2

    goto :goto_84

    .line 5417
    :catch_9b
    move-exception v5

    goto :goto_7e
.end method

.method public getAllowedFOTAVersions(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5326
    const/4 v2, 0x0

    .line 5327
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "version"

    aput-object v4, v0, v3

    .line 5328
    .local v0, "columns":[Ljava/lang/String;
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "RESTRICTION_FOTALIST"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5330
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_33

    .line 5331
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5332
    .restart local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 5333
    const-string/jumbo v3, "version"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 5335
    :cond_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5338
    :cond_33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public getCCModeState(Landroid/app/enterprise/ContextInfo;)I
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 5190
    const/4 v0, -0x1

    .line 5191
    .local v0, "ret":I
    const-wide/32 v2, 0x40000000

    invoke-direct {p0, v2, v3, v4, v4}, extractFromRestrictionCache(JZI)Z

    move-result v1

    .line 5194
    .local v1, "ret1":Z
    invoke-virtual {p0, p1, v4}, isCCModeSupported(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5195
    invoke-static {}, Lcom/samsung/android/security/CCManager;->updateMdfStatus()I

    move-result v0

    .line 5197
    :cond_13
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCCModeState : mdm ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CCManager ret = : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    return v0
.end method

.method public getNewAdminActivationAppWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4966
    invoke-direct {p0, p1}, enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4969
    .local v0, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "preventAdminActivationWhiteList"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4971
    .local v1, "whiteListApps":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4972
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4976
    :goto_21
    return-object v0

    .line 4974
    :cond_22
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_21
.end method

.method public getSDCardState()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1834
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1836
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-object v2

    .line 1838
    .local v2, "ret":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1840
    return-object v2

    .line 1838
    .end local v2    # "ret":Ljava/lang/String;
    :catchall_c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method getStorageManager()Landroid/os/storage/StorageManager;
    .registers 3

    .prologue
    .line 2516
    iget-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_11

    .line 2517
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    .line 2518
    :cond_11
    iget-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method getStorageManagerAdapter()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .registers 2

    .prologue
    .line 2522
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isActivationLockAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4417
    const-wide/32 v2, 0x8000000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4421
    .local v0, "ret":Z
    if-eqz p2, :cond_13

    if-nez v0, :cond_13

    .line 4422
    const v1, 0x1040b8a

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4425
    :cond_13
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isActivationLockAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    return v0
.end method

.method public isAdminEnforcementAllowed(II)Z
    .registers 13
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .prologue
    .line 4935
    const/4 v0, 0x0

    .line 4936
    .local v0, "adminsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4937
    .local v6, "token":J
    invoke-direct {p0, p1}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 4939
    .local v4, "pkgName":Ljava/lang/String;
    :try_start_9
    invoke-direct {p0}, getService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 4940
    iget-object v5, p0, mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v5, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v0

    .line 4942
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 4943
    .local v3, "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    const-string v5, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " preventAdminActivation packageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4945
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-object v5, excludedAdminList:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_58} :catch_65
    .catchall {:try_start_9 .. :try_end_58} :catchall_71

    move-result v5

    if-nez v5, :cond_19

    .line 4948
    const/4 v5, 0x0

    .line 4956
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4959
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_5f
    return v5

    .line 4956
    :cond_60
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4959
    :goto_63
    const/4 v5, 0x1

    goto :goto_5f

    .line 4953
    :catch_65
    move-exception v1

    .line 4954
    .local v1, "e":Ljava/lang/Exception;
    :try_start_66
    const-string v5, "RestrictionPolicy"

    const-string v8, "RestrictionPolicy.preventAdminInstallation exception : "

    invoke-static {v5, v8, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_71

    .line 4956
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_63

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_71
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isAirplaneModeAllowed(Z)Z
    .registers 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 4270
    const-wide/16 v2, 0x80

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4274
    .local v0, "ret":Z
    if-eqz p1, :cond_12

    if-nez v0, :cond_12

    .line 4275
    const v1, 0x1040b4c

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4278
    :cond_12
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAirplaneModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    return v0
.end method

.method public isAndroidBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3575
    const-wide/32 v2, 0x40000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3579
    .local v0, "ret":Z
    if-eqz p2, :cond_13

    if-nez v0, :cond_13

    .line 3580
    const v1, 0x1040b36

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3583
    :cond_13
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAndroidBeamAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    return v0
.end method

.method public isAudioRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3010
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3011
    .local v1, "userId":I
    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3016
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAudioRecordAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    if-eqz p2, :cond_38

    if-nez v0, :cond_38

    .line 3020
    const v2, 0x1040b31

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3024
    :cond_38
    return v0
.end method

.method public isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2209
    const-wide/high16 v2, 0x4000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2212
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBackgroundDataEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    return v0
.end method

.method public isBackgroundProcessLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3152
    const-wide/16 v2, 0x4000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3156
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiDirectAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    return v0
.end method

.method public isBackupAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1493
    const-wide v2, 0x100000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1496
    .local v0, "ret":Z
    if-eqz p2, :cond_15

    if-nez v0, :cond_15

    .line 1497
    const v1, 0x1040b80

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1499
    :cond_15
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBackupAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    return v0
.end method

.method public isBluetoothTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1188
    const-wide v2, 0x8000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1192
    .local v0, "ret":Z
    if-eqz v0, :cond_1a

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1193
    const/4 v0, 0x0

    .line 1196
    :cond_1a
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBluetoothTetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return v0
.end method

.method public isCCModeEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4637
    const-wide/32 v2, 0x40000000

    invoke-direct {p0, v2, v3, v4, v4}, extractFromRestrictionCache(JZI)Z

    move-result v1

    .line 4641
    .local v1, "ret1":Z
    const/4 v0, 0x0

    .line 4643
    .local v0, "ret":Z
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 4644
    const/4 v0, 0x1

    .line 4649
    :goto_10
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isCCModeEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "security.mdpp"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    mdm ret1 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   ret :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4650
    return v0

    .line 4646
    :cond_44
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isCCModeSupported(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4658
    const/4 v1, 0x0

    .line 4659
    .local v1, "ret":Z
    const-string/jumbo v2, "ro.security.mdpp.ux"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4660
    .local v0, "proMDPP":Ljava/lang/String;
    if-eqz v0, :cond_13

    const-string v2, "Enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4661
    const/4 v1, 0x1

    .line 4663
    :cond_13
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCCModeSupported : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    if-eqz p2, :cond_36

    if-nez v1, :cond_36

    .line 4665
    const v2, 0x1040b94

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4667
    :cond_36
    return v1
.end method

.method public isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 736
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 737
    .local v1, "userId":I
    invoke-direct {p0, v1, p1}, isCameraEnabledEx(ILandroid/app/enterprise/ContextInfo;)Z

    move-result v0

    .line 739
    .local v0, "ret":Z
    if-eqz p2, :cond_12

    if-nez v0, :cond_12

    .line 740
    const v2, 0x1040b7c

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 743
    :cond_12
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCameraEnabled ret("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") userId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") cxtInfo.mCallerUid("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") cxtInfo.mContainerId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return v0
.end method

.method public isCellularDataAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1667
    const-wide v2, 0x400000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1670
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCellularDataAllowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    return v0
.end method

.method public isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1888
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1889
    .local v0, "userId":I
    invoke-virtual {p0, p2, v0}, isClipboardAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isClipboardAllowedAsUser(ZI)Z
    .registers 15
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1893
    const-wide/16 v10, 0x200

    const/4 v9, 0x1

    invoke-direct {p0, v10, v11, v9, p2}, extractFromRestrictionCache(JZI)Z

    move-result v7

    .line 1898
    .local v7, "ret":Z
    if-eqz v7, :cond_28

    .line 1899
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1900
    .local v2, "callerUid":I
    const-string v1, ""

    .line 1902
    .local v1, "callerPackageName":Ljava/lang/String;
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 1903
    .local v6, "pkgList":[Ljava/lang/String;
    if-eqz v6, :cond_4c

    array-length v9, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4c

    .line 1905
    const/4 v9, 0x0

    aget-object v1, v6, v9

    .line 1917
    :goto_22
    iget-object v9, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v9, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageClipboardAllowed(Ljava/lang/String;I)Z

    move-result v7

    .line 1920
    .end local v1    # "callerPackageName":Ljava/lang/String;
    .end local v2    # "callerUid":I
    .end local v6    # "pkgList":[Ljava/lang/String;
    :cond_28
    if-eqz p1, :cond_32

    if-nez v7, :cond_32

    .line 1921
    const v9, 0x1040b81

    invoke-static {v9}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1923
    :cond_32
    const-string v9, "RestrictionPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isClipboardAllowed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    return v7

    .line 1907
    .restart local v1    # "callerPackageName":Ljava/lang/String;
    .restart local v2    # "callerUid":I
    .restart local v6    # "pkgList":[Ljava/lang/String;
    :cond_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1909
    .local v4, "identity":J
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1910
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 1911
    .local v8, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v8, :cond_74

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_74

    .line 1912
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1913
    .local v3, "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1915
    .end local v3    # "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_74
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_22
.end method

.method public isClipboardShareAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3298
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3299
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isClipboardShareAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isClipboardShareAllowedAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 3303
    const/4 v0, 0x1

    .line 3305
    .local v0, "ret":Z
    const-wide/32 v2, 0x20000

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3308
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isClipboardShareAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    return v0
.end method

.method public isDeveloperModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4201
    const-wide/16 v2, 0x40

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4205
    .local v0, "ret":Z
    if-eqz p2, :cond_12

    if-nez v0, :cond_12

    .line 4206
    const v1, 0x1040b88

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4208
    :cond_12
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDeveloperModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    return v0
.end method

.method public isFOTAVersionAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5344
    invoke-virtual {p0, p1}, isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 5360
    :goto_8
    return v2

    .line 5347
    :cond_9
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION_FOTALIST"

    const-string/jumbo v6, "version"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5348
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 5350
    .local v1, "size":I
    if-eqz v0, :cond_75

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_75

    .line 5351
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFotaVersionAllowed : fota list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5352
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 5353
    const-string v2, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFotaVersionAllowed : allowed fota version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 5354
    goto :goto_8

    .line 5356
    :cond_5b
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFotaVersionAllowed : disallowed fota version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_75
    move v2, v3

    .line 5360
    goto :goto_8
.end method

.method public isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2279
    invoke-direct {p0, p1}, isFactoryResetAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    .line 2287
    .local v0, "ret":Z
    invoke-direct {p0}, isExistEFSFile()Z

    move-result v1

    .line 2288
    .local v1, "temp":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFactoryResetAllowed(): isExistEFSFile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DB - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    if-ne v1, v0, :cond_4f

    .line 2290
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFactoryResetAllowed(): need to sync DB("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") and efs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    invoke-direct {p0, v0}, manageEFSFile(Z)Z

    .line 2294
    :cond_4f
    return v0
.end method

.method public isFastEncryptionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4573
    const-wide/16 v2, 0x10

    invoke-direct {p0, v2, v3, v1, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4577
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFastEncryptionAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    if-eqz p2, :cond_2a

    if-nez v0, :cond_2a

    .line 4580
    const v1, 0x1040b8d

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4583
    :cond_2a
    return v0
.end method

.method public isFirmwareAutoUpdateAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4380
    const-wide/32 v2, 0x4000000

    invoke-direct {p0, v2, v3, v1, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4384
    .local v0, "ret":Z
    if-eqz p2, :cond_12

    if-nez v0, :cond_12

    .line 4385
    const v1, 0x1040b89

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4388
    :cond_12
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFirmwareAutoUpdateAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    return v0
.end method

.method public isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v5, 0x7

    .line 4077
    invoke-direct {p0, v5}, readData(I)Z

    move-result v0

    .line 4078
    .local v0, "param":Z
    invoke-direct {p0, p1}, isFirmwareRecoveryAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    .line 4080
    .local v1, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFirmwareRecoveryAllowed(): ret -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " param - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    if-eq v0, v1, :cond_50

    .line 4082
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFirmwareRecoveryAllowed(): need to sync DB("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") and param"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    invoke-direct {p0, v5, v1}, writeData(IZ)Z

    .line 4086
    :cond_50
    return v1
.end method

.method public isGoogleAccountsAutoSyncAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4343
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4344
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 4348
    const-wide/32 v2, 0x2000000

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4352
    .local v0, "ret":Z
    return v0
.end method

.method public isGoogleCrashReportAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2497
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, isGoogleCrashReportAllowedAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isGoogleCrashReportAllowedAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2502
    const/4 v0, 0x1

    .line 2504
    .local v0, "ret":Z
    const-wide/high16 v2, 0x80000000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2509
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGoogleCrashReportAllowed : ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    return v0
.end method

.method public isHeadphoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4479
    const-wide/32 v2, 0x10000000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4483
    .local v0, "ret":Z
    if-eqz p2, :cond_13

    if-nez v0, :cond_13

    .line 4484
    const v1, 0x1040b8b

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4487
    :cond_13
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHeadphoneEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    return v0
.end method

.method public isHomeKeyEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2345
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v1

    .line 2347
    .local v1, "userId":I
    const-wide/high16 v2, 0x10000000000000L

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2351
    .local v0, "ret":Z
    if-eqz p2, :cond_15

    if-nez v0, :cond_15

    .line 2352
    const v2, 0x1040b45

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2354
    :cond_15
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHomeKeyEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    return v0
.end method

.method public isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3199
    const-wide/32 v2, 0x8000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3202
    .local v0, "ret":Z
    return v0
.end method

.method public isLockScreenEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4014
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 4021
    .local v1, "userId":I
    const-wide/32 v2, 0x800000

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4025
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLockScreenEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    return v0
.end method

.method public isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "view"    # I

    .prologue
    .line 3890
    const/4 v2, 0x1

    .line 3894
    .local v2, "ret":Z
    const/4 v5, 0x1

    if-eq p2, v5, :cond_31

    const/4 v5, 0x2

    if-eq p2, v5, :cond_31

    .line 3895
    const/4 v2, 0x0

    .line 3896
    :try_start_8
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-direct {v5}, Ljava/security/InvalidParameterException;-><init>()V

    throw v5
    :try_end_e
    .catch Ljava/security/InvalidParameterException; {:try_start_8 .. :try_end_e} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_5a

    .line 3910
    :catch_e
    move-exception v0

    .line 3911
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isLockScreenViewAllowed() failed: INVALID PARAMETER INPUT"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3916
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :cond_17
    :goto_17
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isLockScreenViewAllowed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    return v2

    .line 3899
    :cond_31
    :try_start_31
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowLockScreenViews"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3902
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3903
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_3f

    .line 3904
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_54
    .catch Ljava/security/InvalidParameterException; {:try_start_31 .. :try_end_54} :catch_e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_54} :catch_5a

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_3f

    .line 3905
    const/4 v2, 0x0

    .line 3906
    goto :goto_17

    .line 3912
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/Integer;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_5a
    move-exception v0

    .line 3913
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isLockScreenViewAllowed() failed: unexpected exception"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method public isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 891
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 893
    .local v0, "userId":I
    invoke-virtual {p0, p2, v0}, isMicrophoneEnabledAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isMicrophoneEnabledAsUser(ZI)Z
    .registers 11
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    const-wide/16 v6, 0x4

    const/4 v4, 0x1

    .line 897
    const/4 v0, 0x1

    .line 901
    .local v0, "ret":Z
    if-eqz p2, :cond_24

    .line 902
    const/4 v1, 0x0

    invoke-direct {p0, v6, v7, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 906
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMicrophoneEnabledAsUser (owner) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_24
    if-ne v0, v4, :cond_4d

    .line 910
    invoke-direct {p0, v6, v7, v4, p2}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 914
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isMicrophoneEnabledAsUser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_4d
    if-eqz p1, :cond_64

    if-nez v0, :cond_64

    .line 918
    const v1, 0x1040b7d

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 920
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 923
    :cond_64
    return v0
.end method

.method public isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1433
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1434
    .local v1, "userId":I
    const-wide v2, 0x80000000000L

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1438
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMockLocationEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    return v0
.end method

.method public isNFCEnabled()Z
    .registers 2

    .prologue
    .line 1575
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isNFCEnabledWithMsg(Z)Z

    move-result v0

    return v0
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .registers 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 1586
    const-wide v2, 0x200000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1589
    .local v0, "ret":Z
    if-eqz p1, :cond_15

    if-nez v0, :cond_15

    .line 1590
    const v1, 0x1040b40

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1592
    :cond_15
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNFCEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return v0
.end method

.method public isNewAdminActivationEnabled(IZ)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 4884
    const/4 v1, 0x1

    .line 4885
    .local v1, "ret":Z
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2f

    .line 4886
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 4887
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 4889
    .local v5, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4890
    .local v3, "uf":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, p2}, isNewAdminActivationEnabledInternal(IZ)Z

    move-result v1

    .line 4891
    if-nez v1, :cond_17

    move v2, v1

    .line 4898
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ret":Z
    .end local v3    # "uf":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v2, "ret":Z
    :goto_2c
    return v2

    .end local v2    # "ret":Z
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "ret":Z
    .restart local v4    # "userManager":Landroid/os/UserManager;
    .restart local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2d
    move v2, v1

    .line 4895
    .end local v1    # "ret":Z
    .restart local v2    # "ret":Z
    goto :goto_2c

    .line 4897
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ret":Z
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "ret":Z
    :cond_2f
    invoke-direct {p0, p1, p2}, isNewAdminActivationEnabledInternal(IZ)Z

    move-result v1

    move v2, v1

    .line 4898
    .end local v1    # "ret":Z
    .restart local v2    # "ret":Z
    goto :goto_2c
.end method

.method public isNewAdminActivationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4878
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4879
    .local v0, "userId":I
    invoke-virtual {p0, v0, p2}, isNewAdminActivationEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isNewAdminInstallationEnabled(IZ)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 4770
    const/4 v1, 0x1

    .line 4771
    .local v1, "ret":Z
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2f

    .line 4772
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 4773
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 4775
    .local v5, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4776
    .local v3, "uf":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, p2}, isNewAdminInstallationEnabledInternal(IZ)Z

    move-result v1

    .line 4777
    if-nez v1, :cond_17

    move v2, v1

    .line 4783
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ret":Z
    .end local v3    # "uf":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v2, "ret":Z
    :goto_2c
    return v2

    .end local v2    # "ret":Z
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "ret":Z
    .restart local v4    # "userManager":Landroid/os/UserManager;
    .restart local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2d
    move v2, v1

    .line 4780
    .end local v1    # "ret":Z
    .restart local v2    # "ret":Z
    goto :goto_2c

    .line 4782
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ret":Z
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "ret":Z
    :cond_2f
    invoke-direct {p0, p1, p2}, isNewAdminInstallationEnabledInternal(IZ)Z

    move-result v1

    move v2, v1

    .line 4783
    .end local v1    # "ret":Z
    .restart local v2    # "ret":Z
    goto :goto_2c
.end method

.method public isNewAdminInstallationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4763
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4764
    .local v0, "userId":I
    invoke-virtual {p0, v0, p2}, isNewAdminInstallationEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2085
    const-wide/high16 v2, 0x1000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2089
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNonMarketAppAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    return v0
.end method

.method public isNonTrustedAppInstallBlocked(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3768
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3769
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isNonTrustedAppInstallBlockedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isNonTrustedAppInstallBlockedAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 3776
    const-wide/32 v2, 0x400000

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1, p1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3780
    .local v0, "ret":Z
    return v0
.end method

.method public isODETrustedBootVerificationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 4718
    const-wide v2, 0x80000000L

    invoke-direct {p0, v2, v3, v1, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4722
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isODETruestedBootVerfiicationEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    return v0
.end method

.method public isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2460
    const-wide/high16 v2, 0x40000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2463
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOTAUpgradeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    return v0
.end method

.method public isPowerOffAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2973
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v1

    .line 2975
    .local v1, "userId":I
    const-wide/16 v2, 0x800

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2979
    .local v0, "allowed":Z
    if-eqz p2, :cond_15

    if-nez v0, :cond_15

    .line 2980
    const v2, 0x1040a9c

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2983
    :cond_15
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPowerOffAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    return v0
.end method

.method public isSBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3506
    const-wide/16 v2, 0x400

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3509
    .local v0, "ret":Z
    if-eqz p2, :cond_12

    if-nez v0, :cond_12

    .line 3510
    const v1, 0x1040b35

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3513
    :cond_12
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSBeamAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    return v0
.end method

.method public isSDCardMoveAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4520
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 4521
    .local v1, "userId":I
    const-wide/32 v2, 0x20000000

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4525
    .local v0, "ret":Z
    if-eqz p2, :cond_16

    if-nez v0, :cond_16

    .line 4526
    const v2, 0x1040b8c

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4529
    :cond_16
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSDCardMoveAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    return v0
.end method

.method public isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2551
    const-wide v2, 0x800000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2554
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSDCardWriteAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    return v0
.end method

.method public isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3454
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3456
    .local v0, "userId":I
    invoke-virtual {p0, p2, v0}, isSVoiceAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isSVoiceAllowedAsUser(ZI)Z
    .registers 10
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3434
    .local v2, "token":J
    iget-object v4, p0, mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v4, :cond_27

    iget-object v4, p0, mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3435
    iget-object v4, p0, mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v0

    .line 3436
    .local v0, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_27

    .line 3437
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    iget p2, v4, Landroid/content/pm/PersonaInfo;->id:I

    .line 3439
    .end local v0    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3441
    const-wide/16 v4, 0x20

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6, p2}, extractFromRestrictionCache(JZI)Z

    move-result v1

    .line 3444
    .local v1, "ret":Z
    if-eqz p1, :cond_3b

    if-nez v1, :cond_3b

    .line 3445
    const v4, 0x1040b34

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3448
    :cond_3b
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSVoiceAllowedAsUser, userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    return v1
.end method

.method public isSafeModeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3810
    const/4 v2, 0x1

    .line 3812
    .local v2, "ret":Z
    :try_start_1
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowSafeMode"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3814
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_3c

    move-result v3

    .line 3815
    .local v3, "value":Z
    if-nez v3, :cond_f

    .line 3816
    move v2, v3

    .line 3823
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_22
    :goto_22
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSafeModeAllowed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    return v2

    .line 3820
    :catch_3c
    move-exception v0

    .line 3821
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isSafeModeAllowed() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1276
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1277
    .local v0, "userId":I
    invoke-direct {p0, v0, p2}, isScreenCaptureEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isScreenCaptureEnabledEx(IZ)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 1286
    const-wide v2, 0x10000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1290
    .local v0, "ret":Z
    if-eqz v0, :cond_19

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1291
    const/4 v0, 0x0

    .line 1294
    :cond_19
    if-eqz p2, :cond_23

    if-nez v0, :cond_23

    .line 1295
    const v1, 0x1040b7e

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1297
    :cond_23
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenCaptureEnabled : ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return v0
.end method

.method public isScreenCaptureEnabledInternal(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 1281
    invoke-direct {p0}, getTopActivityUserId()I

    move-result v0

    .line 1282
    .local v0, "userId":I
    invoke-direct {p0, v0, p1}, isScreenCaptureEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isScreenPinningAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 5205
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 5206
    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, isScreenPinningAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isScreenPinningAllowedAsUser(ZI)Z
    .registers 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 5210
    const-wide/high16 v2, 0x200000000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p2}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 5218
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenPinningAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    return v0
.end method

.method public isSdCardEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x0

    .line 1847
    invoke-virtual {p0}, getSDCardState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1858
    :cond_7
    :goto_7
    return v0

    .line 1851
    :cond_8
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1854
    const-wide v2, 0x800000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, v0}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1857
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSdCardEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1753
    invoke-direct {p0, p1}, getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1755
    .local v0, "userId":I
    invoke-virtual {p0, p2, v0}, isSettingsChangesAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isSettingsChangesAllowedAsUser(ZI)Z
    .registers 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1766
    const-wide/16 v2, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p2}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1770
    .local v0, "ret":Z
    if-eqz p1, :cond_11

    if-nez v0, :cond_11

    .line 1771
    const v1, 0x1040b50

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1773
    :cond_11
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSettingsChangesAllowedAsUser, userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    return v0
.end method

.method public isShareListAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3681
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3682
    .local v0, "userId":I
    invoke-virtual {p0, v0, p2}, isShareListAllowedAsUser(IZ)Z

    move-result v1

    return v1
.end method

.method public isShareListAllowedAsUser(IZ)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 3686
    const-wide/32 v2, 0x100000

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3690
    .local v0, "ret":Z
    if-eqz p2, :cond_12

    if-nez v0, :cond_12

    .line 3691
    const v1, 0x1040b49

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3694
    :cond_12
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShareListAllowed : userId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    return v0
.end method

.method public isSmartClipModeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 5134
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 5136
    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, isSmartClipModeAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isSmartClipModeAllowedInternal(Z)Z
    .registers 4
    .param p1, "showMsg"    # Z

    .prologue
    .line 5146
    invoke-direct {p0}, getTopActivityUserId()I

    move-result v0

    .line 5148
    .local v0, "userId":I
    invoke-direct {p0, p1, v0}, isSmartClipModeAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isStatusBarExpansionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2912
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v0

    .line 2914
    .local v0, "allowed":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isStatusBarExpansionAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    return v0
.end method

.method public isStatusBarExpansionAllowedAsUser(ZI)Z
    .registers 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2922
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p2

    .line 2924
    const-wide/16 v2, 0x100

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p2}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2932
    .local v0, "allowed":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isStatusBarExpansionAllowedAsUser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    return v0
.end method

.method public isStopSystemAppAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3079
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3080
    .local v1, "userId":I
    const-wide/16 v2, 0x1000

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3084
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isStopSystemAppAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    return v0
.end method

.method public isTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 1018
    invoke-virtual {p0, v3}, isUsbTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    .line 1019
    .local v0, "ret1":Z
    invoke-virtual {p0, v3}, isWifiTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    .line 1020
    .local v1, "ret2":Z
    invoke-virtual {p0, v3}, isBluetoothTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    .line 1021
    .local v2, "ret3":Z
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTetheringEnabled : ret1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret3 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    if-nez v0, :cond_40

    if-nez v1, :cond_40

    if-eqz v2, :cond_42

    :cond_40
    const/4 v3, 0x1

    :goto_41
    return v3

    :cond_42
    const/4 v3, 0x0

    goto :goto_41
.end method

.method public isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1363
    const-wide v2, 0x20000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1367
    .local v0, "ret":Z
    if-eqz v0, :cond_1a

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1368
    const/4 v0, 0x0

    .line 1371
    :cond_1a
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbDebuggingEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return v0
.end method

.method public isUsbHostStorageAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3653
    const-wide/32 v2, 0x80000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3656
    .local v0, "ret":Z
    if-eqz p2, :cond_13

    if-nez v0, :cond_13

    .line 3657
    const v1, 0x1040b48

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3659
    :cond_13
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbHostStorageAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    return v0
.end method

.method public isUsbKiesAvailable(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1977
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1383
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMediaPlayerAvailable(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2034
    const/4 v0, 0x1

    .line 2035
    .local v0, "ret":Z
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2036
    const/4 v0, 0x0

    .line 2042
    :goto_d
    if-eqz p2, :cond_17

    if-nez v0, :cond_17

    .line 2043
    const v1, 0x1040b82

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2045
    :cond_17
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbMediaPlayerAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    return v0

    .line 2038
    :cond_31
    const-wide/high16 v2, 0x2000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    goto :goto_d
.end method

.method public isUsbTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1072
    const-wide v2, 0x2000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1076
    .local v0, "ret":Z
    if-eqz v0, :cond_1a

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1077
    const/4 v0, 0x0

    .line 1080
    :cond_1a
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbTetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return v0
.end method

.method public isUseSecureKeypadEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3729
    const/4 v0, 0x0

    .line 3730
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3732
    .local v1, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lez v2, :cond_a

    .line 3733
    const/4 v0, 0x0

    .line 3736
    :cond_a
    const-wide/32 v2, 0x200000

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3739
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUseSecureKeypadEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cxtInfo.mContainerId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    return v0
.end method

.method public isUserMobileDataLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3266
    const-wide/32 v2, 0x10000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3270
    .local v0, "ret":Z
    return v0
.end method

.method public isVideoRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3043
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3044
    .local v1, "userId":I
    const-wide/16 v2, 0x2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3049
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVideoRecordAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    if-eqz p2, :cond_38

    if-nez v0, :cond_38

    .line 3052
    const v2, 0x1040b32

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3055
    :cond_38
    return v0
.end method

.method public isVpnAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2417
    const-wide/high16 v2, 0x20000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2420
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVpnAllowed():ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    return v0
.end method

.method public isWallpaperChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2866
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2867
    .local v1, "userId":I
    const-wide v2, 0x400000000L

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2871
    .local v0, "allowed":Z
    if-eqz p2, :cond_18

    if-nez v0, :cond_18

    .line 2872
    const v2, 0x1040b39

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2874
    :cond_18
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWallpaperChangeAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    return v0
.end method

.method public isWearablePolicyEnabled(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "device"    # I

    .prologue
    .line 5370
    const/4 v2, 0x0

    .line 5372
    .local v2, "ret":Z
    :try_start_1
    invoke-direct {p0, p2}, isValidDevice(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 5373
    const/4 v2, 0x0

    .line 5374
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-direct {v5}, Ljava/security/InvalidParameterException;-><init>()V

    throw v5
    :try_end_e
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_e} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_55

    .line 5385
    :catch_e
    move-exception v0

    .line 5386
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isWearablePolicyEnabled() failed: INVALID PARAMETER INPUT"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :cond_17
    :goto_17
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isWearablePolicyEnabled() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5392
    return v2

    .line 5376
    :cond_31
    :try_start_31
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "wearablePolicyEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 5379
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 5380
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_4f
    .catch Ljava/security/InvalidParameterException; {:try_start_31 .. :try_end_4f} :catch_e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4f} :catch_55

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_40

    .line 5381
    const/4 v2, 0x1

    .line 5382
    goto :goto_17

    .line 5387
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/Integer;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_55
    move-exception v0

    .line 5388
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isWearablePolicyEnabled() failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public isWifiDirectAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3112
    const-wide/16 v2, 0x2000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3116
    .local v0, "allowed":Z
    if-eqz p2, :cond_12

    if-nez v0, :cond_12

    .line 3117
    const v1, 0x1040b33

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3119
    :cond_12
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiDirectAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    return v0
.end method

.method public isWifiTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1133
    const-wide v2, 0x4000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1137
    .local v0, "ret":Z
    if-eqz v0, :cond_1a

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1138
    const/4 v0, 0x0

    .line 1141
    :cond_1a
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiTetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2673
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2678
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, loadRestrictionCache(I)V

    .line 2680
    const-string/jumbo v3, "microphoneEnabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0, v2}, isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_77

    move v0, v1

    :goto_23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2683
    const-string/jumbo v3, "screenCaptureEnabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0, v2}, isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_79

    move v0, v1

    :goto_4a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    iget-boolean v3, p0, preAdminRemoval_SDCardWrite:Z

    if-eq v0, v3, :cond_65

    .line 2686
    invoke-direct {p0}, applySdCardWriteAccessPolicy()V

    .line 2687
    iput-boolean v2, p0, preAdminRemoval_SDCardWrite:Z

    .line 2691
    :cond_65
    invoke-direct {p0}, enforceStatusBarExpansion()V

    .line 2695
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, rollBackSVoice(I)V

    .line 2700
    invoke-direct {p0, v1, v1}, setLockScreenViewProperty(IZ)Z

    .line 2701
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, setLockScreenViewProperty(IZ)Z

    .line 2702
    return-void

    :cond_77
    move v0, v2

    .line 2680
    goto :goto_23

    :cond_79
    move v0, v2

    .line 2683
    goto :goto_4a
.end method

.method public onContainerCreation(II)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3924
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictionPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3926
    :try_start_28
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "useSecureKeypad"

    const/4 v5, 0x0

    move v1, p2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 3928
    .local v7, "result":Z
    if-nez v7, :cond_3f

    .line 3929
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed to initialize container"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3f} :catch_40

    .line 3934
    .end local v7    # "result":Z
    :cond_3f
    :goto_3f
    return-void

    .line 3931
    :catch_40
    move-exception v6

    .line 3932
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "onContainerCreation initialize exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3943
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictionPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3944
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 2845
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, preAdminRemoval_SDCardWrite:Z

    .line 2846
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3938
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictionPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3939
    return-void
.end method

.method public onUserMigrated(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 576
    invoke-direct {p0}, enforceMigrationAgentSecurityCheck()V

    .line 577
    invoke-direct {p0, p1}, loadRestrictionCache(I)V

    .line 578
    return-void
.end method

.method public preventNewAdminActivation(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4800
    invoke-direct {p0, p1}, enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4802
    invoke-virtual {p0, p1, v4}, isNewAdminActivationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v8

    .line 4803
    .local v8, "state":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4805
    .local v5, "userId":I
    const/4 v7, 0x0

    .line 4806
    .local v7, "ret":Z
    if-eqz v8, :cond_55

    .line 4807
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " preventAdminActivation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    :try_start_28
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v5}, isAdminEnforcementAllowed(II)Z

    move-result v0

    if-nez v0, :cond_31

    .line 4835
    :goto_30
    return v4

    .line 4814
    :cond_31
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "preventAdminActivation"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_4c

    move-result v7

    .line 4829
    :cond_3e
    :goto_3e
    const-string/jumbo v1, "preventAdminActivation"

    const-wide v2, 0x200000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    move v4, v7

    .line 4835
    goto :goto_30

    .line 4816
    :catch_4c
    move-exception v6

    .line 4817
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    const-string v1, "RestrictionPolicy.preventAdminActivation exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 4822
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_55
    invoke-direct {p0, v5}, getUidForAdminActivation(I)I

    move-result v9

    .line 4823
    .local v9, "uid":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v0, v9, :cond_3e

    .line 4824
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "preventAdminActivation"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_3e
.end method

.method public preventNewAdminInstallation(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4728
    invoke-direct {p0, p1}, enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4730
    invoke-virtual {p0, p1, v4}, isNewAdminInstallationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v7

    .line 4731
    .local v7, "state":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4733
    .local v5, "userId":I
    const/4 v6, 0x0

    .line 4734
    .local v6, "ret":Z
    if-eqz v7, :cond_4c

    .line 4736
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " preventAdminInstallation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v5}, isAdminEnforcementAllowed(II)Z

    move-result v0

    if-nez v0, :cond_31

    .line 4759
    :goto_30
    return v4

    .line 4741
    :cond_31
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "preventAdminInstallation"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 4753
    :cond_3e
    :goto_3e
    const-string/jumbo v1, "preventAdminInstallation"

    const-wide v2, 0x100000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    move v4, v6

    .line 4759
    goto :goto_30

    .line 4745
    :cond_4c
    invoke-direct {p0, v5}, getUidForAdminInstallation(I)I

    move-result v8

    .line 4747
    .local v8, "uid":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v0, v8, :cond_3e

    .line 4748
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "preventAdminInstallation"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_3e
.end method

.method public removeAllowedFOTAVersions(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "version":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, -0x1

    .line 5302
    const/4 v2, 0x1

    .line 5303
    .local v2, "result":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5306
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5307
    .local v0, "fotaVersion":Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 5308
    :cond_1e
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "removeAllowedFotaVersion : null string"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5321
    .end local v0    # "fotaVersion":Ljava/lang/String;
    :cond_26
    :goto_26
    return v3

    .line 5312
    .restart local v0    # "fotaVersion":Ljava/lang/String;
    :cond_27
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAllowedFotaVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5314
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION_FOTALIST"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string/jumbo v7, "version"

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 5316
    goto :goto_a

    .line 5318
    .end local v0    # "fotaVersion":Ljava/lang/String;
    :cond_4f
    if-eqz v2, :cond_26

    .line 5319
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public setAllowNonMarketApps(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1932
    const-string v0, "RestrictionPolicy"

    const-string v1, "MiscPolicy.setAllowNonMarketApps"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1935
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowNonMarketApps : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/4 v7, 0x1

    .line 1937
    .local v7, "ret":Z
    if-nez p2, :cond_3d

    .line 1938
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1939
    .local v8, "token":J
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "install_non_market_apps"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v7

    .line 1941
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1943
    .end local v8    # "token":J
    :cond_3d
    if-eqz v7, :cond_96

    .line 1944
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowNonMarketApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v7, v0

    .line 1947
    const-string v1, "allowNonMarketApp"

    const-wide/high16 v2, 0x1000000000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1953
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1955
    .restart local v8    # "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_5b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_97

    const-string v5, "allowed"

    :goto_7c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " installation of non-Google-Play application."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_93
    .catchall {:try_start_5b .. :try_end_93} :catchall_9b

    .line 1960
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1964
    .end local v8    # "token":J
    :cond_96
    return v7

    .line 1955
    .restart local v8    # "token":J
    :cond_97
    :try_start_97
    const-string/jumbo v5, "disallowed"
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_7c

    .line 1960
    :catchall_9b
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setBackgroundData(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2100
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2103
    .local v10, "token":J
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "backgroundDataEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 2106
    .local v8, "ret":Z
    const-string v1, "backgroundDataEnabled"

    const-wide/high16 v2, 0x4000000000000L

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2112
    if-eqz v8, :cond_3e

    .line 2113
    if-eqz p2, :cond_76

    .line 2116
    :try_start_22
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v7

    .line 2119
    .local v7, "networkPolicyService":Landroid/net/INetworkPolicyManager;
    invoke-interface {v7}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-ne v0, v4, :cond_3e

    .line 2120
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 2121
    const-string v0, "RestrictionPolicy"

    const-string v1, "Applied Background Data Removal Policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3e} :catch_5b

    .line 2131
    .end local v7    # "networkPolicyService":Landroid/net/INetworkPolicyManager;
    :cond_3e
    :goto_3e
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackgroundData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    return v8

    .line 2123
    :catch_5b
    move-exception v6

    .line 2124
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackgroundData EX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 2127
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_76
    invoke-virtual {p0}, applyBackgroundDataRestriction()V

    goto :goto_3e
.end method

.method public setBackup(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1450
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1451
    const/4 v8, 0x1

    .line 1452
    .local v8, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1455
    .local v10, "token":J
    if-nez p2, :cond_2a

    .line 1456
    :try_start_c
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v6

    .line 1458
    .local v6, "backupManager":Landroid/app/backup/IBackupManager;
    if-nez v6, :cond_20

    .line 1459
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed to get BackupManager"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    .end local v6    # "backupManager":Landroid/app/backup/IBackupManager;
    :goto_1f
    return v5

    .line 1462
    .restart local v6    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_20
    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1463
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_64

    .line 1465
    .end local v6    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_2a
    const/4 v8, 0x1

    .line 1471
    :goto_2b
    if-eqz v8, :cond_46

    .line 1472
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "backupEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v8, v0

    .line 1475
    const-string v1, "backupEnabled"

    const-wide v2, 0x100000000000L

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1482
    :cond_46
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v8

    .line 1484
    goto :goto_1f

    .line 1466
    :catch_64
    move-exception v7

    .line 1467
    .local v7, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 1468
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method public setBluetoothTethering(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1151
    invoke-direct {p0, p1}, enforceOwnerOnlyAndTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1152
    const/4 v8, 0x0

    .line 1153
    .local v8, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1155
    .local v10, "token":J
    :try_start_9
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "bluetoothTetheringEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 1158
    const-string v1, "bluetoothTetheringEnabled"

    const-wide v2, 0x8000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1164
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    if-eqz v8, :cond_89

    .line 1166
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_a6

    const-string/jumbo v5, "enabled"

    :goto_62
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bluetooth tethering."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1170
    if-nez p2, :cond_89

    iget-object v0, p0, mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1171
    iget-object v0, p0, mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_89} :catch_aa

    .line 1177
    :cond_89
    :goto_89
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1178
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    return v8

    .line 1166
    :cond_a6
    :try_start_a6
    const-string/jumbo v5, "disabled"
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_62

    .line 1174
    :catch_aa
    move-exception v7

    .line 1175
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering Ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89
.end method

.method public setCCMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4590
    const/4 v12, 0x0

    .line 4591
    .local v12, "ret":Z
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4592
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 4593
    .local v8, "userId":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, isCCModeEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v13

    .line 4594
    .local v13, "state":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setCCMode  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  and current MDM state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4596
    .local v14, "token":J
    if-eqz p2, :cond_d4

    .line 4597
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.sms.ENABLE_MDFPP_MODE"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4598
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4604
    :goto_4a
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4607
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "setCCMode"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 4611
    const-string/jumbo v3, "setCCMode"

    const-wide/32 v4, 0x40000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4616
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCCMode ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    if-eqz v12, :cond_d3

    .line 4619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4621
    .local v10, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_8f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Admin "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " has requested to "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz p2, :cond_e4

    const-string/jumbo v7, "enable "

    :goto_bb
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "CCMode."

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d0
    .catchall {:try_start_8f .. :try_end_d0} :catchall_e8

    .line 4625
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4629
    .end local v10    # "psToken":J
    :cond_d3
    return v12

    .line 4600
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_d4
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.sms.DISABLE_MDFPP_MODE"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4601
    .restart local v9    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4a

    .line 4621
    .restart local v10    # "psToken":J
    :cond_e4
    :try_start_e4
    const-string/jumbo v7, "disable "
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e8

    goto :goto_bb

    .line 4625
    :catchall_e8
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCamera(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 29
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 672
    invoke-direct/range {p0 .. p1}, enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 673
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 675
    .local v7, "userId":I
    new-instance v18, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 678
    .local v18, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "cameraEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v23

    .line 681
    .local v23, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCamera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v3, "cameraEnabled"

    const-wide v4, 0x1000000000L

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 689
    if-eqz v23, :cond_d2

    if-nez p2, :cond_d2

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 691
    .local v24, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-interface {v2, v3, v7}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 692
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainers(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v16

    .line 693
    .local v16, "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v16, :cond_a2

    .line 694
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_68
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 695
    .local v15, "conId":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-interface {v2, v3, v15}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_81} :catch_82
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_81} :catch_114

    goto :goto_68

    .line 721
    .end local v15    # "conId":I
    .end local v16    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v23    # "ret":Z
    .end local v24    # "token":J
    :catch_82
    move-exception v22

    .line 722
    .local v22, "re":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .end local v22    # "re":Landroid/os/RemoteException;
    :goto_9f
    const/16 v23, 0x0

    :cond_a1
    :goto_a1
    return v23

    .line 700
    .restart local v16    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23    # "ret":Z
    .restart local v24    # "token":J
    :cond_a2
    :try_start_a2
    const-string v2, "Restriction"

    const-string/jumbo v3, "setCamera"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 701
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_cf} :catch_11e
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_cf} :catch_82

    .line 706
    :goto_cf
    :try_start_cf
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    .end local v16    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24    # "token":J
    :cond_d2
    if-eqz v23, :cond_a1

    .line 710
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_d7} :catch_82
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d7} :catch_114

    move-result-wide v20

    .line 712
    .local v20, "psToken":J
    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x1

    :try_start_db
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_123

    const-string v2, "allowed"

    :goto_fe
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " camera."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move v14, v7

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_110
    .catchall {:try_start_db .. :try_end_110} :catchall_127

    .line 717
    :try_start_110
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_113} :catch_82
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_114

    goto :goto_a1

    .line 723
    .end local v20    # "psToken":J
    .end local v23    # "ret":Z
    :catch_114
    move-exception v17

    .line 724
    .local v17, "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "is EDMStorageProvider running?"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 702
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v16    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23    # "ret":Z
    .restart local v24    # "token":J
    :catch_11e
    move-exception v17

    .line 703
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_11f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_11f .. :try_end_122} :catch_82
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_122} :catch_114

    goto :goto_cf

    .line 712
    .end local v16    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v24    # "token":J
    .restart local v20    # "psToken":J
    :cond_123
    :try_start_123
    const-string/jumbo v2, "disallowed"
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_fe

    .line 717
    :catchall_127
    move-exception v2

    :try_start_128
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_12c
    .catch Landroid/os/RemoteException; {:try_start_128 .. :try_end_12c} :catch_82
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12c} :catch_114
.end method

.method public setCellularData(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1603
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1604
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCellularData() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const/4 v11, 0x1

    .line 1606
    .local v11, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1609
    .local v14, "token":J
    const/4 v10, 0x1

    .line 1611
    .local v10, "isAllowedbyAdmin":Z
    :try_start_25
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "cellularDataEnabled"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_e2

    move-result v10

    .line 1614
    :goto_35
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "cellularDataEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v11, v2

    .line 1617
    if-nez p2, :cond_64

    .line 1618
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1620
    .local v12, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_113

    .line 1621
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_102

    .line 1622
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_63} :catch_10c

    .line 1627
    :goto_63
    const/4 v11, 0x1

    .line 1638
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_64
    :goto_64
    if-nez v11, :cond_11e

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "cellularDataEnabled"

    invoke-virtual {v2, v3, v4, v5, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v11, v2

    .line 1650
    :goto_77
    if-eqz v11, :cond_b9

    .line 1651
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_12e

    const-string/jumbo v7, "enabled"

    :goto_a0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cellular data."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1656
    :cond_b9
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCellularData() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1658
    return v11

    .line 1612
    :catch_e2
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCellularData() : fail to get admin policy value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 1625
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_102
    :try_start_102
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "setCellularData() : mobile data has already disabled"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_10a} :catch_10c

    goto/16 :goto_63

    .line 1634
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_10c
    move-exception v9

    .line 1635
    .restart local v9    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 1636
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_64

    .line 1630
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_113
    :try_start_113
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "setCellularData() : Failed to get Telephony Manager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_11b} :catch_10c

    .line 1631
    const/4 v11, 0x0

    goto/16 :goto_64

    .line 1644
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_11e
    const-string v3, "cellularDataEnabled"

    const-wide v4, 0x400000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    goto/16 :goto_77

    .line 1651
    :cond_12e
    const-string/jumbo v7, "disabled"

    goto/16 :goto_a0
.end method

.method public setClipboardEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1868
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1869
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClipboardEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "clipboardEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1873
    .local v6, "ret":Z
    const-string v1, "clipboardEnabled"

    const-wide/16 v2, 0x200

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1879
    return v6
.end method

.method public setEnableNFC(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1510
    invoke-direct {p0, p1}, enforceOwnerOnlyAndHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1512
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1514
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    if-nez p2, :cond_11

    .line 1515
    invoke-direct {p0}, disableNFC()V

    .line 1517
    :cond_11
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableNFC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "nfcEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 1522
    .local v9, "ret":Z
    const-string/jumbo v1, "nfcEnabled"

    const-wide v2, 0x200000000000L

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1528
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2/isNFCEnabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1529
    .local v12, "uri":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1532
    :try_start_54
    const-string v0, "Restriction"

    const-string/jumbo v1, "setEnableNFC"

    invoke-virtual {p0}, isNFCEnabled()Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1533
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_78} :catch_be

    .line 1538
    :goto_78
    if-eqz v9, :cond_bd

    .line 1539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1541
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_81
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_c3

    const-string/jumbo v5, "enabled"

    :goto_a3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NFC."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_ba
    .catchall {:try_start_81 .. :try_end_ba} :catchall_c7

    .line 1546
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1550
    .end local v10    # "token":J
    :cond_bd
    return v9

    .line 1534
    :catch_be
    move-exception v7

    .line 1535
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    .line 1541
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v10    # "token":J
    :cond_c3
    :try_start_c3
    const-string/jumbo v5, "disabled"
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c7

    goto :goto_a3

    .line 1546
    :catchall_c7
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setHeadphoneState(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4435
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4437
    const/4 v8, 0x0

    .line 4438
    .local v8, "headsetstatus":I
    invoke-virtual {p0, p1, v0}, isHeadphoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v10

    .line 4439
    .local v10, "state":Z
    const-string/jumbo v7, "h2w"

    .line 4440
    .local v7, "headsetName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4442
    .local v9, "ret":Z
    :try_start_e
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHeadphoneState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WiredHeadsetOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    if-eqz p2, :cond_79

    .line 4445
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_5f

    if-nez v10, :cond_5f

    .line 4446
    const/4 v8, 0x1

    .line 4447
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 4448
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const-string v2, ""

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 4460
    :cond_5f
    :goto_5f
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "setHeadphoneState"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4463
    const-string/jumbo v1, "setHeadphoneState"

    const-wide/32 v2, 0x10000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4471
    :goto_78
    return v9

    .line 4452
    :cond_79
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 4453
    const/4 v8, 0x0

    .line 4454
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 4455
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const-string v2, ""

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_93} :catch_94

    goto :goto_5f

    .line 4468
    :catch_94
    move-exception v6

    .line 4469
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    const-string v1, "RestrictionPolicy.setHeadphoneState() exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78
.end method

.method public setHomeKeyState(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2319
    const/4 v6, 0x1

    .line 2320
    .local v6, "ret":Z
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2322
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2323
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed. Caller is not COM container or owner"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    const/4 v0, 0x0

    .line 2336
    :goto_13
    return v0

    .line 2327
    :cond_14
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "homeKeyEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2330
    const-string/jumbo v1, "homeKeyEnabled"

    const-wide/high16 v2, 0x10000000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    move v0, v6

    .line 2336
    goto :goto_13
.end method

.method public setLockScreenState(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 3975
    invoke-direct/range {p0 .. p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3976
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3979
    .local v7, "userId":I
    const/16 v2, 0x64

    if-lt v7, v2, :cond_12

    .line 3980
    const/4 v15, 0x0

    .line 4006
    :cond_11
    :goto_11
    return v15

    .line 3983
    :cond_12
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setLockScreenState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "lockScreenEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 3988
    .local v15, "ret":Z
    const-string/jumbo v3, "lockScreenEnabled"

    const-wide/32 v4, 0x800000

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3994
    if-eqz v15, :cond_11

    .line 3995
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3997
    .local v16, "token":J
    const/4 v8, 0x5

    const/4 v9, 0x1

    :try_start_53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has changed lock screen state to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_89

    const-string/jumbo v2, "enabled"

    :goto_77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v10, p2

    move v14, v7

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_85
    .catchall {:try_start_53 .. :try_end_85} :catchall_8d

    .line 4002
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    .line 3997
    :cond_89
    :try_start_89
    const-string/jumbo v2, "disabled"
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_77

    .line 4002
    :catchall_8d
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setMicrophoneState(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 790
    invoke-direct/range {p0 .. p1}, enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 791
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 793
    .local v8, "userId":I
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 795
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_83

    if-nez p2, :cond_83

    .line 797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 800
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wake_up_lock_screen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 809
    .local v9, "currentState":I
    const/16 v2, 0x64

    if-lt v8, v2, :cond_14f

    .line 810
    :try_start_45
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.sec.android.app.voicenote.Controller"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_80} :catch_17d

    .line 823
    :goto_80
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    .end local v9    # "currentState":I
    .end local v16    # "token":J
    :cond_83
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "microphoneEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    .line 829
    .local v14, "ret":Z
    if-eqz v14, :cond_fd

    .line 830
    const-string/jumbo v3, "microphoneEnabled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_18b

    const/4 v2, 0x1

    :goto_b2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v2, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 835
    .local v12, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_c6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " has "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz p2, :cond_18e

    const-string v7, "allowed"

    :goto_e9
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " microphone."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_fa
    .catchall {:try_start_c6 .. :try_end_fa} :catchall_193

    .line 839
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 843
    .end local v12    # "psToken":J
    :cond_fd
    const-string/jumbo v4, "microphoneEnabled"

    const-wide/16 v5, 0x4

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 849
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMicrophoneState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :try_start_123
    const-string v2, "Restriction"

    const-string/jumbo v3, "setMicrophoneState"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 853
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_14e} :catch_198

    .line 858
    :goto_14e
    return v14

    .line 814
    .end local v14    # "ret":Z
    .restart local v9    # "currentState":I
    .restart local v16    # "token":J
    :cond_14f
    :try_start_14f
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.android.app.voicenote.Controller"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_17b} :catch_17d

    goto/16 :goto_80

    .line 818
    :catch_17d
    move-exception v10

    .line 819
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "setMicrophoneState Broadcast error "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_80

    .line 830
    .end local v9    # "currentState":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "token":J
    .restart local v14    # "ret":Z
    :cond_18b
    const/4 v2, 0x0

    goto/16 :goto_b2

    .line 835
    .restart local v12    # "psToken":J
    :cond_18e
    :try_start_18e
    const-string/jumbo v7, "disallowed"
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_193

    goto/16 :goto_e9

    .line 839
    :catchall_193
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 854
    .end local v12    # "psToken":J
    :catch_198
    move-exception v10

    .line 855
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14e
.end method

.method public setMockLocation(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1393
    invoke-direct {p0, p1}, enforceOwnerOnlyAndLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1394
    const/4 v8, 0x1

    .line 1395
    .local v8, "ret":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1396
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1398
    .local v10, "token":J
    if-nez p2, :cond_2c

    .line 1399
    :try_start_11
    new-instance v7, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    .line 1400
    .local v7, "resetDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    invoke-virtual {v7}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetMockLocationApps()Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_85

    move-result v0

    and-int/2addr v8, v0

    .line 1403
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2c} :catch_66
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_85

    .line 1412
    .end local v7    # "resetDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :cond_2c
    :goto_2c
    if-eqz v8, :cond_49

    .line 1413
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "mockLocationEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v8, v0

    .line 1416
    const-string/jumbo v1, "mockLocationEnabled"

    const-wide v2, 0x80000000000L

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1422
    :cond_49
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMockLocationState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1424
    return v8

    .line 1404
    .restart local v7    # "resetDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :catch_66
    move-exception v6

    .line 1405
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_67
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "killSettings: RemoteException ex -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_84} :catch_85

    goto :goto_2c

    .line 1408
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "resetDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :catch_85
    move-exception v6

    .line 1409
    .local v6, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 1410
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method public setNonTrustedAppInstallBlock(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 3749
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3750
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3752
    .local v5, "userId":I
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "blockNonTrustedApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3755
    .local v6, "ret":Z
    const-string v1, "blockNonTrustedApp"

    const-wide/32 v2, 0x400000

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3761
    return v6
.end method

.method public setScreenCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1206
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1207
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1208
    .local v9, "userId":I
    const/4 v8, 0x0

    .line 1210
    .local v8, "ret":Z
    new-instance v7, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1212
    .local v7, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1214
    .local v10, "token":J
    :try_start_16
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "screenCaptureEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 1216
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenCapture : enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const-string/jumbo v1, "screenCaptureEnabled"

    const-wide v2, 0x10000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1224
    if-eqz v8, :cond_84

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-nez v0, :cond_84

    .line 1225
    const-string/jumbo v1, "screenCaptureEnabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v0, 0x1

    :goto_77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1229
    :cond_84
    if-eqz v8, :cond_91

    .line 1230
    const/4 v0, 0x0

    invoke-direct {p0, v9, v0}, isScreenCaptureEnabled(IZ)Z

    move-result v0

    if-nez v0, :cond_bc

    const/4 v0, 0x1

    :goto_8e
    invoke-direct {p0, v9, v0}, updateScreenCaptureDisabledInWindowManager(IZ)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_91} :catch_be

    .line 1238
    :cond_91
    :goto_91
    :try_start_91
    const-string v0, "Restriction"

    const-string/jumbo v1, "setScreenCapture"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1239
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b6} :catch_c8

    .line 1244
    :goto_b6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    return v8

    .line 1225
    :cond_ba
    const/4 v0, 0x0

    goto :goto_77

    .line 1230
    :cond_bc
    const/4 v0, 0x0

    goto :goto_8e

    .line 1233
    :catch_be
    move-exception v6

    .line 1234
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "setScreenCapture error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 1240
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_c8
    move-exception v6

    .line 1241
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b6
.end method

.method public setSdCardState(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 1782
    invoke-direct {p0, p1}, enforceOwnerOnlyAndHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1783
    invoke-virtual {p0}, getSDCardState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1825
    :goto_c
    return v9

    .line 1786
    :cond_d
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSdCardState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1789
    .local v10, "token":J
    const/4 v9, 0x1

    .line 1790
    .local v9, "ret":Z
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v8

    .line 1793
    .local v8, "mountService":Landroid/os/storage/IMountService;
    :try_start_36
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "sdCardEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v9, v0

    .line 1796
    const-string/jumbo v1, "sdCardEnabled"

    const-wide v2, 0x800000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1806
    if-nez p2, :cond_a2

    .line 1807
    const-string v0, "RestrictionPolicy"

    const-string v1, "SdCard unmount : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v0, 0x1

    invoke-direct {p0, v0}, unmountSdCard(Z)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5f} :catch_a6

    .line 1818
    :goto_5f
    if-eqz v9, :cond_9d

    .line 1819
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_a9

    const-string/jumbo v1, "enabled"

    :goto_84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " access to external SDCard."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v12

    move v2, v12

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1824
    :cond_9d
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_c

    .line 1811
    :cond_a2
    :try_start_a2
    invoke-direct {p0}, mountSdCard()Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_5f

    .line 1814
    :catch_a6
    move-exception v7

    .line 1815
    .local v7, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_5f

    .line 1819
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_a9
    const-string/jumbo v1, "disabled"

    goto :goto_84
.end method

.method public setTethering(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1005
    invoke-virtual {p0, p1, p2}, setUsbTethering(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    .line 1006
    .local v0, "ret1":Z
    invoke-virtual {p0, p1, p2}, setWifiTethering(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    .line 1007
    .local v1, "ret2":Z
    invoke-virtual {p0, p1, p2}, setBluetoothTethering(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    .line 1008
    .local v2, "ret3":Z
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTethering : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    if-eqz v0, :cond_2d

    if-eqz v1, :cond_2d

    if-eqz v2, :cond_2d

    const/4 v3, 0x1

    :goto_2c
    return v3

    :cond_2d
    const/4 v3, 0x0

    goto :goto_2c
.end method

.method public setUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1316
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1317
    const/4 v9, 0x1

    .line 1318
    .local v9, "ret":Z
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1319
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1321
    .local v10, "token":J
    if-nez p2, :cond_1e

    .line 1322
    :try_start_12
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_bc

    .line 1324
    :cond_1e
    const/4 v9, 0x1

    .line 1328
    :goto_1f
    if-eqz v9, :cond_3d

    .line 1329
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "usbDebuggingEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v9, v0

    .line 1332
    const-string/jumbo v1, "usbDebuggingEnabled"

    const-wide v2, 0x20000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1338
    :cond_3d
    if-eqz v9, :cond_7b

    .line 1339
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_c0

    const-string/jumbo v5, "enabled"

    :goto_64
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " USB debugging."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1344
    :cond_7b
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUSBDebugging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :try_start_94
    const-string v0, "Restriction"

    const-string/jumbo v1, "setUsbDebuggingEnabled"

    invoke-virtual {p0, p1}, isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1348
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b8} :catch_c4

    .line 1353
    :goto_b8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1354
    return v9

    .line 1325
    :catch_bc
    move-exception v7

    .line 1326
    .local v7, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto/16 :goto_1f

    .line 1339
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_c0
    const-string/jumbo v5, "disabled"

    goto :goto_64

    .line 1349
    :catch_c4
    move-exception v7

    .line 1350
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b8
.end method

.method public setUsbKiesAvailability(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1969
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1971
    const/4 v0, 0x0

    return v0
.end method

.method public setUsbMassStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1377
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1378
    const/4 v0, 0x0

    return v0
.end method

.method public setUsbMediaPlayerAvailability(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1986
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1987
    const/4 v12, 0x1

    .line 1988
    .local v12, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1989
    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "usbMediaPlayerEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v12, v2

    .line 1992
    const-string/jumbo v3, "usbMediaPlayerEnabled"

    const-wide/high16 v4, 0x2000000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1998
    if-eqz v12, :cond_66

    .line 2000
    if-nez p2, :cond_66

    .line 2002
    :try_start_2d
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v2, "edm.intent.action.disable.mtp"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2003
    .local v10, "intent1":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2004
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "com.sec.restriction.permission.MTP_DISABLED"

    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2006
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2007
    .local v11, "intent2":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2008
    const-string/jumbo v2, "mtp"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2009
    const-string/jumbo v2, "ptp"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_66} :catch_c7

    .line 2016
    .end local v10    # "intent1":Landroid/content/Intent;
    .end local v11    # "intent2":Landroid/content/Intent;
    :cond_66
    :goto_66
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUSBMediaPlayerAvailability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    if-eqz v12, :cond_c3

    .line 2019
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_d0

    const-string/jumbo v7, "enabled"

    :goto_aa
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " USB Media Player (MTP)."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2024
    :cond_c3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2026
    return v12

    .line 2012
    :catch_c7
    move-exception v9

    .line 2013
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    const-string v3, "Error in RestrictionPolicy after setting MTP policy"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 2019
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_d0
    const-string/jumbo v7, "disabled"

    goto :goto_aa
.end method

.method public setUsbTethering(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1031
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1032
    const/4 v14, 0x1

    .local v14, "ret1":Z
    const/4 v15, 0x1

    .line 1033
    .local v15, "ret2":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1034
    .local v16, "token":J
    if-nez p2, :cond_38

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 1038
    .local v13, "mConnManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/String;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1e
    if-ge v10, v12, :cond_38

    aget-object v11, v9, v10

    .line 1039
    .local v11, "iface":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1040
    invoke-virtual {v13, v11}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_35

    .line 1041
    const/4 v14, 0x0

    .line 1038
    :cond_35
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    .line 1045
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "iface":Ljava/lang/String;
    .end local v12    # "len$":I
    .end local v13    # "mConnManager":Landroid/net/ConnectivityManager;
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "usbTetheringEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 1048
    const-string/jumbo v3, "usbTetheringEnabled"

    const-wide v4, 0x2000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1054
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbTethering : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    if-eqz v14, :cond_b9

    if-eqz v15, :cond_b9

    .line 1056
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_c2

    const-string/jumbo v7, "enabled"

    :goto_a0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " USB Tethering setting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1061
    :cond_b9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    if-eqz v14, :cond_c6

    if-eqz v15, :cond_c6

    const/4 v2, 0x1

    :goto_c1
    return v2

    .line 1056
    :cond_c2
    const-string/jumbo v7, "disabled"

    goto :goto_a0

    .line 1063
    :cond_c6
    const/4 v2, 0x0

    goto :goto_c1
.end method

.method public setUseSecureKeypad(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 3705
    invoke-direct {p0, p1}, enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3707
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseSecureKeypad : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseSecureKeypad containerID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "useSecureKeypad"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3714
    .local v6, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3715
    .local v5, "userId":I
    const-string/jumbo v1, "useSecureKeypad"

    const-wide/32 v2, 0x200000

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3721
    return v6
.end method

.method public setWifiTethering(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1090
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1091
    const/4 v15, 0x1

    .local v15, "ret1":Z
    const/16 v16, 0x1

    .line 1092
    .local v16, "ret2":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1093
    .local v18, "token":J
    if-nez p2, :cond_4c

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 1096
    .local v13, "mConnManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/String;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1f
    if-ge v10, v12, :cond_39

    aget-object v11, v9, v10

    .line 1097
    .local v11, "iface":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1098
    invoke-virtual {v13, v11}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_36

    .line 1099
    const/4 v15, 0x0

    .line 1096
    :cond_36
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 1102
    .end local v11    # "iface":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 1104
    .local v14, "mWifiManager":Landroid/net/wifi/WifiManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v16

    .line 1106
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "mConnManager":Landroid/net/ConnectivityManager;
    .end local v14    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "wifiTetheringEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 1109
    const-string/jumbo v3, "wifiTetheringEnabled"

    const-wide v4, 0x4000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1115
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiTethering : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    if-eqz v15, :cond_cd

    if-eqz v16, :cond_cd

    .line 1117
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_d6

    const-string/jumbo v7, "enabled"

    :goto_b4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Wifi Tethering setting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1122
    :cond_cd
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1124
    if-eqz v15, :cond_da

    if-eqz v16, :cond_da

    const/4 v2, 0x1

    :goto_d5
    return v2

    .line 1117
    :cond_d6
    const-string/jumbo v7, "disabled"

    goto :goto_b4

    .line 1124
    :cond_da
    const/4 v2, 0x0

    goto :goto_d5
.end method

.method public systemReady()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 2824
    const/4 v6, -0x1

    invoke-direct {p0, v6}, loadRestrictionCache(I)V

    .line 2827
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 2828
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    if-eqz v3, :cond_2c

    .line 2829
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 2830
    .local v5, "volumes":[Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_2c

    array-length v6, v5

    if-le v6, v8, :cond_2c

    .line 2831
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1e
    if-ge v1, v2, :cond_2c

    aget-object v4, v0, v1

    .line 2832
    .local v4, "v":Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2833
    iput-boolean v8, p0, mIsUsbMassStorageAvailable:Z

    .line 2840
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "v":Landroid/os/storage/StorageVolume;
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_2c
    const-string v6, "RestrictionPolicy"

    const-string/jumbo v7, "systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    return-void

    .line 2831
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "v":Landroid/os/storage/StorageVolume;
    .restart local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method
