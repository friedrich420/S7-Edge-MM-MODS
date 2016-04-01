.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final ACTIVATE_DEVICE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field private static final BULK_ENROLL_DATA_FILE:Ljava/lang/String; = "BulkEnrollmentProfile"

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field private static final CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field private static final EXCLUDED_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KLMS_PKG_NAME:Ljava/lang/String; = "com.samsung.klmsagent"

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field private static final MIN_PERSONA_ID:I = 0x64

.field private static final MY_PID:I

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field private static final NON_MDM_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROXY_ADMIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_DIR:Ljava/lang/String; = "/data/app/selfUpdateApks"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_PATH:Ljava/lang/String; = "/data/app/selfUpdateApks/"

.field private static final SELF_UPDATE_ADMIN_COMPONENT_KEY:Ljava/lang/String; = "self_update_admin_component"

.field private static final SELF_UPDATE_ADMIN_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/selfUpdateAdmin.conf"

.field private static final SELF_UPDATE_ADMIN_SEPARATOR:Ljava/lang/String; = ";"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final SILENT_ACTIVATION_PERMISION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field private static final UMC_DATA_PATH:Ljava/lang/String; = "/efs/umc"

.field public static final UMC_PACKAGENAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field private static mInternalHandler:Landroid/os/Handler;

.field private static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private static mPolicyServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/EnterpriseServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelfUpdateAdminComponent:Landroid/content/ComponentName;

.field private static mServiceAdditionCondition:Landroid/os/ConditionVariable;

.field private static mServicesAdded:Z


# instance fields
.field private final KNOXVPN_CONTAINER_ENABLED:I

.field private KNOXVPN_FEATURE:I

.field private final KNOXVPN_MDM_ENABLED:I

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mDPM:Landroid/app/admin/DevicePolicyManager;

.field final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirstInitializedPolicyServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLMS:Lcom/android/server/enterprise/log/LogManagerService;

.field final mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

.field final mPMS:Landroid/content/pm/IPackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, EXCLUDED_ADMINS:Ljava/util/List;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, NON_MDM_ADMINS:Ljava/util/List;

    .line 277
    const-string v0, "com.samsung.android.email.provider"

    const/4 v1, 0x0

    invoke-static {v0, v1}, isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 278
    sget-object v0, EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :goto_1e
    sget-object v0, EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.sec.esdk.elm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.sec.enterprise.knox.express"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 307
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, MY_PID:I

    .line 316
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, mPolicyServices:Ljava/util/Map;

    .line 332
    const/4 v0, 0x0

    sput-object v0, mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    .line 341
    sget-object v0, CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-void

    .line 281
    :cond_75
    sget-object v0, EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;
    .param p3, "dpm"    # Landroid/app/admin/IDevicePolicyManager;

    .prologue
    .line 2025
    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;-><init>()V

    .line 317
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, mFirstInitializedPolicyServices:Ljava/util/List;

    .line 330
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, mAdminMap:Ljava/util/HashMap;

    .line 331
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, mAdminList:Ljava/util/ArrayList;

    .line 347
    const/4 v10, -0x1

    iput v10, p0, KNOXVPN_FEATURE:I

    .line 348
    const/4 v10, 0x1

    iput v10, p0, KNOXVPN_MDM_ENABLED:I

    .line 349
    const/4 v10, 0x2

    iput v10, p0, KNOXVPN_CONTAINER_ENABLED:I

    .line 483
    new-instance v10, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;

    invoke-direct {v10, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v10, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 2026
    sput-object p0, mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 2027
    new-instance v10, Lcom/android/server/enterprise/log/LogManagerService;

    invoke-direct {v10, p1, p0}, Lcom/android/server/enterprise/log/LogManagerService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v10, p0, mLMS:Lcom/android/server/enterprise/log/LogManagerService;

    .line 2028
    const-string/jumbo v10, "log_manager_service"

    iget-object v11, p0, mLMS:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2029
    move-object/from16 v0, p2

    iput-object v0, p0, mPMS:Landroid/content/pm/IPackageManager;

    .line 2030
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 2031
    const-string/jumbo v10, "device_policy"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    iput-object v10, p0, mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 2032
    const-string/jumbo v10, "device_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v10

    iput-object v10, p0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 2033
    new-instance v10, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    invoke-direct {v10, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v10, p0, mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    .line 2034
    iget-object v10, p0, mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    const/4 v11, 0x0

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, -0x1

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v13, 0x1

    invoke-virtual {v10, p1, v11, v12, v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 2035
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v10

    sput-object v10, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 2036
    invoke-direct {p0}, handleDowngrade()V

    .line 2038
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2039
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2040
    const-string v10, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2041
    iget-object v10, p0, mContext:Landroid/content/Context;

    iget-object v11, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2043
    new-instance v10, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2046
    invoke-direct {p0}, isFirmwareChanged()Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 2047
    const-string v10, "EnterpriseDeviceManagerService"

    const-string/jumbo v11, "handleUpgrade: Checking Upgrade..."

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->handleFirmwareUpgrade()V

    .line 2049
    const/4 v10, 0x1

    invoke-direct {p0, v10}, sendMigrationIntent(Z)V

    .line 2052
    :cond_ac
    new-instance v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v10, p0, mContext:Landroid/content/Context;

    iget-object v11, p0, mPMS:Landroid/content/pm/IPackageManager;

    invoke-direct {v5, v10, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    .line 2053
    .local v5, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v11, "enterprise_license_policy"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2054
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "enterprise_license_policy"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    iget-object v10, p0, mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v11, "enterprise_license_policy"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2057
    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    .line 2058
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v11, "application_policy"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2059
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string v11, "application_policy"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    iget-object v10, p0, mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v11, "application_policy"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2062
    const-string v10, "application_policy"

    invoke-static {v10}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2065
    .local v1, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v5, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 2066
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v11, "wifi_policy"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2067
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "wifi_policy"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    iget-object v10, p0, mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v11, "wifi_policy"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    new-instance v5, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 2071
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v11, "phone_restriction_policy"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2072
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "phone_restriction_policy"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    iget-object v10, p0, mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v11, "phone_restriction_policy"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2075
    new-instance v5, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    .line 2076
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v11, "remoteinjection"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2077
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "remoteinjection"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    iget-object v10, p0, mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v11, "remoteinjection"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2081
    new-instance v5, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    .line 2082
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v11, "knox_ucsm_policy"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2083
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "knox_ucsm_policy"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    iget-object v10, p0, mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v11, "knox_ucsm_policy"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2092
    const-string/jumbo v10, "edm_proxy"

    new-instance v11, Lcom/android/server/enterprise/EDMProxyService;

    invoke-direct {v11}, Lcom/android/server/enterprise/EDMProxyService;-><init>()V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2095
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v9

    .line 2096
    .local v9, "versionInfo":Landroid/os/Bundle;
    const-string v10, "2.0"

    const-string/jumbo v11, "version"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b5

    .line 2097
    const/4 v2, 0x1

    .line 2098
    .local v2, "enabledContainer":Z
    const/4 v10, 0x1

    if-ne v10, v2, :cond_1b5

    .line 2099
    new-instance v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V

    .line 2100
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v11, "mum_container_policy"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2101
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "mum_container_policy"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    iget-object v10, p0, mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v11, "mum_container_policy"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2109
    .end local v2    # "enabledContainer":Z
    :cond_1b5
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v10

    if-eqz v10, :cond_20d

    .line 2110
    const-string v10, "EnterpriseBillingPolicy"

    const-string v11, "Adding other services"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const/4 v5, 0x0

    .line 2113
    :try_start_1c3
    const-string v10, "EnterpriseBillingPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding yet : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    new-instance v6, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;-><init>(Landroid/content/Context;)V
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1e2} :catch_2e5

    .line 2115
    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .local v6, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_1e2
    const-string/jumbo v11, "enterprise_billing_policy"

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object v10, v0

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2116
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "enterprise_billing_policy"

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    const-string v10, "EnterpriseBillingPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Added successfully : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_20c} :catch_327

    move-object v5, v6

    .line 2125
    .end local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :cond_20d
    :goto_20d
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v10

    if-eqz v10, :cond_31b

    .line 2127
    :try_start_213
    new-instance v6, Lcom/android/server/enterprise/otp/OTPService;

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Lcom/android/server/enterprise/otp/OTPService;-><init>(Landroid/content/Context;)V
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_21a} :catch_300

    .line 2128
    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_21a
    const-string/jumbo v11, "otp_service"

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object v10, v0

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2129
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "otp_service"

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTP_SERVICE: Added successfully - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_244} :catch_324

    move-object v5, v6

    .line 2140
    .end local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_245
    new-instance v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;-><init>(Landroid/content/Context;)V

    .line 2141
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v11, "enterprise_shared_device_policy"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2142
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "enterprise_shared_device_policy"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;->writeVersionInProperties(Landroid/content/Context;)V

    .line 2148
    const-string v10, "1"

    const-string/jumbo v11, "ro.config.tima"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2149
    .local v7, "timaEnabled":Z
    if-eqz v7, :cond_2b5

    .line 2150
    new-instance v5, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;-><init>(Landroid/content/Context;)V

    .line 2151
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v11, "knox_timakeystore_policy"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2152
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "knox_timakeystore_policy"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    const-string v10, "3.0"

    const-string/jumbo v11, "ro.config.timaversion"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 2155
    .local v8, "timaversion":Z
    const/4 v10, 0x1

    if-ne v10, v8, :cond_2b5

    .line 2157
    new-instance v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;-><init>(Landroid/content/Context;)V

    .line 2158
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v11, "knox_ccm_policy"

    move-object v10, v5

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v11, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2159
    sget-object v10, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v11, "knox_ccm_policy"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    .end local v8    # "timaversion":Z
    :cond_2b5
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_2bf

    .line 2165
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;->writeVersionInProperties()V

    .line 2170
    :cond_2bf
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/sso/SSOVersion;->writeVersionInProperties(Landroid/content/Context;)V

    .line 2174
    invoke-static {}, Lcom/android/server/enterprise/scep/CEPVersion;->writeVersionInProperties()V

    .line 2177
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v10

    sput-object v10, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 2178
    invoke-direct {p0}, isMdmAdminPresentInternal()Z

    move-result v10

    if-nez v10, :cond_2de

    sget-object v10, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v10}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkConstrainedState()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2e1

    .line 2179
    :cond_2de
    invoke-direct {p0}, addServices()V

    .line 2183
    :cond_2e1
    invoke-direct {p0}, checkKnoxCustomBootAnimEnabled()V

    .line 2186
    return-void

    .line 2118
    .end local v7    # "timaEnabled":Z
    :catch_2e5
    move-exception v3

    .line 2119
    .local v3, "exception":Ljava/lang/Exception;
    :goto_2e6
    const-string v10, "EnterpriseBillingPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20d

    .line 2131
    .end local v3    # "exception":Ljava/lang/Exception;
    :catch_300
    move-exception v3

    .line 2132
    .restart local v3    # "exception":Ljava/lang/Exception;
    :goto_301
    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTP_SERVICE: Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_245

    .line 2135
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_31b
    const-string v10, "EnterpriseDeviceManagerService"

    const-string v11, "OTP_SERVICE: Not added - OTP Sec Feature not enabled"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_245

    .line 2131
    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :catch_324
    move-exception v3

    move-object v5, v6

    .end local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    goto :goto_301

    .line 2118
    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :catch_327
    move-exception v3

    move-object v5, v6

    .end local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    goto :goto_2e6
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 251
    invoke-direct {p0}, runAdminUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 251
    invoke-direct {p0, p1}, cleanGenericTableOnUserRemoved(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 251
    invoke-direct {p0}, selfUpdate()V

    return-void
.end method

.method static synthetic access$500()Landroid/content/ComponentName;
    .registers 1

    .prologue
    .line 251
    sget-object v0, mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$502(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 1
    .param p0, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 251
    sput-object p0, mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 251
    invoke-direct {p0}, addServices()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 251
    invoke-direct {p0}, initServices()V

    return-void
.end method

.method static synthetic access$800()Landroid/os/ConditionVariable;
    .registers 1

    .prologue
    .line 251
    sget-object v0, mServiceAdditionCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private activateAdmin(Landroid/content/ComponentName;Z)V
    .registers 28
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .prologue
    .line 989
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    .line 990
    .local v20, "userHandle":I
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Activating admin on user!!!!!! "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v7

    .line 993
    .local v7, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v7, :cond_49

    .line 994
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bad admin: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 997
    :cond_49
    const-string/jumbo v21, "restriction_policy"

    invoke-static/range {v21 .. v21}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 998
    .local v16, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v16, :cond_6c

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_6c

    .line 999
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Admin cannot be activated"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1002
    :cond_6c
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v21

    if-eqz v21, :cond_81

    sget-object v21, EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_81

    .line 1003
    invoke-virtual/range {p0 .. p0}, checkServices()V

    .line 1006
    :cond_81
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    .line 1007
    .local v19, "uid":I
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 1008
    .local v8, "compName":Landroid/content/ComponentName;
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Admin uid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", Component name: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1011
    .local v12, "ident":J
    const/16 v17, 0x1

    .line 1013
    .local v17, "ret":Z
    const/16 v18, 0x2

    .line 1014
    .local v18, "retry":I
    const/4 v6, 0x0

    .line 1017
    .local v6, "activationStatus":Z
    :try_start_c6
    monitor-enter p0
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_c7} :catch_e2
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_2e0

    .line 1018
    if-nez p2, :cond_147

    :try_start_c9
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v21

    if-eqz v21, :cond_147

    .line 1019
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Admin is already added"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1040
    :catchall_df
    move-exception v21

    monitor-exit p0
    :try_end_e1
    .catchall {:try_start_c9 .. :try_end_e1} :catchall_df

    :try_start_e1
    throw v21
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_e2} :catch_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_2e0

    .line 1065
    :catch_e2
    move-exception v9

    .line 1066
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_e3
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_2e0

    .line 1068
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_e9
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1072
    .local v14, "intent":Landroid/content/Intent;
    const-string v21, "android.accessory.device.action.ACTIVE_MDM"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1074
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "send to Gear Manager ."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    if-eqz v6, :cond_146

    .line 1077
    const-string v21, "EnterpriseDeviceManagerService"

    const-string v22, "Calling MSG_POST_ADMIN_ACTIVATION after Admin activation..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    sget-object v21, mInternalHandler:Landroid/os/Handler;

    const/16 v22, 0x1

    const/16 v23, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    .line 1081
    :cond_146
    return-void

    .line 1021
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_147
    if-nez p2, :cond_1a3

    .line 1022
    :try_start_149
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Adding admin "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to lists"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v17

    .line 1030
    :cond_1a3
    if-nez v17, :cond_1e7

    .line 1031
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Removing admin "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " from lists"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Unable to activate admin"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1037
    :cond_1e7
    sget-object v21, mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1f1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_20b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1038
    .local v15, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_1f1

    .line 1040
    .end local v15    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_20b
    monitor-exit p0
    :try_end_20c
    .catchall {:try_start_149 .. :try_end_20c} :catchall_df

    .line 1046
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_20d
    move/from16 v0, v18

    if-gt v10, v0, :cond_271

    .line 1047
    :try_start_211
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Attempt "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to active admin in DPM"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v21

    if-eqz v21, :cond_2e5

    .line 1050
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Admin sucessfully activated in DPM for user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const/4 v6, 0x1

    .line 1057
    :cond_271
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EDM setActiveAdmin activationStatus -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " for user - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    if-nez v6, :cond_305

    .line 1059
    const-string v21, "EnterpriseDeviceManagerService"

    const-string v22, "Started removing admin information..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    new-instance v21, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1061
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1062
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EDM - Admin activation failed for user -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_2e0
    .catch Landroid/os/RemoteException; {:try_start_211 .. :try_end_2e0} :catch_e2
    .catchall {:try_start_211 .. :try_end_2e0} :catchall_2e0

    .line 1068
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :catchall_2e0
    move-exception v21

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21

    .line 1054
    .restart local v10    # "i":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2e5
    :try_start_2e5
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Admin activation failed for user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_20d

    .line 1064
    :cond_305
    const-string v21, "EnterpriseDeviceManagerService"

    const-string v22, "Admin added to DPM!"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30c
    .catch Landroid/os/RemoteException; {:try_start_2e5 .. :try_end_30c} :catch_e2
    .catchall {:try_start_2e5 .. :try_end_30c} :catchall_2e0

    .line 1068
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_e9
.end method

