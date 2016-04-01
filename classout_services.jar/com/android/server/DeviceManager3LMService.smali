.class public final Lcom/android/server/DeviceManager3LMService;
.super Landroid/os/IDeviceManager3LM$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;,
        Lcom/android/server/DeviceManager3LMService$PublicKey3LM;,
        Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;,
        Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;,
        Lcom/android/server/DeviceManager3LMService$RulesEngine;
    }
.end annotation


# static fields
.field private static final ACTION_NFC_POLICY_CHANGED:Ljava/lang/String; = "android.action.nfc.policychanged"

.field public static final ACTION_USB_LOCK_ENABLED:Ljava/lang/String; = "android.action.Usblockenabled"

.field private static final API_VERSION:I = 0x14

.field private static final DNS1:Ljava/lang/String; = "net.dns1"

.field private static final DNS2:Ljava/lang/String; = "net.dns2"

.field private static final DNS_DOMAIN_SUFFICES:Ljava/lang/String; = "net.dns.search"

.field private static final KITTING_PKG:Ljava/lang/String; = "com.anfacto.km"

.field private static NFCSavedState:I = 0x0

.field private static final PROPERTY_ACTIVATION_STATE:Ljava/lang/String; = "persist.security.3lm.activated"

.field private static final PROPERTY_EXTERNAL_STORAGE_ENABLED:Ljava/lang/String; = "persist.security.3lm.storage"

.field private static final PROPERTY_NFC_LOCKOUT:Ljava/lang/String; = "persist.security.nfc.lockout"

.field private static final PROPERTY_WIFI_LOCKOUT:Ljava/lang/String; = "persist.security.wifi.lockout"

.field private static final TAG:Ljava/lang/String; = "DeviceManager3LM"

.field private static final TUN_DNS1:Ljava/lang/String; = "vpn.net.tun.dns1"

.field private static final TUN_DNS2:Ljava/lang/String; = "vpn.net.tun.dns2"

.field private static final VENDOR_NAME:Ljava/lang/String; = "BoxTone"

.field private static final is3LMAllowed:Z

.field private static mCurrentUserId:I

