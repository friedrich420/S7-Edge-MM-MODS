.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;,
        Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    }
.end annotation


# static fields
.field private static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static BLE_ALWAYS_ON:Z = false

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PROPERTY_SECURITY_POLICY:Ljava/lang/String; = "service.bt.security.policy.mode"

.field private static final DBG:Z

.field private static final DEVICE_TYPE_NAMES:[Ljava/lang/String;

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MAX_SAVE_RETRIES:I = 0x3

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_BT_IT_POLICY:I = 0x5

.field private static final MESSAGE_CHINA_BT_ENABLE_SECURITY_POPUP:I = 0x2bc

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_GOOGLE_BLE_STATE_CHANGE:I = 0x2be

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_REGISTER_STATE_DISBLE_BLE_CALLBACK:I = 0x3fa

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_SAMSUNG_BLE_STATE_CHANGE:I = 0x2bf

.field private static final MESSAGE_SAVE_NAME_AND_ADDRESS:I = 0xc9

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_UNREGISTER_STATE_DISBLE_BLE_CALLBACK:I = 0x3fb

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final STATE_BTMGR_BLE_OFF:I = 0x0

.field private static final STATE_BTMGR_BLE_ON:I = 0x2

.field private static final STATE_BTMGR_BLE_TURNING_OFF:I = 0x3

.field private static final STATE_BTMGR_BLE_TURNING_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final TIMEOUT_SAVE_MS:I = 0x1f4

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8

.field private static isEnablePopup:Z

.field private static limit:I

.field private static mBleAppCount:I

.field private static mPolicy:I

.field private static mSamsungBleAppCount:I

.field private static mShutdown:Z

.field private static mainBuffer:Ljava/lang/String;

.field private static subBuffer:Ljava/lang/StringBuilder;


# instance fields
.field private btEnablePopUp:Landroid/app/AlertDialog;

.field private chinaThirdPartyAppName:Ljava/lang/String;

.field logDir:Ljava/io/File;

.field logDirp:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mBinding:Z

.field mBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDisableBleCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothDisableBleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private mEnableExternal:Z

.field private mEnablingAirplane:Z

.field private mErrorRecoveryRetryCounter:I

.field private mGoogleBleState:I

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private mName:Ljava/lang/String;

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRpaGeneration:Z

.field private mSamsugBleState:I

.field mSamsungBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiUid:I

.field private mUnbinding:Z

.field private mUsingSSUpdate:Z

.field mainBfp:Ljava/lang/String;

.field mainF:Ljava/io/File;

.field subBfp:Ljava/lang/String;

.field subF:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_41

    move v0, v1

    :goto_a
    sput-boolean v0, DBG:Z

    .line 200
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "???"

    aput-object v3, v0, v1

    const-string v3, "BR/EDR"

    aput-object v3, v0, v2

    const-string v2, "LE"

    aput-object v2, v0, v4

    const/4 v2, 0x3

    const-string v3, "DUAL"

    aput-object v3, v0, v2

    sput-object v0, DEVICE_TYPE_NAMES:[Ljava/lang/String;

    .line 210
    sput v4, mPolicy:I

    .line 230
    sput v1, mBleAppCount:I

    .line 231
    sput v1, mSamsungBleAppCount:I

    .line 256
    sput-boolean v1, BLE_ALWAYS_ON:Z

    .line 257
    sput-boolean v1, mShutdown:Z

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, subBuffer:Ljava/lang/StringBuilder;

    .line 272
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, mainBuffer:Ljava/lang/String;

    .line 273
    const/high16 v0, 0x80000

    sput v0, limit:I

    .line 281
    sput-boolean v1, isEnablePopup:Z

    return-void

    :cond_41
    move v0, v2

    .line 136
    goto :goto_a
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 470
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 246
    iput-boolean v5, p0, mQuietEnable:Z

    .line 258
    iput-boolean v5, p0, mEnablingAirplane:Z

    .line 259
    iput-boolean v5, p0, mRpaGeneration:Z

    .line 260
    iput-boolean v5, p0, mUsingSSUpdate:Z

    .line 261
    iput v5, p0, mSamsugBleState:I

    .line 262
    iput v5, p0, mGoogleBleState:I

    .line 266
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, mProfileServices:Ljava/util/Map;

    .line 274
    const-string v3, "/data/misc/bluedroiddump"

    iput-object v3, p0, logDirp:Ljava/lang/String;

    .line 275
    const-string v3, "/data/misc/bluedroiddump/mainBuffer.log"

    iput-object v3, p0, mainBfp:Ljava/lang/String;

    .line 276
    const-string v3, "/data/misc/bluedroiddump/subBuffer.log"

    iput-object v3, p0, subBfp:Ljava/lang/String;

    .line 283
    const-string v3, ""

    iput-object v3, p0, chinaThirdPartyAppName:Ljava/lang/String;

    .line 325
    new-instance v3, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 333
    new-instance v3, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 776
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, mBleApps:Ljava/util/Map;

    .line 777
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, mSamsungBleApps:Ljava/util/Map;

    .line 1825
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-direct {v3, p0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V

    iput-object v3, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 471
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 473
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 474
    iput-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 475
    iput-object v6, p0, mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 476
    iput-boolean v5, p0, mBinding:Z

    .line 477
    iput-boolean v5, p0, mUnbinding:Z

    .line 478
    iput-boolean v5, p0, mEnable:Z

    .line 479
    const/16 v3, 0xa

    iput v3, p0, mState:I

    .line 480
    iput-boolean v5, p0, mEnableExternal:Z

    .line 481
    iput-object v6, p0, mAddress:Ljava/lang/String;

    .line 482
    iput-object v6, p0, mName:Ljava/lang/String;

    .line 483
    iput v5, p0, mErrorRecoveryRetryCounter:I

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 486
    invoke-direct {p0}, registerForBleScanModeChange()V

    .line 487
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    .line 488
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 489
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, mDisableBleCallback:Landroid/os/RemoteCallbackList;

    .line 490
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 493
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 494
    invoke-direct {p0, v1}, registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 496
    :cond_a6
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 498
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 502
    invoke-direct {p0}, loadStoredNameAndAddress()V

    .line 503
    invoke-direct {p0}, isBluetoothPersistedStateOn()Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 504
    const/4 v3, 0x1

    iput-boolean v3, p0, mEnableExternal:Z

    .line 507
    :cond_c8
    const/4 v2, -0x1

    .line 509
    .local v2, "sysUiUid":I
    :try_start_c9
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_d5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c9 .. :try_end_d5} :catch_e5

    move-result v2

    .line 514
    :goto_d6
    iput v2, p0, mSystemUiUid:I

    .line 516
    invoke-direct {p0}, setBdroidVersion()V

    .line 517
    invoke-direct {p0}, setBleAutoEnable()V

    .line 519
    invoke-virtual {p0}, readFromFile()V

    .line 523
    invoke-direct {p0}, registerKnoxModeChangeObserver()V

    .line 526
    return-void

    .line 511
    :catch_e5
    move-exception v0

    .line 512
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to resolve SystemUI\'s UID."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d6
.end method

.method static synthetic access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 134
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/BluetoothManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, persistBluetoothSetting(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 134
    iput-object p1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/BluetoothManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget v0, p0, mSamsugBleState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, mSamsugBleState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/BluetoothManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget v0, p0, mGoogleBleState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, mGoogleBleState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, sendDisableMsg()V

    return-void
.end method

.method static synthetic access$1600()Z
    .registers 1

    .prologue
    .line 134
    sget-boolean v0, BLE_ALWAYS_ON:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, sendEnableMsg(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BluetoothManagerService;Z)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, checkItPolicy(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, btEnablePopUp:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 134
    sget v0, mBleAppCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, disableBleScanMode()V

    return-void
.end method

.method static synthetic access$202(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, mBleAppCount:I

    return p0
.end method

.method static synthetic access$206()I
    .registers 1

    .prologue
    .line 134
    sget v0, mBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, mBleAppCount:I

    return v0
.end method

.method static synthetic access$208()I
    .registers 2

    .prologue
    .line 134
    sget v0, mBleAppCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, mBleAppCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, clearBleApps()V

    return-void
.end method

.method static synthetic access$2600(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 134
    invoke-static {p0}, debugGetMessageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-boolean v0, p0, mBinding:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, mBinding:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, waitForOnOff(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 134
    sget v0, mSamsungBleAppCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, handleEnable(Z)V

    return-void
.end method

.method static synthetic access$302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, mSamsungBleAppCount:I

    return p0
.end method

.method static synthetic access$306()I
    .registers 1

    .prologue
    .line 134
    sget v0, mSamsungBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, mSamsungBleAppCount:I

    return v0
.end method

.method static synthetic access$308()I
    .registers 2

    .prologue
    .line 134
    sget v0, mSamsungBleAppCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, mSamsungBleAppCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, handleDisable()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mDisableBleCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mProfileServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    .line 134
    iput-object p1, p0, mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, onBluetoothGattServiceUp()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, mRpaGeneration:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/BluetoothManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget v0, p0, mState:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, mState:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-boolean v0, p0, mEnable:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, mEnable:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, recoverBluetoothServiceFromError()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/BluetoothManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget v0, p0, mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic access$5102(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, mUnbinding:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400()I
    .registers 1

    .prologue
    .line 134
    sget v0, mPolicy:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/BluetoothManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, enablePopupForBluetooth()V

    return-void
.end method

.method static synthetic access$5602(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, isEnablePopup:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-boolean v0, p0, mEnableExternal:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, mEnableExternal:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, mEnablingAirplane:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, isBluetoothPersistedStateOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-boolean v0, p0, mQuietEnable:Z

    return v0
.end method

.method private bluetoothStateChangeHandler(II)V
    .registers 15
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0xf

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2503
    const/4 v4, 0x1

    .line 2504
    .local v4, "isStandardBroadcast":Z
    if-eq p1, p2, :cond_c1

    .line 2506
    if-eq p2, v10, :cond_f

    const/16 v7, 0xa

    if-ne p2, v7, :cond_193

    .line 2508
    :cond_f
    const/16 v7, 0xd

    if-ne p1, v7, :cond_c2

    if-ne p2, v10, :cond_c2

    move v3, v5

    .line 2511
    .local v3, "intermediate_off":Z
    :goto_16
    const/16 v7, 0xa

    if-ne p2, v7, :cond_d9

    .line 2513
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_25

    const-string v7, "BluetoothManagerService"

    const-string v8, "Bluetooth is complete turn off"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_25
    iput-boolean v6, p0, mEnablingAirplane:Z

    .line 2515
    iput-boolean v6, p0, mRpaGeneration:Z

    .line 2516
    invoke-direct {p0}, canUnbindBluetoothService()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 2517
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_3a

    const-string v7, "BluetoothManagerService"

    const-string v8, "Good to unbind!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :cond_3a
    invoke-direct {p0}, sendBluetoothServiceDownCallback()V

    .line 2519
    invoke-virtual {p0}, unbindAndFinish()V

    .line 2520
    iget v7, p0, mGoogleBleState:I

    if-eqz v7, :cond_49

    .line 2521
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    .line 2522
    iput v6, p0, mGoogleBleState:I

    .line 2524
    :cond_49
    iget v7, p0, mSamsugBleState:I

    if-eqz v7, :cond_52

    .line 2525
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    .line 2526
    iput v6, p0, mSamsugBleState:I

    .line 2529
    :cond_52
    const/4 v4, 0x0

    .line 2531
    :cond_53
    sget-boolean v7, mShutdown:Z

    if-ne v7, v5, :cond_c8

    .line 2532
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_75

    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bluetooth is LE only mode After shutdown mBleAppCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, mBleAppCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    :cond_75
    sput-boolean v6, mShutdown:Z

    .line 2534
    sget v6, mBleAppCount:I

    if-nez v6, :cond_9c

    sget-boolean v6, BLE_ALWAYS_ON:Z

    if-eqz v6, :cond_9c

    invoke-direct {p0}, isAirplaneModeOn()Z

    move-result v6

    if-nez v6, :cond_9c

    .line 2535
    iget-object v7, p0, mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v7

    .line 2536
    :try_start_88
    sget v6, mBleAppCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, mBleAppCount:I

    .line 2537
    sget v6, mSamsungBleAppCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, mSamsungBleAppCount:I

    .line 2538
    const/4 v6, 0x1

    iput v6, p0, mSamsugBleState:I

    .line 2540
    const/4 v6, 0x0

    invoke-direct {p0, v6}, sendEnableMsg(Z)V

    .line 2541
    monitor-exit v7
    :try_end_9c
    .catchall {:try_start_88 .. :try_end_9c} :catchall_c5

    .line 2658
    .end local v3    # "intermediate_off":Z
    :cond_9c
    :goto_9c
    if-eqz v4, :cond_c1

    .line 2659
    if-ne p1, v10, :cond_a2

    .line 2661
    const/16 p1, 0xa

    .line 2663
    :cond_a2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2664
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2665
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2666
    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2667
    iget-object v6, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2670
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_c1
    return-void

    :cond_c2
    move v3, v6

    .line 2508
    goto/16 :goto_16

    .line 2541
    .restart local v3    # "intermediate_off":Z
    :catchall_c5
    move-exception v6

    :try_start_c6
    monitor-exit v7
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v6

    .line 2543
    :cond_c8
    iget-boolean v6, p0, mEnable:Z

    if-eqz v6, :cond_9c

    .line 2544
    iget-object v7, p0, mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v7

    .line 2545
    :try_start_cf
    iget-boolean v6, p0, mQuietEnable:Z

    invoke-direct {p0, v6}, sendEnableMsg(Z)V

    .line 2546
    monitor-exit v7

    goto :goto_9c

    :catchall_d6
    move-exception v6

    monitor-exit v7
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_d6

    throw v6

    .line 2548
    :cond_d9
    if-nez v3, :cond_13a

    .line 2550
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_e6

    const-string v6, "BluetoothManagerService"

    const-string v7, "Bluetooth is in LE only mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    :cond_e6
    iget-object v6, p0, mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v6, :cond_10c

    .line 2552
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_f5

    const-string v6, "BluetoothManagerService"

    const-string v7, "Calling BluetoothGattServiceUp"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    :cond_f5
    invoke-direct {p0}, onBluetoothGattServiceUp()V

    .line 2562
    :cond_f8
    :goto_f8
    iget v6, p0, mGoogleBleState:I

    if-ne v6, v5, :cond_101

    .line 2563
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    .line 2564
    iput v9, p0, mGoogleBleState:I

    .line 2566
    :cond_101
    iget v6, p0, mSamsugBleState:I

    if-ne v6, v5, :cond_10a

    .line 2567
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    .line 2568
    iput v9, p0, mSamsugBleState:I

    .line 2571
    :cond_10a
    const/4 v4, 0x0

    goto :goto_9c

    .line 2555
    :cond_10c
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_117

    const-string v6, "BluetoothManagerService"

    const-string v7, "Binding Bluetooth GATT service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_117
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth_le"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 2558
    new-instance v1, Landroid/content/Intent;

    const-class v6, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2559
    .local v1, "i":Landroid/content/Intent;
    iget-object v6, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v7, 0x41

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v6, v7, v8}, doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_f8

    .line 2573
    .end local v1    # "i":Landroid/content/Intent;
    :cond_13a
    if-eqz v3, :cond_9c

    .line 2574
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_147

    const-string v7, "BluetoothManagerService"

    const-string v8, "Intermediate off, back to LE only mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_147
    iget v7, p0, mGoogleBleState:I

    if-ne v7, v9, :cond_15f

    .line 2577
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    .line 2586
    :cond_14e
    :goto_14e
    iget v7, p0, mSamsugBleState:I

    if-ne v7, v9, :cond_179

    .line 2587
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    .line 2596
    :cond_155
    :goto_155
    invoke-direct {p0, v6}, sendBluetoothStateCallback(Z)V

    .line 2598
    const/16 p2, 0xa

    .line 2599
    invoke-direct {p0}, sendBrEdrDownCallback()V

    goto/16 :goto_9c

    .line 2578
    :cond_15f
    iget v7, p0, mGoogleBleState:I

    if-ne v7, v11, :cond_14e

    .line 2579
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    .line 2580
    sget v7, mBleAppCount:I

    if-lez v7, :cond_14e

    .line 2581
    const/16 v7, 0x10

    invoke-direct {p0, v10, v7}, sendBleStateChanged(II)V

    .line 2582
    const/16 v7, 0x10

    const/16 v8, 0xa

    invoke-direct {p0, v7, v8}, sendBleStateChanged(II)V

    .line 2583
    iput v6, p0, mGoogleBleState:I

    goto :goto_14e

    .line 2588
    :cond_179
    iget v7, p0, mSamsugBleState:I

    if-ne v7, v11, :cond_155

    .line 2589
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    .line 2590
    sget v7, mBleAppCount:I

    if-lez v7, :cond_155

    .line 2591
    const/16 v7, 0x10

    invoke-direct {p0, v10, v7}, sendSamsungBleStateChanged(II)V

    .line 2592
    const/16 v7, 0x10

    const/16 v8, 0xa

    invoke-direct {p0, v7, v8}, sendSamsungBleStateChanged(II)V

    .line 2593
    iput v6, p0, mSamsugBleState:I

    goto :goto_155

    .line 2601
    .end local v3    # "intermediate_off":Z
    :cond_193
    const/16 v7, 0xc

    if-ne p2, v7, :cond_1d8

    .line 2602
    const/16 v7, 0xc

    if-ne p2, v7, :cond_1d6

    .line 2603
    .local v5, "isUp":Z
    :goto_19b
    invoke-direct {p0, v5}, sendBluetoothStateCallback(Z)V

    .line 2605
    iget v6, p0, mGoogleBleState:I

    if-ne v6, v9, :cond_1a5

    .line 2606
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    .line 2608
    :cond_1a5
    iget v6, p0, mSamsugBleState:I

    if-ne v6, v9, :cond_1ac

    .line 2609
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    .line 2611
    :cond_1ac
    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_9c

    iget-boolean v6, p0, mRpaGeneration:Z

    if-nez v6, :cond_9c

    .line 2612
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1c0

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_1c0
    :try_start_1c0
    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 2615
    const/4 v6, 0x1

    iput-boolean v6, p0, mRpaGeneration:Z
    :try_end_1c9
    .catch Landroid/os/RemoteException; {:try_start_1c0 .. :try_end_1c9} :catch_1cb

    goto/16 :goto_9c

    .line 2616
    :catch_1cb
    move-exception v0

    .line 2617
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration fails"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9c

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "isUp":Z
    :cond_1d6
    move v5, v6

    .line 2602
    goto :goto_19b

    .line 2621
    :cond_1d8
    const/16 v6, 0xe

    if-eq p2, v6, :cond_1e0

    const/16 v6, 0x10

    if-ne p2, v6, :cond_21f

    .line 2623
    :cond_1e0
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ble Turning On/Off, G state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mGoogleBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", S state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mSamsugBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    iget v6, p0, mGoogleBleState:I

    if-eq v6, v5, :cond_20e

    iget v6, p0, mGoogleBleState:I

    if-ne v6, v11, :cond_211

    .line 2625
    :cond_20e
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    .line 2627
    :cond_211
    iget v6, p0, mSamsugBleState:I

    if-eq v6, v5, :cond_219

    iget v6, p0, mSamsugBleState:I

    if-ne v6, v11, :cond_21c

    .line 2628
    :cond_219
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    .line 2630
    :cond_21c
    const/4 v4, 0x0

    goto/16 :goto_9c

    .line 2632
    :cond_21f
    const/16 v6, 0xb

    if-eq p2, v6, :cond_227

    const/16 v6, 0xd

    if-ne p2, v6, :cond_9c

    .line 2634
    :cond_227
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Turning On/Off, G state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mGoogleBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", S state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mSamsugBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mBLE count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, mBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", s BLE count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, mSamsungBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    iget v6, p0, mGoogleBleState:I

    if-ne v6, v9, :cond_275

    .line 2637
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    .line 2646
    :cond_26c
    :goto_26c
    iget v6, p0, mSamsugBleState:I

    if-ne v6, v9, :cond_29a

    .line 2647
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    goto/16 :goto_9c

    .line 2638
    :cond_275
    iget v6, p0, mGoogleBleState:I

    if-ne v6, v5, :cond_292

    sget v6, mBleAppCount:I

    sget v7, mSamsungBleAppCount:I

    sub-int/2addr v6, v7

    if-nez v6, :cond_292

    .line 2639
    const/16 v6, 0xa

    const/16 v7, 0xe

    invoke-direct {p0, v6, v7}, sendBleStateChanged(II)V

    .line 2640
    const/16 v6, 0xe

    invoke-direct {p0, v6, v10}, sendBleStateChanged(II)V

    .line 2641
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    .line 2642
    iput v9, p0, mGoogleBleState:I

    goto :goto_26c

    .line 2643
    :cond_292
    iget v6, p0, mGoogleBleState:I

    if-ne v6, v11, :cond_26c

    .line 2644
    invoke-direct {p0, p1, p2}, sendBleStateChanged(II)V

    goto :goto_26c

    .line 2648
    :cond_29a
    iget v6, p0, mSamsugBleState:I

    if-ne v6, v5, :cond_2b5

    sget v6, mSamsungBleAppCount:I

    if-nez v6, :cond_2b5

    .line 2649
    const/16 v6, 0xa

    const/16 v7, 0xe

    invoke-direct {p0, v6, v7}, sendSamsungBleStateChanged(II)V

    .line 2650
    const/16 v6, 0xe

    invoke-direct {p0, v6, v10}, sendSamsungBleStateChanged(II)V

    .line 2651
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    .line 2652
    iput v9, p0, mSamsugBleState:I

    goto/16 :goto_9c

    .line 2653
    :cond_2b5
    iget v6, p0, mSamsugBleState:I

    if-ne v6, v11, :cond_9c

    .line 2654
    invoke-direct {p0, p1, p2}, sendSamsungBleStateChanged(II)V

    goto/16 :goto_9c
.end method

.method public static bufferLimitReached()Z
    .registers 2

    .prologue
    .line 3077
    const-string v0, "BluetoothManagerService"

    const-string v1, "In bufferLimitReached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    new-instance v0, Ljava/lang/String;

    sget-object v1, subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    sput-object v0, mainBuffer:Ljava/lang/String;

    .line 3079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, subBuffer:Ljava/lang/StringBuilder;

    .line 3080
    const/4 v0, 0x1

    return v0
.end method

.method private canUnbindBluetoothService()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2751
    iget-object v2, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 2760
    :try_start_4
    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_6} :catch_26
    .catchall {:try_start_4 .. :try_end_6} :catchall_16

    if-nez v3, :cond_a

    :try_start_8
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_16

    .line 2767
    :goto_9
    return v1

    .line 2761
    :cond_a
    :try_start_a
    iget-object v3, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_26
    .catchall {:try_start_a .. :try_end_11} :catchall_16

    move-result v3

    if-eqz v3, :cond_19

    :try_start_14
    monitor-exit v2

    goto :goto_9

    .line 2766
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_16

    throw v1

    .line 2762
    :cond_19
    :try_start_19
    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_26
    .catchall {:try_start_19 .. :try_end_1e} :catchall_16

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_24

    const/4 v1, 0x1

    :cond_24
    :try_start_24
    monitor-exit v2

    goto :goto_9

    .line 2763
    :catch_26
    move-exception v0

    .line 2764
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "getState()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2766
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_16

    goto :goto_9
.end method

.method private checkIfCallerIsForegroundUser()Z
    .registers 15

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2443
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2444
    .local v4, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2445
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2446
    .local v2, "callingIdentity":J
    iget-object v12, p0, mContext:Landroid/content/Context;

    const-string/jumbo v13, "user"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 2447
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2448
    .local v7, "ui":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_85

    iget v6, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2449
    .local v6, "parentUser":I
    :goto_21
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2450
    .local v0, "callingAppId":I
    const/4 v9, 0x0

    .line 2452
    .local v9, "valid":Z
    :try_start_26
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 2455
    .local v5, "foregroundUser":I
    const/16 v12, 0x64

    if-lt v4, v12, :cond_8a

    const/16 v12, 0xc8

    if-gt v4, v12, :cond_8a

    .line 2456
    sget-object v12, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v12}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v12

    if-eqz v12, :cond_3e

    .line 2458
    invoke-direct {p0, v4}, isKnoxBluetoothEnabled(I)Z

    move-result v9

    .line 2460
    :cond_3e
    if-nez v9, :cond_46

    invoke-static {v4}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v12

    if-eqz v12, :cond_88

    :cond_46
    move v9, v11

    .line 2470
    :goto_47
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_81

    .line 2471
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " callingUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " parentUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " foregroundUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_26 .. :try_end_81} :catchall_9a

    .line 2477
    :cond_81
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2479
    return v9

    .line 2448
    .end local v0    # "callingAppId":I
    .end local v5    # "foregroundUser":I
    .end local v6    # "parentUser":I
    .end local v9    # "valid":Z
    :cond_85
    const/16 v6, -0x2710

    goto :goto_21

    .restart local v0    # "callingAppId":I
    .restart local v5    # "foregroundUser":I
    .restart local v6    # "parentUser":I
    .restart local v9    # "valid":Z
    :cond_88
    move v9, v10

    .line 2460
    goto :goto_47

    .line 2465
    :cond_8a
    if-eq v4, v5, :cond_96

    if-eq v6, v5, :cond_96

    const/16 v12, 0x403

    if-eq v0, v12, :cond_96

    :try_start_92
    iget v12, p0, mSystemUiUid:I
    :try_end_94
    .catchall {:try_start_92 .. :try_end_94} :catchall_9a

    if-ne v0, v12, :cond_98

    :cond_96
    move v9, v11

    :goto_97
    goto :goto_47

    :cond_98
    move v9, v10

    goto :goto_97

    .line 2477
    .end local v5    # "foregroundUser":I
    :catchall_9a
    move-exception v10

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private checkItPolicy(Z)I
    .registers 13
    .param p1, "notifyOff"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    .line 2827
    const-string/jumbo v5, "device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    .line 2828
    .local v3, "mDPM":Landroid/app/admin/IDevicePolicyManager;
    const/4 v4, 0x0

    .line 2830
    .local v4, "userId":I
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_62
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_18} :catch_6b

    .line 2838
    :goto_18
    if-eqz v3, :cond_5f

    .line 2839
    const/4 v5, 0x0

    :try_start_1b
    invoke-interface {v3, v5, v4}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v0

    .line 2840
    .local v0, "BtMode":I
    if-nez v0, :cond_74

    .line 2842
    const/4 v5, 0x0

    sput v5, mPolicy:I

    .line 2843
    const-string/jumbo v5, "service.bt.security.policy.mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    const-string v5, "BluetoothManagerService"

    const-string v6, "BT IT Policy is changed to disable Bluetooth. Cannot enable"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    if-eqz p1, :cond_51

    .line 2846
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2847
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/16 v6, 0xa

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2848
    const/high16 v5, 0x4000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2849
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2851
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_51
    iget-object v5, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_5f} :catch_97

    .line 2866
    .end local v0    # "BtMode":I
    :cond_5f
    :goto_5f
    sget v5, mPolicy:I

    return v5

    .line 2831
    :catch_62
    move-exception v1

    .line 2832
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "BluetoothManagerService"

    const-string v6, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 2833
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_6b
    move-exception v1

    .line 2834
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "BluetoothManagerService"

    const-string v6, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 2852
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "BtMode":I
    :cond_74
    if-ne v0, v7, :cond_9b

    .line 2854
    const/4 v5, 0x1

    :try_start_77
    sput v5, mPolicy:I

    .line 2855
    const-string/jumbo v5, "service.bt.security.policy.mode"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const-string v5, "BluetoothManagerService"

    const-string v6, "BT IT Policy is changed to support HF only. Can use HF only"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    iget-object v5, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_96} :catch_97

    goto :goto_5f

    .line 2863
    .end local v0    # "BtMode":I
    :catch_97
    move-exception v1

    .line 2864
    .local v1, "e":Ljava/lang/Exception;
    sput v10, mPolicy:I

    goto :goto_5f

    .line 2859
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "BtMode":I
    :cond_9b
    const/4 v5, 0x2

    :try_start_9c
    sput v5, mPolicy:I

    .line 2860
    const-string/jumbo v5, "service.bt.security.policy.mode"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a6} :catch_97

    goto :goto_5f
.end method

.method private checkRpaStop()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1012
    sget-boolean v2, BLE_ALWAYS_ON:Z

    if-eqz v2, :cond_33

    invoke-direct {p0}, isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1013
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_2a

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRpaStop: bleAlwaysOn true, mBleAppCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, mBleAppCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_2a
    sget v2, mBleAppCount:I

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_31

    .line 1017
    :cond_30
    :goto_30
    return v0

    :cond_31
    move v0, v1

    .line 1014
    goto :goto_30

    .line 1016
    :cond_33
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_51

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRpaStop: bleAlwaysOn false, mBleAppCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, mBleAppCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_51
    sget v2, mBleAppCount:I

    if-eqz v2, :cond_30

    move v0, v1

    goto :goto_30
.end method

.method private clearBleApps()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 1023
    monitor-enter p0

    .line 1024
    :try_start_2
    iget v0, p0, mSamsugBleState:I

    if-ne v0, v1, :cond_9

    .line 1025
    const/4 v0, 0x3

    iput v0, p0, mSamsugBleState:I

    .line 1027
    :cond_9
    iget v0, p0, mGoogleBleState:I

    if-ne v0, v1, :cond_10

    .line 1028
    const/4 v0, 0x3

    iput v0, p0, mGoogleBleState:I

    .line 1030
    :cond_10
    iget-object v0, p0, mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1031
    const/4 v0, 0x0

    sput v0, mBleAppCount:I

    .line 1032
    iget-object v0, p0, mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1033
    const/4 v0, 0x0

    sput v0, mSamsungBleAppCount:I

    .line 1034
    monitor-exit p0

    .line 1035
    return-void

    .line 1034
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private static debugGetMessageName(I)Ljava/lang/String;
    .registers 3
    .param p0, "msgType"    # I

    .prologue
    .line 286
    sparse-switch p0, :sswitch_data_56

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 287
    :sswitch_1d
    const-string v0, "MESSAGE_ENABLE"

    goto :goto_1c

    .line 288
    :sswitch_20
    const-string v0, "MESSAGE_DISABLE"

    goto :goto_1c

    .line 289
    :sswitch_23
    const-string v0, "MESSAGE_REGISTER_ADAPTER"

    goto :goto_1c

    .line 290
    :sswitch_26
    const-string v0, "MESSAGE_UNREGISTER_ADAPTER"

    goto :goto_1c

    .line 291
    :sswitch_29
    const-string v0, "MESSAGE_REGISTER_STATE_CHANGE_CALLBACK"

    goto :goto_1c

    .line 292
    :sswitch_2c
    const-string v0, "MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK"

    goto :goto_1c

    .line 293
    :sswitch_2f
    const-string v0, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED"

    goto :goto_1c

    .line 294
    :sswitch_32
    const-string v0, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED"

    goto :goto_1c

    .line 295
    :sswitch_35
    const-string v0, "MESSAGE_RESTART_BLUETOOTH_SERVICE"

    goto :goto_1c

    .line 296
    :sswitch_38
    const-string v0, "MESSAGE_BLUETOOTH_STATE_CHANGE"

    goto :goto_1c

    .line 297
    :sswitch_3b
    const-string v0, "MESSAGE_TIMEOUT_BIND"

    goto :goto_1c

    .line 298
    :sswitch_3e
    const-string v0, "MESSAGE_TIMEOUT_UNBIND"

    goto :goto_1c

    .line 299
    :sswitch_41
    const-string v0, "MESSAGE_GET_NAME_AND_ADDRESS"

    goto :goto_1c

    .line 300
    :sswitch_44
    const-string v0, "MESSAGE_SAVE_NAME_AND_ADDRESS"

    goto :goto_1c

    .line 301
    :sswitch_47
    const-string v0, "MESSAGE_USER_SWITCHED"

    goto :goto_1c

    .line 302
    :sswitch_4a
    const-string v0, "MESSAGE_ADD_PROXY_DELAYED"

    goto :goto_1c

    .line 303
    :sswitch_4d
    const-string v0, "MESSAGE_BIND_PROFILE_SERVICE"

    goto :goto_1c

    .line 304
    :sswitch_50
    const-string v0, "MESSAGE_GOOGLE_BLE_STATE_CHANGE"

    goto :goto_1c

    .line 305
    :sswitch_53
    const-string v0, "MESSAGE_SAMSUNG_BLE_STATE_CHANGE"

    goto :goto_1c

    .line 286
    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_20
        0x14 -> :sswitch_23
        0x15 -> :sswitch_26
        0x1e -> :sswitch_29
        0x1f -> :sswitch_2c
        0x28 -> :sswitch_2f
        0x29 -> :sswitch_32
        0x2a -> :sswitch_35
        0x3c -> :sswitch_38
        0x64 -> :sswitch_3b
        0x65 -> :sswitch_3e
        0xc8 -> :sswitch_41
        0xc9 -> :sswitch_44
        0x12c -> :sswitch_47
        0x190 -> :sswitch_4a
        0x191 -> :sswitch_4d
        0x2be -> :sswitch_50
        0x2bf -> :sswitch_53
    .end sparse-switch
.end method

.method private disableBleScanMode()V
    .registers 4

    .prologue
    .line 840
    :try_start_0
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1c

    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1c

    .line 841
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_19

    const-string v1, "BluetoothManagerService"

    const-string v2, "Reseting the mEnable flag for clean disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, p0, mEnable:Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 847
    :cond_1c
    :goto_1c
    return-void

    .line 844
    :catch_1d
    move-exception v0

    .line 845
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getState()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method private enablePopupForBluetooth()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 2916
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "enablePopupForBluetooth"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iget-object v5, p0, btEnablePopUp:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1a

    iget-object v5, p0, btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2918
    iget-object v5, p0, btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->cancel()V

    .line 2921
    :cond_1a
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 2922
    .local v2, "mStatusBar":Landroid/app/StatusBarManager;
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2923
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_35

    .line 2924
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 2925
    :cond_35
    new-instance v1, Lcom/android/server/BluetoothManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$4;-><init>(Lcom/android/server/BluetoothManagerService;)V

    .line 2939
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 2941
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x4

    .line 2943
    .local v4, "theme":I
    const/4 v4, 0x5

    .line 2945
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x10409ec

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x10409ee

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, chinaThirdPartyAppName:Ljava/lang/String;

    aput-object v10, v8, v9

    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x10409ef

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/BluetoothManagerService$6;

    invoke-direct {v6, p0, v0}, Lcom/android/server/BluetoothManagerService$6;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/app/KeyguardManager;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/BluetoothManagerService$5;

    invoke-direct {v6, p0}, Lcom/android/server/BluetoothManagerService$5;-><init>(Lcom/android/server/BluetoothManagerService;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, btEnablePopUp:Landroid/app/AlertDialog;

    .line 2988
    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 2989
    iget-object v5, p0, btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 2994
    :goto_b8
    iget-object v5, p0, btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2995
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 2996
    const-string v5, ""

    iput-object v5, p0, chinaThirdPartyAppName:Ljava/lang/String;

    .line 2997
    return-void

    .line 2992
    :cond_c7
    iget-object v5, p0, btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_b8
.end method

.method private static getStrVer(I)Ljava/lang/String;
    .registers 2
    .param p0, "version"    # I

    .prologue
    .line 215
    packed-switch p0, :pswitch_data_22

    .line 226
    const-string v0, "0"

    :goto_5
    return-object v0

    .line 216
    :pswitch_6
    const-string v0, "1.0"

    goto :goto_5

    .line 217
    :pswitch_9
    const-string v0, "1.1"

    goto :goto_5

    .line 218
    :pswitch_c
    const-string v0, "1.2"

    goto :goto_5

    .line 219
    :pswitch_f
    const-string v0, "2.0"

    goto :goto_5

    .line 220
    :pswitch_12
    const-string v0, "2.1"

    goto :goto_5

    .line 221
    :pswitch_15
    const-string v0, "3.0"

    goto :goto_5

    .line 222
    :pswitch_18
    const-string v0, "4.0"

    goto :goto_5

    .line 223
    :pswitch_1b
    const-string v0, "4.1"

    goto :goto_5

    .line 224
    :pswitch_1e
    const-string v0, "4.2"

    goto :goto_5

    .line 215
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method private handleDisable()V
    .registers 5

    .prologue
    .line 2404
    const/4 v1, 0x0

    iput-boolean v1, p0, mQuietEnable:Z

    .line 2405
    iget-object v2, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 2408
    :try_start_6
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2c

    iget-object v1, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2409
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_1d

    const-string v1, "BluetoothManagerService"

    const-string v3, "Sending off request."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_37

    .line 2412
    :cond_1d
    :try_start_1d
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2413
    const-string v1, "BluetoothManagerService"

    const-string v3, "IBluetooth.disable() returned false"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2c} :catch_2e
    .catchall {:try_start_1d .. :try_end_2c} :catchall_37

    .line 2419
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v2

    .line 2420
    return-void

    .line 2415
    :catch_2e
    move-exception v0

    .line 2416
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to call disable()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 2419
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_37

    throw v1
.end method

.method private handleEnable(Z)V
    .registers 10
    .param p1, "quietMode"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2338
    iput-boolean p1, p0, mQuietEnable:Z

    .line 2339
    iput-boolean v4, p0, mEnable:Z

    .line 2341
    iget-object v5, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v5

    .line 2342
    :try_start_8
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v4, :cond_4c

    iget-boolean v4, p0, mBinding:Z

    if-nez v4, :cond_4c

    .line 2344
    iget-object v4, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2345
    .local v3, "timeoutMsg":Landroid/os/Message;
    iget-object v4, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2346
    iget-object v4, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    .line 2347
    new-instance v1, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2348
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v6, 0x41

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4, v6, v7}, doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 2350
    iget-object v4, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2390
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :cond_43
    :goto_43
    monitor-exit v5

    .line 2391
    return-void

    .line 2352
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v3    # "timeoutMsg":Landroid/os/Message;
    :cond_45
    const/4 v4, 0x1

    iput-boolean v4, p0, mBinding:Z

    goto :goto_43

    .line 2390
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw v4

    .line 2354
    :cond_4c
    :try_start_4c
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v4, :cond_43

    .line 2355
    iget-object v4, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 2359
    iget-object v4, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_49

    .line 2362
    :try_start_5e
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v6, p0, mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v4, v6}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_65} :catch_85
    .catchall {:try_start_5e .. :try_end_65} :catchall_49

    .line 2367
    :goto_65
    :try_start_65
    invoke-direct {p0}, sendBluetoothServiceUpCallback()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_49

    .line 2372
    :cond_68
    :try_start_68
    iget-boolean v4, p0, mQuietEnable:Z

    if-nez v4, :cond_92

    .line 2373
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v4

    if-nez v4, :cond_8e

    .line 2374
    const-string v4, "BluetoothManagerService"

    const-string v6, "IBluetooth.enable() returned false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_7b} :catch_7c
    .catchall {:try_start_68 .. :try_end_7b} :catchall_49

    goto :goto_43

    .line 2386
    :catch_7c
    move-exception v0

    .line 2387
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7d
    const-string v4, "BluetoothManagerService"

    const-string v6, "Unable to call enable()"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 2363
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_85
    move-exception v2

    .line 2364
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "BluetoothManagerService"

    const-string v6, "Unable to register BluetoothCallback"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_49

    goto :goto_65

    .line 2376
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_8e
    const/4 v4, 0x1

    :try_start_8f
    iput-boolean v4, p0, mRpaGeneration:Z

    goto :goto_43

    .line 2380
    :cond_92
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v4

    if-nez v4, :cond_a2

    .line 2381
    const-string v4, "BluetoothManagerService"

    const-string v6, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 2383
    :cond_a2
    const/4 v4, 0x1

    iput-boolean v4, p0, mRpaGeneration:Z
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_a5} :catch_7c
    .catchall {:try_start_8f .. :try_end_a5} :catchall_49

    goto :goto_43