.method private addServices()V
    .registers 18

    .prologue
    .line 2189
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Adding Services..."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    const/4 v6, 0x1

    .line 2192
    .local v6, "enabledMDM":Z
    const/4 v9, 0x0

    .line 2194
    .local v9, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const/4 v14, 0x1

    if-ne v14, v6, :cond_f1

    .line 2195
    :try_start_c
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "MDM is enabled"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const/4 v7, 0x1

    .line 2197
    .local v7, "enabledSSO":Z
    const/4 v14, 0x1

    if-ne v14, v7, :cond_57b

    .line 2199
    new-instance v10, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v10, v14}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_20} :catch_5fb

    .line 2200
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .local v10, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_20
    const-string/jumbo v15, "enterprise_sso_policy"

    move-object v0, v10

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2201
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "enterprise_sso_policy"

    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    new-instance v9, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_3b} :catch_58e

    .line 2205
    .end local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_3b
    const-string/jumbo v15, "enterprise_user_space_sso_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2206
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "enterprise_user_space_sso_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    new-instance v10, Lcom/android/server/enterprise/sso/GenericSSOService;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v10, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_56} :catch_5fb

    .line 2210
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_56
    const-string/jumbo v15, "genericssoservice"

    move-object v0, v10

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2211
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "genericssoservice"

    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "SSO is enabled"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    :goto_6f
    const/4 v3, 0x1

    .line 2220
    .local v3, "enabledCEP":Z
    const/4 v14, 0x1

    if-ne v14, v3, :cond_585

    .line 2221
    new-instance v9, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;-><init>(Landroid/content/Context;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_7c} :catch_58e

    .line 2222
    .end local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_7c
    const-string/jumbo v15, "knox_scep_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2223
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "knox_scep_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "CEP is enabled"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_95} :catch_5fb

    move-object v10, v9

    .line 2231
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_96
    :try_start_96
    new-instance v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;-><init>(Landroid/content/Context;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9f} :catch_5ad
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_9f} :catch_58e

    .line 2232
    .end local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_9f
    const-string/jumbo v15, "enterprise_dlp_service"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2233
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "enterprise_dlp_service"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    move-object/from16 v0, p0

    iget-object v14, v0, mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v15, "enterprise_dlp_service"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2236
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "DLPManagerPolicyService service is added"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c2} :catch_5fd
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_c2} :catch_5fb

    move-object v10, v9

    .line 2243
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_c3
    const/4 v4, 0x1

    .line 2244
    .local v4, "enabledCSDK":Z
    const/4 v14, 0x1

    if-ne v14, v4, :cond_5b5

    .line 2245
    :try_start_c7
    const-string v14, "application_policy"

    invoke-static {v14}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2246
    .local v1, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v9, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_d8} :catch_58e

    .line 2247
    .end local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_d8
    const-string/jumbo v15, "knoxcustom"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2248
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "knoxcustom"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "CSDK is enabled"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_f1} :catch_5fb

    .line 2260
    .end local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v3    # "enabledCEP":Z
    .end local v4    # "enabledCSDK":Z
    .end local v7    # "enabledSSO":Z
    :cond_f1
    :goto_f1
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Adding Services..."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    :try_start_f8
    new-instance v9, Lcom/android/server/enterprise/device/DeviceInfo;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 2265
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "device_info"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2266
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "device_info"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    new-instance v9, Lcom/android/server/enterprise/license/LicenseLogService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    .line 2269
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "license_log_service"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2270
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "license_log_service"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    new-instance v9, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    .line 2274
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v15, "auditlog"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2275
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string v15, "auditlog"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    new-instance v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2287
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "eas_account_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2288
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "eas_account_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    new-instance v9, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/email/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2291
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "email_account_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2292
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "email_account_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    new-instance v9, Lcom/android/server/enterprise/location/LocationPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    .line 2295
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "location_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2296
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "location_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    new-instance v9, Lcom/android/server/enterprise/general/MiscPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    .line 2299
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "misc_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2300
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "misc_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    new-instance v9, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    .line 2303
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "vpn_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2304
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "vpn_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    new-instance v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;-><init>(Landroid/content/Context;)V

    .line 2307
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "enterprise_vpn_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2308
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "enterprise_vpn_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    const-string v14, "application_policy"

    invoke-static {v14}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2311
    .restart local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    const-string/jumbo v14, "vpn_policy"

    invoke-static {v14}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 2312
    .local v13, "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    new-instance v9, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14, v1, v13}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/vpn/VpnInfoPolicy;)V

    .line 2313
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "restriction_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2314
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "restriction_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    new-instance v9, Lcom/android/server/enterprise/security/PasswordPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    .line 2317
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "password_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2318
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "password_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    new-instance v9, Lcom/android/server/enterprise/security/SecurityPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    .line 2321
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "security_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2322
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "security_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    new-instance v9, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    .line 2325
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "roaming_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2326
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "roaming_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    new-instance v9, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    .line 2329
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v15, "bluetooth_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2330
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string v15, "bluetooth_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    new-instance v9, Lcom/android/server/enterprise/email/EmailPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    .line 2334
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "email_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2335
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "email_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2338
    new-instance v9, Lcom/android/server/enterprise/firewall/Firewall;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/firewall/Firewall;-><init>(Landroid/content/Context;)V

    .line 2339
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "firewall"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2340
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "firewall"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    new-instance v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/firewall/FirewallPolicy;-><init>(Landroid/content/Context;)V

    .line 2343
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "firewall_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2344
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "firewall_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    invoke-direct/range {p0 .. p0}, getKnoxVpnFeature()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_30d

    .line 2348
    new-instance v9, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;-><init>(Landroid/content/Context;)V

    .line 2349
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "enterprise_premium_vpn_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2350
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "enterprise_premium_vpn_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    new-instance v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V

    .line 2353
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "knox_vpn_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2354
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "knox_vpn_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    :cond_30d
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    .line 2365
    .local v12, "versionInfo":Landroid/os/Bundle;
    const-string v14, "2.0"

    const-string/jumbo v15, "version"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33f

    .line 2366
    const/4 v5, 0x1

    .line 2367
    .local v5, "enabledContainer":Z
    const/4 v14, 0x1

    if-ne v14, v5, :cond_33f

    .line 2368
    new-instance v9, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    .line 2369
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "mum_container_rcp_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2370
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "mum_container_rcp_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    .end local v5    # "enabledContainer":Z
    :cond_33f
    new-instance v9, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    .line 2375
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v15, "certificate_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2376
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string v15, "certificate_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    new-instance v9, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    .line 2380
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v15, "apn_settings_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2381
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string v15, "apn_settings_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    new-instance v9, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 2384
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v15, "browser_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2385
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string v15, "browser_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    new-instance v9, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    .line 2391
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "date_time_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2392
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "date_time_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    new-instance v9, Lcom/android/server/enterprise/spd/SPDControlPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/spd/SPDControlPolicy;-><init>(Landroid/content/Context;)V

    .line 2395
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "spd_control_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2396
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "spd_control_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    new-instance v9, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 2399
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "kioskmode"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2400
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "kioskmode"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    new-instance v9, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;-><init>(Landroid/content/Context;)V

    .line 2403
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v15, "apppermission_control_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2404
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string v15, "apppermission_control_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    new-instance v9, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2408
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "ldap_account_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2409
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "ldap_account_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    new-instance v9, Lcom/android/server/enterprise/lso/LSOService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    .line 2412
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    invoke-static {}, Lcom/android/server/enterprise/lso/LSOService;->getServiceName()Ljava/lang/String;

    move-result-object v15

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2413
    sget-object v14, mPolicyServices:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/enterprise/lso/LSOService;->getServiceName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    new-instance v9, Lcom/android/server/enterprise/geofencing/GeofenceService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    .line 2416
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "geofencing"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2417
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "geofencing"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    new-instance v9, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2420
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "device_account_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2421
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "device_account_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    new-instance v9, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;-><init>(Landroid/content/Context;)V

    .line 2424
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "dualsim_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2425
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "dualsim_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2429
    new-instance v9, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;-><init>(Landroid/content/Context;)V

    .line 2430
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "smartcard_email_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2431
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "smartcard_email_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2433
    new-instance v9, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;-><init>(Landroid/content/Context;)V

    .line 2434
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "smartcard_vpn_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2435
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "smartcard_vpn_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    new-instance v9, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 2438
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "smartcard_browser_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2439
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "smartcard_browser_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    new-instance v9, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;-><init>(Landroid/content/Context;)V

    .line 2442
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "smartcard_lockscreen_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2443
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "smartcard_lockscreen_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    new-instance v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;-><init>(Landroid/content/Context;)V

    .line 2446
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "smartcard_access_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2447
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "smartcard_access_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    new-instance v9, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;-><init>(Landroid/content/Context;)V

    .line 2451
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v15, "bluetooth_secure_mode_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2452
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string v15, "bluetooth_secure_mode_policy"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    new-instance v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;-><init>(Landroid/content/Context;)V

    .line 2456
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "knox_pinpad_service"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2457
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "knox_pinpad_service"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_539
    const/4 v14, 0x3

    if-gt v8, v14, :cond_5bf

    .line 2462
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sec.clipboard"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2463
    .local v11, "sn":Ljava/lang/String;
    new-instance v14, Lcom/android/server/clipboard/ClipboardService;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v11, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2465
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sec.clipboardEx"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_577
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_577} :catch_5de

    move-result-object v11

    .line 2461
    add-int/lit8 v8, v8, 0x1

    goto :goto_539

    .line 2216
    .end local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v8    # "i":I
    .end local v11    # "sn":Ljava/lang/String;
    .end local v12    # "versionInfo":Landroid/os/Bundle;
    .end local v13    # "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    .restart local v7    # "enabledSSO":Z
    :cond_57b
    :try_start_57b
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "MDM is enabled, but SSO is not enabled"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_582
    .catch Ljava/lang/Throwable; {:try_start_57b .. :try_end_582} :catch_5fb

    move-object v10, v9

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    goto/16 :goto_6f

    .line 2226
    .restart local v3    # "enabledCEP":Z
    :cond_585
    :try_start_585
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "MDM is enabled, but CEP is not enabled"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58c
    .catch Ljava/lang/Throwable; {:try_start_585 .. :try_end_58c} :catch_58e

    goto/16 :goto_96

    .line 2256
    .end local v3    # "enabledCEP":Z
    :catch_58e
    move-exception v2

    move-object v9, v10

    .line 2257
    .end local v7    # "enabledSSO":Z
    .end local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .local v2, "e":Ljava/lang/Throwable;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_590
    const-string v14, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failure creating Policy services"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f1

    .line 2237
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v3    # "enabledCEP":Z
    .restart local v7    # "enabledSSO":Z
    .restart local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :catch_5ad
    move-exception v2

    move-object v9, v10

    .line 2238
    .end local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_5af
    :try_start_5af
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b2
    .catch Ljava/lang/Throwable; {:try_start_5af .. :try_end_5b2} :catch_5fb

    move-object v10, v9

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    goto/16 :goto_c3

    .line 2251
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "enabledCSDK":Z
    :cond_5b5
    :try_start_5b5
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "MDM is enabled, but CSDK is not enabled"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5bc
    .catch Ljava/lang/Throwable; {:try_start_5b5 .. :try_end_5bc} :catch_58e

    move-object v9, v10

    .end local v10    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    goto/16 :goto_f1

    .line 2471
    .end local v3    # "enabledCEP":Z
    .end local v4    # "enabledCSDK":Z
    .end local v7    # "enabledSSO":Z
    .restart local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .restart local v8    # "i":I
    .restart local v12    # "versionInfo":Landroid/os/Bundle;
    .restart local v13    # "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    :cond_5bf
    :try_start_5bf
    new-instance v9, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;-><init>(Landroid/content/Context;)V

    .line 2472
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v15, "multi_user_manager_service"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v14, v0

    invoke-static {v15, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2473
    sget-object v14, mPolicyServices:Ljava/util/Map;

    const-string/jumbo v15, "multi_user_manager_service"

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5da
    .catch Ljava/lang/Throwable; {:try_start_5bf .. :try_end_5da} :catch_5de

    .line 2480
    .end local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v8    # "i":I
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .end local v12    # "versionInfo":Landroid/os/Bundle;
    .end local v13    # "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    :goto_5da
    const/4 v14, 0x1

    sput-boolean v14, mServicesAdded:Z

    .line 2481
    return-void

    .line 2475
    :catch_5de
    move-exception v2

    .line 2476
    .local v2, "e":Ljava/lang/Throwable;
    const-string v14, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failure creating Policy services"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5da

    .line 2256
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :catch_5fb
    move-exception v2

    goto :goto_590

    .line 2237
    .restart local v3    # "enabledCEP":Z
    .restart local v7    # "enabledSSO":Z
    :catch_5fd
    move-exception v2

    goto :goto_5af
.end method

.method private checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1974
    .local v4, "ident":J
    :try_start_4
    const-string/jumbo v9, "enterprise_license_policy"

    invoke-static {v9}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 1975
    .local v8, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v8, :cond_2e

    .line 1976
    invoke-virtual {v8}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v7

    .line 1977
    .local v7, "list":[Landroid/app/enterprise/license/LicenseInfo;
    if-eqz v7, :cond_2e

    .line 1978
    move-object v0, v7

    .local v0, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_18
    if-ge v2, v6, :cond_2e

    aget-object v3, v0, v2

    .line 1979
    .local v3, "info":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v3}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_33
    .catchall {:try_start_4 .. :try_end_23} :catchall_50

    move-result v9

    if-eqz v9, :cond_2b

    .line 1980
    const/4 v9, 0x1

    .line 1988
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1991
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v6    # "len$":I
    .end local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v8    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :goto_2a
    return v9

    .line 1978
    .restart local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v2    # "i$":I
    .restart local v3    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "len$":I
    .restart local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1988
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v6    # "len$":I
    .end local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    :cond_2e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1991
    .end local v8    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :goto_31
    const/4 v9, 0x0

    goto :goto_2a

    .line 1985
    :catch_33
    move-exception v1

    .line 1986
    .local v1, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_50

    .line 1988
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_50
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private checkCallerIsUMC()Z
    .registers 7

    .prologue
    .line 3123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3125
    .local v1, "uid":I
    const/4 v2, -0x1

    .line 3127
    .local v2, "umcuid":I
    :try_start_5
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_19

    move-result v2

    .line 3132
    :goto_15
    if-ne v1, v2, :cond_20

    .line 3134
    const/4 v3, 0x1

    .line 3137
    :goto_18
    return v3

    .line 3128
    :catch_19
    move-exception v0

    .line 3129
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_15

    .line 3137
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    const/4 v3, 0x0

    goto :goto_18
.end method

.method private checkContainerOwnerShip(Landroid/app/enterprise/ContextInfo;)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v5, 0x64

    .line 782
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 784
    .local v3, "userId":I
    if-ge v3, v5, :cond_f

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-ge v4, v5, :cond_f

    .line 800
    :cond_e
    return-void

    .line 788
    :cond_f
    move v0, v3

    .line 790
    .local v0, "containerId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lt v4, v5, :cond_16

    .line 791
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 794
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 795
    .local v2, "uid":I
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 797
    .local v1, "ownerUid":I
    if-eq v1, v2, :cond_e

    .line 798
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin doesn\'t own container uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ContextInfo.uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private checkContainerOwnerShipForUMC(Landroid/app/enterprise/ContextInfo;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v4, 0x64

    .line 803
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 805
    .local v2, "userId":I
    if-ge v2, v4, :cond_f

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-ge v3, v4, :cond_f

    .line 820
    :cond_e
    return-void

    .line 809
    :cond_f
    move v0, v2

    .line 811
    .local v0, "containerId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lt v3, v4, :cond_16

    .line 812
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 815
    :cond_16
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 817
    .local v1, "ownerUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v1, v3, :cond_e

    .line 818
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin doesn\'t own container id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ContextInfo.uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkKnoxCustomBootAnimEnabled()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 3707
    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/knoxcustom"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3708
    .local v1, "knoxCustomBootEnableDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3709
    .local v2, "knoxCustomBootEnableProperty":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 3710
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "KnoxCustom Boot Property exists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/b2b/BootFileInfo.txt"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3712
    .local v0, "KnoxCustomBootingContents":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_37

    .line 3713
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "KnoxCustom BootFileInfo does not exists. B2C"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3714
    invoke-virtual {v1, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3715
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3722
    .end local v0    # "KnoxCustomBootingContents":Ljava/io/File;
    :goto_36
    return-void

    .line 3717
    .restart local v0    # "KnoxCustomBootingContents":Ljava/io/File;
    :cond_37
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "KnoxCustom BootFileInfo exists. B2B"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 3720
    .end local v0    # "KnoxCustomBootingContents":Ljava/io/File;
    :cond_3f
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "KnoxCustom Boot Property does not exists. B2C"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method private checkProxyAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3156
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v7, "permissions"

    aput-object v7, v0, v9

    .line 3159
    .local v0, "columns":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3160
    .local v4, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "proxyUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3161
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "PROXY_ADMIN_INFO"

    invoke-virtual {v7, v10, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 3162
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_54

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_54

    .line 3163
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v10, "permissions"

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3164
    .local v5, "serializedPerms":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6a

    .line 3165
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3166
    .local v3, "perms":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3167
    .local v2, "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    move v7, v8

    .line 3179
    .end local v2    # "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "perms":[Ljava/lang/String;
    .end local v5    # "serializedPerms":Ljava/lang/String;
    :goto_53
    return v7

    .line 3173
    :cond_54
    :try_start_54
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-interface {v7, p2, v10}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_62

    move-result v7

    if-nez v7, :cond_6a

    move v7, v8

    .line 3174
    goto :goto_53

    .line 3175
    :catch_62
    move-exception v1

    .line 3176
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "could not check calling permission"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6a
    move v7, v9

    .line 3179
    goto :goto_53
.end method

.method private cleanGenericTableOnUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 502
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "userID"

    aput-object v2, v0, v3

    .line 505
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 508
    .local v1, "sValues":[Ljava/lang/String;
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "generic"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 510
    return-void
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1948
    if-eqz p2, :cond_5

    if-nez p1, :cond_d

    .line 1949
    :cond_5
    const-string v8, "EnterpriseDeviceManagerService"

    const-string v9, "Invalid arguments"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :cond_c
    :goto_c
    return v7

    .line 1952
    :cond_d
    const/4 v4, 0x0

    .line 1954
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_17} :catch_35

    move-result-object v4

    .line 1959
    :goto_18
    if-eqz v4, :cond_c

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_c

    .line 1960
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1961
    .local v6, "signs":[Landroid/content/pm/Signature;
    move-object v0, v6

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_23
    if-ge v2, v3, :cond_c

    aget-object v5, v0, v2

    .line 1962
    .local v5, "sign":Landroid/content/pm/Signature;
    if-eqz v5, :cond_3a

    .line 1963
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 1964
    const/4 v7, 0x1

    goto :goto_c

    .line 1955
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "sign":Landroid/content/pm/Signature;
    .end local v6    # "signs":[Landroid/content/pm/Signature;
    :catch_35
    move-exception v1

    .line 1956
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_18

    .line 1961
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "sign":Landroid/content/pm/Signature;
    .restart local v6    # "signs":[Landroid/content/pm/Signature;
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_23
.end method

.method private static compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    .registers 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1912
    const/4 v4, 0x0

    .line 1914
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android"

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_d} :catch_32

    move-result-object v4

    .line 1919
    if-nez v4, :cond_17

    .line 1920
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Could not Read package info"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    :cond_17
    if-eqz v4, :cond_36

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_36

    if-eqz p1, :cond_36

    .line 1923
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1924
    .local v5, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_28
    if-ge v2, v3, :cond_37

    aget-object v7, v0, v2

    .line 1925
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1924
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1915
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :catch_32
    move-exception v1

    .line 1916
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1938
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_36
    :goto_36
    return v8

    .line 1927
    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_37
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1928
    .local v6, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v3, :cond_49

    aget-object v7, v0, v2

    .line 1929
    .restart local v7    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1928
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 1932
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_49
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 1933
    const/4 v8, 0x1

    goto :goto_36
.end method

.method public static createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2780
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating context as user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    const/4 v0, 0x0

    .line 2783
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2785
    .local v2, "token":J
    :try_start_1d
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_25} :catch_2a
    .catchall {:try_start_1d .. :try_end_25} :catchall_55

    move-result-object v0

    .line 2790
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2792
    :goto_29
    return-object v0

    .line 2787
    :catch_2a
    move-exception v1

    .line 2788
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2b
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be found! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_55

    .line 2790
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_55
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V
    .registers 16
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerUid"    # I

    .prologue
    .line 3043
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3044
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v10, 0x9

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "proxyUid"

    aput-object v11, v1, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "proxyType"

    aput-object v11, v1, v10

    const/4 v10, 0x3

    const-string v11, "componentName"

    aput-object v11, v1, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "proxyComponentName"

    aput-object v11, v1, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "label"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "icon"

    aput-object v11, v1, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "description"

    aput-object v11, v1, v10

    const/16 v10, 0x8

    const-string/jumbo v11, "permissions"

    aput-object v11, v1, v10

    .line 3051
    .local v1, "columns":[Ljava/lang/String;
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "PROXY_ADMIN_INFO"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v1, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 3055
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3056
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "proxyUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3057
    .local v7, "proxyUid":I
    const-string v10, "adminUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3058
    .local v8, "uid":I
    const-string v10, "componentName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3059
    .local v0, "adminName":Ljava/lang/String;
    const-string/jumbo v10, "proxyComponentName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3060
    .local v6, "proxyName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    if-ne v8, p2, :cond_4b

    .line 3062
    :try_start_85
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {p0, v10, v11}, removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3064
    invoke-virtual {p0, v7}, removeProxyAdmin(I)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_93} :catch_94

    goto :goto_4b

    .line 3065
    :catch_94
    move-exception v3

    .line 3066
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "deactivateAdminForUser:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 3070
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "proxyName":Ljava/lang/String;
    .end local v7    # "proxyUid":I
    .end local v8    # "uid":I
    :cond_b3
    return-void
.end method

.method private enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .param p3, "userPolicy"    # Z
    .param p4, "checkActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 657
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 659
    .local v6, "pid":I
    if-nez p1, :cond_f

    .line 661
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 665
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_f
    invoke-static {p1}, getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 668
    .local v3, "contextUid":I
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "caller":Ljava/lang/String;
    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_25

    sget v8, MY_PID:I

    if-eq v6, v8, :cond_2f

    :cond_25
    if-eqz v2, :cond_3d

    const-string v8, "android.uid.system:1000"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 671
    :cond_2f
    if-eqz p3, :cond_3c

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_3c

    .line 672
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 778
    :cond_3c
    :goto_3c
    return-object p1

    .line 678
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_3d
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8, p1}, isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 679
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Operation not supported on profile"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 683
    :cond_4d
    if-eqz p4, :cond_76

    .line 684
    iget-object v8, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 686
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_76

    .line 687
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No active admin owned by uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 692
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_76
    invoke-direct {p0}, checkCallerIsUMC()Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 694
    invoke-direct {p0}, enforceUMCSignature()V

    .line 697
    if-eqz p3, :cond_84

    .line 698
    invoke-direct {p0, p1}, checkContainerOwnerShipForUMC(Landroid/app/enterprise/ContextInfo;)V

    .line 701
    :cond_84
    if-eqz p2, :cond_9b

    invoke-direct {p0, p1, p2}, checkProxyAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9b

    .line 703
    if-eqz p3, :cond_3c

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_3c

    .line 704
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    goto :goto_3c

    .line 711
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_9b
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v8, v7, :cond_c4

    .line 712
    invoke-direct {p0, v7}, getAuthorizedAdminUid(I)I

    move-result v1

    .line 713
    .local v1, "adminUid":I
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v8, v1, :cond_c4

    .line 715
    if-eqz p3, :cond_ac

    .line 716
    invoke-direct {p0, p1}, checkContainerOwnerShipForUMC(Landroid/app/enterprise/ContextInfo;)V

    .line 719
    :cond_ac
    if-eqz p2, :cond_c4

    invoke-direct {p0, p1, p2}, checkProxyAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c4

    .line 721
    if-eqz p3, :cond_3c

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_3c

    .line 722
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    goto/16 :goto_3c

    .line 730
    .end local v1    # "adminUid":I
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_c4
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v8, v7, :cond_f7

    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8, v9}, getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v8

    if-eq v7, v8, :cond_f7

    .line 731
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ContextInfo UID voilation info is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 736
    :cond_f7
    if-eqz p3, :cond_fc

    .line 737
    invoke-direct {p0, p1}, checkContainerOwnerShip(Landroid/app/enterprise/ContextInfo;)V

    .line 740
    :cond_fc
    const/4 v5, 0x0

    .line 743
    .local v5, "permissionGranted":Z
    if-eqz p2, :cond_109

    :try_start_ff
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8, p2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_109

    .line 745
    or-int/lit8 v5, v5, 0x1

    .line 747
    .end local v5    # "permissionGranted":Z
    :cond_109
    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "is permission granted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_122} :catch_13d

    .line 762
    :goto_122
    if-nez v5, :cond_146

    .line 763
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin  does not have "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 757
    :catch_13d
    move-exception v4

    .line 759
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseDeviceManagerService"

    const-string v9, "could not check calling permission"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_122

    .line 772
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_146
    if-eqz p3, :cond_155

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_155

    .line 773
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    goto/16 :goto_3c

    .line 776
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_155
    const-string v8, "EnterpriseDeviceManagerService"

    const-string/jumbo v9, "enforceActiveAdminDualPermission >>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c
