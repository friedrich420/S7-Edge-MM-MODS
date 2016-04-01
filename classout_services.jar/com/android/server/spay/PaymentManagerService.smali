.class public Lcom/android/server/spay/PaymentManagerService;
.super Landroid/spay/IPaymentManager$Stub;
.source "PaymentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final PAYMENT_SERVICE_VERSION:I = 0x2

.field public static final SPAYFW_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.spayfw"

.field public static final TAG:Ljava/lang/String; = "PaymentManagerService"

.field static final TIMA_MSR_FILE_NAME:Ljava/lang/String; = "/system/tima_measurement_info"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 28
    const-string/jumbo v1, "ro.product_ship"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_a
    sput-boolean v0, DEBUG:Z

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/spay/IPaymentManager$Stub;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 53
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentManagerService() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_11
    sput-object p1, mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/spay/PaymentManagerService;Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/spay/PaymentManagerService;
    .param p1, "x1"    # Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .prologue
    .line 25
    iput-object p1, p0, mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    return-object p1
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v1, "PaymentManagerService"

    .line 40
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5e

    .line 41
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "PaymentManagerService"

    const-string v3, "PaymentManagerService() - Invalid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    throw v0

    .line 46
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5e
    const-string v2, "PaymentManagerService"

    const-string v3, "PaymentManagerService() - Valid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v2, 0x0

    return v2
.end method

.method private disablePaymentFrameworkUpdateRemoval()V
    .registers 6

    .prologue
    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 199
    .local v2, "token":J
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v1, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    const-string v4, "com.samsung.android.spayfw"

    invoke-virtual {v1, v4}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 201
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    return-void
.end method


# virtual methods
.method public getMeasurementFile()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    const-string/jumbo v0, "getMeasurementFile"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 188
    const-string v0, "/system/tima_measurement_info"

    invoke-static {v0}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public installTA(Landroid/os/ParcelFileDescriptor;)Z
    .registers 3
    .param p1, "taZipFD"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    const-string/jumbo v0, "installTA"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public registerSPayFW(Landroid/spay/PaymentTZServiceConfig;)Landroid/spay/PaymentTZServiceCommnInfo;
    .registers 20
    .param p1, "config"    # Landroid/spay/PaymentTZServiceConfig;

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 108
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 109
    .local v6, "pid":I
    move-object/from16 v0, p0

    iget-object v1, v0, mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    if-eqz v1, :cond_26

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget v1, v1, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPid:I

    if-eq v6, v1, :cond_1c4

    .line 112
    const-string v1, "PaymentManagerService"

    const-string v2, "Registered Client Died. Need to Rebind"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v1, v1, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    # invokes: Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V
    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->access$100(Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;)V

    .line 120
    :cond_26
    const-string/jumbo v1, "registerSPayFW"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 121
    const-string v1, "PaymentManagerService"

    const-string v2, "Inside registerSPayFW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v4, Landroid/spay/PaymentTZServiceCommnInfo;

    invoke-direct {v4}, Landroid/spay/PaymentTZServiceCommnInfo;-><init>()V

    .line 123
    .local v4, "tzSvcInfo":Landroid/spay/PaymentTZServiceCommnInfo;
    const/4 v1, 0x2

    iput v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mServiceVersion:I

    .line 124
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 125
    new-instance v17, Lcom/android/server/spay/VisaTAController;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/spay/VisaTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 126
    .local v17, "visaTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v17    # "visaTAController":Landroid/os/IBinder;
    :cond_5f
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 130
    new-instance v15, Lcom/android/server/spay/MasterTAController;

    const/4 v1, 0x2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Lcom/android/server/spay/MasterTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 131
    .local v15, "masterTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v15    # "masterTAController":Landroid/os/IBinder;
    :cond_7f
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 135
    new-instance v9, Lcom/android/server/spay/AmexTAController;

    const/4 v1, 0x3

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lcom/android/server/spay/AmexTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 136
    .local v9, "amexTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v9    # "amexTAController":Landroid/os/IBinder;
    :cond_9f
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_c3

    .line 140
    new-instance v16, Lcom/android/server/spay/PlccTAController;

    const/4 v1, 0x4

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/spay/PlccTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 141
    .local v16, "plccTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v16    # "plccTAController":Landroid/os/IBinder;
    :cond_c3
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 145
    new-instance v14, Lcom/android/server/spay/KrccTAController;

    const/4 v1, 0x5

    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    invoke-direct {v14, v1, v2}, Lcom/android/server/spay/KrccTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 146
    .local v14, "krccTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v14    # "krccTAController":Landroid/os/IBinder;
    :cond_e3
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_103

    .line 150
    new-instance v8, Lcom/android/server/spay/EurCmmTAController;

    const/4 v1, 0x6

    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/android/server/spay/EurCmmTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 151
    .local v8, "EurCmmTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v8    # "EurCmmTAController":Landroid/os/IBinder;
    :cond_103
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_123

    .line 155
    new-instance v7, Lcom/android/server/spay/ChnCmmTAController;

    const/4 v1, 0x7

    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Lcom/android/server/spay/ChnCmmTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 156
    .local v7, "ChnCmmTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v7    # "ChnCmmTAController":Landroid/os/IBinder;
    :cond_123
    const/16 v1, 0x101

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_147

    .line 160
    new-instance v10, Lcom/android/server/spay/TAController;

    const/16 v1, 0x101

    const/16 v2, 0x101

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Lcom/android/server/spay/TAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 161
    .local v10, "authTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/16 v2, 0x101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v10    # "authTAController":Landroid/os/IBinder;
    :cond_147
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_16b

    .line 165
    new-instance v12, Lcom/android/server/spay/DiscoverTAController;

    const/16 v1, 0x8

    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    invoke-direct {v12, v1, v2}, Lcom/android/server/spay/DiscoverTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 166
    .local v12, "discoverTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v12    # "discoverTAController":Landroid/os/IBinder;
    :cond_16b
    const/16 v1, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_18f

    .line 170
    new-instance v13, Lcom/android/server/spay/JicTAController;

    const/16 v1, 0xa

    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    invoke-direct {v13, v1, v2}, Lcom/android/server/spay/JicTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 171
    .local v13, "jicTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v13    # "jicTAController":Landroid/os/IBinder;
    :cond_18f
    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v1

    if-eqz v1, :cond_1b3

    .line 175
    new-instance v11, Lcom/android/server/spay/CnccTAController;

    const/16 v1, 0x9

    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/spay/PaymentTZServiceConfig;->getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcom/android/server/spay/CnccTAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 176
    .local v11, "cnccTAController":Landroid/os/IBinder;
    iget-object v1, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v11    # "cnccTAController":Landroid/os/IBinder;
    :cond_1b3
    invoke-direct/range {p0 .. p0}, disablePaymentFrameworkUpdateRemoval()V

    .line 180
    new-instance v1, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;-><init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;II)V

    move-object/from16 v0, p0

    iput-object v1, v0, mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 181
    .end local v4    # "tzSvcInfo":Landroid/spay/PaymentTZServiceCommnInfo;
    :goto_1c3
    return-object v4

    .line 115
    :cond_1c4
    const-string v1, "PaymentManagerService"

    const-string v2, "Error: Framework App is already registered. Re-Registration not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v4, 0x0

    goto :goto_1c3
.end method