.end method

.method private final isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 555
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private final isBluetoothPersistedStateOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 563
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private final isBluetoothPersistedStateOnBluetooth()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 571
    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method private isCustomizedByKccAgent()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3044
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.sec.knox.kccagent/shared_prefs/customized.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3045
    .local v0, "kccAgentSharedPref":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_f

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private isKnoxBluetoothEnabled(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 2424
    const/4 v4, 0x0

    .line 2425
    .local v4, "isBtEnabled":Z
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v3

    .line 2427
    .local v3, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :try_start_5
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v1

    .line 2429
    .local v1, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v1, :cond_15

    .line 2430
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v0

    .line 2431
    .local v0, "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_14} :catch_2e

    move-result v4

    .line 2436
    .end local v0    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    .end local v1    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_15
    :goto_15
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BMS::isKnoxBluetoothEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    return v4

    .line 2433
    :catch_2e
    move-exception v2

    .line 2434
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKnoxBluetoothEnabled(): SecurityException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private isNameAndAddressSet()Z
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, mName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mAddress:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private loadStoredNameAndAddress()V
    .registers 4

    .prologue
    .line 599
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "BluetoothManagerService"

    const-string v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_b
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_32

    .line 604
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_31

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_31
    :goto_31
    return-void

    .line 607
    :cond_32
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mName:Ljava/lang/String;

    .line 608
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mAddress:Ljava/lang/String;

    .line 609
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_31

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored bluetooth Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private onBluetoothGattServiceUp()V
    .registers 5

    .prologue
    .line 1068
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_20

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothGatt Service is Up = isBleAppPresent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, isBleAppPresent()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_20
    :try_start_20
    iget-boolean v1, p0, mEnableExternal:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_48

    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_48

    .line 1073
    invoke-virtual {p0}, isRestrictedBtPolicy()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1086
    :cond_38
    :goto_38
    return-void

    .line 1075
    :cond_39
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3e} :catch_3f

    goto :goto_38

    .line 1083
    :catch_3f
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to call onServiceUp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1077
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_48
    :try_start_48
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_38

    invoke-direct {p0}, checkRpaStop()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1078
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_5e

    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "setRPAGeneration false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_5e
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 1080
    const/4 v1, 0x0

    iput-boolean v1, p0, mRpaGeneration:Z
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_67} :catch_3f

    goto :goto_38