.end method

.method private enforceOwnerOnlyAndActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Landroid/app/enterprise/ContextInfo;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .param p3, "checkActiveAdmin"    # Z

    .prologue
    const/4 v3, 0x0

    .line 627
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 629
    .local v1, "userId":I
    if-nez p1, :cond_10

    .line 631
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 634
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_10
    const/16 v2, 0x64

    if-lt v1, v2, :cond_31

    .line 636
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 638
    .local v0, "proxyAdminUid":I
    invoke-direct {p0, v0, p2}, verifyActivePermissions(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 639
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Operation not supported, Device permission not present"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    :cond_28
    invoke-direct {p0, p1, p2, v3, p3}, enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    .line 644
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 651
    .end local v0    # "proxyAdminUid":I
    :goto_30
    return-object v2

    .line 645
    :cond_31
    if-nez v1, :cond_3f

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_3f

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lez v2, :cond_47

    .line 648
    :cond_3f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Operation supported only on owner space"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    :cond_47
    invoke-direct {p0, p1, p2, v3, p3}, enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    goto :goto_30
.end method

.method private enforceUMCSignature()V
    .registers 7

    .prologue
    .line 3142
    :try_start_0
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.enterprise.knox.cloudmdm.smdms"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3144
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v2

    .line 3145
    .local v2, "signatureVerified":Z
    if-nez v2, :cond_29

    .line 3147
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Caller is not real UMC. Signature Verification failed."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_20

    .line 3149
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signatureVerified":Z
    :catch_20
    move-exception v0

    .line 3150
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "package not found"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_29
    return-void
.end method

.method private findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 15
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1211
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1212
    .local v5, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1214
    .local v6, "token":J
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v5, v9, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1216
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_69

    .line 1219
    :cond_24
    invoke-virtual {p0, p2}, getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1220
    .local v4, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1221
    .local v3, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 1223
    :try_start_42
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_4d

    .line 1242
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :goto_49
    return-object v8

    .line 1224
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :catch_4a
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v10

    .line 1226
    goto :goto_49

    .line 1227
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4d
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v8, v10

    .line 1229
    goto :goto_49

    .line 1233
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_50
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1236
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_69
    :try_start_69
    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    iget-object v11, p0, mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, v11, v8}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_77} :catch_79
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_77} :catch_7c

    move-object v8, v9

    goto :goto_49

    .line 1237
    :catch_79
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v10

    .line 1239
    goto :goto_49

    .line 1240
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7c
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v8, v10

    .line 1242
    goto :goto_49
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 7
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 932
    iget-object v2, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 933
    .local v0, "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 934
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .end local v0    # "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 8
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 942
    iget-object v2, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 943
    .local v0, "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_6

    .line 945
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin found on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .end local v0    # "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_4c
    return-object v0

    :cond_4d
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method private getAdminNameForUserId(I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 3359
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 3361
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 3362
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3363
    .local v0, "uid":J
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3366
    .end local v0    # "uid":J
    :goto_1e
    return-object v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method private getAuthorizedAdminUid(I)I
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 3590
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "getAuthorizedAdminUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3591
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3592
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3593
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v4, "adminUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3594
    .local v0, "result":Landroid/content/ContentValues;
    if-eqz v0, :cond_2d

    .line 3595
    const-string v2, "adminUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3597
    :goto_2c
    return v2

    :cond_2d
    const/4 v2, -0x1

    goto :goto_2c
.end method

.method public static getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 823
    if-nez p0, :cond_b

    .line 824
    new-instance p0, Landroid/app/enterprise/ContextInfo;

    .end local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 827
    .restart local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2f

    .line 828
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCallingOrCurrentUserId(): move: cxtInfo.mContainerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 842
    :goto_2e
    return v2

    .line 832
    :cond_2f
    sget v2, MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-ne v2, v3, :cond_48

    .line 833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 835
    .local v0, "token":J
    :try_start_3b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_43

    move-result v2

    .line 837
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2e

    :catchall_43
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 842
    .end local v0    # "token":J
    :cond_48
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    goto :goto_2e
.end method

.method public static getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I
    .registers 3
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 847
    if-nez p0, :cond_7

    .line 848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 855
    :goto_6
    return v0

    .line 851
    :cond_7
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_16

    .line 852
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    goto :goto_6

    .line 855
    :cond_16
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    goto :goto_6
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .registers 1

    .prologue
    .line 2019
    sget-object v0, mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    return-object v0
.end method

.method public static getKioskOrOwnerUserId()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 920
    .local v2, "token":J
    :try_start_5
    const-string/jumbo v4, "persona"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 922
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 923
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    iget v1, v1, Landroid/content/pm/PersonaInfo;->id:I
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2c

    .line 926
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    :goto_27
    return v1

    .line 926
    :cond_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    .end local v0    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private getKnoxVpnFeature()I
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x2

    iput v0, p0, KNOXVPN_FEATURE:I

    .line 355
    iget v0, p0, KNOXVPN_FEATURE:I

    return v0
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "policyService"    # Ljava/lang/String;

    .prologue
    .line 335
    sget-object v0, mPolicyServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I
    .registers 8
    .param p0, "edmStorageProvider"    # Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .param p1, "proxyUid"    # I

    .prologue
    const/4 v5, 0x0

    .line 3302
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v0, v5

    .line 3305
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3306
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3307
    const-string v3, "PROXY_ADMIN_INFO"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 3310
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 3311
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "adminUid"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3314
    .end local p1    # "proxyUid":I
    :cond_33
    return p1
.end method

.method private handleDowngrade()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1995
    const-string v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v5, "handleDowngrade: Checking Downgrade..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const/4 v1, 0x0

    .line 1997
    .local v1, "edmDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "enterprise.db"

    .line 1999
    .local v2, "edmDBPath":Ljava/lang/String;
    :try_start_d
    iget-object v4, p0, mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_45

    move-result-object v1

    .line 2006
    :goto_15
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 2007
    .local v3, "oldVersion":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2009
    const/4 v4, 0x7

    if-le v3, v4, :cond_44

    .line 2010
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Current Platform Version is older than the previous DB version"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/enterprise.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2013
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/dmappmgr.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2014
    invoke-direct {p0, v7}, sendMigrationIntent(Z)V

    .line 2016
    :cond_44
    return-void

    .line 2001
    .end local v3    # "oldVersion":I
    :catch_45
    move-exception v0

    .line 2003
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not open or create databse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private initServices()V
    .registers 5

    .prologue
    .line 2484
    sget-object v2, mPolicyServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2487
    .local v1, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    iget-object v2, p0, mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2488
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v2}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_a

    .line 2491
    .end local v1    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_2c
    return-void