.field private static final sProjection:[Ljava/lang/String;

.field static sService:Lcom/android/server/DeviceManager3LMService;


# instance fields
.field private final APN_API_RET_ACCESS_NOT_ALLOWED:I

.field private final APN_API_RET_APN_DOES_NOT_EXIST:I

.field private final APN_API_RET_DB_ERROR:I

.field private final APN_API_RET_INVALID_MCC_MNC:I

.field private final APN_API_RET_IN_LOCK_MODE:I

.field private final APN_API_RET_SUCCESS:I

.field private final DEBUG:Z

.field public final MAX_WAIT_TIME:J

.field private final SCAN_3LM_RESULT_ALLOW:I

.field private final SCAN_3LM_RESULT_DENY:I

.field public final STATE_DISABLED:I

.field public final STATE_ENABLED:I

.field public final STATE_UNSUPPORTED:I

.field private SalesCode:Ljava/lang/String;

.field public final WAIT_TIME_INCR:J

.field private isSimulatorPermitted:Z

.field private mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mAndroidIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAndroidIdsNotified:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mApnList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApnProvisioningMutex:Ljava/lang/Object;

.field private mBluetoothEnabled:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootLocked:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field mContext:Landroid/content/Context;

.field private mDeviceAdminLock:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDidSetProtectUsb:Z

.field private mInitialized:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mMultiUserEnabled:Z

.field private mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNotificationHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationText:Ljava/lang/String;

.field private mOEMEncryptionManager:Landroid/os/OEMEncryption;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackagePerms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DeviceManager3LMService$RulesEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagePermsRenameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageScanFailOnTimeout:Z

.field private mPackageScanTimeoutMillis:I

.field private mPackageScanner:Ljava/lang/String;

.field private mPackageScannerMutex:Ljava/lang/Object;

.field private mPackageWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionedSsids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

.field private mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mSecurePrimaryClip:Z

.field private final mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mUid:I

.field private mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mUseCustomNotification:Z

.field private mVpnHasOriginalData:Z

.field private mVpnOriginalDns1:Ljava/lang/String;

.field private mVpnOriginalDns2:Ljava/lang/String;

.field private mVpnOriginalDnsSuffixes:Ljava/lang/String;

.field private mVpnSettingsMutex:Ljava/lang/String;

.field private mWifiFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 225
    sput v2, mCurrentUserId:I

    .line 232
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "mvno_match_data"

    aput-object v2, v0, v1

    sput-object v0, sProjection:[Ljava/lang/String;

    .line 2493
    const/4 v0, -0x1

    sput v0, NFCSavedState:I

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    invoke-direct {p0}, Landroid/os/IDeviceManager3LM$Stub;-><init>()V

    .line 131
    iput-boolean v3, p0, DEBUG:Z

    .line 134
    iput-boolean v3, p0, isSimulatorPermitted:Z

    .line 137
    const-wide/16 v0, 0x61a8

    iput-wide v0, p0, MAX_WAIT_TIME:J

    .line 138
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, WAIT_TIME_INCR:J

    .line 140
    iput v4, p0, STATE_UNSUPPORTED:I

    .line 141
    iput v3, p0, STATE_DISABLED:I

    .line 142
    iput v2, p0, STATE_ENABLED:I

    .line 147
    iput-boolean v3, p0, mDidSetProtectUsb:Z

    .line 200
    const-string v0, ""

    iput-object v0, p0, mVpnOriginalDnsSuffixes:Ljava/lang/String;

    .line 201
    const-string v0, ""

    iput-object v0, p0, mVpnOriginalDns1:Ljava/lang/String;

    .line 202
    const-string v0, ""

    iput-object v0, p0, mVpnOriginalDns2:Ljava/lang/String;

    .line 203
    iput-boolean v3, p0, mVpnHasOriginalData:Z

    .line 204
    const-string v0, ""

    iput-object v0, p0, mVpnSettingsMutex:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, SalesCode:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mPackageScannerMutex:Ljava/lang/Object;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, mPackageScanner:Ljava/lang/String;

    .line 222
    iput-boolean v3, p0, mPackageScanFailOnTimeout:Z

    .line 223
    const/16 v0, 0x2710

    iput v0, p0, mPackageScanTimeoutMillis:I

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mApnProvisioningMutex:Ljava/lang/Object;

    .line 257
    iput v3, p0, APN_API_RET_SUCCESS:I

    .line 258
    iput v4, p0, APN_API_RET_ACCESS_NOT_ALLOWED:I

    .line 259
    const/4 v0, -0x2

    iput v0, p0, APN_API_RET_IN_LOCK_MODE:I

    .line 260
    const/4 v0, -0x3

    iput v0, p0, APN_API_RET_DB_ERROR:I

    .line 261
    const/4 v0, -0x4

    iput v0, p0, APN_API_RET_APN_DOES_NOT_EXIST:I

    .line 262
    const/4 v0, -0x5

    iput v0, p0, APN_API_RET_INVALID_MCC_MNC:I

    .line 3079
    const/16 v0, 0x3e8

    iput v0, p0, SCAN_3LM_RESULT_ALLOW:I

    .line 3080
    const/16 v0, 0x3e9

    iput v0, p0, SCAN_3LM_RESULT_DENY:I

    .line 3129
    new-instance v0, Lcom/android/server/DeviceManager3LMService$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$5;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3957
    new-instance v0, Lcom/android/server/DeviceManager3LMService$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$6;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4504
    new-instance v0, Lcom/android/server/DeviceManager3LMService$7;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$7;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    invoke-direct {p0}, initAndroidIds()V

    .line 285
    iput-boolean v3, p0, mInitialized:Z

    .line 286
    iput-boolean v2, p0, mBluetoothEnabled:Z

    .line 287
    iput-boolean v2, p0, mMultiUserEnabled:Z

    .line 288
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 289
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 290
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 291
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 292
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPackagePerms:Ljava/util/Map;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPackagePermsRenameMap:Ljava/util/Map;

    .line 295
    iget-object v0, p0, mPackagePermsRenameMap:Ljava/util/Map;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE_V2_CLIENT_MAPPED"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, mPackagePermsRenameMap:Ljava/util/Map;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE_V2_CLIENT_MAPPED"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    .line 302
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 303
    iput-boolean v3, p0, mSecurePrimaryClip:Z

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;

    .prologue
    .line 125
    iget-object v0, p0, SalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceManager3LMService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;

    .prologue
    .line 125
    iget-boolean v0, p0, mUseCustomNotification:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;

    .prologue
    .line 125
    iget-object v0, p0, mNotificationText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/DeviceManager3LMService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, mNotificationText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;

    .prologue
    .line 125
    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 125
    iput-object p1, p0, mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/DeviceManager3LMService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, setCurrentUserId(I)V

    return-void
.end method

.method private clearNotification(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 815
    iget-object v0, p0, mNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DeviceManager3LMService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/DeviceManager3LMService$4;-><init>(Lcom/android/server/DeviceManager3LMService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 820
    return-void
.end method

.method private fillApnMap(Ljava/util/Map;Landroid/database/Cursor;)V
    .registers 5
    .param p1, "apnMap"    # Ljava/util/Map;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 3922
    const-string v0, "_id"

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3923
    const-string/jumbo v0, "name"

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3924
    const-string v0, "apn"

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3925
    const-string/jumbo v0, "proxy"

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3926
    const-string/jumbo v0, "port"

    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3927
    const-string/jumbo v0, "user"

    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3928
    const-string/jumbo v0, "server"

    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3929
    const-string/jumbo v0, "password"

    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3930
    const-string/jumbo v0, "mmsc"

    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3931
    const-string/jumbo v0, "mcc"

    const/16 v1, 0x9

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3932
    const-string/jumbo v0, "mnc"

    const/16 v1, 0xa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3933
    const-string/jumbo v0, "numeric"

    const/16 v1, 0xb

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3934
    const-string/jumbo v0, "mmsproxy"

    const/16 v1, 0xc

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3935
    const-string/jumbo v0, "mmsport"

    const/16 v1, 0xd

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3936
    const-string v0, "authtype"

    const/16 v1, 0xe

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3937
    const-string/jumbo v0, "type"

    const/16 v1, 0xf

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3938
    const-string/jumbo v0, "protocol"

    const/16 v1, 0x10

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3939
    const-string v0, "carrier_enabled"

    const/16 v1, 0x11

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3940
    const-string v0, "bearer"

    const/16 v1, 0x12

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3941
    const-string/jumbo v0, "roaming_protocol"

    const/16 v1, 0x13

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3942
    const-string/jumbo v0, "mvno_type"

    const/16 v1, 0x14

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3943
    const-string/jumbo v0, "mvno_match_data"

    const/16 v1, 0x15

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3944
    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 709
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentUserId()I
    .registers 4

    .prologue
    .line 3953
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentUserId(): userId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    sget v0, mCurrentUserId:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/DeviceManager3LMService;
    .registers 2

    .prologue
    .line 275
    const-class v1, Lcom/android/server/DeviceManager3LMService;

    monitor-enter v1

    :try_start_3
    sget-object v0, sService:Lcom/android/server/DeviceManager3LMService;

    if-nez v0, :cond_e

    .line 276
    new-instance v0, Lcom/android/server/DeviceManager3LMService;

    invoke-direct {v0}, <init>()V

    sput-object v0, sService:Lcom/android/server/DeviceManager3LMService;

    .line 278
    :cond_e
    sget-object v0, sService:Lcom/android/server/DeviceManager3LMService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 275
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNFCSavedState()I
    .registers 1

    .prologue
    .line 2499
    sget v0, NFCSavedState:I

    return v0
.end method

.method private initAndroidIds()V
    .registers 1

    .prologue
    .line 533
    return-void
.end method

.method private isAccessPermitted()Z
    .registers 2

    .prologue
    .line 1737
    const/4 v0, 0x1

    invoke-direct {p0, v0}, isAccessPermitted(Z)Z

    move-result v0

    return v0
.end method

.method private isAccessPermitted(Z)Z
    .registers 3
    .param p1, "allowDcm"    # Z

    .prologue
    .line 1742
    const/4 v0, 0x1

    return v0
.end method

.method private isApnLockModeEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3876
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "apn_lock_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private isBootLocked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "notificationBar"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 780
    return-void
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "notificationBar"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "flags"    # I

    .prologue
    .line 787
    iget-object v8, p0, mNotificationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/DeviceManager3LMService$3;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p5

    move v5, p6

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/DeviceManager3LMService$3;-><init>(Lcom/android/server/DeviceManager3LMService;Ljava/lang/String;ILandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 807
    return-void
.end method

.method private refreshUsers()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3338
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "add_users_when_locked"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_30

    move v0, v1

    .line 3340
    .local v0, "addUsersWhenLocked":Z
    :goto_14
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "add_users_when_locked"

    if-eqz v0, :cond_32

    move v3, v2

    :goto_1f
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3342
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "add_users_when_locked"

    if-eqz v0, :cond_34

    :goto_2c
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3344
    return-void

    .end local v0    # "addUsersWhenLocked":Z
    :cond_30
    move v0, v2

    .line 3338
    goto :goto_14

    .restart local v0    # "addUsersWhenLocked":Z
    :cond_32
    move v3, v1

    .line 3340
    goto :goto_1f

    :cond_34
    move v1, v2

    .line 3342
    goto :goto_2c
.end method

.method private setApnLockMode(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3864
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3865
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "apn_lock_mode"

    if-eqz p1, :cond_13

    move v0, v1

    :goto_f
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3868
    return v1

    .line 3865
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setCurrentUserId(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3948
    sput p1, mCurrentUserId:I

    .line 3949
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(): userId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    return-void
.end method

.method private static setNFCSavedState(I)V
    .registers 1
    .param p0, "CurentState"    # I

    .prologue
    .line 2506
    sput p0, NFCSavedState:I

    .line 2507
    return-void
.end method

.method private setPackageState(Ljava/lang/String;I)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 1202
    return-void
.end method

.method private updateNetworkRules(Lcom/android/server/DeviceManager3LMService$RulesEngine;)V
    .registers 2
    .param p1, "re"    # Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .prologue
    .line 2854
    return-void
.end method

.method private validate(Lcom/android/internal/net/VpnProfile;)Z
    .registers 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4192
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    .line 4210
    :cond_23
    :goto_23
    :pswitch_23
    return v0

    .line 4197
    :cond_24
    iget v2, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_40

    move v0, v1

    .line 4210
    goto :goto_23

    .line 4204
    :pswitch_2b
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_23

    .line 4208
    :pswitch_35
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_23

    .line 4197
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2b
        :pswitch_35
        :pswitch_23
        :pswitch_2b
        :pswitch_35
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 4215
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_8
    if-ge v4, v6, :cond_67

    aget-object v0, v1, v4

    .line 4216
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 4215
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 4220
    :cond_15
    const/16 v8, 0x20

    .line 4221
    .local v8, "prefixLength":I
    if-eqz p2, :cond_2a

    .line 4222
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 4223
    .local v7, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 4224
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4226
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_2a
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 4227
    .local v2, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 4229
    .local v5, "integer":I
    array-length v9, v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_64

    const/4 v10, 0x4

    if-ne v9, v10, :cond_62

    if-ltz v8, :cond_62

    const/16 v9, 0x20

    if-gt v8, v9, :cond_62

    const/16 v9, 0x20

    if-ge v8, v9, :cond_12

    shl-int v9, v5, v8

    if-eqz v9, :cond_12

    .line 4231
    :cond_62
    const/4 v9, 0x0

    .line 4237
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v5    # "integer":I
    .end local v6    # "len$":I
    .end local v8    # "prefixLength":I
    :goto_63
    return v9

    .line 4234
    :catch_64
    move-exception v3

    .line 4235
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_63

    .line 4237
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_67
    const/4 v9, 0x1

    goto :goto_63
.end method


# virtual methods
.method public addApn(Ljava/util/Map;)V
    .registers 2
    .param p1, "list"    # Ljava/util/Map;

    .prologue
    .line 3216
    return-void
.end method

.method public addEmailAccount(Ljava/util/Map;)Z
    .registers 9
    .param p1, "account"    # Ljava/util/Map;

    .prologue
    const/4 v6, 0x0

    .line 4316
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v6

    .line 4352
    :goto_8
    return v4

    .line 4318
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4319
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.email.CREATE_KITTING_ACCOUNT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4320
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4321
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "in_port"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    const-string/jumbo v4, "out_port"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    const-string/jumbo v4, "syncFreq"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    const-string/jumbo v4, "lookback"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    const-string/jumbo v4, "deletePolicy"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 4329
    :cond_68
    :try_start_68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_7b} :catch_7c

    goto :goto_1b

    .line 4330
    :catch_7c
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v4, v6

    .line 4331
    goto :goto_8

    .line 4334
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7f
    const-string v4, "attachments"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b2

    const-string/jumbo v4, "syncEmail"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b2

    const-string/jumbo v4, "syncContacts"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b2

    const-string/jumbo v4, "syncCalendar"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 4340
    :cond_b2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1b

    .line 4343
    :cond_c7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1b

    .line 4347
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d8
    const/high16 v4, 0x10000000

    :try_start_da
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4348
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_da .. :try_end_e2} :catch_e5

    .line 4352
    :goto_e2
    const/4 v4, 0x1

    goto/16 :goto_8

    .line 4349
    :catch_e5
    move-exception v0

    .line 4350
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "DeviceManager3LM"

    const-string v5, "addEmailAccount ActivityNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2
.end method

.method public addOrUpdateApn(Ljava/util/Map;I)Z
    .registers 5
    .param p1, "list"    # Ljava/util/Map;
    .param p2, "id"    # I

    .prologue
    .line 3728
    invoke-virtual {p0, p1, p2}, addOrUpdateApnResult(Ljava/util/Map;I)I

    move-result v0

    .line 3729
    .local v0, "ret_id":I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public addOrUpdateApnResult(Ljava/util/Map;I)I
    .registers 26
    .param p1, "list"    # Ljava/util/Map;
    .param p2, "id"    # I

    .prologue
    .line 3743
    invoke-direct/range {p0 .. p0}, isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v18, -0x1

    .line 3819
    :goto_8
    return v18

    .line 3745
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, mApnProvisioningMutex:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 3747
    :try_start_10
    invoke-direct/range {p0 .. p0}, isApnLockModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v18, -0x2

    monitor-exit v22

    goto :goto_8

    .line 3820
    :catchall_1a
    move-exception v2

    monitor-exit v22
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v2

    .line 3749
    :cond_1d
    :try_start_1d
    const-string v8, ""

    .line 3750
    .local v8, "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 3751
    .local v17, "res":Landroid/content/res/Resources;
    const v2, 0x1070091

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 3752
    .local v12, "key":[Ljava/lang/String;
    const v2, 0x1070092

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 3754
    .local v15, "oem":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3755
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 3756
    .local v21, "values":Landroid/content/ContentValues;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 3758
    .local v16, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_56
    array-length v2, v12

    if-ge v10, v2, :cond_65

    .line 3759
    aget-object v2, v12, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 3765
    :cond_65
    array-length v2, v12

    if-eq v10, v2, :cond_49

    .line 3768
    const-string v2, "authtype"

    aget-object v3, v12, v10

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    const-string v2, "bearer"

    aget-object v3, v12, v10

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 3770
    :cond_7c
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9d

    .line 3771
    aget-object v3, v15, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3777
    :cond_9d
    :goto_9d
    aget-object v2, v12, v10

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 3778
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_49

    .line 3780
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "apnName":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "apnName":Ljava/lang/String;
    goto :goto_49

    .line 3758
    :cond_bb
    add-int/lit8 v10, v10, 0x1

    goto :goto_56

    .line 3774
    :cond_be
    aget-object v3, v15, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 3785
    .end local v10    # "i":I
    .end local v16    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_cc
    move/from16 v18, p2

    .line 3786
    .local v18, "ret_id":I
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_14b

    .line 3789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3790
    .local v5, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3794
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_148

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_148

    .line 3796
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p2

    int-to-long v6, v0

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 3797
    .local v20, "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3798
    .local v14, "numOfRowsUpdated":I
    if-gez v14, :cond_140

    .line 3799
    const/16 v18, -0x3

    .line 3806
    .end local v14    # "numOfRowsUpdated":I
    .end local v20    # "url":Landroid/net/Uri;
    :cond_140
    :goto_140
    if-eqz v9, :cond_145

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3819
    .end local v5    # "where":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_145
    :goto_145
    monitor-exit v22

    goto/16 :goto_8

    .line 3804
    .restart local v5    # "where":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_148
    const/16 v18, -0x4

    goto :goto_140

    .line 3811
    .end local v5    # "where":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_14b
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_15a
    .catchall {:try_start_1d .. :try_end_15a} :catchall_1a

    move-result-object v19

    .line 3813
    .local v19, "uri":Landroid/net/Uri;
    :try_start_15b
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_162
    .catch Ljava/lang/NumberFormatException; {:try_start_15b .. :try_end_162} :catch_164
    .catchall {:try_start_15b .. :try_end_162} :catchall_1a

    move-result v18

    goto :goto_145

    .line 3814
    :catch_164
    move-exception v13

    .line 3815
    .local v13, "nfe":Ljava/lang/NumberFormatException;
    const/16 v18, -0x3

    goto :goto_145
.end method

.method public addVpnProfile(Ljava/util/Map;)Z
    .registers 21
    .param p1, "list"    # Ljava/util/Map;

    .prologue
    .line 4114
    invoke-direct/range {p0 .. p0}, isAccessPermitted()Z

    move-result v14

    if-nez v14, :cond_8

    const/4 v14, 0x0

    .line 4188
    :goto_7
    return v14

    .line 4115
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4116
    new-instance v14, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v13

    .line 4117
    .local v13, "quality":I
    const/high16 v14, 0x10000

    if-ge v13, v14, :cond_22

    .line 4118
    const/4 v14, 0x0

    goto :goto_7

    .line 4122
    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, mKeyStore:Landroid/security/KeyStore;

    const-string v15, "VPN_"

    invoke-virtual {v14, v15}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4123
    .local v7, "keys":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 4124
    .local v10, "millis":J
    if-eqz v7, :cond_44

    .line 4125
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 4126
    .local v3, "existingKeys":Ljava/util/List;
    :goto_36
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_44

    .line 4127
    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    goto :goto_36

    .line 4130
    .end local v3    # "existingKeys":Ljava/util/List;
    :cond_44
    new-instance v12, Lcom/android/internal/net/VpnProfile;

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 4132
    .local v12, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_55
    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1e1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 4133
    .local v9, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "name"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_77

    .line 4134
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    goto :goto_55

    .line 4135
    :cond_77
    const-string/jumbo v14, "type"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_93

    .line 4137
    :try_start_84
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v12, Lcom/android/internal/net/VpnProfile;->type:I
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_90} :catch_91

    goto :goto_55

    .line 4138
    :catch_91
    move-exception v14

    goto :goto_55

    .line 4141
    :cond_93
    const-string/jumbo v14, "mppe"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b0

    .line 4142
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string/jumbo v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    iput-boolean v14, v12, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_55

    .line 4143
    :cond_b0
    const-string/jumbo v14, "saveLogin"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_cd

    .line 4144
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string/jumbo v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    iput-boolean v14, v12, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    goto :goto_55

    .line 4145
    :cond_cd
    const-string/jumbo v14, "server"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e4

    .line 4146
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    goto/16 :goto_55

    .line 4147
    :cond_e4
    const-string/jumbo v14, "username"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_fb

    .line 4148
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    goto/16 :goto_55

    .line 4149
    :cond_fb
    const-string/jumbo v14, "password"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_112

    .line 4150
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    goto/16 :goto_55

    .line 4151
    :cond_112
    const-string/jumbo v14, "searchDomains"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_129

    .line 4152
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    goto/16 :goto_55

    .line 4153
    :cond_129
    const-string/jumbo v14, "dnsServers"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_140

    .line 4154
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    goto/16 :goto_55

    .line 4155
    :cond_140
    const-string/jumbo v14, "routes"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_157

    .line 4156
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    goto/16 :goto_55

    .line 4157
    :cond_157
    const-string/jumbo v14, "l2tpSecret"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16e

    .line 4158
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto/16 :goto_55

    .line 4159
    :cond_16e
    const-string/jumbo v14, "ipsecIdentifier"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_185

    .line 4160
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto/16 :goto_55

    .line 4161
    :cond_185
    const-string/jumbo v14, "ipsecSecret"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19c

    .line 4162
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto/16 :goto_55

    .line 4163
    :cond_19c
    const-string/jumbo v14, "ipsecUserCert"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b3

    .line 4164
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    goto/16 :goto_55

    .line 4165
    :cond_1b3
    const-string/jumbo v14, "ipsecCaCert"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1ca

    .line 4166
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    goto/16 :goto_55

    .line 4167
    :cond_1ca
    const-string/jumbo v14, "ipsecServerCert"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_55

    .line 4168
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto/16 :goto_55

    .line 4172
    .end local v9    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1e1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, validate(Lcom/android/internal/net/VpnProfile;)Z

    move-result v14

    if-nez v14, :cond_1ec

    .line 4173
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 4176
    :cond_1ec
    if-eqz v7, :cond_241

    .line 4177
    move-object v2, v7

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1f1
    if-ge v5, v8, :cond_241

    aget-object v6, v2, v5

    .line 4178
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VPN_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v14

    invoke-static {v6, v14}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 4180
    .local v4, "existingProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_23e

    iget-object v14, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v15, v12, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23e

    .line 4181
    move-object/from16 v0, p0

    iget-object v14, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VPN_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 4177
    :cond_23e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f1

    .line 4186
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "existingProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "i$":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "len$":I
    :cond_241
    move-object/from16 v0, p0

    iget-object v14, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VPN_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v16

    const/16 v17, -0x1

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 4188
    const/4 v14, 0x1

    goto/16 :goto_7
.end method

.method public blockAdb(Z)V
    .registers 2
    .param p1, "block"    # Z

    .prologue
    .line 2609
    return-void
.end method

.method public blockScreenshot(Z)V
    .registers 2
    .param p1, "block"    # Z

    .prologue
    .line 3158
    return-void
.end method

.method public blockTethering(Z)V
    .registers 2
    .param p1, "block"    # Z

    .prologue
    .line 3107
    return-void
.end method

.method public blockUsb(Z)V
    .registers 2
    .param p1, "block"    # Z

    .prologue
    .line 2682
    return-void
.end method

.method public changePackageState(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x3

    .line 1181
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1189
    :goto_7
    return-void

    .line 1183
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1184
    if-ne p2, v1, :cond_11

    .line 1185
    invoke-direct {p0, p1, v1}, setPackageState(Ljava/lang/String;I)V

    goto :goto_7

    .line 1187
    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, setPackageState(Ljava/lang/String;I)V

    goto :goto_7
.end method

.method public checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1595
    .local p2, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "pkgSigs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public checkAppUninstallPolicies(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1669
    const/4 v0, 0x1

    return v0
.end method

.method public checkPackageGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1396
    iget-boolean v7, p0, mInitialized:Z

    if-nez v7, :cond_7

    .line 1427
    :cond_6
    :goto_6
    return v5

    .line 1400
    :cond_7
    invoke-virtual {p0, p2}, isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1405
    :try_start_d
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1000

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1408
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_6

    .line 1412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_6

    .line 1413
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v7, v0

    .line 1414
    .local v4, "requestedPerm":Ljava/lang/String;
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 1417
    .local v2, "pInfo":Landroid/content/pm/PermissionInfo;
    iget-object v7, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v7, :cond_34

    iget-object v7, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 1412
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1420
    :cond_37
    invoke-virtual {p0, v4, p2}, checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_3a} :catch_3f

    move-result v7

    if-nez v7, :cond_34

    move v5, v6

    .line 1421
    goto :goto_6

    .line 1424
    .end local v0    # "i":I
    .end local v2    # "pInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "requestedPerm":Ljava/lang/String;
    :catch_3f
    move-exception v1

    .line 1425
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_6
.end method

.method public checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1307
    const/4 v0, 0x1

    return v0
.end method

.method public checkPrimaryClipAccess(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3005
    const/4 v0, 0x1

    return v0
.end method

.method public checkSignature(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 2880
    const/4 v0, 0x0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1049
    const/4 v0, 0x1

    return v0
.end method

.method public checkVpnDns(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vpnSuffixes"    # Ljava/lang/String;

    .prologue
    .line 922
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 561
    return-void
.end method

.method public clearApn()V
    .registers 1

    .prologue
    .line 3262
    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2591
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackagePermissions()V
    .registers 1

    .prologue
    .line 3024
    return-void
.end method

.method public completePackageScan(II)V
    .registers 3
    .param p1, "scanId"    # I
    .param p2, "result"    # I

    .prologue
    .line 3087
    return-void
.end method

.method public connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "abstractSocketName"    # Ljava/lang/String;
    .param p2, "vpnSubnets"    # Ljava/lang/String;

    .prologue
    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method public deleteApn(I)Z
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 3593
    invoke-virtual {p0, p1}, deleteApnResult(I)I

    move-result v0

    .line 3594
    .local v0, "ret_id":I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public deleteApnResult(I)I
    .registers 10
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x4

    .line 3608
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v2, -0x1

    .line 3622
    :goto_8
    return v2

    .line 3610
    :cond_9
    iget-object v3, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 3612
    :try_start_c
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v2, -0x2

    monitor-exit v3

    goto :goto_8

    .line 3623
    :catchall_15
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v2

    .line 3614
    :cond_18
    if-gez p1, :cond_1c

    :try_start_1a
    monitor-exit v3

    goto :goto_8

    .line 3616
    :cond_1c
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, p1

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3617
    .local v1, "url":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 3618
    .local v0, "numRowsDeleted":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3622
    if-lez v0, :cond_33

    const/4 v2, 0x0

    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_15

    goto :goto_8
.end method

.method public deletePackage(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "deleteData"    # Z

    .prologue
    .line 1503
    return-void
.end method

.method public disablePackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1138
    return-void
.end method

.method public disconnectFromVpn(Z)Z
    .registers 3
    .param p1, "doReset"    # Z

    .prologue
    .line 1009
    const/4 v0, 0x0

    return v0
.end method

.method public enablePackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1163
    return-void
.end method

.method public encryptPackage(Ljava/lang/String;ZZ)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "encrypt"    # Z
    .param p3, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2183
    return-void
.end method

.method public getActivationState()Z
    .registers 4

    .prologue
    .line 3465
    const-string v0, "1"

    const-string/jumbo v1, "persist.security.3lm.activated"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getApn(I)Ljava/util/Map;
    .registers 13
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 3834
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v9

    .line 3859
    :goto_8
    return-object v0

    .line 3836
    :cond_9
    iget-object v10, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 3838
    :try_start_c
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-exit v10

    move-object v0, v9

    goto :goto_8

    .line 3840
    :cond_15
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3842
    .local v6, "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3844
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3849
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_62

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_62

    .line 3850
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3851
    invoke-direct {p0, v6, v7}, fillApnMap(Ljava/util/Map;Landroid/database/Cursor;)V

    .line 3852
    const/4 v8, 0x1

    .line 3857
    .local v8, "ret":Z
    :goto_54
    if-eqz v7, :cond_59

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3859
    :cond_59
    const/4 v0, 0x1

    if-ne v8, v0, :cond_64

    move-object v0, v6

    :goto_5d
    monitor-exit v10

    goto :goto_8

    .line 3860
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ret":Z
    :catchall_5f
    move-exception v0

    monitor-exit v10
    :try_end_61
    .catchall {:try_start_c .. :try_end_61} :catchall_5f

    throw v0

    .line 3855
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_62
    const/4 v8, 0x0

    .restart local v8    # "ret":Z
    goto :goto_54

    :cond_64
    move-object v0, v9

    .line 3859
    goto :goto_5d
.end method

.method public getApnByMccMnc(II)Ljava/util/List;
    .registers 14
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .prologue
    const/16 v1, 0x3e7

    .line 3884
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3885
    .local v6, "apnList":Ljava/util/List;
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3916
    :goto_d
    return-object v6

    .line 3887
    :cond_e
    iget-object v10, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 3888
    :try_start_11
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    monitor-exit v10

    goto :goto_d

    .line 3917
    :catchall_19
    move-exception v0

    monitor-exit v10
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0

    .line 3891
    :cond_1c
    const/16 v0, 0x64

    if-lt p1, v0, :cond_28

    if-gt p1, v1, :cond_28

    const/16 v0, 0xa

    if-lt p2, v0, :cond_28

    if-le p2, v1, :cond_4c

    .line 3893
    :cond_28
    :try_start_28
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The mcc/mnc is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    monitor-exit v10

    goto :goto_d

    .line 3897
    :cond_4c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3898
    .local v9, "numeric":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3900
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3904
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_a1

    .line 3905
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3906
    :goto_89
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 3907
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3908
    .local v7, "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v7, v8}, fillApnMap(Ljava/util/Map;Landroid/database/Cursor;)V

    .line 3909
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3910
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_89

    .line 3912
    .end local v7    # "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3916
    :cond_a1
    monitor-exit v10
    :try_end_a2
    .catchall {:try_start_28 .. :try_end_a2} :catchall_19

    goto/16 :goto_d
.end method

.method public getBluetoothEnabled()Z
    .registers 2

    .prologue
    .line 1452
    const/4 v0, 0x1

    return v0
.end method

.method public getDeviceAdminLock(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4387
    iget-object v1, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 4394
    :cond_9
    :goto_9
    return v0

    .line 4390
    :cond_a
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 4394
    iget-object v0, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public getExternalSDEncryptionState()I
    .registers 4

    .prologue
    .line 734
    const-string v0, "DeviceManager3LM"

    const-string v1, "3LM getExternalSDEncryptionState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sd_encryption"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSimulatorPermitted()Z
    .registers 2

    .prologue
    .line 514
    iget-boolean v0, p0, isSimulatorPermitted:Z

    return v0
.end method

.method public getMultiUserEnabled()Z
    .registers 2

    .prologue
    .line 3328
    iget-boolean v0, p0, mMultiUserEnabled:Z

    return v0
.end method

.method public getNfcState()I
    .registers 2

    .prologue
    .line 2485
    const/4 v0, 0x1

    return v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3356
    iget-boolean v1, p0, mUseCustomNotification:Z

    if-nez v1, :cond_13

    .line 3359
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3360
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1040a7b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mNotificationText:Ljava/lang/String;

    .line 3363
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_13
    iget-object v1, p0, mNotificationText:Ljava/lang/String;

    return-object v1
.end method

.method public getOtaDelay()I
    .registers 2

    .prologue
    .line 2756
    const/4 v0, 0x1

    return v0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerInfoEnabled()I
    .registers 2

    .prologue
    .line 410
    const/4 v0, -0x1

    return v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2447
    const/4 v0, 0x0

    .line 2450
    .local v0, "skip":I
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageGidsWithException(Ljava/lang/String;)[I
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2429
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 2430
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PackageManager is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2433
    :cond_c
    invoke-virtual {p0, p1}, getPackageGids(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageScanner()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3070
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredApn()I
    .registers 10

    .prologue
    .line 3692
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v7, -0x1

    .line 3714
    :goto_7
    return v7

    .line 3694
    :cond_8
    iget-object v8, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 3697
    :try_start_b
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v7, -0x2

    monitor-exit v8

    goto :goto_7

    .line 3715
    :catchall_14
    move-exception v0

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v0

    .line 3699
    :cond_17
    const/4 v7, -0x4

    .line 3701
    .local v7, "ret_code":I
    :try_start_18
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3703
    .local v1, "preferedApn":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3706
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_49

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_49

    .line 3707
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3708
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3713
    :cond_49
    if-eqz v6, :cond_4e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3714
    :cond_4e
    monitor-exit v8
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_14

    goto :goto_7
.end method

.method public getSecureOSVendorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 386
    const/4 v0, -0x1

    return v0
.end method

.method public getWifiState()I
    .registers 2

    .prologue
    .line 2556
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    return-void
.end method

.method public installPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageURIAsString"    # Ljava/lang/String;

    .prologue
    .line 1462
    return-void
.end method

.method public isAdbBlocked()Z
    .registers 2

    .prologue
    .line 2630
    const/4 v0, 0x0

    return v0
.end method

.method public isAdminLocked()Z
    .registers 2

    .prologue
    .line 2665
    const/4 v0, 0x0

    return v0
.end method

.method public isApnLocked()Z
    .registers 2

    .prologue
    .line 3201
    const/4 v0, 0x0

    return v0
.end method

.method public isApnSelectable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 3524
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 3527
    const/4 v0, 0x1

    .line 3535
    :goto_9
    return v0

    .line 3531
    :cond_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_9

    .line 3535
    :cond_14
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public isDataEncrypted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2117
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEncryptionRequired()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2127
    const/4 v0, 0x0

    return v0
.end method

.method public isPackage3LM(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1707
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1264
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncrypted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2151
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncryptionRequired(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2166
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageWhitelisted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3395
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 3396
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mPackageWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public isReadExternalStorageBlocked()Z
    .registers 2

    .prologue
    .line 3408
    iget-boolean v0, p0, mDidSetProtectUsb:Z

    return v0
.end method

.method public isScreenshotBlocked()Z
    .registers 2

    .prologue
    .line 3172
    const/4 v0, 0x0

    return v0
.end method

.method public isSdEncrypted()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2016
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isSdEncrypted called"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v1, p0, mOEMEncryptionManager:Landroid/os/OEMEncryption;

    invoke-virtual {v1}, Landroid/os/OEMEncryption;->checkSdEncrypted()Z

    move-result v0

    .line 2018
    .local v0, "sdEncState":Z
    const-string v1, "DeviceManager3LM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from isSdEncrypted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    return v0
.end method

.method public isSdEncryptionRequired()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2029
    const-string v1, "DeviceManager3LM"

    const-string/jumbo v2, "isSdEncryptionRequired called"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    iget-object v1, p0, mOEMEncryptionManager:Landroid/os/OEMEncryption;

    invoke-virtual {v1}, Landroid/os/OEMEncryption;->getSDPolicy()Z

    move-result v0

    .line 2031
    .local v0, "currentSDPolicy":Z
    const-string v1, "DeviceManager3LM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from isSdEncryptionRequired"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    return v0
.end method

.method public isSsidAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2805
    const/4 v0, 0x1

    return v0
.end method

.method public isSsidLocked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2831
    const/4 v3, 0x0

    invoke-direct {p0, v3}, isBootLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2844
    :cond_b
    :goto_b
    return v1

    .line 2833
    :cond_c
    iget-object v3, p0, mWifiFilter:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, mProvisionedSsids:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1e

    move v1, v2

    goto :goto_b

    .line 2835
    :cond_1e
    iget-object v3, p0, mWifiFilter:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 2837
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    .line 2840
    move-object v0, p1

    .line 2841
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_4b

    .line 2842
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2844
    :cond_4b
    iget-object v1, p0, mProvisionedSsids:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_b
.end method

.method public isTetheringBlocked()Z
    .registers 2

    .prologue
    .line 3144
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbBlocked()Z
    .registers 2

    .prologue
    .line 2713
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1962
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreContains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1933
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreDeleteKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1857
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1838
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyStoreGetLastError()I
    .registers 2

    .prologue
    .line 1919
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreLock()Z
    .registers 2

    .prologue
    .line 1890
    const/4 v0, 0x0

    return v0
.end method

.method public keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1816
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreReset()Z
    .registers 2

    .prologue
    .line 1947
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreSetPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1876
    return-void
.end method

.method public keyStoreTest()I
    .registers 2

    .prologue
    .line 1800
    const/4 v0, -0x1

    return v0
.end method

.method public keyStoreUnlock(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1904
    const/4 v0, 0x0

    return v0
.end method

.method public lockAdmin(Z)V
    .registers 2
    .param p1, "lock"    # Z

    .prologue
    .line 2646
    return-void
.end method

.method public lockApn(Z)V
    .registers 2
    .param p1, "lock"    # Z

    .prologue
    .line 3187
    return-void
.end method

.method public notification(III)V
    .registers 4
    .param p1, "barId"    # I
    .param p2, "titleId"    # I
    .param p3, "textId"    # I

    .prologue
    .line 2923
    return-void
.end method

.method public putSettingsSecureInt(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1998
    const/4 v0, 0x0

    return v0
.end method

.method public putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1980
    const/4 v0, 0x0

    return v0
.end method

.method public reboot(Ljava/lang/String;)Z
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 4241
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_a

    :cond_8
    const/4 v1, 0x0

    .line 4246
    :goto_9
    return v1

    .line 4242
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4244
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4245
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 4246
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public restoreDefaultApns()V
    .registers 1

    .prologue
    .line 3288
    return-void
.end method

.method public restoreOriginalDns(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vpnSuffixes"    # Ljava/lang/String;

    .prologue
    .line 968
    const/4 v0, 0x0

    return v0
.end method

.method public setActivationState(Z)V
    .registers 9
    .param p1, "activated"    # Z

    .prologue
    .line 3420
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v5

    if-nez v5, :cond_7

    .line 3454
    :cond_6
    :goto_6
    return-void

    .line 3422
    :cond_7
    const-string/jumbo v6, "persist.security.3lm.activated"

    if-eqz p1, :cond_65

    const-string v5, "1"

    :goto_e
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3425
    const-string/jumbo v5, "deviceidle"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 3427
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz p1, :cond_68

    .line 3430
    if-eqz v0, :cond_30

    :try_start_23
    const-string v5, "com.threelm.dm.app.docomo"

    invoke-interface {v0, v5}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3431
    const-string v5, "com.threelm.dm.app.docomo"

    invoke-interface {v0, v5}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_30} :catch_7a

    .line 3436
    :cond_30
    :goto_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3437
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 3438
    .local v4, "userManager":Landroid/os/UserManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 3439
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3440
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 3441
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->removeUser(I)Z

    goto :goto_6

    .line 3422
    .end local v0    # "dic":Landroid/os/IDeviceIdleController;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    :cond_65
    const-string v5, "0"

    goto :goto_e

    .line 3448
    .restart local v0    # "dic":Landroid/os/IDeviceIdleController;
    :cond_68
    if-eqz v0, :cond_6

    :try_start_6a
    const-string v5, "com.threelm.dm.app.docomo"

    invoke-interface {v0, v5}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3449
    const-string v5, "com.threelm.dm.app.docomo"

    invoke-interface {v0, v5}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_77} :catch_78

    goto :goto_6

    .line 3451
    :catch_78
    move-exception v5

    goto :goto_6

    .line 3433
    :catch_7a
    move-exception v5

    goto :goto_30
.end method

.method public setActiveAdmin(Ljava/lang/String;Z)Z
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4042
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v7

    if-nez v7, :cond_a

    move v7, v8

    .line 4091
    :goto_9
    return v7

    .line 4043
    :cond_a
    if-nez p1, :cond_e

    move v7, v8

    goto :goto_9

    .line 4044
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4046
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "device_policy"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 4049
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v11, 0x8080

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4052
    .local v0, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_36

    .line 4053
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 4056
    :cond_36
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_3b
    if-ge v5, v1, :cond_81

    .line 4057
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 4059
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_43
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v6}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 4060
    .local v3, "dpi":Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 4062
    if-eqz p2, :cond_68

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 4063
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v4, v7, v10}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 4066
    :cond_68
    if-nez p2, :cond_7b

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 4067
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_7b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_7b} :catch_b2
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_7b} :catch_7d

    :cond_7b
    move v7, v9

    .line 4069
    goto :goto_9

    .line 4072
    .end local v3    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    :catch_7d
    move-exception v7

    .line 4056
    :cond_7e
    :goto_7e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 4078
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_81
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    .line 4079
    .local v2, "cur":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_af

    .line 4080
    const/4 v5, 0x0

    :goto_88
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_af

    .line 4081
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 4082
    if-nez p2, :cond_a9

    .line 4084
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    :cond_a9
    move v7, v9

    .line 4087
    goto/16 :goto_9

    .line 4080
    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    :cond_af
    move v7, v8

    .line 4091
    goto/16 :goto_9

    .line 4071
    .end local v2    # "cur":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_b2
    move-exception v7

    goto :goto_7e
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .registers 3
    .param p1, "pkgNames"    # Ljava/util/Map;

    .prologue
    .line 1245
    const/4 v0, 0x0

    return v0
.end method

.method public setApnList(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 3548
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3580
    :cond_9
    :goto_9
    return-void

    .line 3550
    :cond_a
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3551
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3552
    const/4 v10, 0x0

    .line 3553
    .local v10, "spMode":Z
    const/4 v8, 0x0

    .line 3554
    .local v8, "id":I
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v12, :cond_7b

    .line 3555
    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3557
    .local v6, "apnName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" AND apn=\"spmode.ne.jp\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3559
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v13

    const-string/jumbo v5, "name"

    aput-object v5, v2, v12

    const/4 v5, 0x2

    const-string v12, "apn"

    aput-object v12, v2, v5

    const/4 v5, 0x3

    const-string/jumbo v12, "type"

    aput-object v12, v2, v5

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3563
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_7b

    .line 3564
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_78

    .line 3565
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3566
    const/4 v10, 0x1

    .line 3567
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3569
    :cond_78
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3573
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "apnName":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_7b
    invoke-direct {p0, v10}, setApnLockMode(Z)Z

    .line 3574
    if-eqz v10, :cond_9

    .line 3575
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3576
    .local v9, "preferedApn":Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3577
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "apn_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3578
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v9, v11, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    .registers 3
    .param p1, "permNameRegexPermMap"    # Ljava/util/Map;

    .prologue
    .line 1560
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    .registers 3
    .param p1, "pkgNameRegexPermMap"    # Ljava/util/Map;

    .prologue
    .line 1543
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    .registers 3
    .param p1, "pubkeyRegexPermMap"    # Ljava/util/Map;

    .prologue
    .line 1577
    const/4 v0, 0x0

    return v0
.end method

.method public setAppNotification(Ljava/lang/String;ZZZ)Z
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "block"    # Z
    .param p3, "priority"    # Z
    .param p4, "sensitive"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4441
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v6

    if-nez v6, :cond_9

    .line 4465
    :goto_8
    return v4

    .line 4443
    :cond_9
    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 4445
    .local v2, "sINM":Landroid/app/INotificationManager;
    const/4 v3, 0x0

    .line 4448
    .local v3, "uid":I
    :try_start_15
    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1b} :catch_35

    move-result-object v0

    .line 4453
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4456
    if-nez p2, :cond_4f

    move v6, v5

    :goto_24
    :try_start_24
    invoke-interface {v2, p1, v3, v6}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 4457
    if-eqz p3, :cond_51

    const/4 v6, 0x2

    :goto_2a
    invoke-interface {v2, p1, v3, v6}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V

    .line 4459
    if-eqz p4, :cond_53

    move v6, v4

    :goto_30
    invoke-interface {v2, p1, v3, v6}, Landroid/app/INotificationManager;->setPackageVisibilityOverride(Ljava/lang/String;II)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_56

    move v4, v5

    .line 4462
    goto :goto_8

    .line 4449
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_35
    move-exception v1

    .line 4450
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "DeviceManager3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_4f
    move v6, v4

    .line 4456
    goto :goto_24

    :cond_51
    move v6, v4

    .line 4457
    goto :goto_2a

    .line 4459
    :cond_53
    const/16 v6, -0x3e8

    goto :goto_30

    .line 4463
    :catch_56
    move-exception v1

    .line 4464
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "DeviceManager3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAppNotification error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    .registers 3
    .param p1, "uninstallPkgNameRegexPermMap"    # Ljava/util/Map;

    .prologue
    .line 1652
    const/4 v0, 0x0

    return v0
.end method

.method public setBluetoothEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 1435
    return-void
.end method

.method public setBootLock(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 637
    return-void
.end method

.method public setDataEncryptionRequired(Z)V
    .registers 2
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2137
    return-void
.end method

.method public setDeviceAdminLock(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lock"    # Z

    .prologue
    .line 4356
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4382
    :cond_6
    :goto_6
    return-void

    .line 4358
    :cond_7
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 4360
    const/4 v3, 0x1

    .line 4362
    .local v3, "modified":Z
    if-eqz p2, :cond_35

    .line 4364
    iget-object v4, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 4372
    :goto_18
    if-eqz v3, :cond_6

    .line 4373
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4374
    .local v1, "adminList":Lorg/json/JSONArray;
    iget-object v4, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4375
    .local v0, "admin":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_25

    .line 4367
    .end local v0    # "admin":Ljava/lang/String;
    .end local v1    # "adminList":Lorg/json/JSONArray;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_35
    iget-object v4, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_18

    .line 4377
    .restart local v1    # "adminList":Lorg/json/JSONArray;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4378
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "locked_admins_list"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6
.end method

.method public setDowntime(Ljava/lang/String;IIIIZ)Z
    .registers 8
    .param p1, "sleepMode"    # Ljava/lang/String;
    .param p2, "startHour"    # I
    .param p3, "startMin"    # I
    .param p4, "endHour"    # I
    .param p5, "endMin"    # I
    .param p6, "sleepNone"    # Z

    .prologue
    .line 4471
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 4473
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setExternalSDEncryptionState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 724
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM setExternalSDEncryptionState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 728
    :goto_1e
    return-void

    .line 727
    :cond_1f
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sd_encryption"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1e
.end method

.method public setExternalStorageEnabled(Z)V
    .registers 13
    .param p1, "enable"    # Z

    .prologue
    .line 3487
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v8

    if-nez v8, :cond_7

    .line 3511
    :cond_6
    :goto_6
    return-void

    .line 3488
    :cond_7
    const-string/jumbo v9, "persist.security.3lm.storage"

    if-eqz p1, :cond_2b

    const-string v8, "1"

    :goto_e
    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    if-nez p1, :cond_6

    .line 3492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3493
    const-string/jumbo v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 3494
    .local v4, "mountService":Landroid/os/storage/IMountService;
    if-nez v4, :cond_2e

    .line 3495
    const-string v8, "DeviceManager3LM"

    const-string v9, "Can\'t get mount service"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3488
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    :cond_2b
    const-string v8, "0"

    goto :goto_e

    .line 3498
    .restart local v4    # "mountService":Landroid/os/storage/IMountService;
    :cond_2e
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "storage"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 3499
    .local v5, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 3500
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_40
    if-ge v2, v3, :cond_6

    aget-object v6, v0, v2

    .line 3503
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_59

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 3505
    :try_start_50
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v4, v8, v9, v10}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_59} :catch_5c

    .line 3500
    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 3506
    :catch_5c
    move-exception v1

    .line 3507
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "DeviceManager3LM"

    const-string v9, "Failed talking with mount service"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method public setLocationMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 502
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 507
    :goto_6
    return-void

    .line 503
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 504
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6
.end method

.method public setLocationProviderEnabled(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 490
    return-void
.end method

.method public setMultiUserEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 3315
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3323
    :cond_6
    :goto_6
    return-void

    .line 3317
    :cond_7
    iput-boolean p1, p0, mMultiUserEnabled:Z

    .line 3318
    if-nez p1, :cond_6

    .line 3320
    invoke-direct {p0}, refreshUsers()V

    goto :goto_6
.end method

.method public setNfcState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 2517
    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 750
    return-void
.end method

.method public setNotificationsWhenLocked(I)Z
    .registers 9
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 4398
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_8

    .line 4437
    :goto_7
    return v3

    .line 4400
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4401
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 4405
    .local v1, "quality":I
    const/4 v2, 0x0

    .local v2, "showSensitiveInfo":I
    const/4 v0, 0x0

    .line 4406
    .local v0, "enabled":I
    const/4 v3, 0x1

    .line 4407
    .local v3, "validMode":Z
    packed-switch p1, :pswitch_data_7c

    .line 4425
    const-string v4, "DeviceManager3LM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid notfication mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    const/4 v3, 0x0

    .line 4428
    :goto_35
    if-eqz v3, :cond_62

    .line 4429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4430
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_screen_allow_private_notifications"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4432
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_screen_show_notifications"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    .line 4409
    :pswitch_53
    const/4 v2, 0x0

    .line 4410
    const/4 v0, 0x0

    .line 4411
    goto :goto_35

    .line 4413
    :pswitch_56
    const/high16 v4, 0x10000

    if-ge v1, v4, :cond_5c

    .line 4414
    const/4 v3, 0x0

    goto :goto_35

    .line 4416
    :cond_5c
    const/4 v2, 0x0

    .line 4417
    const/4 v0, 0x1

    .line 4419
    goto :goto_35

    .line 4421
    :pswitch_5f
    const/4 v2, 0x1

    .line 4422
    const/4 v0, 0x1

    .line 4423
    goto :goto_35

    .line 4435
    :cond_62
    const-string v4, "DeviceManager3LM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid notfication mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4407
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_56
        :pswitch_53
    .end packed-switch
.end method

.method public setOtaDelay(I)V
    .registers 2
    .param p1, "delay"    # I

    .prologue
    .line 2736
    return-void
.end method

.method public setOwnerInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4007
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 4019
    :goto_6
    return-void

    .line 4008
    :cond_7
    const-string/jumbo v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 4009
    .local v0, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    if-eqz v0, :cond_28

    .line 4011
    :try_start_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4012
    const-string/jumbo v2, "lock_screen_owner_info"

    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_6

    .line 4013
    :catch_1f
    move-exception v1

    .line 4014
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "DeviceManager3LM"

    const-string v3, "Could not set Owner Info"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4017
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_28
    const-string v2, "DeviceManager3LM"

    const-string v3, "Could not access lockSettingService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public setOwnerInfoEnable(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 3991
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 4004
    :goto_6
    return-void

    .line 3992
    :cond_7
    const-string/jumbo v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 3993
    .local v0, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    if-eqz v0, :cond_28

    .line 3995
    :try_start_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3996
    const-string/jumbo v2, "lock_screen_owner_info_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_6

    .line 3998
    :catch_1f
    move-exception v1

    .line 3999
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "DeviceManager3LM"

    const-string v3, "Could not enable Owner Info"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4002
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_28
    const-string v2, "DeviceManager3LM"

    const-string v3, "Could not access lockSettingService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageScanner(Ljava/lang/String;ZI)V
    .registers 4
    .param p1, "scannerComponent"    # Ljava/lang/String;
    .param p2, "failOnTimeout"    # Z
    .param p3, "timeoutMillis"    # I

    .prologue
    .line 3047
    return-void
.end method

.method public setPackageWhitelist(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3378
    .local p1, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3382
    :goto_6
    return-void

    .line 3380
    :cond_7
    iget-object v0, p0, mPackageWhitelist:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3381
    iget-object v0, p0, mPackageWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPreferredActivity(Landroid/content/Intent;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "bestMatch"    # I
    .param p4, "set"    # [Landroid/content/ComponentName;
    .param p5, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 3971
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3988
    :goto_6
    return-void

    .line 3975
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3977
    .local v8, "identityToken":J
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_22} :catch_2b

    .line 3986
    :goto_22
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3987
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 3981
    :catch_2b
    move-exception v7

    .line 3982
    .local v7, "re":Landroid/os/RemoteException;
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setLastChosenActivity\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public setPreferredApn(I)Z
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 3637
    invoke-virtual {p0, p1}, setPreferredApnResult(I)I

    move-result v0

    .line 3638
    .local v0, "ret_id":I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public setPreferredApnResult(I)I
    .registers 14
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 3653
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, -0x1

    .line 3679
    :goto_8
    return v0

    .line 3655
    :cond_9
    iget-object v11, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v11

    .line 3657
    :try_start_c
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, -0x2

    monitor-exit v11

    goto :goto_8

    .line 3680
    :catchall_15
    move-exception v0

    monitor-exit v11
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v0

    .line 3659
    :cond_18
    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3661
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3664
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_90

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_90

    .line 3665
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3666
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3667
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3674
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 3675
    .local v8, "preferedApn":Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3676
    .local v9, "values":Landroid/content/ContentValues;
    const-string v0, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3677
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3679
    monitor-exit v11

    move v0, v10

    goto/16 :goto_8

    .line 3670
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "preferedApn":Landroid/net/Uri;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_90
    if-eqz v6, :cond_95

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3671
    :cond_95
    const/4 v0, -0x4

    monitor-exit v11
    :try_end_97
    .catchall {:try_start_18 .. :try_end_97} :catchall_15

    goto/16 :goto_8
.end method

.method public setPrimaryClipOwner(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2976
    return-void
.end method

.method public setProvisionedSsids(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3472
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3476
    :goto_6
    return-void

    .line 3474
    :cond_7
    iget-object v0, p0, mProvisionedSsids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3475
    iget-object v0, p0, mProvisionedSsids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setRestrictBackgroundData(Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4096
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v5

    if-nez v5, :cond_9

    move v3, v4

    .line 4110
    :cond_8
    :goto_8
    return v3

    .line 4098
    :cond_9
    const/4 v3, 0x0

    .line 4099
    .local v3, "ret":Z
    if-eqz p1, :cond_8

    .line 4100
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 4101
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 4102
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 4103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4104
    iget-object v5, p0, mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p2, :cond_34

    const/4 v4, 0x1

    :cond_34
    invoke-virtual {v5, v6, v4}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 4106
    const/4 v3, 0x1

    .line 4107
    goto :goto_8
.end method

.method public setScreenLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "oldPin"    # Ljava/lang/String;

    .prologue
    .line 4250
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x0

    .line 4311
    :goto_7
    return v6

    .line 4251
    :cond_8
    if-nez p1, :cond_c

    const/4 v6, 0x0

    goto :goto_7

    .line 4252
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4255
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4256
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4257
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    .line 4259
    .local v3, "minQuality":I
    iget-object v6, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_34

    .line 4260
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_34

    .line 4262
    const/high16 v3, 0x10000

    .line 4265
    :cond_34
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 4266
    .local v1, "encryptionStatus":I
    const/4 v6, 0x3

    if-eq v1, v6, :cond_3e

    const/4 v6, 0x2

    if-ne v1, v6, :cond_44

    .line 4268
    :cond_3e
    const/high16 v6, 0x20000

    if-ge v3, v6, :cond_44

    .line 4270
    const/high16 v3, 0x20000

    .line 4274
    :cond_44
    const-string/jumbo v6, "off"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 4276
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 4277
    .local v4, "um":Landroid/os/UserManager;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 4278
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_68

    const/4 v6, 0x0

    goto :goto_7

    .line 4280
    :cond_68
    if-lez v3, :cond_6c

    const/4 v6, 0x0

    goto :goto_7

    .line 4281
    :cond_6c
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 4282
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 4311
    .end local v4    # "um":Landroid/os/UserManager;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_75
    const/4 v6, 0x1

    goto :goto_7

    .line 4283
    :cond_77
    const-string/jumbo v6, "none"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 4285
    if-lez v3, :cond_84

    const/4 v6, 0x0

    goto :goto_7

    .line 4286
    :cond_84
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 4287
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    goto :goto_75

    .line 4288
    :cond_8e
    const-string/jumbo v6, "pin"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 4290
    const/high16 v6, 0x20000

    if-le v3, v6, :cond_9e

    const/4 v6, 0x0

    goto/16 :goto_7

    .line 4291
    :cond_9e
    if-nez p2, :cond_a3

    const/4 v6, 0x0

    goto/16 :goto_7

    .line 4292
    :cond_a3
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 4293
    const/high16 v6, 0x20000

    const/4 v7, 0x0

    invoke-virtual {v2, p2, p3, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_75

    .line 4294
    :cond_ae
    const-string/jumbo v6, "password"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 4296
    const/high16 v6, 0x60000

    if-le v3, v6, :cond_be

    const/4 v6, 0x0

    goto/16 :goto_7

    .line 4297
    :cond_be
    if-nez p2, :cond_c3

    const/4 v6, 0x0

    goto/16 :goto_7

    .line 4298
    :cond_c3
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 4299
    const/high16 v6, 0x40000

    const/4 v7, 0x0

    invoke-virtual {v2, p2, p3, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_75

    .line 4300
    :cond_ce
    const-string/jumbo v6, "pattern"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 4302
    const/high16 v6, 0x10000

    if-le v3, v6, :cond_de

    const/4 v6, 0x0

    goto/16 :goto_7

    .line 4303
    :cond_de
    if-nez p2, :cond_e3

    const/4 v6, 0x0

    goto/16 :goto_7

    .line 4304
    :cond_e3
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 4305
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 4306
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_75

    .line 4309
    :cond_f6
    const/4 v6, 0x0

    goto/16 :goto_7
.end method

.method public setSdEncryptionRequired(Z)V
    .registers 7
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2045
    const-string v2, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSdEncryptionRequired called with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_20

    .line 2061
    :goto_1f
    return-void

    .line 2050
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2051
    .local v0, "token":J
    if-eqz p1, :cond_33

    .line 2052
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, setExternalSDEncryptionState(I)V

    .line 2056
    :goto_2a
    iget-object v2, p0, mOEMEncryptionManager:Landroid/os/OEMEncryption;

    invoke-virtual {v2, p1}, Landroid/os/OEMEncryption;->setSDEncryptionPolicy(Z)V

    .line 2057
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 2054
    :cond_33
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, setExternalSDEncryptionState(I)V

    goto :goto_2a
.end method

.method public setSecureClipboard(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2949
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setSsidFilter(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2772
    .local p1, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setWifiState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 2569
    return-void
.end method

.method public setisSimulatorPermitted(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 521
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM setisSimulatorPermitted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iput-boolean p1, p0, isSimulatorPermitted:Z

    .line 523
    const-string v0, "3lmsimulator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSimulatorPermitted is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, isSimulatorPermitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method public setupVpnDns(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vpnSuffixes"    # Ljava/lang/String;

    .prologue
    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public unlock()V
    .registers 1

    .prologue
    .line 651
    return-void
.end method

.method public updateLocale(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4022
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_8

    .line 4038
    :goto_7
    return v3

    .line 4023
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4024
    .local v1, "languages":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 4025
    const-string v4, "DeviceManager3LM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocale:  invalid language "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4028
    :cond_30
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4029
    .local v0, "countries":Ljava/util/List;
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 4030
    const-string v4, "DeviceManager3LM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocale:  invalid country "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4034
    :cond_58
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4036
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4037
    invoke-static {v2}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 4038
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public updateSdNotification(ZLjava/lang/String;)V
    .registers 3
    .param p1, "displayNotification"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 2107
    return-void
.end method