.end method

.method private persistBluetoothSetting(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 580
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 583
    return-void
.end method

.method private recoverBluetoothServiceFromError()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2771
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "recoverBluetoothServiceFromError"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    iget-object v3, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 2773
    :try_start_c
    iget-object v2, p0, mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_6b

    if-eqz v2, :cond_17

    .line 2776
    :try_start_10
    iget-object v2, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v2, v4}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_62
    .catchall {:try_start_10 .. :try_end_17} :catchall_6b

    .line 2781
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_6b

    .line 2783
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 2786
    invoke-direct {p0}, handleDisable()V

    .line 2788
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2}, waitForOnOff(ZZ)Z

    .line 2790
    invoke-direct {p0}, sendBluetoothServiceDownCallback()V

    .line 2791
    iget-object v3, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 2792
    :try_start_2a
    iget-object v2, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_38

    .line 2793
    const/4 v2, 0x0

    iput-object v2, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 2795
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2797
    :cond_38
    const/4 v2, 0x0

    iput-object v2, p0, mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2798
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_6e

    .line 2800
    iget-object v2, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2801
    const/16 v2, 0xa

    iput v2, p0, mState:I

    .line 2803
    iput-boolean v5, p0, mEnable:Z

    .line 2805
    iget v2, p0, mErrorRecoveryRetryCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, mErrorRecoveryRetryCounter:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_61

    .line 2807
    iget-object v2, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2809
    .local v1, "restartMsg":Landroid/os/Message;
    iget-object v2, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2813
    .end local v1    # "restartMsg":Landroid/os/Message;
    :cond_61
    return-void

    .line 2777
    :catch_62
    move-exception v0

    .line 2778
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_63
    const-string v2, "BluetoothManagerService"

    const-string v4, "Unable to unregister"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 2781
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_6b
    move-exception v2

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6b

    throw v2

    .line 2798
    :catchall_6e
    move-exception v2

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v2
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .registers 7
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 313
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 314
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1d

    const/4 v1, 0x1

    .line 320
    .local v1, "mIsAirplaneSensitive":Z
    :goto_15
    if-eqz v1, :cond_1c

    .line 321
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    :cond_1c
    return-void

    .line 318
    .end local v1    # "mIsAirplaneSensitive":Z
    :cond_1d
    const-string v4, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_15