.end method

.method private isFirmwareChanged()Z
    .registers 5

    .prologue
    .line 2576
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2577
    .local v0, "swVer":Ljava/lang/String;
    const-string/jumbo v2, "ro.build.fingerprint"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2578
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x0

    .line 2579
    :cond_1c
    if-eqz v0, :cond_26

    if-eqz v1, :cond_2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2580
    :cond_26
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2581
    const/4 v2, 0x1

    .line 2583
    :goto_2e
    return v2

    :cond_2f
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method public static isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 891
    if-nez p0, :cond_b

    .line 893
    new-instance p0, Landroid/app/enterprise/ContextInfo;

    .end local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 896
    .restart local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget v4, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 897
    .local v1, "userId":I
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKioskOrOwnerUserId(): userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 901
    .local v2, "token":J
    :try_start_2e
    const-string/jumbo v4, "persona"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 903
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_41

    if-eqz v0, :cond_46

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_4b

    move-result v4

    if-eqz v4, :cond_46

    .line 905
    :cond_41
    const/4 v4, 0x1

    .line 908
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    :goto_45
    return v4

    .line 908
    :cond_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    const/4 v4, 0x0

    goto :goto_45

    .line 908
    .end local v0    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catchall_4b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 863
    if-nez p1, :cond_c

    .line 865
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p1, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 868
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_c
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 869
    .local v3, "userId":I
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isManagedProfileUser(): userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 873
    .local v0, "ident":J
    :try_start_2f
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 874
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 875
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_4b

    .line 876
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_4f

    move-result v6

    if-eqz v6, :cond_43

    .line 883
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_42
    return v5

    .line 878
    :cond_43
    :try_start_43
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4f

    move-result v5

    .line 883
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_42

    :cond_4b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_42

    .end local v2    # "um":Landroid/os/UserManager;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4f
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private isMdmAdminPresentInternal()Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 2686
    :try_start_1
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2687
    .local v5, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2688
    .local v4, "storedUid":I
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2689
    .local v0, "compName":Landroid/content/ComponentName;
    if-eqz v0, :cond_b

    sget-object v6, EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2693
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v0, v6}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v6

    if-eqz v6, :cond_50

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v0, v6}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 2695
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2715
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "storedUid":I
    .end local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_4f
    return v6

    .line 2699
    .restart local v0    # "compName":Landroid/content/ComponentName;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "storedUid":I
    .restart local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_50
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2702
    .local v3, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 2703
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2704
    goto :goto_4f

    .line 2707
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v3    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "storedUid":I
    :cond_69
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Not Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_70} :catch_72

    .line 2708
    const/4 v6, 0x0

    goto :goto_4f

    .line 2710
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_72
    move-exception v1

    .line 2711
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isMdmAdminPresentInternal EX"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2715
    goto :goto_4f
.end method

.method private static isPackageInstalled(Ljava/lang/String;I)Z
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3685
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3686
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3687
    .local v4, "token":J
    if-eqz v2, :cond_2f

    .line 3689
    const/4 v6, 0x0

    :try_start_c
    invoke-interface {v2, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3690
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_30

    .line 3691
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPackageInstalled() : package present. application : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2b} :catch_4d
    .catchall {:try_start_c .. :try_end_2b} :catchall_59

    .line 3692
    const/4 v3, 0x1

    .line 3700
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3703
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2f
    :goto_2f
    return v3

    .line 3694
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_30
    :try_start_30
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPackageInstalled() : package is not present. application : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_49} :catch_4d
    .catchall {:try_start_30 .. :try_end_49} :catchall_59

    .line 3700
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 3697
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_4d
    move-exception v0

    .line 3698
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4e
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "Exception in isPackageInstalled()"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_59

    .line 3700
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_59
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3268
    const-string v4, "apppermission_control_policy"

    invoke-static {v4}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .line 3270
    .local v1, "policy":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3272
    .local v2, "token":J
    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {v1, v4, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getApplicationGrantedPermissions(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3274
    .local v0, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_23
    .catchall {:try_start_d .. :try_end_16} :catchall_28

    move-result v4

    if-eqz v4, :cond_1e

    .line 3275
    const/4 v4, 0x1

    .line 3280
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3282
    .end local v0    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1d
    return v4

    .line 3280
    .restart local v0    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3282
    .end local v0    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_21
    const/4 v4, 0x0

    goto :goto_1d

    .line 3277
    :catch_23
    move-exception v4

    .line 3280
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_21

    :catchall_28
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1887
    if-nez p1, :cond_5

    move v2, v3

    .line 1908
    :goto_4
    return v2

    .line 1890
    :cond_5
    const/4 v1, 0x0

    .line 1892
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_f} :catch_2c

    move-result-object v1

    .line 1896
    :goto_10
    if-nez v1, :cond_31

    .line 1897
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldnt get Package Info for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1898
    goto :goto_4

    .line 1893
    :catch_2c
    move-exception v0

    .line 1894
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_10

    .line 1901
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_31
    const/4 v2, 0x0

    .line 1903
    .local v2, "ret":Z
    :try_start_32
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, v4}, compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_39

    move-result v2

    goto :goto_4

    .line 1904
    :catch_39
    move-exception v0

    .line 1905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 1906
    goto :goto_4
.end method

.method private loadActiveAdmins()V
    .registers 27

    .prologue
    .line 1293
    monitor-enter p0

    .line 1294
    :try_start_1
    const-string v22, "EnterpriseDeviceManagerService"

    const-string/jumbo v23, "loadActiveAdmins"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v19

    .line 1296
    .local v19, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_273

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1297
    .local v16, "storedUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_101

    move-result-object v7

    .line 1298
    .local v7, "compName":Landroid/content/ComponentName;
    if-eqz v7, :cond_17

    .line 1303
    :try_start_37
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1304
    .local v5, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_224

    .line 1305
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1306
    .local v8, "currentUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_6f} :catch_e2
    .catchall {:try_start_37 .. :try_end_6f} :catchall_101

    .line 1308
    move/from16 v0, v16

    if-ne v8, v0, :cond_104

    .line 1310
    :try_start_73
    move-object/from16 v0, p0

    iget-object v0, v0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v22

    if-nez v22, :cond_17

    .line 1312
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1313
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1315
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin invalid on DPM, removing from EDM:   "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_da} :catch_dc
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_da} :catch_e2
    .catchall {:try_start_73 .. :try_end_da} :catchall_101

    goto/16 :goto_17

    .line 1319
    :catch_dc
    move-exception v10

    .line 1320
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_dd
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_e0
    .catch Ljava/lang/RuntimeException; {:try_start_dd .. :try_end_e0} :catch_e2
    .catchall {:try_start_dd .. :try_end_e0} :catchall_101

    goto/16 :goto_17

    .line 1362
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v8    # "currentUid":I
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_e2
    move-exception v10

    .line 1363
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_e3
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception occured while loading active admins "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 1418
    .end local v7    # "compName":Landroid/content/ComponentName;
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "storedUid":I
    .end local v19    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_101
    move-exception v22

    monitor-exit p0
    :try_end_103
    .catchall {:try_start_e3 .. :try_end_103} :catchall_101

    throw v22

    .line 1323
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v7    # "compName":Landroid/content/ComponentName;
    .restart local v8    # "currentUid":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "storedUid":I
    .restart local v19    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_104
    :try_start_104
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "ADMIN_INFO"

    const-string v24, "adminUid"

    move-object/from16 v0, v22

    move/from16 v1, v16

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_1bf

    .line 1326
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", updated with new currentUid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", old storedUid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_152
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_152} :catch_e2
    .catchall {:try_start_104 .. :try_end_152} :catchall_101

    .line 1330
    :try_start_152
    move-object/from16 v0, p0

    iget-object v0, v0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v22

    if-nez v22, :cond_17

    .line 1333
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1334
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1335
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin invalid on DPM, removing from EDM: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b7
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_1b7} :catch_1b9
    .catch Ljava/lang/RuntimeException; {:try_start_152 .. :try_end_1b7} :catch_e2
    .catchall {:try_start_152 .. :try_end_1b7} :catchall_101

    goto/16 :goto_17

    .line 1339
    :catch_1b9
    move-exception v10

    .line 1340
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1ba
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_17

    .line 1343
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1bf
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1345
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1346
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1348
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed updating uid, removed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 1355
    .end local v8    # "currentUid":I
    :cond_224
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1356
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1358
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin loaded null, removed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_271
    .catch Ljava/lang/RuntimeException; {:try_start_1ba .. :try_end_271} :catch_e2
    .catchall {:try_start_1ba .. :try_end_271} :catchall_101

    goto/16 :goto_17

    .line 1368
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v7    # "compName":Landroid/content/ComponentName;
    .end local v16    # "storedUid":I
    :cond_273
    :try_start_273
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 1369
    .local v20, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v21

    .line 1370
    .local v21, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_28a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_421

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 1371
    .local v17, "uf":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, getActiveAdminsInfo(I)Ljava/util/List;
    :try_end_2a3
    .catchall {:try_start_273 .. :try_end_2a3} :catchall_101

    move-result-object v11

    .line 1373
    .local v11, "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    const/4 v9, 0x0

    .line 1375
    .local v9, "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_2a5
    move-object/from16 v0, p0

    iget-object v0, v0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;
    :try_end_2b4
    .catch Landroid/os/RemoteException; {:try_start_2a5 .. :try_end_2b4} :catch_35f
    .catchall {:try_start_2a5 .. :try_end_2b4} :catchall_101

    move-result-object v9

    .line 1380
    :goto_2b5
    if-eqz v9, :cond_28a

    .line 1381
    if-eqz v11, :cond_2bf

    :try_start_2b9
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_37e

    .line 1382
    :cond_2bf
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding all admins from DPM for user : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2e1
    :goto_2e1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_28a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1384
    .local v6, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v1}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1385
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_2e1

    .line 1386
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding missing admin to EDM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 1388
    .local v18, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_2e1

    .line 1376
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "uid":I
    :catch_35f
    move-exception v10

    .line 1377
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to get active admins from dpm "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b5

    .line 1395
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_37e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_382
    :goto_382
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_28a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1396
    .restart local v6    # "cn":Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 1397
    .local v12, "found":Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_393
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3ac

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1398
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_393

    .line 1399
    const/4 v12, 0x1

    .line 1403
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_3ac
    if-nez v12, :cond_382

    .line 1404
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v1}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1405
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_382

    .line 1406
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding missing admin to EDM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 1408
    .restart local v18    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto/16 :goto_382

    .line 1418
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v9    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v11    # "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v12    # "found":Z
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "uf":Landroid/content/pm/UserInfo;
    .end local v18    # "uid":I
    :cond_421
    monitor-exit p0
    :try_end_422
    .catchall {:try_start_2b9 .. :try_end_422} :catchall_101

    .line 1419
    return-void
.end method

.method private migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "newContainerId"    # I
    .param p3, "newContainerAdminUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3381
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Migrating ECPP Database data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EcppMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EcppMigrationManager;->migrateEcppDB(Landroid/content/ComponentName;IJ)Z

    move-result v0

    return v0
.end method