.end method

.method private registerForBleScanModeChange()V
    .registers 5

    .prologue
    .line 791
    new-instance v0, Lcom/android/server/BluetoothManagerService$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    .line 832
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 835
    return-void
.end method

.method private registerKnoxModeChangeObserver()V
    .registers 7

    .prologue
    .line 3196
    const-string v3, "BluetoothManagerService"

    const-string v4, "BMS.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    :try_start_7
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3199
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 3201
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_1e

    .line 3202
    const-string v3, "BluetoothManagerService"

    const-string v4, "BMS.onKnoxModeChange() pms == null...  should not happened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_1d
    return-void

    .line 3206
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_1e
    new-instance v3, Lcom/android/server/BluetoothManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$7;-><init>(Lcom/android/server/BluetoothManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_1d

    .line 3221
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catch_27
    move-exception v1

    .line 3222
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private restrictedByKnoxPolicy()Z
    .registers 5

    .prologue
    .line 2901
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2902
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2903
    .local v0, "callingUser":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_35

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_35

    .line 2904
    invoke-direct {p0, v0}, isKnoxBluetoothEnabled(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2905
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enable(): Bluetooth for KNOX blocked by MDM policy: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    const/4 v1, 0x1

    .line 2911
    .end local v0    # "callingUser":I
    :goto_34
    return v1

    :cond_35
    const/4 v1, 0x0

    goto :goto_34
.end method

.method private restrictedByMdmPolicy()Z
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 2873
    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2874
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 2875
    .local v8, "isBluetoothEnabled":Z
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "isBluetoothEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2877
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_32

    .line 2879
    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2880
    const-string/jumbo v0, "isBluetoothEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_17 .. :try_end_2b} :catch_3e
    .catchall {:try_start_17 .. :try_end_2b} :catchall_5b

    move-result v0

    if-eqz v0, :cond_3c

    move v8, v9

    .line 2885
    :goto_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2889
    :cond_32
    :goto_32
    if-nez v8, :cond_60

    .line 2890
    const-string v0, "BluetoothManagerService"

    const-string v2, "MDM: BT is Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    :goto_3b
    return v9

    :cond_3c
    move v8, v10

    .line 2880
    goto :goto_2f

    .line 2882
    :catch_3e
    move-exception v7

    .line 2883
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_3f
    const-string v0, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_5b

    .line 2885
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_5b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_60
    move v9, v10

    .line 2894
    goto :goto_3b
.end method

.method private sendBleStateChanged(II)V
    .registers 7
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 2483
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_26

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLE State Change Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2486
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2487
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2488
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2489
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2490
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .registers 7

    .prologue
    .line 1706
    iget-object v3, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 1707
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onBluetoothServiceDown callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_13
    :try_start_13
    iget-object v3, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1710
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_62

    .line 1711
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    if-ge v1, v2, :cond_69

    .line 1713
    :try_start_3a
    iget-object v3, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_48
    .catchall {:try_start_3a .. :try_end_45} :catchall_62

    .line 1711
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1714
    :catch_48
    move-exception v0

    .line 1715
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_49
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_62

    goto :goto_45

    .line 1719
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_62
    move-exception v3

    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_69
    iget-object v3, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1722
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_6e
    return-void
.end method

.method private sendBluetoothServiceUpCallback()V
    .registers 7

    .prologue
    .line 1685
    iget-object v3, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v3

    if-nez v3, :cond_70

    .line 1686
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onBluetoothServiceUp callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_13
    :try_start_13
    iget-object v3, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1689
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_64

    .line 1690
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    if-ge v1, v2, :cond_6b

    .line 1692
    :try_start_3a
    iget-object v3, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_47} :catch_4a
    .catchall {:try_start_3a .. :try_end_47} :catchall_64

    .line 1690
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1693
    :catch_4a
    move-exception v0

    .line 1694
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4b
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_64

    goto :goto_47

    .line 1698
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_64
    move-exception v3

    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_6b
    iget-object v3, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1701
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_70
    return-void
.end method

.method private sendBluetoothStateCallback(Z)V
    .registers 8
    .param p1, "isUp"    # Z

    .prologue
    .line 1650
    :try_start_0
    iget-object v3, p0, mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1651
    .local v2, "n":I
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_32

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_5d

    .line 1652
    :cond_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v2, :cond_64

    .line 1654
    :try_start_35
    iget-object v3, p0, mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_40} :catch_43
    .catchall {:try_start_35 .. :try_end_40} :catchall_5d

    .line 1652
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1655
    :catch_43
    move-exception v0

    .line 1656
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_44
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_5d

    goto :goto_40

    .line 1660
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_5d
    move-exception v3

    iget-object v4, p0, mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_64
    iget-object v3, p0, mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1662
    return-void
.end method

.method private sendBrEdrDownCallback()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1094
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "BluetoothManagerService"

    const-string v2, "Calling sendBrEdrDownCallback callbacks"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_c
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_18

    .line 1097
    const-string v1, "BluetoothManagerService"

    const-string v2, "Bluetooth handle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_17
    :goto_17
    return-void

    .line 1101
    :cond_18
    iget-boolean v1, p0, mEnablingAirplane:Z

    if-nez v1, :cond_22

    invoke-virtual {p0}, isBleAppPresent()Z

    move-result v1

    if-nez v1, :cond_31

    .line 1103
    :cond_22
    :try_start_22
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_17

    .line 1104
    :catch_28
    move-exception v0

    .line 1105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v2, "Call to onBrEdrDown() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 1107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    invoke-direct {p0}, checkRpaStop()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1108
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_43

    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "setRPAGeneration false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_43
    :try_start_43
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_49} :catch_4c

    .line 1114
    :goto_49
    iput-boolean v3, p0, mRpaGeneration:Z

    goto :goto_17

    .line 1111
    :catch_4c
    move-exception v0

    .line 1112
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "setRPAGeneration fails"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private sendDisableMsg()V
    .registers 4

    .prologue
    .line 2741
    iget-object v0, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2742
    return-void
.end method

.method private sendEnableMsg(Z)V
    .registers 7
    .param p1, "quietMode"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2745
    iput-boolean v1, p0, mEnable:Z

    .line 2746
    iget-object v3, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v4, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_b
    invoke-virtual {v4, v1, v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2748
    return-void

    :cond_13
    move v0, v2

    .line 2746
    goto :goto_b
.end method

.method private sendSamsungBleStateChanged(II)V
    .registers 7
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 2493
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_26

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Samsung BLE State Change Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.ACTION_SAMSUNG_BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2496
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2497
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2498
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2499
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2500
    return-void
.end method

.method private setBdroidVersion()V
    .registers 6

    .prologue
    .line 532
    const-string v1, "8"

    .line 533
    .local v1, "verStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 535
    .local v0, "verInt":I
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_23

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBdroidVersion, Int version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_23
    const-string/jumbo v2, "persist.service.bdroid.version"

    invoke-static {v0}, getStrVer(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private setBleAutoEnable()V
    .registers 5

    .prologue
    .line 543
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BLUETOOTH_ENABLE_AUTO_LE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 544
    .local v0, "flag":Z
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_27

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBleAutoEnable, flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_27
    if-eqz v0, :cond_2c

    .line 547
    const/4 v1, 0x1

    sput-boolean v1, BLE_ALWAYS_ON:Z

    .line 549
    :cond_2c
    return-void
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 619
    if-eqz p1, :cond_2f

    .line 620
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 621
    iput-object p1, p0, mName:Ljava/lang/String;

    .line 622
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2f

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetooth name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_2f
    if-eqz p2, :cond_5e

    .line 627
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    iput-object p2, p0, mAddress:Ljava/lang/String;

    .line 629
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_5e

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_address"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_5e
    if-eqz p1, :cond_6a

    if-eqz p2, :cond_6a

    .line 634
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 636
    :cond_6a
    return-void
.end method

.method private unbindAllBluetoothProfileServices()V
    .registers 9

    .prologue
    .line 1443
    iget-object v5, p0, mProfileServices:Ljava/util/Map;

    monitor-enter v5

    .line 1444
    :try_start_3
    iget-object v4, p0, mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1445
    .local v1, "i":Ljava/lang/Integer;
    iget-object v4, p0, mProfileServices:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2a

    .line 1447
    .local v3, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_start_21
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_2d
    .catchall {:try_start_21 .. :try_end_26} :catchall_2a

    .line 1451
    :goto_26
    :try_start_26
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V

    goto :goto_d

    .line 1454
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_2a
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2a

    throw v4

    .line 1448
    .restart local v1    # "i":Ljava/lang/Integer;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catch_2d
    move-exception v0

    .line 1449
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2e
    const-string v4, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to unbind service with intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 1453
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_49
    iget-object v4, p0, mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 1454
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_2a

    .line 1455
    return-void
.end method

.method private waitForOnOff(ZZ)Z
    .registers 10
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x1

    .line 2678
    const/4 v1, 0x0

    .line 2679
    .local v1, "i":I
    :goto_4
    const/16 v3, 0x28

    if-ge v1, v3, :cond_10

    .line 2680
    iget-object v3, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 2682
    :try_start_b
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_d} :catch_41
    .catchall {:try_start_b .. :try_end_d} :catchall_26

    if-nez v4, :cond_1a

    :try_start_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_26

    .line 2702
    :cond_10
    :goto_10
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOff time out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    const/4 v2, 0x0

    :goto_19
    return v2

    .line 2683
    :cond_1a
    if-eqz p1, :cond_29

    .line 2684
    :try_start_1c
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_41
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    move-result v4

    if-ne v4, v6, :cond_4c

    :try_start_24
    monitor-exit v3

    goto :goto_19

    .line 2694
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v2

    .line 2685
    :cond_29
    if-eqz p2, :cond_37

    .line 2686
    :try_start_2b
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_41
    .catchall {:try_start_2b .. :try_end_30} :catchall_26

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4c

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_26

    goto :goto_19

    .line 2688
    :cond_37
    :try_start_37
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_41
    .catchall {:try_start_37 .. :try_end_3c} :catchall_26

    move-result v4

    if-eq v4, v6, :cond_4c

    :try_start_3f
    monitor-exit v3

    goto :goto_19

    .line 2690
    :catch_41
    move-exception v0

    .line 2691
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "getState()"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2692
    monitor-exit v3

    goto :goto_10

    .line 2694
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_26

    .line 2695
    if-nez p1, :cond_51

    if-eqz p2, :cond_59

    .line 2696
    :cond_51
    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2700
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2698
    :cond_59
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_56
.end method

.method private waitForOnOffBle(ZZ)Z
    .registers 10
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    const/16 v6, 0xf

    const/4 v2, 0x1

    .line 2712
    const/4 v1, 0x0

    .line 2713
    .local v1, "i":I
    :goto_4
    const/16 v3, 0x28

    if-ge v1, v3, :cond_10

    .line 2714
    iget-object v3, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 2716
    :try_start_b
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_d} :catch_41
    .catchall {:try_start_b .. :try_end_d} :catchall_26

    if-nez v4, :cond_1a

    :try_start_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_26

    .line 2736
    :cond_10
    :goto_10
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOffBle time out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    const/4 v2, 0x0

    :goto_19
    return v2

    .line 2717
    :cond_1a
    if-eqz p1, :cond_29

    .line 2718
    :try_start_1c
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_41
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    move-result v4

    if-ne v4, v6, :cond_4c

    :try_start_24
    monitor-exit v3

    goto :goto_19

    .line 2728
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v2

    .line 2719
    :cond_29
    if-eqz p2, :cond_37

    .line 2720
    :try_start_2b
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_41
    .catchall {:try_start_2b .. :try_end_30} :catchall_26

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4c

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_26

    goto :goto_19

    .line 2722
    :cond_37
    :try_start_37
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_41
    .catchall {:try_start_37 .. :try_end_3c} :catchall_26

    move-result v4

    if-eq v4, v6, :cond_4c

    :try_start_3f
    monitor-exit v3

    goto :goto_19

    .line 2724
    :catch_41
    move-exception v0

    .line 2725
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "getState()"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2726
    monitor-exit v3

    goto :goto_10

    .line 2728
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_26

    .line 2729
    if-nez p1, :cond_51

    if-eqz p2, :cond_59

    .line 2730
    :cond_51
    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2734
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2732
    :cond_59
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_56
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .registers 12
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1395
    iget-boolean v5, p0, mEnableExternal:Z

    if-nez v5, :cond_29

    .line 1396
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_28

    .line 1397
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to bind to profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", while Bluetooth was disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_28
    :goto_28
    return v3

    .line 1402
    :cond_29
    if-eqz p2, :cond_28

    .line 1404
    iget-object v5, p0, mProfileServices:Ljava/util/Map;

    monitor-enter v5

    .line 1405
    :try_start_2e
    iget-object v6, p0, mProfileServices:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1406
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_82

    .line 1407
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_59

    .line 1408
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating new ProfileServiceConnections object for profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_59
    if-eq p1, v4, :cond_60

    monitor-exit v5

    goto :goto_28

    .line 1420
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_5d
    move-exception v3

    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_2e .. :try_end_5f} :catchall_5d

    throw v3

    .line 1414
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_60
    :try_start_60
    new-instance v1, Landroid/content/Intent;

    const-class v6, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1415
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-direct {v2, p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    .line 1416
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result v6

    if-nez v6, :cond_78

    monitor-exit v5

    goto :goto_28

    .line 1418
    :cond_78
    iget-object v3, p0, mProfileServices:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_82
    monitor-exit v5
    :try_end_83
    .catchall {:try_start_60 .. :try_end_83} :catchall_5d

    .line 1423
    iget-object v3, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v5, 0x190

    invoke-virtual {v3, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1424
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1425
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1426
    iget-object v3, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v0, v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 1427
    goto :goto_28
.end method

.method public disable(Z)Z
    .registers 14
    .param p1, "persist"    # Z

    .prologue
    const/4 v0, 0x5

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1288
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permissicacheNameAndAddresson"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_24

    invoke-direct {p0}, checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_24

    .line 1293
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "disable(): not allowed for non-active and non system user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v2

    .line 1340
    :goto_23
    return v11

    .line 1297
    :cond_24
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_4f

    .line 1298
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disable(): mBluetooth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mBinding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_4f
    const/4 v10, 0x0

    .line 1304
    .local v10, "isBtEnabled":Z
    iget-object v1, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v1

    .line 1306
    :try_start_53
    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_6b

    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5c} :catch_6d
    .catchall {:try_start_53 .. :try_end_5c} :catchall_77

    move-result v3

    if-eqz v3, :cond_6b

    move v10, v11

    .line 1310
    :goto_60
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_77

    .line 1312
    if-nez v10, :cond_7a

    .line 1313
    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth is already disabled. DO NOT disable again."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_6b
    move v10, v2

    .line 1306
    goto :goto_60

    .line 1307
    :catch_6d
    move-exception v7

    .line 1308
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_6e
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "isEnabled()"

    invoke-static {v3, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    .line 1310
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_77
    move-exception v0

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_77

    throw v0

    .line 1317
    :cond_7a
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1318
    if-eqz p1, :cond_8a

    .line 1320
    :try_start_7f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1321
    .local v8, "callingIdentity":J
    const/4 v3, 0x0

    invoke-direct {p0, v3}, persistBluetoothSetting(I)V

    .line 1322
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1324
    .end local v8    # "callingIdentity":J
    :cond_8a
    const/4 v3, 0x0

    iput-boolean v3, p0, mEnableExternal:Z

    .line 1325
    sget v3, mBleAppCount:I

    sget v4, mSamsungBleAppCount:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_97

    .line 1326
    const/4 v3, 0x3

    iput v3, p0, mGoogleBleState:I

    .line 1328
    :cond_97
    sget v3, mSamsungBleAppCount:I

    if-nez v3, :cond_9e

    .line 1329
    const/4 v3, 0x3

    iput v3, p0, mSamsugBleState:I

    .line 1331
    :cond_9e
    invoke-direct {p0}, sendDisableMsg()V

    .line 1332
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_7f .. :try_end_a2} :catchall_b5

    .line 1335
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Disabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_23

    .line 1332
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .line 2394
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2395
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2396
    if-eqz v0, :cond_18

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 2397
    :cond_18
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to bind to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :goto_30
    return v1

    :cond_31
    const/4 v1, 0x1

    goto :goto_30
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3231
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    const-string v9, "BluetoothManagerService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    const-string v7, "Bluetooth Status"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3234
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mEnableExternal:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  airplaneMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, isAirplaneModeOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3239
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3241
    iget-object v7, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v7, :cond_bd

    .line 3242
    const-string v7, "Bluetooth Service not connected"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3272
    :cond_9a
    :goto_9a
    const-string v7, "---------------------------------------"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    sget-object v7, mainBuffer:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_ac

    sget-object v7, mainBuffer:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    :cond_ac
    sget-object v7, subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_b9

    sget-object v7, subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3275
    :cond_b9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3277
    return-void

    .line 3244
    :cond_bd
    const/4 v5, 0x0

    .line 3246
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_be
    const-string v7, "Bonded devices:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    iget-object v7, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v7}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, "arr$":[Landroid/bluetooth/BluetoothDevice;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_cb
    if-ge v2, v4, :cond_10c

    aget-object v1, v0, v2

    .line 3248
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, DEVICE_TYPE_NAMES:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 3252
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_10c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3254
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 3255
    iget-object v7, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v7, v5}, Landroid/bluetooth/IBluetooth;->dump(Landroid/os/ParcelFileDescriptor;)V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_118} :catch_127
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_118} :catch_13c
    .catchall {:try_start_be .. :try_end_118} :catchall_151

    .line 3261
    if-eqz v5, :cond_9a

    .line 3263
    :try_start_11a
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11f

    goto/16 :goto_9a

    .line 3264
    :catch_11f
    move-exception v3

    .line 3265
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "IOException attempting to close() fd"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 3256
    .end local v0    # "arr$":[Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":I
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "len$":I
    :catch_127
    move-exception v6

    .line 3257
    .local v6, "re":Landroid/os/RemoteException;
    :try_start_128
    const-string v7, "RemoteException while calling Bluetooth Service"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_12d
    .catchall {:try_start_128 .. :try_end_12d} :catchall_151

    .line 3261
    if-eqz v5, :cond_9a

    .line 3263
    :try_start_12f
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_134

    goto/16 :goto_9a

    .line 3264
    :catch_134
    move-exception v3

    .line 3265
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v7, "IOException attempting to close() fd"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 3258
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v6    # "re":Landroid/os/RemoteException;
    :catch_13c
    move-exception v3

    .line 3259
    .restart local v3    # "ioe":Ljava/io/IOException;
    :try_start_13d
    const-string v7, "IOException attempting to dup() fd"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_142
    .catchall {:try_start_13d .. :try_end_142} :catchall_151

    .line 3261
    if-eqz v5, :cond_9a

    .line 3263
    :try_start_144
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_149

    goto/16 :goto_9a

    .line 3264
    :catch_149
    move-exception v3

    .line 3265
    const-string v7, "IOException attempting to close() fd"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 3261
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_151
    move-exception v7

    if-eqz v5, :cond_157

    .line 3263
    :try_start_154
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_158

    .line 3266
    :cond_157
    :goto_157
    throw v7

    .line 3264
    :catch_158
    move-exception v3

    .line 3265
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v8, "IOException attempting to close() fd"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_157
.end method