.method private migrateEnterpriseDatabase(IZ)J
    .registers 5
    .param p1, "newContainerId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3397
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Migrating Enterprise data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateEnterpriseDB(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1089
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :try_start_22
    iget-object v1, p0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_27} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_27} :catch_4e

    .line 1098
    :goto_27
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "Admin removed from DPM!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    return-void

    .line 1093
    :catch_2f
    move-exception v0

    .line 1094
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to remove action admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 1095
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_4e
    move-exception v0

    .line 1096
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to remove action admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method private removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    .registers 24
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1109
    monitor-enter p0

    .line 1110
    :try_start_1
    const-string v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "removeActiveAdminDelayed - adminReceiver: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", userId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-direct/range {p0 .. p2}, getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v4

    .line 1113
    .local v4, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v4, :cond_34

    .line 1114
    monitor-exit p0

    .line 1207
    :goto_33
    return-void

    .line 1116
    :cond_34
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    .line 1117
    .local v17, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1118
    .local v5, "callingUid":I
    const-string v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Admin uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", calling uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    move/from16 v0, v17

    if-eq v0, v5, :cond_81

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "android.permission.BIND_DEVICE_ADMIN"

    const-string v20, "Only system or itself can remove an EDM admin"

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v6

    .line 1130
    .local v6, "canRemove":Z
    if-nez v6, :cond_b9

    .line 1131
    const-string v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Admin "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot be removed!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    monitor-exit p0

    goto/16 :goto_33

    .line 1206
    .end local v4    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v5    # "callingUid":I
    .end local v6    # "canRemove":Z
    .end local v17    # "uid":I
    :catchall_b6
    move-exception v18

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_1 .. :try_end_b8} :catchall_b6

    throw v18

    .line 1135
    .restart local v4    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v5    # "callingUid":I
    .restart local v6    # "canRemove":Z
    .restart local v17    # "uid":I
    :cond_b9
    :try_start_b9
    sget-object v18, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->cleanUpConstrainedState(I)V

    .line 1138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1141
    .local v10, "ident":J
    sget-object v18, mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_d0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;
    :try_end_dc
    .catchall {:try_start_b9 .. :try_end_dc} :catchall_b6

    .line 1143
    .local v15, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_dc
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e9} :catch_ea
    .catchall {:try_start_dc .. :try_end_e9} :catchall_b6

    goto :goto_d0

    .line 1145
    :catch_ea
    move-exception v8

    .line 1146
    .local v8, "e":Ljava/lang/Exception;
    :try_start_eb
    const-string v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "removeActiveAdminDelayed Ex1:"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d0

    .line 1151
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "MyKNOXAdmin"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1152
    .local v14, "myKNOXAdminPkg":Ljava/lang/String;
    if-eqz v14, :cond_129

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_129

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "MyKNOXAdmin"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_129
    .catchall {:try_start_eb .. :try_end_129} :catchall_b6

    .line 1159
    :cond_129
    :try_start_129
    const-string v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removing Admin with uid"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    .line 1165
    const-string/jumbo v18, "restriction_policy"

    invoke-static/range {v18 .. v18}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1166
    .local v16, "restriction":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v16, :cond_18a

    .line 1167
    new-instance v7, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1168
    .local v7, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    .line 1169
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 1172
    .end local v7    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_18a
    const-string/jumbo v18, "knoxcustom"

    invoke-static/range {v18 .. v18}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1173
    .local v13, "knoxcustom":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-eqz v13, :cond_1b6

    .line 1174
    invoke-virtual {v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getForceAutoStartUpState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b6

    .line 1175
    invoke-virtual {v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getForceAutoStartUpStateFromDB()Z

    move-result v18

    if-nez v18, :cond_1b6

    .line 1177
    const-string v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "getForceAutoStartUpStateFromDB is false, so removing param data"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setForceAutoStartUpState(I)I
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_1b6} :catch_1e8
    .catchall {:try_start_129 .. :try_end_1b6} :catchall_b6

    .line 1188
    .end local v13    # "knoxcustom":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .end local v16    # "restriction":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :cond_1b6
    :goto_1b6
    :try_start_1b6
    sget-object v18, mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1c0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1f5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;
    :try_end_1cc
    .catchall {:try_start_1b6 .. :try_end_1cc} :catchall_b6

    .line 1190
    .restart local v15    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_1cc
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1d9} :catch_1da
    .catchall {:try_start_1cc .. :try_end_1d9} :catchall_b6

    goto :goto_1c0

    .line 1192
    :catch_1da
    move-exception v8

    .line 1193
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_1db
    const-string v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "removeActiveAdminDelayed Ex2:"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c0

    .line 1183
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :catch_1e8
    move-exception v8

    .line 1184
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v18, "EnterpriseDeviceManagerService"

    const-string v19, "FATAL: Admin failed to remove lets try during next boot up"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b6

    .line 1197
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1f5
    const-string v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "delete admin, Send intent to Gear for deregister"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1199
    .local v12, "intent":Landroid/content/Intent;
    const-string v18, "android.accessory.device.action.DEACTIVE_MDM"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1202
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ADMIN_REMOVED"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1206
    monitor-exit p0
    :try_end_23d
    .catchall {:try_start_1db .. :try_end_23d} :catchall_b6

    goto/16 :goto_33
.end method

.method private runAdminUpdate()V
    .registers 3

    .prologue
    .line 1732
    sget-object v0, mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 1733
    sget-object v0, mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1740
    :cond_e
    return-void
.end method

.method private selfUpdate()V
    .registers 19

    .prologue
    .line 1745
    const/4 v4, 0x0

    .line 1746
    .local v4, "adminsTemp":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1747
    .local v2, "activeComponent":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 1749
    .local v6, "apkFileTemp":Ljava/io/File;
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4} :catch_34

    .line 1750
    :try_start_4
    sget-object v14, mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    if-eqz v14, :cond_12

    .line 1751
    const-string v14, "EnterpriseDeviceManagerService"

    const-string/jumbo v15, "selfUpdate in progress"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    monitor-exit p0

    .line 1884
    :goto_11
    return-void

    .line 1755
    :cond_12
    const-string/jumbo v14, "self_update_admin_component"

    const-string v15, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1758
    .local v9, "cNames":Ljava/lang/String;
    if-nez v9, :cond_40

    .line 1759
    const-string v14, "EnterpriseDeviceManagerService"

    const-string/jumbo v15, "nothing to selfUpdate"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    new-instance v14, Ljava/io/File;

    const-string v15, "/data/app/selfUpdateApks"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 1762
    monitor-exit p0

    goto :goto_11

    .line 1787
    .end local v9    # "cNames":Ljava/lang/String;
    :catchall_31
    move-exception v14

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    :try_start_33
    throw v14
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_34} :catch_34

    .line 1880
    :catch_34
    move-exception v12

    .line 1881
    .local v12, "e":Ljava/lang/Exception;
    :goto_35
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Upgrade Admin Ex: "

    invoke-static {v14, v15, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1882
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 1765
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "cNames":Ljava/lang/String;
    :cond_40
    :try_start_40
    const-string v14, ";"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1767
    const/4 v14, 0x0

    aget-object v10, v4, v14

    .line 1769
    .local v10, "component":Ljava/lang/String;
    if-nez v10, :cond_4d

    .line 1770
    monitor-exit p0

    goto :goto_11

    .line 1772
    :cond_4d
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1774
    if-nez v2, :cond_55

    .line 1775
    monitor-exit p0

    goto :goto_11

    .line 1777
    :cond_55
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/app/selfUpdateApks/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".apk"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1780
    .local v11, "destFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_40 .. :try_end_77} :catchall_31

    .line 1781
    .end local v6    # "apkFileTemp":Ljava/io/File;
    .local v7, "apkFileTemp":Ljava/io/File;
    :try_start_77
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_83

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v14

    if-nez v14, :cond_8d

    .line 1782
    :cond_83
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Cannot read or is not a file : /data/app/selfUpdateApks/"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    monitor-exit p0

    move-object v6, v7

    .end local v7    # "apkFileTemp":Ljava/io/File;
    .restart local v6    # "apkFileTemp":Ljava/io/File;
    goto :goto_11

    .line 1786
    .end local v6    # "apkFileTemp":Ljava/io/File;
    .restart local v7    # "apkFileTemp":Ljava/io/File;
    :cond_8d
    sput-object v2, mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    .line 1787
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_77 .. :try_end_90} :catchall_108

    .line 1788
    move-object v3, v4

    .line 1789
    .local v3, "admins":[Ljava/lang/String;
    move-object v5, v7

    .line 1793
    .local v5, "apkFile":Ljava/io/File;
    const/4 v14, 0x0

    :try_start_93
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_98} :catch_104
    .catch Ljava/lang/IllegalStateException; {:try_start_93 .. :try_end_98} :catch_106
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_98} :catch_b5

    .line 1798
    :goto_98
    :try_start_98
    move-object/from16 v0, p0

    iget-object v14, v0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    const/4 v15, 0x0

    invoke-interface {v14, v2, v15}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v14

    if-eqz v14, :cond_be

    .line 1799
    monitor-enter v2
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a4} :catch_b5

    .line 1801
    :try_start_a4
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Waiting..."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-wide/16 v14, 0x1388

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_b0} :catch_b9
    .catchall {:try_start_a4 .. :try_end_b0} :catchall_b2

    .line 1806
    :goto_b0
    :try_start_b0
    monitor-exit v2

    goto :goto_98

    :catchall_b2
    move-exception v14

    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v14
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b5} :catch_b5

    .line 1880
    :catch_b5
    move-exception v12

    move-object v6, v7

    .end local v7    # "apkFileTemp":Ljava/io/File;
    .restart local v6    # "apkFileTemp":Ljava/io/File;
    goto/16 :goto_35

    .line 1803
    .end local v6    # "apkFileTemp":Ljava/io/File;
    .restart local v7    # "apkFileTemp":Ljava/io/File;
    :catch_b9
    move-exception v12

    .line 1804
    .local v12, "e":Ljava/lang/InterruptedException;
    :try_start_ba
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_b2

    goto :goto_b0

    .line 1808
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :cond_be
    :try_start_be
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Finished Waiting."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string v14, "application_policy"

    invoke-static {v14}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1816
    .local v8, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Uninstall of old apk"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const/4 v14, -0x1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    .line 1820
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Install of new apk"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1822
    .local v13, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V

    const/16 v16, 0x10

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_101} :catch_b5

    move-object v6, v7

    .line 1883
    .end local v7    # "apkFileTemp":Ljava/io/File;
    .restart local v6    # "apkFileTemp":Ljava/io/File;
    goto/16 :goto_11

    .line 1794
    .end local v6    # "apkFileTemp":Ljava/io/File;
    .end local v8    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "apkFileTemp":Ljava/io/File;
    :catch_104
    move-exception v14

    goto :goto_98

    .line 1795
    :catch_106
    move-exception v14

    goto :goto_98

    .line 1787
    .end local v3    # "admins":[Ljava/lang/String;
    .end local v5    # "apkFile":Ljava/io/File;
    :catchall_108
    move-exception v14

    move-object v6, v7

    .end local v7    # "apkFileTemp":Ljava/io/File;
    .restart local v6    # "apkFileTemp":Ljava/io/File;
    goto/16 :goto_32
.end method

.method private sendMigrationIntent(Z)V
    .registers 2
    .param p1, "result"    # Z

    .prologue
    .line 2547
    return-void
.end method

.method private verifyActivePermissions(ILjava/lang/String;)Z
    .registers 7
    .param p1, "proxyAdminUid"    # I
    .param p2, "requirePermission"    # Ljava/lang/String;

    .prologue
    .line 3288
    iget-object v2, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 3289
    .local v0, "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3291
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    .line 3293
    .local v1, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_22

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3294
    const/4 v2, 0x1

    .line 3297
    .end local v1    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method


# virtual methods
.method public activateAdminForUser(Landroid/content/ComponentName;ZI)V
    .registers 24
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 2956
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Activating proxy admin on user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 2960
    .local v5, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v5, :cond_52

    .line 2961
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad admin: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 2964
    :cond_52
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v16

    if-eqz v16, :cond_67

    sget-object v16, EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_67

    .line 2965
    invoke-virtual/range {p0 .. p0}, checkServices()V

    .line 2968
    :cond_67
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2969
    .local v15, "uid":I
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 2970
    .local v6, "compName":Landroid/content/ComponentName;
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Admin uid: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", Component name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    const/4 v14, 0x2

    .line 2973
    .local v14, "retry":I
    const/4 v4, 0x0

    .line 2974
    .local v4, "activationStatus":Z
    monitor-enter p0

    .line 2975
    :try_start_a2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_187

    move-result-wide v10

    .line 2976
    .local v10, "ident":J
    const/4 v13, 0x1

    .line 2978
    .local v13, "ret":Z
    if-nez p2, :cond_e8

    :try_start_a9
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v16

    if-eqz v16, :cond_e8

    .line 2979
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Admin is already added"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_bf} :catch_bf
    .catchall {:try_start_a9 .. :try_end_bf} :catchall_182

    .line 3025
    :catch_bf
    move-exception v7

    .line 3026
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_c0
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_182

    .line 3029
    :try_start_c3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3032
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_c6
    if-eqz v4, :cond_e6

    .line 3033
    const-string v16, "EnterpriseDeviceManagerService"

    const-string v17, "Calling MSG_POST_ADMIN_ACTIVATION after Admin activation..."

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    sget-object v16, mInternalHandler:Landroid/os/Handler;

    if-eqz v16, :cond_e6

    .line 3035
    sget-object v16, mInternalHandler:Landroid/os/Handler;

    const/16 v17, 0x1

    const/16 v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 3039
    :cond_e6
    monitor-exit p0
    :try_end_e7
    .catchall {:try_start_c3 .. :try_end_e7} :catchall_187

    .line 3040
    return-void

    .line 2982
    :cond_e8
    if-nez p2, :cond_140

    .line 2983
    :try_start_ea
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Adding admin "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to lists"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2988
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v13

    .line 2991
    :cond_140
    if-nez v13, :cond_18a

    .line 2992
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Removing admin "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from lists"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2994
    move-object/from16 v0, p0

    iget-object v0, v0, mAdminMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2995
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Unable to activate admin"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_182
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_182} :catch_bf
    .catchall {:try_start_ea .. :try_end_182} :catchall_182

    .line 3029
    :catchall_182
    move-exception v16

    :try_start_183
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16

    .line 3039
    .end local v10    # "ident":J
    .end local v13    # "ret":Z
    :catchall_187
    move-exception v16

    monitor-exit p0
    :try_end_189
    .catchall {:try_start_183 .. :try_end_189} :catchall_187

    throw v16

    .line 2998
    .restart local v10    # "ident":J
    .restart local v13    # "ret":Z
    :cond_18a
    :try_start_18a
    sget-object v16, mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_194
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1ac

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2999
    .local v12, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_194

    .line 3006
    .end local v12    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_1ac
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1ad
    if-gt v8, v14, :cond_20f

    .line 3007
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Attempt "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to active admin in DPM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 3009
    move-object/from16 v0, p0

    iget-object v0, v0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v16

    if-eqz v16, :cond_27c

    .line 3010
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Admin sucessfully activated in DPM for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    const/4 v4, 0x1

    .line 3017
    :cond_20f
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EDM setActiveAdmin activationStatus -"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for user - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    if-nez v4, :cond_29c

    .line 3019
    const-string v16, "EnterpriseDeviceManagerService"

    const-string v17, "Started removing admin information..."

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    new-instance v16, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 3021
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 3022
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EDM - Admin activation failed for user -"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 3014
    :cond_27c
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Admin activation failed for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1ad

    .line 3024
    :cond_29c
    const-string v16, "EnterpriseDeviceManagerService"

    const-string v17, "Admin added to DPM!"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a3
    .catch Landroid/os/RemoteException; {:try_start_18a .. :try_end_2a3} :catch_bf
    .catchall {:try_start_18a .. :try_end_2a3} :catchall_182

    .line 3029
    :try_start_2a3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2a6
    .catchall {:try_start_2a3 .. :try_end_2a6} :catchall_187

    goto/16 :goto_c6
.end method

.method public activateDevicePermissions(Ljava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3198
    .local p1, "devicePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    const-string v12, "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

    invoke-virtual {p0, v9, v12}, enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3202
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 3208
    .local v8, "proxyAdminUid":I
    iget-object v9, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 3209
    new-instance v9, Ljava/lang/SecurityException;

    const-string v12, "Admin already present and active"

    invoke-direct {v9, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3212
    :cond_22
    const/4 v0, 0x0

    .line 3213
    .local v0, "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    iget-object v9, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .restart local v0    # "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_11d

    .line 3214
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3215
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3217
    .local v5, "packageName":Ljava/lang/String;
    const-string v9, "application_policy"

    invoke-static {v9}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3219
    .local v1, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v1, v5, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 3220
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed due to application is installed in device as user:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    const/4 v9, 0x0

    .line 3257
    :goto_69
    return v9

    .line 3225
    :cond_6a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3226
    .local v7, "permission":Ljava/lang/String;
    invoke-direct {p0, v7, v5}, isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_82

    .line 3227
    const/4 v9, 0x0

    goto :goto_69

    .line 3230
    :cond_82
    sget-object v9, CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 3231
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This permission cannot be set on device level from the container: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    const/4 v9, 0x0

    goto :goto_69

    .line 3236
    .end local v7    # "permission":Ljava/lang/String;
    :cond_a4
    const-string v9, "android.permission.sec.MDM_SECURITY"

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_102

    .line 3238
    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 3239
    const-string/jumbo v9, "encrypted-storage"

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3240
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add device permission: encrypted-storage, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v0, v13}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    :cond_d6
    const/16 v9, 0x14

    invoke-virtual {v0, v9}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_102

    .line 3244
    const-string/jumbo v9, "require-storagecard-encryption"

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3245
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add device permission: require-storagecard-encryption, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x14

    invoke-virtual {v0, v13}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    :cond_102
    new-instance v6, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    invoke-direct {v6, v9, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 3253
    .local v6, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3254
    .local v10, "token":J
    invoke-virtual {p0, v6, v8, v3, v2}, addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 3255
    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v3, v9, v12}, activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 3256
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3257
    const/4 v9, 0x1

    goto/16 :goto_69

    .line 3261
    .end local v1    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v10    # "token":J
    :cond_11d
    new-instance v9, Ljava/lang/SecurityException;

    const-string v12, "No active admin"

    invoke-direct {v9, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public addAuthorizedUid(II)Z
    .registers 6
    .param p1, "authorizedUid"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 3535
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "addAuthorizedUid"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3536
    invoke-direct {p0}, checkCallerIsUMC()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3537
    invoke-direct {p0}, enforceUMCSignature()V

    .line 3538
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3539
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3540
    const-string v1, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3541
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 3543
    .end local v0    # "values":Landroid/content/ContentValues;
    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method public addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .registers 11
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .prologue
    const/4 v5, 0x0

    .line 2804
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2806
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2807
    const-string v3, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    const-string/jumbo v3, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2809
    const-string/jumbo v3, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    const-string/jumbo v3, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2811
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2812
    .local v1, "serializedPerms":Ljava/lang/String;
    if-eqz v1, :cond_87

    .line 2813
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_53
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_81

    .line 2814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2813
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 2816
    :cond_81
    const-string/jumbo v3, "permissions"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    .end local v0    # "i":I
    :cond_87
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_ac

    .line 2819
    const-string/jumbo v3, "label"

    invoke-virtual {p1, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    const-string/jumbo v3, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2821
    const-string/jumbo v3, "description"

    invoke-virtual {p1, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    :cond_ac
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PROXY_ADMIN_INFO"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2825
    return-void
.end method

.method public checkServices()V
    .registers 3

    .prologue
    .line 2723
    sget-boolean v0, mServicesAdded:Z

    if-nez v0, :cond_17

    .line 2724
    sget-object v0, mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    .line 2725
    sget-object v0, mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2735
    sget-object v0, mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2738
    :cond_17
    return-void
.end method

.method public configureContainerAdminForMigration(Z)Z
    .registers 5
    .param p1, "blockAdminConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3444
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configure the MDM admin before and after migration on Device after FOTA update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3446
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v1

    if-nez p1, :cond_26

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->blockAdminToReceivePolicy(Z)Z

    move-result v0

    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public deactivateAdminForUser(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3101
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3103
    :try_start_8
    invoke-direct {p0, p1, p2}, removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 3107
    :goto_b
    return-void

    .line 3104
    :catch_c
    move-exception v0

    .line 3105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deactivateAdminForUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public deactivateProxyAdminsForUser(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v10, 0x0

    .line 3073
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3075
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v8, 0x9

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "proxyUid"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "proxyType"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "componentName"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "proxyComponentName"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "label"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "icon"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string/jumbo v9, "description"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string/jumbo v9, "permissions"

    aput-object v9, v1, v8

    .line 3081
    .local v1, "columns":[Ljava/lang/String;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "PROXY_ADMIN_INFO"

    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 3085
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_52
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3086
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "proxyUid"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3087
    .local v6, "proxyUid":I
    const-string/jumbo v8, "proxyComponentName"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3088
    .local v0, "adminName":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v8, p1, :cond_52

    .line 3090
    :try_start_76
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v8, p1}, removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3092
    invoke-virtual {p0, v6}, removeProxyAdmin(I)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_80} :catch_81

    goto :goto_52

    .line 3093
    :catch_81
    move-exception v3

    .line 3094
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "deactivateAdminForUser:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 3098
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "proxyUid":I
    :cond_a0
    return-void
.end method

.method public disableConstrainedState(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3483
    sget-object v0, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedState(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public enableConstrainedState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "TargetPkgName"    # Ljava/lang/String;
    .param p5, "TargetSignature"    # Ljava/lang/String;
    .param p6, "PolicyBitMask"    # I

    .prologue
    .line 3479
    sget-object v0, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->enableConstrainedState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    .line 579
    return-void
.end method

.method public enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 583
    invoke-direct {p0, p1, p2, v0, v0}, enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 588
    .local v3, "versionInfo":Landroid/os/Bundle;
    if-eqz v3, :cond_57

    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 590
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 592
    .local v1, "pid":I
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v4

    if-nez v4, :cond_26

    .line 593
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 596
    :cond_26
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2, p1, p2}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 598
    .local v0, "isAuthorized":I
    if-eqz v0, :cond_57

    .line 599
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not authorized to be called!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 603
    .end local v0    # "isAuthorized":I
    .end local v1    # "pid":I
    .end local v2    # "uid":I
    :cond_57
    return-void
.end method

.method public enforceContainerOwnerShipPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 610
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, enforceOwnerOnlyAndActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, enforceOwnerOnlyAndActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlySupportedOperation()V
    .registers 5

    .prologue
    .line 2758
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2759
    .local v0, "userId":I
    if-eqz v0, :cond_25

    .line 2760
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation not supported on user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", only allowed on owner."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2763
    :cond_25
    return-void
.end method

.method public enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 606
    invoke-direct {p0, p1, p2, v0, v0}, enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 953
    iget-object v1, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 954
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_17

    .line 955
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 957
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .registers 8
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1430
    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v3, v4}, isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1431
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, " getActiveAdmins calls from Profile return default value"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    :goto_1d
    return-object v2

    .line 1434
    :cond_1e
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    monitor-enter p0

    .line 1436
    :try_start_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v3, p0, mAdminList:Ljava/util/ArrayList;

    if-eqz v3, :cond_38

    iget-object v3, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1438
    :cond_38
    monitor-exit p0

    goto :goto_1d

    .line 1447
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_3a
    move-exception v3

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_3a

    throw v3

    .line 1439
    .restart local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_3d
    :try_start_3d
    iget-object v3, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1440
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    const/16 v3, -0x2710

    if-eq v3, p1, :cond_64

    const/4 v3, -0x1

    if-eq v3, p1, :cond_64

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_43

    .line 1443
    :cond_64
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1446
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_3d .. :try_end_6d} :catchall_3a

    goto :goto_1d
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .registers 8
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1451
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    monitor-enter p0

    .line 1453
    const/16 v3, -0x2710

    if-ne p1, v3, :cond_16

    .line 1454
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, mAdminList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    .line 1462
    :goto_15
    return-object v2

    .line 1456
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1457
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    iget-object v3, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1458
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_21

    .line 1459
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1464
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :catchall_3f
    move-exception v3

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_3f

    throw v3

    .line 1462
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :cond_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    goto :goto_15
.end method

.method public getActiveSamsungAuthorizedAdmin(I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 2625
    iget-object v1, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 2626
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2629
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_14
    return-object v0

    .restart local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getAdminRemovable(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v11, -0x1

    .line 1523
    const/4 v1, -0x1

    .line 1524
    .local v1, "callingUid":I
    if-nez p2, :cond_f

    .line 1525
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1552
    :cond_8
    :goto_8
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v8

    :cond_e
    :goto_e
    return v8

    .line 1528
    :cond_f
    invoke-static {p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1529
    .local v7, "userId":I
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v10

    invoke-virtual {v10, p2, v8, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1531
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_5c

    .line 1532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1533
    .local v2, "callingIdentity":J
    invoke-virtual {p0, v11}, getProxyAdmins(I)Ljava/util/List;

    move-result-object v6

    .line 1534
    .local v6, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1535
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1536
    .local v5, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 1537
    invoke-virtual {v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1538
    invoke-virtual {v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v10

    if-eq v10, v9, :cond_e

    .line 1544
    .end local v5    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_58
    if-ne v1, v11, :cond_8

    move v8, v9

    .line 1545
    goto :goto_e

    .line 1548
    .end local v2    # "callingIdentity":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_5c
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_8
.end method

.method public getAdminUidForAuthorizedUid(I)I
    .registers 7
    .param p1, "authorizedUid"    # I

    .prologue
    .line 3576
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "getAdminUidForAuthorizedUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3577
    invoke-direct {p0}, checkCallerIsUMC()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3578
    invoke-direct {p0}, enforceUMCSignature()V

    .line 3579
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3580
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3581
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v4, "adminUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3582
    .local v0, "result":Landroid/content/ContentValues;
    if-eqz v0, :cond_36

    .line 3583
    const-string v2, "adminUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3586
    .end local v0    # "result":Landroid/content/ContentValues;
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    :goto_35
    return v2

    :cond_36
    const/4 v2, -0x1

    goto :goto_35
.end method

.method public getAuthorizedUidForAdminUid(I)I
    .registers 7
    .param p1, "adminUid"    # I

    .prologue
    .line 3562
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "getAuthorizedUidForAdminUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    invoke-direct {p0}, checkCallerIsUMC()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3564
    invoke-direct {p0}, enforceUMCSignature()V

    .line 3565
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3566
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3567
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v4, "authorizedUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3568
    .local v0, "result":Landroid/content/ContentValues;
    if-eqz v0, :cond_36

    .line 3569
    const-string v2, "authorizedUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3572
    .end local v0    # "result":Landroid/content/ContentValues;
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    :goto_35
    return v2

    :cond_36
    const/4 v2, -0x1

    goto :goto_35
.end method

.method public getConstrainedState()I
    .registers 2

    .prologue
    .line 3491
    sget-object v0, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedState()I

    move-result v0

    return v0
.end method

.method public getEnterpriseDeviceAdministrators()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v4, "adminPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v20, "persona"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/PersonaManagerService;

    .line 525
    .local v19, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v19, :cond_34

    .line 526
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v17

    .line 527
    .local v17, "personas":[I
    if-eqz v17, :cond_34

    .line 528
    move-object/from16 v5, v17

    .local v5, "arr$":[I
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1a
    if-ge v9, v12, :cond_34

    aget v16, v5, v9

    .line 529
    .local v16, "personaId":I
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v14

    .line 530
    .local v14, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v14, :cond_31

    .line 531
    invoke-virtual {v14}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_31
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 537
    .end local v5    # "arr$":[I
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v16    # "personaId":I
    .end local v17    # "personas":[I
    :cond_34
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getActiveAdmins(I)Ljava/util/List;

    move-result-object v7

    .line 538
    .local v7, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v7, :cond_cb

    .line 539
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_46
    :goto_46
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_cb

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 541
    .local v6, "cmpName":Landroid/content/ComponentName;
    :try_start_52
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "adminPkgName":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_46

    .line 545
    const/4 v10, 0x0

    .line 546
    .local v10, "isBBCApp":Z
    const/4 v11, 0x0

    .line 547
    .local v11, "isSystemApp":Z
    const/4 v13, 0x0

    .line 548
    .local v13, "metadata":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    const/16 v21, 0xc0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v3, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 549
    .local v18, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v18, :cond_94

    .line 550
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v20

    if-eqz v20, :cond_94

    .line 552
    const/4 v11, 0x1

    .line 554
    :cond_94
    if-eqz v13, :cond_a1

    const-string v20, "com.samsung.android.knoxenabled"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_a1

    .line 555
    const/4 v10, 0x1

    .line 558
    :cond_a1
    invoke-static {v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 559
    .local v15, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_ad

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    if-gtz v20, :cond_af

    :cond_ad
    if-eqz v11, :cond_46

    :cond_af
    if-nez v10, :cond_46

    sget-object v20, NON_MDM_ADMINS:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_46

    .line 561
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_be} :catch_bf

    goto :goto_46

    .line 563
    .end local v3    # "adminPkgName":Ljava/lang/String;
    .end local v10    # "isBBCApp":Z
    .end local v11    # "isSystemApp":Z
    .end local v13    # "metadata":Landroid/os/Bundle;
    .end local v15    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_bf
    move-exception v8

    .line 564
    .local v8, "e":Ljava/lang/Exception;
    const-string v20, "EnterpriseDeviceManagerService"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_46

    .line 569
    .end local v6    # "cmpName":Landroid/content/ComponentName;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_cb
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Enterprise Device Admins "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-object v4
.end method

.method public getMyKnoxAdmin(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3531
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "MyKNOXAdmin"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAdmins(I)Ljava/util/List;
    .registers 32
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2860
    move-object/from16 v0, p0

    iget-object v8, v0, mContext:Landroid/content/Context;

    const-string v28, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2862
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v8, 0x9

    new-array v13, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v28, "adminUid"

    aput-object v28, v13, v8

    const/4 v8, 0x1

    const-string/jumbo v28, "proxyUid"

    aput-object v28, v13, v8

    const/4 v8, 0x2

    const-string/jumbo v28, "proxyType"

    aput-object v28, v13, v8

    const/4 v8, 0x3

    const-string v28, "componentName"

    aput-object v28, v13, v8

    const/4 v8, 0x4

    const-string/jumbo v28, "proxyComponentName"

    aput-object v28, v13, v8

    const/4 v8, 0x5

    const-string/jumbo v28, "label"

    aput-object v28, v13, v8

    const/4 v8, 0x6

    const-string/jumbo v28, "icon"

    aput-object v28, v13, v8

    const/4 v8, 0x7

    const-string/jumbo v28, "description"

    aput-object v28, v13, v8

    const/16 v8, 0x8

    const-string/jumbo v28, "permissions"

    aput-object v28, v13, v8

    .line 2869
    .local v13, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v28, "PROXY_ADMIN_INFO"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v13, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v27

    .line 2873
    .local v27, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_61
    :goto_61
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 2874
    .local v15, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "proxyUid"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 2875
    .local v23, "proxyUid":I
    const/4 v8, -0x1

    move/from16 v0, p1

    if-eq v8, v0, :cond_85

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move/from16 v0, p1

    if-ne v8, v0, :cond_61

    .line 2880
    :cond_85
    const-string/jumbo v8, "proxyType"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 2882
    .local v26, "type":I
    const/4 v3, 0x0

    .line 2883
    .local v3, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/4 v8, 0x2

    move/from16 v0, v26

    if-ne v0, v8, :cond_106

    .line 2884
    const-string/jumbo v8, "label"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2885
    .local v5, "label":Ljava/lang/String;
    const-string/jumbo v8, "icon"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 2886
    .local v7, "icon":[B
    const-string/jumbo v8, "description"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2887
    .local v6, "description":Ljava/lang/String;
    const-string/jumbo v8, "permissions"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2888
    .local v25, "serializedPerms":Ljava/lang/String;
    const-string v8, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2890
    .local v21, "perms":[Ljava/lang/String;
    const-string/jumbo v8, "proxyComponentName"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2892
    .local v22, "proxyComponentName":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 2893
    .local v12, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2894
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2895
    .local v10, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2896
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2897
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2898
    move/from16 v0, v23

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2899
    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2900
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2901
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2902
    iput-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2904
    new-instance v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    .line 2942
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "description":Ljava/lang/String;
    .end local v7    # "icon":[B
    .end local v21    # "perms":[Ljava/lang/String;
    .end local v22    # "proxyComponentName":Ljava/lang/String;
    .restart local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_fd
    if-eqz v3, :cond_61

    .line 2943
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_61

    .line 2907
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v25    # "serializedPerms":Ljava/lang/String;
    :cond_106
    const-string v8, "adminUid"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2908
    .local v9, "adminUid":I
    const-string v8, "componentName"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2909
    .local v14, "componentName":Ljava/lang/String;
    const-string/jumbo v8, "permissions"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2910
    .restart local v25    # "serializedPerms":Ljava/lang/String;
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 2912
    .restart local v12    # "cn":Landroid/content/ComponentName;
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 2913
    .local v24, "resolveIntent":Landroid/content/Intent;
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2914
    move-object/from16 v0, p0

    iget-object v8, v0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v28, 0x80

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v18

    .line 2917
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v18, :cond_61

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_61

    .line 2922
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2923
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2924
    .restart local v10    # "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2925
    .restart local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v0, v23

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2926
    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2927
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2928
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2929
    iput-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2932
    if-nez v25, :cond_18c

    .line 2933
    :try_start_17d
    new-instance v20, Landroid/app/admin/ProxyDeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .local v20, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move-object/from16 v3, v20

    .end local v20    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_fd

    .line 2935
    :cond_18c
    new-instance v20, Landroid/app/admin/ProxyDeviceAdminInfo;

    const-string v8, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_19f} :catch_1a3

    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v20    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move-object/from16 v3, v20

    .end local v20    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_fd

    .line 2938
    :catch_1a3
    move-exception v16

    .line 2939
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_fd

    .line 2945
    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "adminUid":I
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v14    # "componentName":Ljava/lang/String;
    .end local v15    # "cv":Landroid/content/ContentValues;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "proxyUid":I
    .end local v24    # "resolveIntent":Landroid/content/Intent;
    .end local v25    # "serializedPerms":Ljava/lang/String;
    .end local v26    # "type":I
    :cond_1a9
    return-object v19
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 1469
    return-void
.end method

.method public hasAnyActiveAdmin()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2497
    iget-object v1, p0, mAdminMap:Ljava/util/HashMap;

    if-nez v1, :cond_6

    .line 2505
    :cond_5
    :goto_5
    return v0

    .line 2501
    :cond_6
    iget-object v1, p0, mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 2505
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 962
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 966
    const/16 v1, 0x1b

    if-ge p2, v1, :cond_b

    .line 967
    iget-object v1, p0, mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v1

    .line 975
    :goto_a
    return v1

    .line 970
    :cond_b
    monitor-enter p0

    .line 971
    :try_start_c
    invoke-direct {p0, p1, p3}, getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 972
    .local v0, "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_38

    .line 973
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 976
    .end local v0    # "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :catchall_35
    move-exception v1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_35

    throw v1

    .line 975
    .restart local v0    # "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_38
    :try_start_38
    invoke-virtual {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    goto :goto_a
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 1424
    monitor-enter p0

    .line 1425
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 1426
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2553
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAdminRemovable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2563
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAdminRemovableInternal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    invoke-direct {p0, p1, p2}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 2566
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_38

    .line 2567
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2569
    :cond_38
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2570
    .local v2, "uid":I
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v1

    .line 2571
    .local v1, "ret":Z
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAdminRemovableInternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    return v1
.end method

.method public isMdmAdminPresent()Z
    .registers 2

    .prologue
    .line 2719
    invoke-direct {p0}, isMdmAdminPresentInternal()Z

    move-result v0

    return v0
.end method

.method public isMigrationStateNOK()Z
    .registers 6

    .prologue
    .line 3466
    :try_start_0
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "migrationState"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3467
    .local v1, "migrationState":Ljava/lang/String;
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current migration state is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    if-eqz v1, :cond_37

    const-string/jumbo v2, "nok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2e

    move-result v2

    if-eqz v2, :cond_37

    .line 3469
    const/4 v2, 0x1

    .line 3475
    .end local v1    # "migrationState":Ljava/lang/String;
    :goto_2d
    return v2

    .line 3471
    :catch_2e
    move-exception v0

    .line 3472
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "error occured during getting migration state"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3475
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 3
    .param p1, "bitMask"    # I

    .prologue
    .line 3487
    sget-object v0, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isRestrictedByConstrainedState(I)Z

    move-result v0

    return v0
.end method

.method public isUMCAdmin(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3183
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, getProxyAdmins(I)Ljava/util/List;

    move-result-object v2

    .line 3184
    .local v2, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 3185
    .local v1, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    invoke-virtual {v1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3187
    const/4 v3, 0x1

    .line 3191
    .end local v1    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .registers 4
    .param p1, "newContainerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3458
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "migrate ContainerApplicationPolicy after instalation of 3rd party apps"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3460
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateApplicationDisablePolicy(I)Z

    move-result v0

    return v0
.end method

.method public migrateEnterpriseContainer(IZ)Z
    .registers 10
    .param p1, "newContainerId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3411
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Migrating Enterprise container data after FOTA update"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    const/4 v1, 0x1

    .line 3414
    .local v1, "ret":Z
    invoke-direct {p0, p1}, getAdminNameForUserId(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 3415
    .local v0, "admin":Landroid/content/ComponentName;
    const-wide/16 v2, -0x1

    .line 3417
    .local v2, "adminUid":J
    const/16 v4, 0x64

    if-lt p1, v4, :cond_1e

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3418
    :cond_1e
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "No proper Admin owned by Container"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3421
    :cond_26
    invoke-direct {p0, p1, p2}, migrateEnterpriseDatabase(IZ)J

    move-result-wide v2

    .line 3423
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_36

    if-eqz p2, :cond_36

    .line 3424
    invoke-direct {p0, v0, p1, v2, v3}, migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z

    move-result v1

    .line 3426
    :cond_36
    if-eqz v1, :cond_42

    .line 3427
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getEnterpriseMigrationResult()Z

    move-result v1

    .line 3429
    :cond_42
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "migrateEnterpriseContainer() return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    return v1
.end method

.method public onContainerCreation(II)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2635
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onContainerCreation("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    sget-object v5, mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2638
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2639
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_32

    move-object v4, v0

    .line 2640
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2642
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_49
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    .line 2643
    :catch_4d
    move-exception v1

    .line 2644
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerCreation"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 2648
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_56
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2669
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onContainerRemoved("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    sget-object v5, mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2672
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2673
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_32

    move-object v4, v0

    .line 2674
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2676
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_49
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    .line 2677
    :catch_4d
    move-exception v1

    .line 2678
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerRemoved"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 2682
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_56
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2652
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onPreContainerRemoval("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    sget-object v5, mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2655
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2656
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_32

    move-object v4, v0

    .line 2657
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2659
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_49
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    .line 2660
    :catch_4d
    move-exception v1

    .line 2661
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onPreContainerRemoval"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 2665
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_56
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2511
    monitor-enter p0

    .line 2512
    :try_start_1
    iget-object v2, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2514
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_26

    .line 2515
    iget-object v2, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2516
    const/4 v2, 0x1

    monitor-exit p0

    .line 2519
    :goto_22
    return v2

    .line 2514
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2519
    :cond_26
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_22

    .line 2520
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_29
    move-exception v2

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .prologue
    .line 2526
    monitor-enter p0

    .line 2527
    :try_start_1
    iget-object v2, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2529
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_6e

    .line 2530
    iget-object v2, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 2531
    iget-object v2, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_6b

    .line 2532
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " packageHasActiveAdminsAsUser "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " userID"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    const/4 v2, 0x1

    monitor-exit p0

    .line 2538
    :goto_6a
    return v2

    .line 2529
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2538
    :cond_6e
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_6a

    .line 2539
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_71
    move-exception v2

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_71

    throw v2
.end method

.method public readUmcEnrollmentData(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 3649
    const-string v8, "android.permission.sec.MDM_UMC_INTERNAL"

    invoke-virtual {p0, p1, v8}, enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3652
    invoke-direct {p0}, checkCallerIsUMC()Z

    move-result v8

    if-nez v8, :cond_d

    .line 3681
    :cond_c
    :goto_c
    return-object v7

    .line 3655
    :cond_d
    const/4 v4, 0x0

    .line 3656
    .local v4, "io":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 3657
    .local v2, "inFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 3659
    .local v0, "buffer":[B
    :try_start_10
    new-instance v3, Ljava/io/File;

    const-string v8, "/efs/umc"

    const-string v9, "BulkEnrollmentProfile"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_6a
    .catchall {:try_start_10 .. :try_end_19} :catchall_79

    .line 3660
    .end local v2    # "inFile":Ljava/io/File;
    .local v3, "inFile":Ljava/io/File;
    :try_start_19
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_8c
    .catchall {:try_start_19 .. :try_end_22} :catchall_85

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_34

    .line 3675
    :cond_29
    if-eqz v4, :cond_c

    .line 3676
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_c

    .line 3677
    :catch_2f
    move-exception v1

    .line 3678
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 3663
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_34
    :try_start_34
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 3664
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_8c
    .catchall {:try_start_34 .. :try_end_40} :catchall_85

    .line 3665
    .end local v4    # "io":Ljava/io/FileInputStream;
    .local v5, "io":Ljava/io/FileInputStream;
    :try_start_40
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3666
    .local v6, "readLen":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_8f
    .catchall {:try_start_40 .. :try_end_47} :catchall_88

    .line 3667
    const/4 v4, 0x0

    .line 3669
    .end local v5    # "io":Ljava/io/FileInputStream;
    .restart local v4    # "io":Ljava/io/FileInputStream;
    if-lez v6, :cond_5d

    .line 3670
    :try_start_4a
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    array-length v10, v0

    invoke-direct {v8, v0, v9, v10}, Ljava/lang/String;-><init>([BII)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_8c
    .catchall {:try_start_4a .. :try_end_51} :catchall_85

    .line 3675
    if-eqz v4, :cond_56

    .line 3676
    :try_start_53
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_58

    :cond_56
    :goto_56
    move-object v7, v8

    .line 3679
    goto :goto_c

    .line 3677
    :catch_58
    move-exception v1

    .line 3678
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 3675
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5d
    if-eqz v4, :cond_62

    .line 3676
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_64

    :cond_62
    move-object v2, v3

    .line 3679
    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    goto :goto_c

    .line 3677
    .end local v2    # "inFile":Ljava/io/File;
    .restart local v3    # "inFile":Ljava/io/File;
    :catch_64
    move-exception v1

    .line 3678
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 3680
    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    goto :goto_c

    .line 3671
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "readLen":I
    :catch_6a
    move-exception v1

    .line 3672
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_6b
    :try_start_6b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_79

    .line 3675
    if-eqz v4, :cond_c

    .line 3676
    :try_start_70
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_c

    .line 3677
    :catch_74
    move-exception v1

    .line 3678
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 3674
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_79
    move-exception v7

    .line 3675
    :goto_7a
    if-eqz v4, :cond_7f

    .line 3676
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80

    .line 3679
    :cond_7f
    :goto_7f
    throw v7

    .line 3677
    :catch_80
    move-exception v1

    .line 3678
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f

    .line 3674
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "inFile":Ljava/io/File;
    .restart local v3    # "inFile":Ljava/io/File;
    :catchall_85
    move-exception v7

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    goto :goto_7a

    .end local v2    # "inFile":Ljava/io/File;
    .end local v4    # "io":Ljava/io/FileInputStream;
    .restart local v3    # "inFile":Ljava/io/File;
    .restart local v5    # "io":Ljava/io/FileInputStream;
    :catchall_88
    move-exception v7

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "io":Ljava/io/FileInputStream;
    .restart local v4    # "io":Ljava/io/FileInputStream;
    goto :goto_7a

    .line 3671
    .end local v2    # "inFile":Ljava/io/File;
    .restart local v3    # "inFile":Ljava/io/File;
    :catch_8c
    move-exception v1

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    goto :goto_6b

    .end local v2    # "inFile":Ljava/io/File;
    .end local v4    # "io":Ljava/io/FileInputStream;
    .restart local v3    # "inFile":Ljava/io/File;
    .restart local v5    # "io":Ljava/io/FileInputStream;
    :catch_8f
    move-exception v1

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "io":Ljava/io/FileInputStream;
    .restart local v4    # "io":Ljava/io/FileInputStream;
    goto :goto_6b
.end method

.method public reconcileAdmin(Landroid/content/ComponentName;I)V
    .registers 13
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1249
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    sget v7, MY_PID:I

    if-eq v6, v7, :cond_10

    .line 1250
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Need to be System Process"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1254
    :cond_10
    :try_start_10
    invoke-direct {p0, p1, p2}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 1256
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_56

    .line 1257
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1258
    .local v5, "uid":I
    monitor-enter p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_7a

    .line 1259
    :try_start_1f
    iget-object v6, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a6

    .line 1260
    iget-object v6, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    iget-object v6, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v4

    .line 1265
    .local v4, "ret":Z
    if-nez v4, :cond_57

    .line 1266
    iget-object v6, p0, mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1267
    iget-object v6, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    monitor-exit p0

    .line 1286
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v4    # "ret":Z
    .end local v5    # "uid":I
    :cond_56
    :goto_56
    return-void

    .line 1274
    .restart local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v4    # "ret":Z
    .restart local v5    # "uid":I
    :cond_57
    sget-object v6, mPolicyServices:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1276
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v6, v5}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_61

    .line 1279
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "ret":Z
    :catchall_77
    move-exception v6

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_1f .. :try_end_79} :catchall_77

    :try_start_79
    throw v6
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7a} :catch_7a

    .line 1281
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v5    # "uid":I
    :catch_7a
    move-exception v1

    .line 1282
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed reconcileAdmin for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "for user id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 1279
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v5    # "uid":I
    :cond_a6
    :try_start_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_77

    goto :goto_56
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1085
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 1086
    return-void
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1102
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from DPM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-direct {p0, p1, p2}, removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1106
    return-void
.end method

.method public removeAuthorizedUid(II)Z
    .registers 9
    .param p1, "authorizedUid"    # I
    .param p2, "adminUid"    # I

    .prologue
    const/4 v2, 0x1

    .line 3547
    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "removeAuthorizedUid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    invoke-direct {p0}, checkCallerIsUMC()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 3549
    invoke-direct {p0}, enforceUMCSignature()V

    .line 3550
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3551
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3552
    const-string v3, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3553
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3554
    .local v0, "rows":I
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeAuthorizedUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    if-le v0, v2, :cond_4d

    .line 3558
    .end local v0    # "rows":I
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    :goto_4c
    return v2

    :cond_4d
    const/4 v2, 0x0

    goto :goto_4c
.end method

.method public removeProxyAdmin(I)V
    .registers 6
    .param p1, "proxyUid"    # I

    .prologue
    .line 2949
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2951
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2952
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PROXY_ADMIN_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2953
    return-void
.end method

.method public restoreContainerAdminData(ILjava/lang/String;I)Z
    .registers 12
    .param p1, "creatorUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "containerId"    # I

    .prologue
    .line 3318
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    sget v6, MY_PID:I

    if-eq v5, v6, :cond_10

    .line 3319
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Need to be System Process"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3322
    :cond_10
    const/4 v4, -0x2

    .line 3326
    .local v4, "ret":I
    const/4 v1, 0x0

    .line 3327
    .local v1, "dataDesc":Landroid/os/ParcelFileDescriptor;
    :try_start_12
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3328
    .local v2, "dataFile":Ljava/io/File;
    const/high16 v5, 0x3c000000    # 0.0078125f

    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3331
    const-string v5, "application_policy"

    invoke-static {v5}, getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3334
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v5, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->backupApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v4

    .line 3335
    if-nez v4, :cond_58

    .line 3336
    const/high16 v5, 0x18000000

    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3338
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1, p3}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v0, v5, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->restoreApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v4

    .line 3342
    :cond_58
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 3343
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3345
    :cond_61
    if-eqz v1, :cond_66

    .line 3346
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_66} :catch_6a

    .line 3352
    .end local v0    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v2    # "dataFile":Ljava/io/File;
    :cond_66
    :goto_66
    if-nez v4, :cond_89

    const/4 v5, 0x1

    :goto_69
    return v5

    .line 3348
    :catch_6a
    move-exception v3

    .line 3349
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreContainerAdminData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 3352
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_89
    const/4 v5, 0x0

    goto :goto_69
.end method

.method public declared-synchronized selfUpdateAdmin(Ljava/lang/String;)I
    .registers 25
    .param p1, "apkFilePath"    # Ljava/lang/String;

    .prologue
    .line 1632
    monitor-enter p0

    :try_start_1
    const-string v19, "EnterpriseDeviceManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "apkFilePath : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e5

    move-result v19

    if-eqz v19, :cond_27

    .line 1636
    const/16 v19, -0x1

    .line 1728
    :goto_25
    monitor-exit p0

    return v19

    .line 1640
    :cond_27
    :try_start_27
    invoke-virtual/range {p0 .. p0}, getActiveAdminComponent()Landroid/content/ComponentName;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_1e5

    move-result-object v4

    .line 1641
    .local v4, "activeComponent":Landroid/content/ComponentName;
    if-nez v4, :cond_30

    .line 1642
    const/16 v19, -0x2

    goto :goto_25

    .line 1645
    :cond_30
    if-nez p1, :cond_77

    const/4 v6, 0x0

    .line 1650
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .local v6, "apkFilePath":Ljava/lang/String;
    :goto_33
    :try_start_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1653
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "user"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1654
    .local v15, "userManager":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v18

    .line 1655
    .local v18, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_86

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 1656
    .local v12, "info":Landroid/content/pm/UserInfo;
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    if-eqz v19, :cond_4e

    sget-object v19, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x80

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_6f} :catch_1d0
    .catchall {:try_start_33 .. :try_end_6f} :catchall_1e8

    move-result-object v19

    if-eqz v19, :cond_4e

    .line 1660
    const/16 v19, -0x1

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_25

    .line 1645
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    .end local v15    # "userManager":Landroid/os/UserManager;
    .end local v16    # "token":J
    .end local v18    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_77
    :try_start_77
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_1e5

    move-result v19

    if-lez v19, :cond_84

    move-object/from16 v6, p1

    goto :goto_33

    :cond_84
    const/4 v6, 0x0

    goto :goto_33

    .line 1664
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v15    # "userManager":Landroid/os/UserManager;
    .restart local v16    # "token":J
    .restart local v18    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_86
    :try_start_86
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1666
    if-eqz v6, :cond_97

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_9c

    .line 1667
    :cond_97
    const/16 v19, -0x3

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_25

    .line 1669
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_9c
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1670
    .local v5, "apkFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_ad

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v19

    if-nez v19, :cond_cd

    .line 1671
    :cond_ad
    const-string v19, "EnterpriseDeviceManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot read or is not a file : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const/16 v19, -0x3

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_25

    .line 1676
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_cd
    sget-object v19, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1678
    .local v13, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v13, :cond_df

    .line 1679
    const/16 v19, -0x3

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_25

    .line 1682
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_df
    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f3

    .line 1683
    const/16 v19, -0x4

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_25

    .line 1688
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_f3
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v19

    if-nez v19, :cond_117

    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, checkAdminExistsInELMDB(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_117

    .line 1690
    const/16 v19, -0x5

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_25

    .line 1692
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_117
    const-string/jumbo v19, "self_update_admin_component"

    const-string v20, "/data/system/selfUpdateAdmin.conf"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1694
    .local v7, "cNames":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1696
    .local v14, "storeString":Ljava/lang/String;
    if-nez v7, :cond_186

    .line 1697
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    .line 1706
    :cond_127
    :goto_127
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/app/selfUpdateApks/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1708
    .local v9, "destFilePath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1710
    .local v8, "destFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_16b

    .line 1711
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 1712
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1ed

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-static/range {v19 .. v22}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1715
    :cond_16b
    const-string/jumbo v19, "self_update_admin_component"

    const-string v20, "/data/system/selfUpdateAdmin.conf"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v14, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_180

    invoke-static {v5, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_1b8

    .line 1717
    :cond_180
    const/16 v19, -0x1

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_25

    .line 1700
    .end local v8    # "destFile":Ljava/io/File;
    .end local v9    # "destFilePath":Ljava/lang/String;
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_186
    const-string v19, "EnterpriseDeviceManagerService"

    const-string v20, "Upgrade Admin Pending"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_127

    .line 1702
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_127

    .line 1719
    .restart local v8    # "destFile":Ljava/io/File;
    .restart local v9    # "destFilePath":Ljava/lang/String;
    :cond_1b8
    const/16 v19, 0x1a4

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v9, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1721
    invoke-direct/range {p0 .. p0}, runAdminUpdate()V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_1ca} :catch_1d0
    .catchall {:try_start_86 .. :try_end_1ca} :catchall_1e8

    .line 1728
    const/16 v19, 0x0

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_25

    .line 1723
    .end local v5    # "apkFile":Ljava/io/File;
    .end local v7    # "cNames":Ljava/lang/String;
    .end local v8    # "destFile":Ljava/io/File;
    .end local v9    # "destFilePath":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "storeString":Ljava/lang/String;
    .end local v15    # "userManager":Landroid/os/UserManager;
    .end local v16    # "token":J
    .end local v18    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :catch_1d0
    move-exception v10

    .line 1724
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1d1
    const-string v19, "EnterpriseDeviceManagerService"

    const-string v20, "Upgrade Admin Ex: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1725
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1df
    .catchall {:try_start_1d1 .. :try_end_1df} :catchall_1e8

    .line 1726
    const/16 v19, -0x1

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_25

    .line 1632
    .end local v4    # "activeComponent":Landroid/content/ComponentName;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1e5
    move-exception v19

    :goto_1e6
    monitor-exit p0

    throw v19

    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v4    # "activeComponent":Landroid/content/ComponentName;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :catchall_1e8
    move-exception v19

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_1e6
.end method

.method public sendIntent(I)V
    .registers 3
    .param p1, "restriction"    # I

    .prologue
    .line 3501
    const/4 v0, -0x1

    .line 3502
    .local v0, "msgResId":I
    packed-switch p1, :pswitch_data_14

    .line 3516
    :goto_4
    return-void

    .line 3504
    :pswitch_5
    const v0, 0x1040b7c

    .line 3515
    :goto_8
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_4

    .line 3507
    :pswitch_c
    const v0, 0x1040b7d

    .line 3508
    goto :goto_8

    .line 3510
    :pswitch_10
    const v0, 0x1040b6d

    .line 3511
    goto :goto_8

    .line 3502
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_5
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-direct {p0, p1, p2}, activateAdmin(Landroid/content/ComponentName;Z)V

    .line 986
    return-void
.end method

.method public setActiveAdminSilent(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2796
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, activateAdmin(Landroid/content/ComponentName;Z)V

    .line 2798
    return-void
.end method

.method public setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "removable"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 1479
    const-string v7, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {p0, p1, v7}, enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1481
    const/4 v1, -0x1

    .line 1482
    .local v1, "callingUid":I
    if-nez p3, :cond_21

    .line 1483
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1505
    :cond_d
    :goto_d
    iget-object v7, p0, mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6b

    .line 1506
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "Admin is not active"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :cond_20
    :goto_20
    return v5

    .line 1486
    :cond_21
    invoke-static {p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1487
    .local v6, "userId":I
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v7

    invoke-virtual {v7, p3, v5, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1490
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_66

    .line 1491
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "Can\'t found packageName"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p0, v9}, getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1493
    .local v4, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1494
    .local v3, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1495
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1499
    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_64
    if-eq v1, v9, :cond_20

    .line 1502
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_66
    if-eqz v0, :cond_d

    .line 1503
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_d

    .line 1510
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "userId":I
    :cond_6b
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAdminRemovable : callingUid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ADMIN_INFO"

    const-string v9, "canRemove"

    invoke-virtual {v7, v1, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1513
    .local v5, "result":Z
    goto :goto_20
.end method

.method public setB2BMode(Z)I
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 2754
    const/4 v0, 0x0

    return v0
.end method

.method public setMyKnoxAdmin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3522
    const-string v0, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {p0, p1, v0}, enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3524
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "MyKNOXAdmin"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3525
    const/4 v0, 0x1

    return v0
.end method

.method public setPermissions(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "adminUid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 3110
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    if-eqz p2, :cond_d

    array-length v2, p2

    if-nez v2, :cond_e

    .line 3119
    :cond_d
    :goto_d
    return-void

    .line 3114
    :cond_e
    const/4 v2, 0x0

    aget-object v1, p2, v2

    .line 3115
    .local v1, "serializedPerms":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_12
    array-length v2, p2

    if-ge v0, v2, :cond_31

    .line 3116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3115
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 3118
    :cond_31
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    const-string/jumbo v4, "permissions"

    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d
.end method

.method public systemReady()V
    .registers 7

    .prologue
    .line 1564
    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "systemReady"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->init(Landroid/content/Context;)V

    .line 1568
    new-instance v3, Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/email/AccountsReceiver;-><init>(Landroid/content/Context;)V

    .line 1570
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "InternalHandlerThread"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1572
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1573
    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/os/Looper;)V

    sput-object v3, mInternalHandler:Landroid/os/Handler;

    .line 1576
    sget-object v3, mInternalHandler:Landroid/os/Handler;

    if-eqz v3, :cond_39

    .line 1577
    sget-object v3, mInternalHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1589
    :cond_39
    invoke-direct {p0}, loadActiveAdmins()V

    .line 1592
    sget-object v3, mPolicyServices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1593
    .local v1, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v3}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_46

    .line 1596
    .end local v1    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_5c
    const-string/jumbo v3, "sec_analytics"

    new-instance v4, Lcom/android/server/analytics/data/collection/DataCollectionService;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/analytics/data/collection/DataCollectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1597
    return-void
.end method

.method public final updateAdminPermissions()V
    .registers 4

    .prologue
    .line 1600
    const-string v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "updateAdminPermissions"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 1607
    :goto_b
    return-void

    .line 1604
    :catch_c
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public updateProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .registers 12
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .prologue
    const/4 v6, 0x0

    .line 2832
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2835
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2837
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2838
    .local v3, "updateValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2839
    const-string v4, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    const-string/jumbo v4, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    const-string/jumbo v4, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2842
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2843
    .local v2, "serializedPerms":Ljava/lang/String;
    if-eqz v2, :cond_8c

    .line 2844
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_58
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_86

    .line 2845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2844
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 2847
    :cond_86
    const-string/jumbo v4, "permissions"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    .end local v0    # "i":I
    :cond_8c
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b1

    .line 2850
    const-string/jumbo v4, "label"

    invoke-virtual {p1, v6}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    const-string/jumbo v4, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2852
    const-string/jumbo v4, "description"

    invoke-virtual {p1, v6}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    :cond_b1
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PROXY_ADMIN_INFO"

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 2856
    return-void
.end method

.method public writeUmcEnrollmentData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 3603
    const-string v9, "android.permission.sec.MDM_UMC_INTERNAL"

    invoke-virtual {p0, p1, v9}, enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3606
    invoke-direct {p0}, checkCallerIsUMC()Z

    move-result v9

    if-nez v9, :cond_d

    .line 3645
    :goto_c
    return v8

    .line 3609
    :cond_d
    const/4 v2, 0x0

    .line 3610
    .local v2, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 3612
    .local v4, "outFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3614
    .local v6, "token":J
    :try_start_13
    new-instance v0, Ljava/io/File;

    const-string v9, "/efs/umc"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3615
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_23

    .line 3616
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3619
    :cond_23
    new-instance v5, Ljava/io/File;

    const-string v9, "/efs/umc"

    const-string v10, "BulkEnrollmentProfile"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2c} :catch_5f
    .catchall {:try_start_13 .. :try_end_2c} :catchall_71

    .line 3620
    .end local v4    # "outFile":Ljava/io/File;
    .local v5, "outFile":Ljava/io/File;
    :try_start_2c
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 3621
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3624
    :cond_35
    if-eqz p2, :cond_50

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_50

    .line 3625
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_42} :catch_87
    .catchall {:try_start_2c .. :try_end_42} :catchall_80

    .line 3626
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_42
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 3627
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 3628
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4f} :catch_8a
    .catchall {:try_start_42 .. :try_end_4f} :catchall_83

    .line 3629
    const/4 v2, 0x0

    .line 3632
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :cond_50
    const/4 v8, 0x1

    .line 3637
    if-eqz v2, :cond_56

    .line 3638
    :try_start_53
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_5a

    .line 3643
    :cond_56
    :goto_56
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 3639
    :catch_5a
    move-exception v1

    .line 3640
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 3633
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    :catch_5f
    move-exception v1

    .line 3634
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_60
    :try_start_60
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_71

    .line 3637
    if-eqz v2, :cond_68

    .line 3638
    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_6c

    .line 3643
    :cond_68
    :goto_68
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 3639
    :catch_6c
    move-exception v1

    .line 3640
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    .line 3636
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_71
    move-exception v8

    .line 3637
    :goto_72
    if-eqz v2, :cond_77

    .line 3638
    :try_start_74
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_7b

    .line 3643
    :cond_77
    :goto_77
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 3639
    :catch_7b
    move-exception v1

    .line 3640
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_77

    .line 3636
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v0    # "dataDir":Ljava/io/File;
    .restart local v5    # "outFile":Ljava/io/File;
    :catchall_80
    move-exception v8

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    goto :goto_72

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "outFile":Ljava/io/File;
    :catchall_83
    move-exception v8

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_72

    .line 3633
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v5    # "outFile":Ljava/io/File;
    :catch_87
    move-exception v1

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    goto :goto_60

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "outFile":Ljava/io/File;
    :catch_8a
    move-exception v1

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_60
.end method