.method public dumpInFile()V
    .registers 8

    .prologue
    .line 3140
    const/4 v1, 0x0

    .line 3141
    .local v1, "mainFoutS":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 3142
    .local v3, "subFoutS":Ljava/io/FileOutputStream;
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, logDirp:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, logDir:Ljava/io/File;

    .line 3145
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, mainBfp:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, mainF:Ljava/io/File;

    .line 3146
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, subBfp:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, subF:Ljava/io/File;

    .line 3148
    iget-object v5, p0, logDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_32

    .line 3149
    iget-object v5, p0, logDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 3152
    :cond_32
    :try_start_32
    iget-object v5, p0, mainF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 3153
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile delete main file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    iget-object v5, p0, mainF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3156
    :cond_47
    iget-object v5, p0, subF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 3157
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile delete sub file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    iget-object v5, p0, subF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3161
    :cond_5c
    sget-object v5, mainBuffer:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_82

    .line 3162
    iget-object v5, p0, mainF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 3163
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, mainF:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_70} :catch_c0
    .catchall {:try_start_32 .. :try_end_70} :catchall_d1

    .line 3164
    .end local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    .local v2, "mainFoutS":Ljava/io/FileOutputStream;
    :try_start_70
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile write main file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    sget-object v5, mainBuffer:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_81} :catch_e5
    .catchall {:try_start_70 .. :try_end_81} :catchall_df

    move-object v1, v2

    .line 3167
    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    :cond_82
    :try_start_82
    sget-object v5, subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_ad

    .line 3168
    iget-object v5, p0, subF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 3169
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, subF:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_96} :catch_c0
    .catchall {:try_start_82 .. :try_end_96} :catchall_d1

    .line 3170
    .end local v3    # "subFoutS":Ljava/io/FileOutputStream;
    .local v4, "subFoutS":Ljava/io/FileOutputStream;
    :try_start_96
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile write sub file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    new-instance v5, Ljava/lang/String;

    sget-object v6, subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ac} :catch_e8
    .catchall {:try_start_96 .. :try_end_ac} :catchall_e2

    move-object v3, v4

    .line 3178
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v3    # "subFoutS":Ljava/io/FileOutputStream;
    :cond_ad
    if-eqz v1, :cond_b2

    .line 3179
    :try_start_af
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3180
    :cond_b2
    if-eqz v3, :cond_b7

    .line 3181
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b7} :catch_eb

    .line 3186
    :cond_b7
    :goto_b7
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    :cond_bf
    :goto_bf
    return-void

    .line 3173
    :catch_c0
    move-exception v0

    .line 3174
    .local v0, "e":Ljava/io/IOException;
    :goto_c1
    :try_start_c1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_d1

    .line 3178
    if-eqz v1, :cond_c9

    .line 3179
    :try_start_c6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3180
    :cond_c9
    if-eqz v3, :cond_bf

    .line 3181
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ce} :catch_cf

    goto :goto_bf

    .line 3182
    :catch_cf
    move-exception v5

    goto :goto_bf

    .line 3177
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_d1
    move-exception v5

    .line 3178
    :goto_d2
    if-eqz v1, :cond_d7

    .line 3179
    :try_start_d4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3180
    :cond_d7
    if-eqz v3, :cond_dc

    .line 3181
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_dc} :catch_dd

    .line 3184
    :cond_dc
    :goto_dc
    throw v5

    .line 3182
    :catch_dd
    move-exception v6

    goto :goto_dc

    .line 3177
    .end local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    :catchall_df
    move-exception v5

    move-object v1, v2

    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    goto :goto_d2

    .end local v3    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catchall_e2
    move-exception v5

    move-object v3, v4

    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v3    # "subFoutS":Ljava/io/FileOutputStream;
    goto :goto_d2

    .line 3173
    .end local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    :catch_e5
    move-exception v0

    move-object v1, v2

    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    goto :goto_c1

    .end local v3    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catch_e8
    move-exception v0

    move-object v3, v4

    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v3    # "subFoutS":Ljava/io/FileOutputStream;
    goto :goto_c1

    .line 3182
    :catch_eb
    move-exception v5

    goto :goto_b7
.end method

.method public enable()Z
    .registers 13

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1158
    const-string v3, "BluetoothManagerService -- enable() BT ManagerService enable called "

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_25

    invoke-direct {p0}, checkIfCallerIsForegroundUser()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1161
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "enable(): not allowed for non-active and non system user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string v0, "BluetoothManagerService -- enable(): not allowed for non-active and non system user"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    move v2, v1

    .line 1212
    :goto_24
    return v2

    .line 1166
    :cond_25
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ad

    .line 1170
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1171
    .local v8, "ChinaNalSecurityType":Ljava/lang/String;
    iget-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "bluetooth_security_on_check"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1173
    .local v10, "isChecked":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enable(): enable PopUp for Bluetooth isChecked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const-string v3, "ChinaNalSecurity"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    if-ne v10, v2, :cond_8f

    invoke-virtual {p0}, isUserAction()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 1176
    sget-boolean v3, isEnablePopup:Z

    if-nez v3, :cond_8d

    .line 1177
    iget-object v0, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1178
    .local v7, "BtSecurityPopupMsg":Landroid/os/Message;
    iget-object v0, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_24

    .line 1182
    .end local v7    # "BtSecurityPopupMsg":Landroid/os/Message;
    :cond_8d
    sput-boolean v1, isEnablePopup:Z

    .line 1185
    :cond_8f
    const/16 v11, 0xa

    .line 1186
    .local v11, "state":I
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_ad

    .line 1188
    :try_start_95
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_ad

    .line 1189
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_a4} :catch_a5

    goto :goto_24

    .line 1192
    :catch_a5
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v3, ""

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    .end local v8    # "ChinaNalSecurityType":Ljava/lang/String;
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "isChecked":I
    .end local v11    # "state":I
    :cond_ad
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_d8

    .line 1197
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enable():  mBluetooth ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mBinding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_d8
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1203
    const/4 v3, 0x0

    :try_start_dc
    invoke-direct {p0, v3}, sendEnableMsg(Z)V

    .line 1204
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_dc .. :try_end_e0} :catchall_f3

    .line 1207
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Enabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_24

    .line 1204
    :catchall_f3
    move-exception v0

    :try_start_f4
    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v0
.end method

.method public enableNoAutoConnect()Z
    .registers 9

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    .line 1129
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_36

    .line 1133
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mBinding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 1139
    .local v7, "callingAppId":I
    const/16 v1, 0x403

    if-eq v7, v1, :cond_4b

    .line 1140
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to enable Bluetooth quietly"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_4b
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1145
    const/4 v3, 0x1

    :try_start_4f
    invoke-direct {p0, v3}, sendEnableMsg(Z)V

    .line 1146
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_65

    .line 1149
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Enabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1154
    return v2

    .line 1146
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1725
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_21

    invoke-direct {p0}, checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1730
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/4 v1, 0x0

    .line 1751
    :goto_20
    return-object v1

    .line 1734
    :cond_21
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2e

    .line 1736
    const-string v1, "02:00:00:00:00:00"

    goto :goto_20

    .line 1739
    :cond_2e
    iget-object v2, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1740
    :try_start_31
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_3d

    if-eqz v1, :cond_49

    .line 1742
    :try_start_35
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_40
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3d

    move-result-object v1

    :try_start_3b
    monitor-exit v2

    goto :goto_20

    .line 1747
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw v1

    .line 1743
    :catch_40
    move-exception v0

    .line 1744
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v3, "getAddress(): Unable to retrieve address remotely..Returning cached address"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1747
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_3d

    .line 1751
    iget-object v1, p0, mAddress:Ljava/lang/String;

    goto :goto_20
.end method

.method public getBleAppCount()I
    .registers 4

    .prologue
    .line 1046
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1f

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBleAppCount mBleAppCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_1f
    sget-boolean v0, BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_55

    invoke-direct {p0}, isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_55

    .line 1048
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_50

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBleAppCount mBleAppCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mBleAppCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ble is always on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_50
    sget v0, mBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1051
    :goto_54
    return v0

    :cond_55
    sget v0, mBleAppCount:I

    goto :goto_54
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .registers 5

    .prologue
    .line 1378
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1379
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1380
    .local v0, "callingUser":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_35

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_35

    .line 1381
    invoke-direct {p0, v0}, isKnoxBluetoothEnabled(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1382
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBluetoothGatt(): Bluetooth for this container is disabled! - userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/4 v1, 0x0

    .line 1389
    .end local v0    # "callingUser":I
    :goto_34
    return-object v1

    :cond_35
    iget-object v1, p0, mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    goto :goto_34
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1755
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_21

    invoke-direct {p0}, checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1760
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getName(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/4 v1, 0x0

    .line 1776
    :goto_20
    return-object v1

    .line 1764
    :cond_21
    iget-object v2, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1765
    :try_start_24
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_30

    if-eqz v1, :cond_3c

    .line 1767
    :try_start_28
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_33
    .catchall {:try_start_28 .. :try_end_2d} :catchall_30

    move-result-object v1

    :try_start_2e
    monitor-exit v2

    goto :goto_20

    .line 1772
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v1

    .line 1768
    :catch_33
    move-exception v0

    .line 1769
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_34
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v3, "getName(): Unable to retrieve name remotely..Returning cached name"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1772
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_30

    .line 1776
    iget-object v1, p0, mName:Ljava/lang/String;

    goto :goto_20
.end method

.method public getNameAndAddress()V
    .registers 5

    .prologue
    .line 1120
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_2b

    .line 1121
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNameAndAddress(): mBluetooth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_2b
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1125
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    return-void
.end method

.method public getSamsungBleAppCount()I
    .registers 4

    .prologue
    .line 1056
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1f

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSamsungBleAppCount mSamsung : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mSamsungBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_1f
    sget-boolean v0, BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_55

    invoke-direct {p0}, isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_55

    .line 1058
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_50

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSamsungBleAppCount mSamsung : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mSamsungBleAppCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ble is always on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_50
    sget v0, mSamsungBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1061
    :goto_54
    return v0

    :cond_55
    sget v0, mSamsungBleAppCount:I

    goto :goto_54
.end method

.method public handleOnBootPhase()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1462
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_3a

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth boot completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mEnableExternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, isBluetoothPersistedStateOnBluetooth()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mQuietEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManagerService -- ===== BOOT_COMPLETED ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mEnableExternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mQuietEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[0008]{0019}(24::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mEnableExternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")(25::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1465
    sget v0, mBleAppCount:I

    if-eqz v0, :cond_b4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManagerServiceUnknown mBleAppCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, mBleAppCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1467
    :cond_b4
    iget-boolean v0, p0, mEnableExternal:Z

    if-eqz v0, :cond_e4

    invoke-direct {p0}, isBluetoothPersistedStateOnBluetooth()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1468
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c9

    const-string v0, "BluetoothManagerService"

    const-string v1, "Auto-enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_c9
    sget-boolean v0, BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_e1

    invoke-direct {p0}, isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1470
    sget v0, mBleAppCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, mBleAppCount:I

    .line 1471
    sget v0, mSamsungBleAppCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, mSamsungBleAppCount:I

    .line 1472
    iput v4, p0, mSamsugBleState:I

    .line 1474
    :cond_e1
    invoke-direct {p0, v3}, sendEnableMsg(Z)V

    .line 1477
    :cond_e4
    invoke-direct {p0}, isNameAndAddressSet()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 1479
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_f5

    const-string v0, "BluetoothManagerService"

    const-string v1, "Retrieving Bluetooth Adapter name and address..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_f5
    invoke-virtual {p0}, getNameAndAddress()V

    .line 1491
    :cond_f8
    :goto_f8
    return-void

    .line 1481
    :cond_f9
    sget-boolean v0, BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_f8

    invoke-direct {p0}, isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_f8

    iget-boolean v0, p0, mEnableExternal:Z

    if-nez v0, :cond_f8

    .line 1482
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_112

    const-string v0, "BluetoothManagerService"

    const-string v1, "BLE Always On"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_112
    sget v0, mBleAppCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, mBleAppCount:I

    .line 1484
    sget v0, mSamsungBleAppCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, mSamsungBleAppCount:I

    .line 1485
    iput v4, p0, mSamsugBleState:I

    .line 1486
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1488
    const/4 v0, 0x0

    :try_start_124
    invoke-direct {p0, v0}, sendEnableMsg(Z)V

    .line 1489
    monitor-exit v1

    goto :goto_f8

    :catchall_129
    move-exception v0

    monitor-exit v1
    :try_end_12b
    .catchall {:try_start_124 .. :try_end_12b} :catchall_129

    throw v0
.end method

.method public handleOnSwitchUser(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1497
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth user switched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManagerService -- Bluetooth user switched. userHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1500
    return-void
.end method

.method public isBleAppPresent()Z
    .registers 4

    .prologue
    .line 1039
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1f

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBleAppPresent() count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_1f
    sget v0, mBleAppCount:I

    if-lez v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public isBleScanAlwaysAvailable()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 782
    :try_start_1
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_8} :catch_d

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 786
    :cond_c
    :goto_c
    return v0

    .line 784
    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method public isEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_18

    invoke-direct {p0}, checkIfCallerIsForegroundUser()Z

    move-result v2

    if-nez v2, :cond_18

    .line 708
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :goto_17
    return v1

    .line 712
    :cond_18
    iget-object v2, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 714
    :try_start_1b
    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_28

    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_2d
    .catchall {:try_start_1b .. :try_end_24} :catchall_2a

    move-result v3

    if-eqz v3, :cond_28

    const/4 v1, 0x1

    :cond_28
    :try_start_28
    monitor-exit v2

    goto :goto_17

    .line 718
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1

    .line 715
    :catch_2d
    move-exception v0

    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "isEnabled()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2a

    goto :goto_17
.end method

.method public isRestrictedBtPolicy()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2820
    invoke-direct {p0, v0}, checkItPolicy(Z)I

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, restrictedByMdmPolicy()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-direct {p0}, restrictedByKnoxPolicy()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2822
    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isUserAction()Z
    .registers 14

    .prologue
    const/4 v9, 0x1

    .line 3000
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3001
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 3003
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3005
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 3006
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-string v10, "com.android.systemui"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7f

    const-string v10, "com.android.settings"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7f

    const-string v10, "com.sec.android.easysettings"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7f

    const-string v10, "com.sec.android.emergencymode.service"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7f

    const-string v10, "com.samsung.android.app.sreminder"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7f

    const-string v10, "com.sec.knox.kccagent"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_de

    invoke-direct {p0}, isCustomizedByKccAgent()Z

    move-result v10

    if-nez v10, :cond_de

    .line 3012
    :cond_7f
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, getCallingPid()I

    move-result v11

    if-ne v10, v11, :cond_de

    .line 3014
    const-string v9, "BluetoothManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "info pid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",  getCallingPid() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    iget-object v9, p0, btEnablePopUp:Landroid/app/AlertDialog;

    if-eqz v9, :cond_dc

    iget-object v9, p0, btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_dc

    .line 3016
    iget-object v9, p0, btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->cancel()V

    .line 3018
    :cond_dc
    const/4 v9, 0x0

    .line 3039
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_dd
    :goto_dd
    return v9

    .line 3021
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_de
    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, getCallingPid()I

    move-result v11

    if-ne v10, v11, :cond_13

    .line 3023
    :try_start_e6
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_11f

    .line 3024
    iget-object v1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_ee
    if-ge v3, v5, :cond_dd

    aget-object v7, v1, v3

    .line 3025
    .local v7, "mPackageList":Ljava/lang/String;
    const/16 v10, 0x80

    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, chinaThirdPartyAppName:Ljava/lang/String;

    .line 3026
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, chinaThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    add-int/lit8 v3, v3, 0x1

    goto :goto_ee

    .line 3029
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v7    # "mPackageList":Ljava/lang/String;
    .local v3, "i$":Ljava/util/Iterator;
    :cond_11f
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v11, 0x80

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, chinaThirdPartyAppName:Ljava/lang/String;

    .line 3030
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, chinaThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e6 .. :try_end_14b} :catch_14c

    goto :goto_dd

    .line 3032
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_14c
    move-exception v2

    .line 3033
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v10, p0, chinaThirdPartyAppName:Ljava/lang/String;

    .line 3034
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_dd
.end method

.method public putLogs(Ljava/lang/String;)V
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 3054
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_18

    invoke-direct {p0}, checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3073
    :goto_17
    return-void

    .line 3063
    :cond_18
    :try_start_18
    sget-object v1, subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, limit:I

    if-le v1, v2, :cond_31

    .line 3064
    const-string v1, "BluetoothManagerService"

    const-string v2, "buffer limit reached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    invoke-static {}, bufferLimitReached()Z

    .line 3069
    :cond_31
    sget-object v1, subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_37

    goto :goto_17

    .line 3070
    :catch_37
    move-exception v0

    .line 3071
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothManagerService"

    const-string v2, "btsvc manager.putLogs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public readFile(Ljava/io/FileInputStream;)Ljava/lang/String;
    .registers 8
    .param p1, "FinS"    # Ljava/io/FileInputStream;

    .prologue
    .line 3121
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3122
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3124
    .local v0, "bReader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3127
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "read":Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 3128
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_20

    goto :goto_11

    .line 3131
    .end local v3    # "read":Ljava/lang/String;
    :catch_20
    move-exception v1

    .line 3132
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3135
    .end local v1    # "e":Ljava/io/IOException;
    :cond_24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public readFromFile()V
    .registers 11

    .prologue
    .line 3086
    const/4 v2, 0x0

    .line 3087
    .local v2, "mainFinS":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 3089
    .local v5, "subFinS":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 3090
    .local v1, "mainB":[B
    const/4 v4, 0x0

    .line 3091
    .local v4, "subB":[B
    const-string v7, "BluetoothManagerService"

    const-string/jumbo v8, "readFromFile start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, logDirp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, logDir:Ljava/io/File;

    .line 3094
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, mainBfp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, mainF:Ljava/io/File;

    .line 3095
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, subBfp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, subF:Ljava/io/File;

    .line 3097
    iget-object v7, p0, logDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_34

    .line 3098
    iget-object v7, p0, logDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 3101
    :cond_34
    :try_start_34
    iget-object v7, p0, mainF:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 3102
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, mainF:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_43} :catch_ab

    .line 3103
    .end local v2    # "mainFinS":Ljava/io/FileInputStream;
    .local v3, "mainFinS":Ljava/io/FileInputStream;
    :try_start_43
    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromFile main: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0, v3}, readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v7, mainBuffer:Ljava/lang/String;

    .line 3105
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_6e} :catch_b0

    move-object v2, v3

    .line 3107
    .end local v3    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v2    # "mainFinS":Ljava/io/FileInputStream;
    :cond_6f
    :try_start_6f
    iget-object v7, p0, subF:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 3108
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, subF:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7e} :catch_ab

    .line 3109
    .end local v5    # "subFinS":Ljava/io/FileInputStream;
    .local v6, "subFinS":Ljava/io/FileInputStream;
    :try_start_7e
    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromFile sub: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v7, subBuffer:Ljava/lang/StringBuilder;

    .line 3111
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_a9} :catch_b3

    move-object v5, v6

    .line 3117
    .end local v6    # "subFinS":Ljava/io/FileInputStream;
    .restart local v5    # "subFinS":Ljava/io/FileInputStream;
    :cond_aa
    :goto_aa
    return-void

    .line 3113
    :catch_ab
    move-exception v0

    .line 3114
    .local v0, "e":Ljava/io/IOException;
    :goto_ac
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_aa

    .line 3113
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v3    # "mainFinS":Ljava/io/FileInputStream;
    :catch_b0
    move-exception v0

    move-object v2, v3

    .end local v3    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v2    # "mainFinS":Ljava/io/FileInputStream;
    goto :goto_ac

    .end local v5    # "subFinS":Ljava/io/FileInputStream;
    .restart local v6    # "subFinS":Ljava/io/FileInputStream;
    :catch_b3
    move-exception v0

    move-object v5, v6

    .end local v6    # "subFinS":Ljava/io/FileInputStream;
    .restart local v5    # "subFinS":Ljava/io/FileInputStream;
    goto :goto_ac
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 639
    if-nez p1, :cond_b

    .line 640
    const-string v1, "BluetoothManagerService"

    const-string v2, "Callback is null in registerAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v1, 0x0

    .line 650
    :goto_a
    return-object v1

    .line 646
    :cond_b
    iget-object v2, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 647
    :try_start_e
    iget-object v1, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 648
    .local v0, "added":Z
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_31

    .line 649
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerAdapter added : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_31
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    monitor-exit v2

    goto :goto_a

    .line 651
    .end local v0    # "added":Z
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    throw v1
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 672
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 675
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 677
    return-void
.end method

.method public registerStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothDisableBleCallback;

    .prologue
    .line 689
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 692
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 693
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    return-void
.end method

.method public sendDisableBleCallback()V
    .registers 7

    .prologue
    .line 1667
    :try_start_0
    iget-object v3, p0, mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1668
    .local v2, "n":I
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_28

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting sendDisableBleCallback to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_53

    .line 1669
    :cond_28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-ge v1, v2, :cond_5a

    .line 1671
    :try_start_2b
    iget-object v3, p0, mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothDisableBleCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothDisableBleCallback;->ondisableBLE()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_39
    .catchall {:try_start_2b .. :try_end_36} :catchall_53

    .line 1669
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1672
    :catch_39
    move-exception v0

    .line 1673
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3a
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call sendDisableBleCallback() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_53

    goto :goto_36

    .line 1677
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_53
    move-exception v3

    iget-object v4, p0, mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_5a
    iget-object v3, p0, mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1679
    return-void
.end method

.method public setBtEnableFlag(Z)Z
    .registers 10
    .param p1, "quietmode"    # Z

    .prologue
    const/16 v7, 0x403

    const/4 v1, 0x1

    .line 1216
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_20

    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBtEnableFlag(): quietmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_20
    invoke-virtual {p0}, isRestrictedBtPolicy()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1219
    const-string v1, "BluetoothManagerService"

    const-string v4, "Enabling BT is restriced by policy"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v1, 0x0

    .line 1244
    :goto_2e
    return v1

    .line 1223
    :cond_2f
    if-eqz p1, :cond_5f

    .line 1224
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1225
    .local v0, "callingAppId":I
    if-eq v0, v7, :cond_69

    .line 1226
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no permission to enable Bluetooth quietly."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1230
    .end local v0    # "callingAppId":I
    :cond_5f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1231
    .local v2, "callingIdentity":J
    invoke-direct {p0, v1}, persistBluetoothSetting(I)V

    .line 1232
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1234
    .end local v2    # "callingIdentity":J
    :cond_69
    iput-boolean v1, p0, mEnableExternal:Z

    .line 1236
    iget v4, p0, mGoogleBleState:I

    if-nez v4, :cond_71

    .line 1237
    iput v1, p0, mGoogleBleState:I

    .line 1239
    :cond_71
    iget v4, p0, mSamsugBleState:I

    if-nez v4, :cond_77

    .line 1240
    iput v1, p0, mSamsugBleState:I

    .line 1242
    :cond_77
    iput-boolean p1, p0, mQuietEnable:Z

    goto :goto_2e
.end method

.method public shutdown()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1249
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_e

    const-string v4, "BluetoothManagerService"

    const-string/jumbo v5, "shutDown()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_e
    const/16 v1, 0xa

    .line 1252
    .local v1, "st":I
    iget-object v4, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v4, :cond_62

    .line 1254
    :try_start_14
    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_59

    move-result v1

    .line 1263
    :goto_1a
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/16 v3, 0xa

    if-eq v1, v3, :cond_58

    .line 1266
    sput-boolean v2, mShutdown:Z

    .line 1267
    invoke-direct {p0}, clearBleApps()V

    .line 1269
    const/16 v3, 0xf

    if-ne v1, v3, :cond_75

    .line 1270
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_4c

    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "shutdown BLE disable()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_4c
    :try_start_4c
    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_58

    .line 1273
    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 1274
    const/4 v3, 0x0

    iput-boolean v3, p0, mEnableExternal:Z
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_58} :catch_6c

    .line 1284
    :cond_58
    :goto_58
    return v2

    .line 1255
    :catch_59
    move-exception v0

    .line 1256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to call getState"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 1259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_62
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "shutdown mBluetooth is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1260
    goto :goto_58

    .line 1276
    :catch_6c
    move-exception v0

    .line 1277
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to call onBrEdrDown"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 1279
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_75
    const/16 v3, 0xc

    if-ne v1, v3, :cond_58

    .line 1280
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_85

    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "shutdown BT disable()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_85
    invoke-virtual {p0, v2}, disable(Z)Z

    goto :goto_58
.end method

.method public unbindAndFinish()V
    .registers 5

    .prologue
    .line 1344
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_2b

    .line 1345
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindAndFinish(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_2b
    iget-object v2, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1350
    :try_start_2e
    iget-boolean v1, p0, mUnbinding:Z

    if-eqz v1, :cond_34

    monitor-exit v2

    .line 1372
    :goto_33
    return-void

    .line 1351
    :cond_34
    const/4 v1, 0x1

    iput-boolean v1, p0, mUnbinding:Z

    .line 1352
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_76

    .line 1353
    iget-object v1, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_6a

    move-result v1

    if-nez v1, :cond_4a

    .line 1356
    :try_start_43
    iget-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4a} :catch_6d
    .catchall {:try_start_43 .. :try_end_4a} :catchall_6a

    .line 1361
    :cond_4a
    :goto_4a
    :try_start_4a
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_55

    const-string v1, "BluetoothManagerService"

    const-string v3, "Sending unbind request."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_55
    const/4 v1, 0x0

    iput-object v1, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1364
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1365
    const/4 v1, 0x0

    iput-boolean v1, p0, mUnbinding:Z

    .line 1366
    const/4 v1, 0x0

    iput-boolean v1, p0, mBinding:Z

    .line 1370
    :goto_65
    const/4 v1, 0x0

    iput-object v1, p0, mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 1371
    monitor-exit v2

    goto :goto_33

    :catchall_6a
    move-exception v1

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_6a

    throw v1

    .line 1357
    :catch_6d
    move-exception v0

    .line 1358
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_6e
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 1368
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_76
    const/4 v1, 0x0

    iput-boolean v1, p0, mUnbinding:Z
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_6a

    goto :goto_65
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 7
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 1433
    iget-object v2, p0, mProfileServices:Ljava/util/Map;

    monitor-enter v2

    .line 1434
    :try_start_3
    iget-object v1, p0, mProfileServices:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1435
    .local v0, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v0, :cond_14

    .line 1436
    monitor-exit v2

    .line 1440
    :goto_13
    return-void

    .line 1438
    :cond_14
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    invoke-static {v0, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 1439
    monitor-exit v2

    goto :goto_13

    .end local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 655
    if-nez p1, :cond_a

    .line 656
    const-string v1, "BluetoothManagerService"

    const-string v2, "Callback is null in unregisterAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_9
    return-void

    .line 659
    :cond_a
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 665
    :try_start_16
    iget-object v1, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 666
    .local v0, "removed":Z
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_39

    .line 667
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterAdapter removed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_39
    monitor-exit v2

    goto :goto_9

    .end local v0    # "removed":Z
    :catchall_3b
    move-exception v1

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 680
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 683
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 684
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    return-void
.end method

.method public unregisterStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothDisableBleCallback;

    .prologue
    .line 698
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3fb

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 701
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    iget-object v1, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;Z)I
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    const/16 v10, 0xf

    const/4 v9, 0x1

    .line 889
    invoke-direct {p0}, checkRpaStop()Z

    move-result v4

    .line 890
    .local v4, "prevRpaStop":Z
    sget-boolean v6, mShutdown:Z

    if-eq v6, v9, :cond_f

    iget-boolean v6, p0, mEnablingAirplane:Z

    if-ne v6, v9, :cond_1e

    .line 891
    :cond_f
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1b

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount Pass"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_1b
    sget v6, mBleAppCount:I

    .line 1008
    :goto_1d
    return v6

    .line 894
    :cond_1e
    if-eqz p2, :cond_18f

    .line 895
    iget-object v6, p0, mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 896
    .local v5, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-nez v5, :cond_c1

    .line 897
    new-instance v0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;)V

    .line 899
    .local v0, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    const/4 v6, 0x0

    :try_start_30
    invoke-interface {p1, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_ee

    .line 903
    iget-object v6, p0, mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    monitor-enter p0

    .line 906
    :try_start_39
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateBleAppCount #UP | mBleAppCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, mBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSappCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, mSamsungBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Using SS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mUsingSSUpdate:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_f7

    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_f7

    .line 908
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_86

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount on state"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_86} :catch_103
    .catchall {:try_start_39 .. :try_end_86} :catchall_10d

    .line 933
    :cond_86
    :goto_86
    :try_start_86
    sget v6, mBleAppCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, mBleAppCount:I

    .line 934
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_10d

    .line 936
    :try_start_8d
    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_b6

    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v6

    if-ne v6, v10, :cond_b6

    if-eqz v4, :cond_b6

    invoke-direct {p0}, checkRpaStop()Z

    move-result v6

    if-nez v6, :cond_b6

    .line 938
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_ad

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_ad
    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 940
    const/4 v6, 0x1

    iput-boolean v6, p0, mRpaGeneration:Z
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_b6} :catch_184

    .line 945
    :cond_b6
    :goto_b6
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_c1

    const-string v6, "BluetoothManagerService"

    const-string v7, "Registered for death Notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_c1
    :goto_c1
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_df

    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updated BleAppCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, mBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_df
    sget v6, mBleAppCount:I

    if-nez v6, :cond_ea

    iget-boolean v6, p0, mEnable:Z

    if-eqz v6, :cond_ea

    .line 1006
    invoke-direct {p0}, disableBleScanMode()V

    .line 1008
    :cond_ea
    sget v6, mBleAppCount:I

    goto/16 :goto_1d

    .line 900
    .restart local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catch_ee
    move-exception v2

    .line 901
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wake lock is already dead."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 909
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_f7
    :try_start_f7
    sget v6, mBleAppCount:I

    if-nez v6, :cond_115

    .line 910
    iget-boolean v6, p0, mUsingSSUpdate:Z

    if-eqz v6, :cond_110

    .line 911
    const/4 v6, 0x1

    iput v6, p0, mSamsugBleState:I
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_102} :catch_103
    .catchall {:try_start_f7 .. :try_end_102} :catchall_10d

    goto :goto_86

    .line 930
    :catch_103
    move-exception v1

    .line 931
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_104
    const-string v6, "BluetoothManagerService"

    const-string v7, "Unable to call updateBleAppCount"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_86

    .line 934
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_10d
    move-exception v6

    monitor-exit p0
    :try_end_10f
    .catchall {:try_start_104 .. :try_end_10f} :catchall_10d

    throw v6

    .line 913
    :cond_110
    const/4 v6, 0x1

    :try_start_111
    iput v6, p0, mGoogleBleState:I

    goto/16 :goto_86

    .line 915
    :cond_115
    sget v6, mBleAppCount:I

    sget v7, mSamsungBleAppCount:I

    sub-int/2addr v6, v7

    if-nez v6, :cond_147

    iget-boolean v6, p0, mUsingSSUpdate:Z

    if-nez v6, :cond_147

    .line 916
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2be

    const/16 v8, 0xa

    const/16 v9, 0xe

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 917
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 918
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2be

    const/16 v8, 0xe

    const/16 v9, 0xf

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 919
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 920
    const/4 v6, 0x2

    iput v6, p0, mGoogleBleState:I

    goto/16 :goto_86

    .line 921
    .end local v3    # "msg":Landroid/os/Message;
    :cond_147
    sget v6, mSamsungBleAppCount:I

    if-nez v6, :cond_176

    iget-boolean v6, p0, mUsingSSUpdate:Z

    if-eqz v6, :cond_176

    .line 922
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2bf

    const/16 v8, 0xa

    const/16 v9, 0xe

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 923
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 924
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2bf

    const/16 v8, 0xe

    const/16 v9, 0xf

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 925
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 926
    const/4 v6, 0x2

    iput v6, p0, mSamsugBleState:I

    goto/16 :goto_86

    .line 928
    .end local v3    # "msg":Landroid/os/Message;
    :cond_176
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_86

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount else case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_182} :catch_103
    .catchall {:try_start_111 .. :try_end_182} :catchall_10d

    goto/16 :goto_86

    .line 942
    :catch_184
    move-exception v2

    .line 943
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration fails"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b6

    .line 949
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_18f
    iget-object v6, p0, mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 950
    .restart local v5    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v5, :cond_c1

    .line 953
    const/4 v6, 0x0

    :try_start_19a
    invoke-interface {p1, v5, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_19d
    .catch Ljava/util/NoSuchElementException; {:try_start_19a .. :try_end_19d} :catch_231

    .line 957
    :goto_19d
    iget-object v6, p0, mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    monitor-enter p0

    .line 959
    :try_start_1a3
    sget v6, mBleAppCount:I
    :try_end_1a5
    .catchall {:try_start_1a3 .. :try_end_1a5} :catchall_251

    if-lez v6, :cond_1fa

    .line 961
    :try_start_1a7
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateBleAppCount #DOWN | mBleAppCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, mBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSappCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, mSamsungBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Using SS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mUsingSSUpdate:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_23c

    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_23c

    .line 963
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1f4

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount on state : false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f4
    .catch Landroid/os/RemoteException; {:try_start_1a7 .. :try_end_1f4} :catch_248
    .catchall {:try_start_1a7 .. :try_end_1f4} :catchall_251

    .line 988
    :cond_1f4
    :goto_1f4
    :try_start_1f4
    sget v6, mBleAppCount:I

    add-int/lit8 v6, v6, -0x1

    sput v6, mBleAppCount:I

    .line 990
    :cond_1fa
    monitor-exit p0
    :try_end_1fb
    .catchall {:try_start_1f4 .. :try_end_1fb} :catchall_251

    .line 992
    :try_start_1fb
    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_224

    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v6

    if-ne v6, v10, :cond_224

    if-nez v4, :cond_224

    invoke-direct {p0}, checkRpaStop()Z

    move-result v6

    if-eqz v6, :cond_224

    .line 994
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_21b

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration false "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_21b
    iget-object v6, p0, mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 996
    const/4 v6, 0x0

    iput-boolean v6, p0, mRpaGeneration:Z
    :try_end_224
    .catch Landroid/os/RemoteException; {:try_start_1fb .. :try_end_224} :catch_2c7

    .line 1001
    :cond_224
    :goto_224
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_c1

    const-string v6, "BluetoothManagerService"

    const-string v7, "Unregistered for death Notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1

    .line 954
    :catch_231
    move-exception v2

    .line 955
    .local v2, "ex":Ljava/util/NoSuchElementException;
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "no such element, already unlinked"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19d

    .line 964
    .end local v2    # "ex":Ljava/util/NoSuchElementException;
    :cond_23c
    :try_start_23c
    sget v6, mBleAppCount:I

    if-ne v6, v9, :cond_258

    .line 965
    iget-boolean v6, p0, mUsingSSUpdate:Z

    if-eqz v6, :cond_254

    .line 966
    const/4 v6, 0x3

    iput v6, p0, mSamsugBleState:I
    :try_end_247
    .catch Landroid/os/RemoteException; {:try_start_23c .. :try_end_247} :catch_248
    .catchall {:try_start_23c .. :try_end_247} :catchall_251

    goto :goto_1f4

    .line 985
    :catch_248
    move-exception v1

    .line 986
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_249
    const-string v6, "BluetoothManagerService"

    const-string v7, "Unable to call updateBleAppCount"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f4

    .line 990
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_251
    move-exception v6

    monitor-exit p0
    :try_end_253
    .catchall {:try_start_249 .. :try_end_253} :catchall_251

    throw v6

    .line 968
    :cond_254
    const/4 v6, 0x3

    :try_start_255
    iput v6, p0, mGoogleBleState:I

    goto :goto_1f4

    .line 970
    :cond_258
    sget v6, mBleAppCount:I

    sget v7, mSamsungBleAppCount:I

    sub-int/2addr v6, v7

    if-ne v6, v9, :cond_28a

    iget-boolean v6, p0, mUsingSSUpdate:Z

    if-nez v6, :cond_28a

    .line 971
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2be

    const/16 v8, 0xf

    const/16 v9, 0x10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 972
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 973
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2be

    const/16 v8, 0x10

    const/16 v9, 0xa

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 974
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 975
    const/4 v6, 0x0

    iput v6, p0, mGoogleBleState:I

    goto/16 :goto_1f4

    .line 976
    .end local v3    # "msg":Landroid/os/Message;
    :cond_28a
    sget v6, mSamsungBleAppCount:I

    if-ne v6, v9, :cond_2b9

    iget-boolean v6, p0, mUsingSSUpdate:Z

    if-eqz v6, :cond_2b9

    .line 977
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2bf

    const/16 v8, 0xf

    const/16 v9, 0x10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 978
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 979
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2bf

    const/16 v8, 0x10

    const/16 v9, 0xa

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 980
    iget-object v6, p0, mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 981
    const/4 v6, 0x0

    iput v6, p0, mSamsugBleState:I

    goto/16 :goto_1f4

    .line 983
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2b9
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1f4

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount else:false case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c5
    .catch Landroid/os/RemoteException; {:try_start_255 .. :try_end_2c5} :catch_248
    .catchall {:try_start_255 .. :try_end_2c5} :catchall_251

    goto/16 :goto_1f4

    .line 998
    :catch_2c7
    move-exception v2

    .line 999
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration fails"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_224
.end method

.method public updateSBleAppCount(Landroid/os/IBinder;Z)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 850
    sget v1, mBleAppCount:I

    .line 851
    .local v1, "prevBleAppCount":I
    iput-boolean v4, p0, mUsingSSUpdate:Z

    .line 852
    invoke-virtual {p0, p1, p2}, updateBleAppCount(Landroid/os/IBinder;Z)I

    .line 853
    iput-boolean v3, p0, mUsingSSUpdate:Z

    .line 855
    sget v3, mBleAppCount:I

    if-ge v1, v3, :cond_44

    .line 856
    iget-object v3, p0, mBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 857
    .local v2, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-nez v2, :cond_23

    .line 858
    const-string v3, "BluetoothManagerService"

    const-string v4, "Updating Ble App count failed, return"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    sget v3, mSamsungBleAppCount:I

    .line 885
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :goto_22
    return v3

    .line 862
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_23
    invoke-virtual {v2, p1, v4}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->setTokenAndAppInfo(Landroid/os/IBinder;Z)V

    .line 863
    iget-object v3, p0, mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    monitor-enter p0

    .line 865
    :try_start_2c
    sget v3, mSamsungBleAppCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, mSamsungBleAppCount:I

    .line 866
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_41

    .line 867
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3e

    const-string v3, "BluetoothManagerService"

    const-string v4, "Registered for death Notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_3e
    :goto_3e
    sget v3, mBleAppCount:I

    goto :goto_22

    .line 866
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v3

    .line 869
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_44
    sget v3, mBleAppCount:I

    if-le v1, v3, :cond_3e

    .line 870
    iget-object v3, p0, mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 871
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v2, :cond_3e

    .line 874
    const/4 v3, 0x0

    :try_start_53
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_56
    .catch Ljava/util/NoSuchElementException; {:try_start_53 .. :try_end_56} :catch_73

    .line 878
    :goto_56
    iget-object v3, p0, mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    monitor-enter p0

    .line 880
    :try_start_5c
    sget v3, mSamsungBleAppCount:I

    if-lez v3, :cond_66

    sget v3, mSamsungBleAppCount:I

    add-int/lit8 v3, v3, -0x1

    sput v3, mSamsungBleAppCount:I

    .line 881
    :cond_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_7d

    .line 882
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3e

    const-string v3, "BluetoothManagerService"

    const-string v4, "Unregistered for death Notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 875
    :catch_73
    move-exception v0

    .line 876
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "no such element, already unlinked"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 881
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    :catchall_7d
    move-exception v3

    :try_start_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v3
.end method
