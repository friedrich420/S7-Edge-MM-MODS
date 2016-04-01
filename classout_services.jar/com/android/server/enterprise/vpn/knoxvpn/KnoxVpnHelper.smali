.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
.super Ljava/lang/Object;
.source "KnoxVpnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$ProfileState;
    }
.end annotation


# static fields
.field private static final CAC_AUTHENTICATION:I = 0x6

.field private static final CERTIFICATE_AUTHENTICATION:I = 0x1

.field private static final DBG:Z

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FW-KnoxVpnHelper"

.field private static mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private static mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field private static mNotificationManager:Landroid/app/NotificationManager;


# instance fields
.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

.field private final vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    sput-boolean v0, DBG:Z

    .line 97
    sput-object v2, mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 99
    sput-object v2, mContext:Landroid/content/Context;

    .line 101
    sput-object v2, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 103
    sput-object v2, mNotificationManager:Landroid/app/NotificationManager;

    .line 105
    sput-object v2, mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 115
    sput-object v2, mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v0, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 113
    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 132
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 157
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v0, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 113
    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 132
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 150
    sput-object p1, mContext:Landroid/content/Context;

    .line 151
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v0

    iput-object v0, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 152
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    sput-object v0, mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 153
    return-void
.end method

.method public static declared-synchronized getConnectivityManagerInstance()Landroid/net/IConnectivityManager;
    .registers 2

    .prologue
    .line 182
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, mConnectivityManagerService:Landroid/net/IConnectivityManager;

    if-nez v0, :cond_13

    .line 183
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    sput-object v0, mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 185
    :cond_13
    sget-object v0, mConnectivityManagerService:Landroid/net/IConnectivityManager;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 182
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 4

    .prologue
    .line 162
    const-class v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v2

    :try_start_3
    sget-object v1, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_14

    .line 163
    sget-object v1, mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    sput-object v1, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 166
    :cond_14
    sget-object v1, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_23

    .line 167
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Admin cannot be verified"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "exception":Ljava/lang/SecurityException;
    throw v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_20

    .line 162
    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1

    .line 170
    .end local v0    # "exception":Ljava/lang/SecurityException;
    :cond_23
    :try_start_23
    sget-object v1, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_20

    monitor-exit v2

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-nez v0, :cond_e

    .line 137
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 139
    :cond_e
    sget-object v0, mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .registers 1

    .prologue
    .line 143
    sget-object v0, mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v0, :cond_c

    .line 144
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v0

    sput-object v0, mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 146
    :cond_c
    sget-object v0, mKnoxVpnCredentialHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    return-object v0
.end method

.method public static declared-synchronized getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .prologue
    .line 174
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_14

    .line 175
    sget-object v0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, mNotificationManager:Landroid/app/NotificationManager;

    .line 178
    :cond_14
    sget-object v0, mNotificationManager:Landroid/app/NotificationManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .prologue
    .line 189
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getPersonManager()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_11

    .line 194
    sget-object v0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 197
    :cond_11
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private stopUid(I)I
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 1001
    const/4 v1, -0x1

    .line 1002
    .local v1, "firstUid":I
    const/4 v2, -0x1

    .line 1004
    .local v2, "lastUid":I
    const v3, 0x186a0

    mul-int v1, p1, v3

    .line 1005
    :try_start_7
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_24

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_24
    const v3, 0x1869f

    add-int v2, v1, v3

    .line 1007
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_46

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The last uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_47

    .line 1011
    :cond_46
    :goto_46
    return v2

    .line 1008
    :catch_47
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUidOfPersona Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method


# virtual methods
.method public addVpnProfileToDatabase(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z
    .registers 36
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 343
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_21

    const-string v29, "FW-KnoxVpnHelper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "jsonProfile value is <-->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_21
    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 345
    .local v5, "adminId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 346
    .local v25, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 347
    .local v14, "personaId":I
    move-object/from16 v0, v25

    invoke-static {v0, v14}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 348
    .local v26, "vendorNameWithCid":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "profileName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 349
    .local v18, "protocolType":Ljava/lang/String;
    const/16 v22, -0x1

    .local v22, "routeType":I
    const/4 v4, 0x0

    .line 350
    .local v4, "activateState":I
    const/4 v6, -0x1

    .local v6, "chainingEnabled":I
    const/16 v24, 0x0

    .line 351
    .local v24, "uidPidSearchEnabled":I
    const/16 v28, -0x1

    .line 352
    .local v28, "vpnServiceType":I
    const/16 v27, -0x1

    .line 353
    .local v27, "vpnConnectionType":I
    sget-object v20, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    .line 354
    .local v20, "proxyServer":Ljava/lang/String;
    const/16 v19, -0x1

    .line 355
    .local v19, "proxyPort":I
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    .line 356
    .local v12, "pacurl":Ljava/lang/String;
    const/4 v10, 0x0

    .line 357
    .local v10, "enableIPv6":I
    const/16 v21, 0x0

    .line 359
    .local v21, "proxy_auth":I
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 360
    .local v17, "profileObj":Lorg/json/JSONObject;
    const-string v29, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 361
    .local v13, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v29, "profile_attribute"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 362
    .local v15, "profileAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v29, "knox"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 363
    .local v11, "knoxAttrObj":Lorg/json/JSONObject;
    const-string v29, "FW-KnoxVpnHelper"

    const-string v30, "Inside addVpnProfileToDatabase <-->"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz v11, :cond_1cc

    .line 365
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_85

    const-string v29, "FW-KnoxVpnHelper"

    const-string v30, "Inside knox specific AttrObj != null <-->"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_85
    const-string v29, "chaining_enabled"

    const/16 v30, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 367
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_af

    const-string v29, "FW-KnoxVpnHelper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Value for chainingEnabled <-->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_af
    const-string/jumbo v29, "proxy-server"

    sget-object v30, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 369
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_dc

    const-string v29, "FW-KnoxVpnHelper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Value for proxyServer <-->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_dc
    const-string/jumbo v29, "proxy-port"

    const/16 v30, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 371
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_109

    const-string v29, "FW-KnoxVpnHelper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Value for proxyPort <-->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_109
    const-string/jumbo v29, "pac-url"

    sget-object v30, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 373
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_134

    const-string v29, "FW-KnoxVpnHelper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Value for pacurl <-->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_134
    const-string/jumbo v29, "ipv6-enable"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 375
    const-string/jumbo v29, "proxy-auth"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    .line 379
    :try_start_14e
    const-string/jumbo v29, "uidpid_search_enabled"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    .line 380
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_177

    const-string v29, "FW-KnoxVpnHelper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Admin has enabled id tracking feature "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_177} :catch_304

    .line 388
    :cond_177
    :goto_177
    :try_start_177
    const-string v29, "connectionType"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "connectionType":Ljava/lang/String;
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_19d

    const-string v29, "FW-KnoxVpnHelper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "connection type value = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_19d
    const-string/jumbo v29, "keepon"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_1a7} :catch_31a

    move-result v29

    if-eqz v29, :cond_309

    .line 391
    const/16 v27, 0x0

    .line 399
    .end local v7    # "connectionType":Ljava/lang/String;
    :cond_1ac
    :goto_1ac
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_1cc

    const-string v29, "FW-KnoxVpnHelper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Value for vpnConnectionType <-->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1cc
    const-string/jumbo v29, "profileName"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 403
    const-string/jumbo v29, "vpn_type"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 404
    const-string/jumbo v29, "vpn_route_type"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 405
    if-nez v22, :cond_1ea

    .line 406
    const/4 v4, 0x1

    .line 408
    :cond_1ea
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 409
    .local v8, "cv":Landroid/content/ContentValues;
    const-string/jumbo v29, "profileName"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v29, "adminUid"

    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string/jumbo v29, "personaId"

    new-instance v30, Ljava/lang/Integer;

    move-object/from16 v0, v30

    invoke-direct {v0, v14}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const-string/jumbo v29, "vendorName"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v29, "protocolType"

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v29, "defaultRoute"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v29, "activateState"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string/jumbo v29, "vpnServiceType"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v29, "chainingEnabled"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string/jumbo v29, "uidPidSearch"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string/jumbo v29, "vpnConnectionType"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string/jumbo v29, "proxyServer"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v29, "proxyPort"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string/jumbo v29, "pacurl"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string/jumbo v29, "ipv6"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const-string/jumbo v29, "proxyAuth"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v29, v0

    const-string v30, "VpnProfileInfo"

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v23

    .line 429
    .local v23, "status":Z
    sget-boolean v29, DBG:Z

    if-eqz v29, :cond_303

    const-string v29, "FW-KnoxVpnHelper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "add profile in database : status is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "profile Name is"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_303
    return v23

    .line 382
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v23    # "status":Z
    :catch_304
    move-exception v9

    .line 383
    .local v9, "e":Ljava/lang/Exception;
    const/16 v24, 0x0

    goto/16 :goto_177

    .line 392
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "connectionType":Ljava/lang/String;
    :cond_309
    :try_start_309
    const-string/jumbo v29, "ondemand"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_309 .. :try_end_313} :catch_31a

    move-result v29

    if-eqz v29, :cond_1ac

    .line 393
    const/16 v27, 0x1

    goto/16 :goto_1ac

    .line 396
    .end local v7    # "connectionType":Ljava/lang/String;
    :catch_31a
    move-exception v9

    .line 397
    .restart local v9    # "e":Ljava/lang/Exception;
    const/16 v27, 0x0

    goto/16 :goto_1ac
.end method

.method public addVpnProfileToMap(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z
    .registers 33
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;

    .prologue
    .line 434
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 435
    .local v3, "adminId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 436
    .local v24, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 437
    .local v12, "personaId":I
    move-object/from16 v0, v24

    invoke-static {v0, v12}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 438
    .local v25, "vendorNameWithCid":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "profileName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 439
    .local v16, "protocolType":Ljava/lang/String;
    const/16 v22, -0x1

    .local v22, "routeType":I
    const/4 v2, 0x0

    .line 440
    .local v2, "activateState":I
    const/4 v4, -0x1

    .local v4, "chainingEnabled":I
    const/16 v23, 0x0

    .line 441
    .local v23, "uidPidSearchEnabled":I
    const/16 v26, -0x1

    .line 442
    .local v26, "vpnConnectionType":I
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    .line 443
    .local v18, "proxyServer":Ljava/lang/String;
    const/16 v17, -0x1

    .line 444
    .local v17, "proxyPort":I
    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    .line 445
    .local v21, "proxy_username":Ljava/lang/String;
    sget-object v20, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    .line 446
    .local v20, "proxy_password":Ljava/lang/String;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    .line 447
    .local v10, "pacurl":Ljava/lang/String;
    const/4 v7, 0x0

    .line 448
    .local v7, "enableIPv6":I
    const/16 v19, 0x0

    .line 450
    .local v19, "proxy_auth":I
    :try_start_2c
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 451
    .local v15, "profileObj":Lorg/json/JSONObject;
    const-string v27, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 452
    .local v11, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v27, "profile_attribute"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 453
    .local v13, "profileAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v27, "knox"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 454
    .local v9, "knoxAttrObj":Lorg/json/JSONObject;
    if-eqz v9, :cond_172

    .line 456
    const-string v27, "chaining_enabled"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 457
    sget-boolean v27, DBG:Z

    if-eqz v27, :cond_79

    const-string v27, "FW-KnoxVpnHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Value for chainingEnabled <-->"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_79
    const-string/jumbo v27, "proxy-server"

    sget-object v28, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 459
    sget-boolean v27, DBG:Z

    if-eqz v27, :cond_a6

    const-string v27, "FW-KnoxVpnHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Value for proxyServer <-->"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_a6
    const-string/jumbo v27, "proxy-port"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 461
    sget-boolean v27, DBG:Z

    if-eqz v27, :cond_d3

    const-string v27, "FW-KnoxVpnHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Value for proxyPort <-->"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_d3
    const-string/jumbo v27, "proxy-username"

    sget-object v28, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 463
    const-string/jumbo v27, "proxy-password"

    sget-object v28, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 464
    const-string/jumbo v27, "pac-url"

    sget-object v28, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 465
    const-string/jumbo v27, "ipv6-enable"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 466
    const-string/jumbo v27, "proxy-auth"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_113} :catch_221

    move-result v19

    .line 469
    :try_start_114
    const-string v27, "connectionType"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "connectionType":Ljava/lang/String;
    sget-boolean v27, DBG:Z

    if-eqz v27, :cond_13a

    const-string v27, "FW-KnoxVpnHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "connection type value = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_13a
    const-string/jumbo v27, "keepon"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_144} :catch_21c

    move-result v27

    if-eqz v27, :cond_20b

    .line 473
    const/16 v26, 0x0

    .line 481
    .end local v5    # "connectionType":Ljava/lang/String;
    :cond_149
    :goto_149
    :try_start_149
    const-string/jumbo v27, "uidpid_search_enabled"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    .line 482
    sget-boolean v27, DBG:Z

    if-eqz v27, :cond_172

    const-string v27, "FW-KnoxVpnHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Admin has enabled id tracking feature in addVpnProfileToMap"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_172
    const-string/jumbo v27, "profileName"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 485
    const-string/jumbo v27, "vpn_type"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 486
    const-string/jumbo v27, "vpn_route_type"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 487
    if-nez v22, :cond_190

    .line 488
    const/4 v2, 0x1

    .line 490
    :cond_190
    if-eqz v14, :cond_208

    .line 491
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    invoke-direct {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;-><init>()V

    .line 492
    .local v8, "entry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v8, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProfileName(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setAdminId(I)V

    .line 494
    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPersonaId(I)V

    .line 495
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorPkgName(Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, getUidForPackageName(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorUid(I)V

    .line 497
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProtocolType(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v8, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setActivateState(I)V

    .line 499
    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setRouteType(I)V

    .line 501
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setMarkProfileForDeletion(Z)V

    .line 502
    move/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVpnConnectionType(I)V

    .line 503
    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setChainingEnabled(I)V

    .line 504
    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUidPidSearchEnabled(I)V

    .line 505
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyServer(Ljava/lang/String;)V

    .line 506
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyPort(I)V

    .line 507
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyUsername(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyPassword(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPacurl(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setEnableIPv6(I)V

    .line 511
    if-eqz v21, :cond_1f8

    if-eqz v20, :cond_1f8

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyCredentialsPreDefined(Z)V

    .line 512
    :cond_1f8
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPacAuthRequired(I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_208} :catch_221

    .line 519
    .end local v8    # "entry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_208
    const/16 v27, 0x1

    .end local v9    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v11    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v13    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v15    # "profileObj":Lorg/json/JSONObject;
    :goto_20a
    return v27

    .line 474
    .restart local v5    # "connectionType":Ljava/lang/String;
    .restart local v9    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v11    # "parentAttrObj":Lorg/json/JSONObject;
    .restart local v13    # "profileAttrObj":Lorg/json/JSONObject;
    .restart local v15    # "profileObj":Lorg/json/JSONObject;
    :cond_20b
    :try_start_20b
    const-string/jumbo v27, "ondemand"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_215} :catch_21c

    move-result v27

    if-eqz v27, :cond_149

    .line 475
    const/16 v26, 0x1

    goto/16 :goto_149

    .line 478
    .end local v5    # "connectionType":Ljava/lang/String;
    :catch_21c
    move-exception v6

    .line 479
    .local v6, "e":Ljava/lang/Exception;
    const/16 v26, 0x0

    goto/16 :goto_149

    .line 515
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v11    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v13    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v15    # "profileObj":Lorg/json/JSONObject;
    :catch_221
    move-exception v6

    .line 516
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v27, "FW-KnoxVpnHelper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "get profilename from json : Error parsing JSON \n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v27, 0x0

    goto :goto_20a
.end method

.method public allowApplicationToSendFd(I)V
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_50

    .line 955
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, p1, v3}, getUIDForPackage(ILjava/lang/String;)I

    move-result v2

    .line 956
    .local v2, "uidOfApplication":I
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_2a

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowApplicationToSendFd: uidOfApplication value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_2a
    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    .line 958
    invoke-virtual {p0, v2}, jniAllowApplicationToSendFd(I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_33

    .line 954
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 961
    .end local v2    # "uidOfApplication":I
    :catch_33
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at allowApplicationToSendFd API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_50
    return-void
.end method

.method public allowUidTosendFd(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 982
    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    .line 983
    :try_start_3
    invoke-virtual {p0, p1}, jniAllowApplicationToSendFd(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 988
    :cond_6
    :goto_6
    return-void

    .line 985
    :catch_7
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FW-KnoxVpnHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at allowUidTosendFd API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public chainingForAddAll(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 826
    const-string v9, "FW-KnoxVpnHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chainingForAddAll: profileName value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v4, 0x0

    .line 828
    .local v4, "enableChaining":Z
    const/4 v7, 0x0

    .line 830
    .local v7, "packageName":Ljava/lang/String;
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v9, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v10, "VpnPackageInfo"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "packageCid"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "packageName"

    aput-object v15, v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 838
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_cb

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_cb

    .line 839
    invoke-virtual/range {p0 .. p1}, checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e9

    .line 840
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_5c

    const-string v9, "FW-KnoxVpnHelper"

    const-string v10, "chainingForAddAll: checkIfProfileHasChainingFeature value is true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_5c
    move-object/from16 v0, p0

    iget-object v9, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v8

    .line 842
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v8, :cond_86

    .line 843
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_84

    const-string v9, "FW-KnoxVpnHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chainingForAddAll: profile hashmap value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    move v5, v4

    .line 863
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "enableChaining":Z
    .end local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v5, "enableChaining":I
    :goto_85
    return v5

    .line 846
    .end local v5    # "enableChaining":I
    .restart local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v4    # "enableChaining":Z
    .restart local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_86
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_8a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 847
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 848
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_b9

    const-string v9, "FW-KnoxVpnHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chainingForAddAll: packageName value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_b9
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 850
    const-string v9, "FW-KnoxVpnHelper"

    const-string v10, "chainingForAddAll: packageName and vendorName are same"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v4, 0x1

    .line 859
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_cb
    :goto_cb
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_e7

    const-string v9, "FW-KnoxVpnHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chainingForAddAll: profileName value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_e7} :catch_eb

    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_e7
    :goto_e7
    move v5, v4

    .line 863
    .restart local v5    # "enableChaining":I
    goto :goto_85

    .line 856
    .end local v5    # "enableChaining":I
    .restart local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_e9
    const/4 v4, 0x0

    goto :goto_cb

    .line 860
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_eb
    move-exception v3

    .line 861
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "FW-KnoxVpnHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception at enableChainingForAddAll API "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7
.end method

.method public checkForSystemUIDApplicationForVpn(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, "isAdminApplication":Z
    invoke-static {}, getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 294
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, -0x1

    .line 296
    .local v6, "uid":I
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 297
    .local v4, "token":J
    const/4 v7, 0x0

    invoke-interface {v3, p1, v7, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 298
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    if-eqz v1, :cond_16

    .line 300
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 302
    :cond_16
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_32

    const-string v7, "FW-KnoxVpnHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check system UID : uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_32
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_3c

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_3b

    .line 304
    const/4 v2, 0x1

    .line 310
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "token":J
    :cond_3b
    :goto_3b
    return v2

    .line 306
    :catch_3c
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "FW-KnoxVpnHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in checkForSystemUIDApplicationForVpn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v6, -0x1

    goto :goto_3b
.end method

.method protected checkIfAddAllPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "transformedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1015
    const/4 v1, 0x0

    .line 1016
    .local v1, "resultOfAddAll":Z
    invoke-virtual {p0, p1}, getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 1017
    .local v0, "cid":I
    const-string v2, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, v0, v2}, getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1018
    const/4 v1, 0x1

    .line 1020
    :cond_12
    return v1
.end method

.method public checkIfAdminHasVpnPermission(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 204
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 205
    const/4 v1, 0x1

    return v1
.end method

.method public checkIfApplicationIsblackListed(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 936
    const/4 v2, 0x0

    .line 938
    .local v2, "isPackageBackListed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_32

    .line 939
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 940
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_31

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfApplicationIsblackListed: mBlacklistedApplication value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_52

    .line 941
    :cond_31
    const/4 v2, 0x1

    .line 948
    :cond_32
    :goto_32
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_4e

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfApplicationIsblackListed: isPackageBackListed value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_4e
    return v2

    .line 938
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 945
    :catch_52
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at checkIfApplicationIsblackListed API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method protected checkIfChainingEnabledForVendor(IZ)I
    .registers 11
    .param p1, "vendorUid"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, -0x1

    .line 882
    const/4 v0, -0x2

    .line 884
    .local v0, "chainingValue":I
    :try_start_2
    iget-object v5, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 885
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v5

    if-ne v5, p1, :cond_c

    .line 886
    if-eqz p2, :cond_50

    .line 887
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_58

    move-result v1

    .line 888
    .local v1, "chainingValueStored":I
    if-eq v1, v6, :cond_c

    .line 889
    move v0, v1

    .line 904
    .end local v1    # "chainingValueStored":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_27
    :goto_27
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_4f

    const-string v5, "FW-KnoxVpnHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "is chaining feature enabled  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "for vendor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_4f
    return v0

    .line 893
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_50
    :try_start_50
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_58

    move-result v1

    .line 894
    .restart local v1    # "chainingValueStored":I
    if-ne v1, v6, :cond_c

    .line 895
    move v0, v1

    .line 896
    goto :goto_27

    .line 901
    .end local v1    # "chainingValueStored":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_58
    move-exception v2

    .line 902
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_27

    const-string v5, "FW-KnoxVpnHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at checkIfChainingEnabledForVendor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 763
    const/4 v0, -0x1

    .line 765
    .local v0, "chainingEnabled":I
    :try_start_1
    iget-object v3, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 766
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_11

    .line 767
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 768
    const/4 v0, 0x1

    .line 776
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_11
    :goto_11
    return v0

    .line 769
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_12
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1a

    move-result v3

    if-nez v3, :cond_11

    .line 770
    const/4 v0, 0x0

    goto :goto_11

    .line 773
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_1a
    move-exception v1

    .line 774
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at checkIfProfileHasChainingFeature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public checkIfProfileListEmpty()Z
    .registers 9

    .prologue
    .line 922
    const/4 v2, 0x0

    .line 924
    .local v2, "profileListEmpty":Z
    :try_start_1
    iget-object v3, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v4, "VpnProfileInfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 925
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_32

    move-result v3

    if-nez v3, :cond_15

    .line 926
    const/4 v2, 0x1

    .line 931
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_15
    :goto_15
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_31

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfProfileListEmpty:profileListEmpty value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_31
    return v2

    .line 928
    :catch_32
    move-exception v1

    .line 929
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at checkIfProfileListEmpty API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public checkIfVpnProfileTableIsEmpty(Ljava/lang/String;)Z
    .registers 10
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 743
    const/4 v2, 0x1

    .line 745
    .local v2, "tableEmpty":Z
    :try_start_1
    iget-object v3, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v4, "VpnProfileInfo"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "vendorName"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 749
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_3b

    move-result v3

    if-lez v3, :cond_22

    .line 750
    const/4 v2, 0x0

    .line 755
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_22
    :goto_22
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfKnoxVpnDatabaseIsEmpty: tableEmpty value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return v2

    .line 752
    :catch_3b
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at checkIfKnoxVpnDatabaseIsEmpty API: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public checkSystemVpn(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "jsonProfile"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 524
    :try_start_1
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1d

    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkSystemVpn : profileName =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 526
    .local v2, "profileJsonObject":Lorg/json/JSONObject;
    const-string v6, "KNOX_VPN_PARAMETERS"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 527
    .local v1, "knoxParentObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "profile_attribute"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 528
    .local v3, "profileObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "vpn_route_type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 529
    .local v4, "vpnType":I
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkSystemVpn : vpnType =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_52

    .line 530
    const/4 v6, 0x1

    if-eq v4, v6, :cond_70

    .line 537
    .end local v1    # "knoxParentObject":Lorg/json/JSONObject;
    .end local v2    # "profileJsonObject":Lorg/json/JSONObject;
    .end local v3    # "profileObject":Lorg/json/JSONObject;
    .end local v4    # "vpnType":I
    :goto_51
    return v5

    .line 533
    :catch_52
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception checkSystemVpn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "knoxParentObject":Lorg/json/JSONObject;
    .restart local v2    # "profileJsonObject":Lorg/json/JSONObject;
    .restart local v3    # "profileObject":Lorg/json/JSONObject;
    .restart local v4    # "vpnType":I
    :cond_70
    const/4 v5, 0x0

    goto :goto_51
.end method

.method public containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    .registers 15
    .param p1, "container_id"    # I

    .prologue
    .line 314
    const/4 v3, 0x0

    .line 315
    .local v3, "i":I
    const/4 v5, 0x0

    .line 317
    .local v5, "retVal":[Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "packageCid"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "packageName"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 325
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_50

    .line 326
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 327
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 328
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "packageName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 329
    add-int/lit8 v3, v3, 0x1

    .line 330
    goto :goto_38

    .line 332
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_50
    const-string v6, "FW-KnoxVpnHelper"

    const-string/jumbo v7, "getting container package list in database : DB read for packages returned NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_59

    .line 337
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_58
    :goto_58
    return-object v5

    .line 334
    :catch_59
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getting container package list in database : Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method protected getActiveNetworkInterface()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1179
    const/4 v0, 0x0

    .line 1181
    .local v0, "activeInterfaceName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, getConnectivityManagerInstance()Landroid/net/IConnectivityManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 1182
    .local v4, "wifiProperty":Landroid/net/LinkProperties;
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1c

    .line 1183
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1194
    .end local v0    # "activeInterfaceName":Ljava/lang/String;
    .end local v4    # "wifiProperty":Landroid/net/LinkProperties;
    .local v1, "activeInterfaceName":Ljava/lang/String;
    :goto_1b
    return-object v1

    .line 1186
    .end local v1    # "activeInterfaceName":Ljava/lang/String;
    .restart local v0    # "activeInterfaceName":Ljava/lang/String;
    .restart local v4    # "wifiProperty":Landroid/net/LinkProperties;
    :cond_1c
    invoke-static {}, getConnectivityManagerInstance()Landroid/net/IConnectivityManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 1187
    .local v3, "mobileProperty":Landroid/net/LinkProperties;
    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3f

    .line 1188
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_37

    move-result-object v0

    move-object v1, v0

    .line 1189
    .end local v0    # "activeInterfaceName":Ljava/lang/String;
    .restart local v1    # "activeInterfaceName":Ljava/lang/String;
    goto :goto_1b

    .line 1191
    .end local v1    # "activeInterfaceName":Ljava/lang/String;
    .end local v3    # "mobileProperty":Landroid/net/LinkProperties;
    .end local v4    # "wifiProperty":Landroid/net/LinkProperties;
    .restart local v0    # "activeInterfaceName":Ljava/lang/String;
    :catch_37
    move-exception v2

    .line 1192
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "FW-KnoxVpnHelper"

    const-string v6, "Exception occured while trying to get the active interface details"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3f
    move-object v1, v0

    .line 1194
    .end local v0    # "activeInterfaceName":Ljava/lang/String;
    .restart local v1    # "activeInterfaceName":Ljava/lang/String;
    goto :goto_1b
.end method

.method public getAdminIdForUserVpn(I)I
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 577
    const/4 v0, -0x1

    .line 578
    .local v0, "adminId":I
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 579
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 580
    .local v4, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, p1, v7}, getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 581
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v0

    move v1, v0

    .line 587
    .end local v0    # "adminId":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v1, "adminId":I
    :goto_40
    return v1

    .line 586
    .end local v1    # "adminId":I
    .restart local v0    # "adminId":I
    :cond_41
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_69

    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAdminIdForUserVpn: admin id value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    move v1, v0

    .line 587
    .end local v0    # "adminId":I
    .restart local v1    # "adminId":I
    goto :goto_40
.end method

.method public getAdminUidForPersona(I)I
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 714
    const/4 v0, -0x1

    .line 715
    .local v0, "id":I
    invoke-direct {p0}, getPersonManager()Landroid/os/PersonaManager;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 717
    .local v2, "ident":J
    invoke-direct {p0}, getPersonManager()Landroid/os/PersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getAdminUidForPersona(I)I

    move-result v0

    .line 718
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v0

    .line 722
    .end local v2    # "ident":J
    :goto_17
    return v1

    :cond_18
    const/4 v1, -0x1

    goto :goto_17
.end method

.method public getContainerIdFromPackageName(Ljava/lang/String;)I
    .registers 6
    .param p1, "personifiedPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 692
    if-eqz p1, :cond_10

    .line 694
    :try_start_3
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, "packageArray":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    move-result v1

    .line 702
    .end local v2    # "packageArray":[Ljava/lang/String;
    :cond_10
    :goto_10
    return v1

    .line 698
    :catch_11
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_10
.end method

.method public getInstalledPackages(I)[Ljava/lang/String;
    .registers 19
    .param p1, "containerId"    # I

    .prologue
    .line 233
    :try_start_0
    invoke-static {}, getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 234
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v7, "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 236
    .local v12, "token":J
    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-interface {v10, v14, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    .line 237
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 239
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v14, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_1f

    .line 247
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v12    # "token":J
    :catch_31
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/Exception;
    const-string v14, "FW-KnoxVpnHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in getInstalledPackages : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v8, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4f
    return-object v8

    .line 241
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v12    # "token":J
    :cond_50
    :try_start_50
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    new-array v8, v14, [Ljava/lang/String;

    .line 242
    .local v8, "installedPackagesArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 243
    .local v3, "i":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 244
    .local v11, "str":Ljava/lang/String;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-object v11, v8, v4
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6c} :catch_31

    move v4, v3

    .line 245
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_5c
.end method

.method protected getListOfActiveUsers()Ljava/util/HashSet;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1200
    .local v0, "activeUsers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1202
    .local v4, "token":J
    :try_start_9
    sget-object v8, mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 1203
    .local v7, "userManager":Landroid/os/UserManager;
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 1204
    .local v6, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1205
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    const-string v8, "FW-KnoxVpnHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "the list of active users are "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4c} :catch_4d
    .catchall {:try_start_9 .. :try_end_4c} :catchall_72

    goto :goto_1c

    .line 1208
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userManager":Landroid/os/UserManager;
    :catch_4d
    move-exception v1

    .line 1209
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4e
    const-string v8, "FW-KnoxVpnHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occured while trying to get the list of active users "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_4e .. :try_end_6a} :catchall_72

    .line 1211
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1213
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6d
    return-object v0

    .line 1211
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "userManager":Landroid/os/UserManager;
    :cond_6e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6d

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "userManager":Landroid/os/UserManager;
    :catchall_72
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method protected getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .param p1, "profile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    const/4 v2, 0x0

    .line 1028
    .local v2, "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_1
    iget-object v8, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 1029
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v5, :cond_65

    .line 1030
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_97

    .line 1031
    .end local v2    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local v3, "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_e
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1032
    .local v4, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 1033
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v7

    .line 1034
    .local v7, "userId":I
    const-string v8, "FW-KnoxVpnHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "knox vpn proxy settings is going to be applied for the user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5b} :catch_5c

    goto :goto_16

    .line 1045
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v7    # "userId":I
    :catch_5c
    move-exception v0

    move-object v2, v3

    .line 1046
    .end local v3    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :goto_5e
    const-string v8, "FW-KnoxVpnHelper"

    const-string v9, "Exception occured while getting the list of uid added to the vpn profile"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_65
    :goto_65
    return-object v2

    .line 1038
    .end local v2    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .restart local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_66
    :try_start_66
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, getUidForPackageName(Ljava/lang/String;)I

    move-result v6

    .line 1039
    .local v6, "uid":I
    const-string v8, "FW-KnoxVpnHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "knox vpn proxy settings is going to be applied for the app whose uid is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v8, -0x1

    if-eq v6, v8, :cond_16

    .line 1041
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_96} :catch_5c

    goto :goto_16

    .line 1045
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "uid":I
    .restart local v2    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :catch_97
    move-exception v0

    goto :goto_5e

    .end local v2    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_99
    move-object v2, v3

    .end local v3    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v2    # "listOfUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    goto :goto_65
.end method

.method public getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 726
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1c

    const-string v4, "FW-KnoxVpnHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Passed string is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1c
    const-string/jumbo v4, "sec_container_"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 728
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 730
    .local v0, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v3, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 734
    .local v1, "prefixLen":I
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "returnedString":Ljava/lang/String;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_62

    const-string v4, "FW-KnoxVpnHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returned string is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .end local v0    # "length":I
    .end local v1    # "prefixLen":I
    .end local v2    # "returnedString":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/StringBuilder;
    :cond_62
    :goto_62
    return-object v2

    :cond_63
    move-object v2, p2

    goto :goto_62
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 283
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    .line 288
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_9
    return-object v1

    .line 284
    :catch_a
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getPackageNameForUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "personaId"    # I
    .param p2, "regularPackageName"    # Ljava/lang/String;

    .prologue
    .line 673
    :try_start_0
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "FW-KnoxVpnHelper"

    const-string/jumbo v3, "vpn getPersonifiedName : container id is regular device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    move-result-object v1

    .line 679
    :goto_23
    return-object v1

    .line 676
    :catch_24
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FW-KnoxVpnHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting getPersonifiedName : Error :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "jsonProfile"    # Ljava/lang/String;

    .prologue
    .line 541
    const/4 v3, 0x0

    .line 543
    .local v3, "profileName":Ljava/lang/String;
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 544
    .local v4, "profileObj":Lorg/json/JSONObject;
    const-string v5, "KNOX_VPN_PARAMETERS"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 545
    .local v1, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "profile_attribute"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 546
    .local v2, "profileAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "profileName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v3

    .line 551
    .end local v1    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v2    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v4    # "profileObj":Lorg/json/JSONObject;
    :goto_1a
    return-object v3

    .line 547
    :catch_1b
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "FW-KnoxVpnHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get profilename from json : Error parsing JSON \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public getProfileOfVendor(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "transformedPackageName"    # Ljava/lang/String;

    .prologue
    .line 802
    const/4 v4, 0x0

    .line 804
    .local v4, "profileName":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "VpnProfileInfo"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "vendorName"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "profileName"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 812
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5e

    .line 813
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 814
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "profileName"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_41

    move-result-object v4

    .line 815
    goto :goto_2d

    .line 817
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_41
    move-exception v2

    .line 818
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "FW-KnoxVpnHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at getProfileOwningThePackage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5e
    return-object v4
.end method

.method public getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "transformedPackageName"    # Ljava/lang/String;

    .prologue
    .line 780
    const/4 v4, 0x0

    .line 782
    .local v4, "profileName":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "VpnPackageInfo"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "packageName"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "profileName"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 790
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5e

    .line 791
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 792
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "profileName"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_41

    move-result-object v4

    .line 793
    goto :goto_2d

    .line 795
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_41
    move-exception v2

    .line 796
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "FW-KnoxVpnHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at getProfileOwningThePackage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5e
    return-object v4
.end method

.method public getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 683
    if-eqz p1, :cond_f

    .line 685
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getTransformedUIDForPackage(II)I
    .registers 4
    .param p1, "personaId"    # I
    .param p2, "uid"    # I

    .prologue
    .line 276
    invoke-static {p1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public getUIDForPackage(ILjava/lang/String;)I
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v3, -0x1

    .line 258
    .local v3, "uid":I
    :try_start_1
    invoke-static {}, getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 259
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 260
    .local v4, "token":J
    const/16 v6, 0x2080

    invoke-interface {v2, p2, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 261
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_2b

    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "application uid for info :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2b
    if-eqz v1, :cond_3a

    .line 263
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_38

    const-string v6, "FW-KnoxVpnHelper"

    const-string v7, "application uid for info : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_38
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 266
    :cond_3a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_63

    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "application uid for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_63} :catch_64

    .line 272
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "token":J
    :cond_63
    :goto_63
    return v3

    .line 268
    :catch_64
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in getUIDForPackage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v3, -0x1

    goto :goto_63
.end method

.method public getUidForPackageName(Ljava/lang/String;)I
    .registers 8
    .param p1, "transformedPackageName"    # Ljava/lang/String;

    .prologue
    .line 867
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_1d

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUidForPackageName: transformedPackageName value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1d
    const/4 v1, -0x1

    .line 870
    .local v1, "uidOfVendor":I
    :try_start_1e
    invoke-virtual {p0, p1}, getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v2

    .line 871
    .local v2, "userIdOfVendor":I
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3f

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUidForPackageName: userIdOfVendor value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_3f
    invoke-virtual {p0, p1}, getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    .line 873
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_64

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUidForPackageName: uidOfVendor value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_64} :catch_65

    .line 877
    .end local v2    # "userIdOfVendor":I
    :cond_64
    :goto_64
    return v1

    .line 874
    :catch_65
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_64

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at getUidForPackageName API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method

.method public isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z
    .registers 7
    .param p1, "packageInfo"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .prologue
    .line 910
    const/4 v1, 0x0

    .line 911
    .local v1, "resultOfAddAll":Z
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 912
    .local v0, "cid":I
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v2

    .line 913
    .local v2, "uid":I
    const/4 v3, -0x2

    if-ne v2, v3, :cond_21

    .line 914
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, v0, v4}, getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 915
    const/4 v1, 0x1

    .line 918
    :cond_21
    return v1
.end method

.method public isPackageInstalled(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-static {}, getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 211
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_35

    .line 213
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 214
    .local v4, "token":J
    const/4 v6, 0x0

    invoke-interface {v2, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 215
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    if-eqz v1, :cond_36

    .line 217
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_34

    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package present. application uid for user 100 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_34
    const/4 v3, 0x1

    .line 227
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "token":J
    :cond_35
    :goto_35
    return v3

    .line 220
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "token":J
    :cond_36
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package not present : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4f} :catch_50

    goto :goto_35

    .line 223
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "token":J
    :catch_50
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "FW-KnoxVpnHelper"

    const-string v7, "Exception in isPackageInstalled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method public isPersonaExists(I)Z
    .registers 3
    .param p1, "containerId"    # I

    .prologue
    .line 707
    invoke-direct {p0}, getPersonManager()Landroid/os/PersonaManager;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, getPersonManager()Landroid/os/PersonaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 708
    const/4 v0, 0x1

    .line 710
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isUsingKnoxPackageExists(I)Z
    .registers 15
    .param p1, "containerId"    # I

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, "alreadyExists":Z
    :try_start_1
    iget-object v6, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "packageCid"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "packageName"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 603
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_51

    .line 604
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 605
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "packageName"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 606
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, p1, v6}, getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_54

    move-result v6

    if-eqz v6, :cond_52

    .line 607
    const/4 v0, 0x0

    .line 619
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_51
    :goto_51
    return v0

    .line 611
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_52
    const/4 v0, 0x1

    .line 613
    goto :goto_31

    .line 615
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_54
    move-exception v3

    .line 616
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "FW-KnoxVpnHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isUsingKnoxPackageExists \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public isWideVpnExists(I)Z
    .registers 13
    .param p1, "containerId"    # I

    .prologue
    .line 555
    const/4 v3, 0x0

    .line 557
    .local v3, "rangeExists":Z
    :try_start_1
    const-string v4, "ADD_ALL_PACKAGES"

    invoke-virtual {p0, p1, v4}, getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "packageNameToCheck":Ljava/lang/String;
    iget-object v4, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v5, "VpnPackageInfo"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "packageName"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "profileName"

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 566
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_31

    move-result v4

    if-lez v4, :cond_30

    .line 567
    const/4 v3, 0x1

    .line 572
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v2    # "packageNameToCheck":Ljava/lang/String;
    :cond_30
    :goto_30
    return v3

    .line 569
    :catch_31
    move-exception v1

    .line 570
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FW-KnoxVpnHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPackageExists \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public native jniAllowApplicationToSendFd(I)V
.end method

.method public native jniStopApplicationFromSendingFd(I)V
.end method

.method protected removeProfileCredentials(Ljava/lang/String;)V
    .registers 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1149
    :try_start_0
    invoke-static {}, getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "proxy-username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1151
    invoke-static {}, getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "proxy-password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    .line 1156
    :cond_42
    :goto_42
    return-void

    .line 1153
    :catch_43
    move-exception v0

    .line 1154
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_42

    const-string v1, "FW-KnoxVpnHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while removing the profile credentials "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method protected retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1159
    const/4 v1, 0x0

    .line 1161
    .local v1, "valueRetrived":Ljava/lang/String;
    :try_start_1
    invoke-static {}, getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    move-result-object v1

    .line 1165
    :cond_20
    :goto_20
    return-object v1

    .line 1162
    :catch_21
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_20

    const-string v2, "FW-KnoxVpnHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while Retrieve the profile credentials "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method protected saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1169
    const/4 v0, 0x0

    .line 1171
    .local v0, "credentialSaved":Z
    :try_start_1
    invoke-static {}, getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 1175
    :cond_9
    :goto_9
    return v0

    .line 1172
    :catch_a
    move-exception v1

    .line 1173
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "FW-KnoxVpnHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while saving the profile credentials "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method protected sendPacConfigBroadcast(Ljava/util/HashMap;ILjava/lang/String;I)V
    .registers 22
    .param p2, "excludeUid"    # I
    .param p3, "pacUrl"    # Ljava/lang/String;
    .param p4, "proxyServerPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1106
    .local p1, "uidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1108
    .local v12, "token":J
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1109
    .local v11, "uid":Ljava/lang/Integer;
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1110
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v14, 0x24000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1111
    const/4 v10, 0x0

    .line 1112
    .local v10, "proxyInfo":Landroid/net/ProxyInfo;
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_8a

    .line 1113
    const-string v14, "FW-KnoxVpnHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sending the broadcast which contains default pac configuration for the uid added to knox vpn "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    new-instance v10, Landroid/net/ProxyInfo;

    .end local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v10, v14, v15, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1115
    .restart local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/net/ProxyInfo;->setKnoxVpnProfile(I)V

    .line 1121
    :goto_53
    const-string v14, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1122
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move/from16 v0, p2

    if-ne v14, v0, :cond_b8

    .line 1123
    const-string v14, "FW-KnoxVpnHelper"

    const-string/jumbo v15, "skipping sending the broadcast which contains pac configuration to vpn client"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_68} :catch_69
    .catchall {:try_start_4 .. :try_end_68} :catchall_b3

    goto :goto_c

    .line 1139
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v11    # "uid":Ljava/lang/Integer;
    :catch_69
    move-exception v3

    .line 1140
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6a
    const-string v14, "FW-KnoxVpnHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception occured while sending proxy broadcast to knox vpn apps "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6a .. :try_end_86} :catchall_b3

    .line 1142
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1144
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_89
    return-void

    .line 1117
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v11    # "uid":Ljava/lang/Integer;
    :cond_8a
    :try_start_8a
    const-string v14, "FW-KnoxVpnHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sending the broadcast which contains pac configuration for the uid added to knox vpn "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    new-instance v10, Landroid/net/ProxyInfo;

    .end local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move/from16 v0, p4

    invoke-direct {v10, v14, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    .line 1119
    .restart local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/net/ProxyInfo;->setKnoxVpnProfile(I)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_b2} :catch_69
    .catchall {:try_start_8a .. :try_end_b2} :catchall_b3

    goto :goto_53

    .line 1142
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v11    # "uid":Ljava/lang/Integer;
    :catchall_b3
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    .line 1125
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v11    # "uid":Ljava/lang/Integer;
    :cond_b8
    :try_start_b8
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_e1

    .line 1127
    const-string v14, "FW-KnoxVpnHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "skipping sending the broadcast which contains pac configuration to the entire user"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1130
    :cond_e1
    invoke-static {}, getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1131
    .local v9, "pkgNames":[Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 1132
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_f2
    if-ge v5, v7, :cond_c

    aget-object v8, v2, v5

    .line 1133
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    sget-object v14, mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v14, v6, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_10b} :catch_69
    .catchall {:try_start_b8 .. :try_end_10b} :catchall_b3

    .line 1132
    add-int/lit8 v5, v5, 0x1

    goto :goto_f2

    .line 1142
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v11    # "uid":Ljava/lang/Integer;
    :cond_10e
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_89
.end method

.method protected sendknoxVpnProxyBroadcast(Ljava/util/HashMap;Ljava/lang/String;II)V
    .registers 22
    .param p2, "proxyServer"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "excludeUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1066
    .local p1, "uidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1068
    .local v12, "token":J
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1069
    .local v11, "uid":Ljava/lang/Integer;
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v14, 0x24000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1072
    new-instance v10, Landroid/net/ProxyInfo;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v10, v0, v1, v14}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1073
    .local v10, "proxyInfo":Landroid/net/ProxyInfo;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/net/ProxyInfo;->setKnoxVpnProfile(I)V

    .line 1074
    const-string v14, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1076
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move/from16 v0, p4

    if-ne v14, v0, :cond_6d

    .line 1077
    const-string v14, "FW-KnoxVpnHelper"

    const-string/jumbo v15, "skipping sending the broadcast which contains proxy configuration to vpn client"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_47} :catch_48
    .catchall {:try_start_4 .. :try_end_47} :catchall_96

    goto :goto_c

    .line 1098
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v11    # "uid":Ljava/lang/Integer;
    :catch_48
    move-exception v3

    .line 1099
    .local v3, "e":Ljava/lang/Exception;
    :try_start_49
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_69

    const-string v14, "FW-KnoxVpnHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception occured while sending proxy broadcast to knox vpn apps "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_49 .. :try_end_69} :catchall_96

    .line 1101
    :cond_69
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1103
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6c
    return-void

    .line 1081
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v11    # "uid":Ljava/lang/Integer;
    :cond_6d
    :try_start_6d
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_9b

    .line 1083
    const-string v14, "FW-KnoxVpnHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "skipping sending the broadcast which contains proxy configuration to the entire user"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_94} :catch_48
    .catchall {:try_start_6d .. :try_end_94} :catchall_96

    goto/16 :goto_c

    .line 1101
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v11    # "uid":Ljava/lang/Integer;
    :catchall_96
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    .line 1088
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v11    # "uid":Ljava/lang/Integer;
    :cond_9b
    :try_start_9b
    const-string v14, "FW-KnoxVpnHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sending the broadcast which contains proxy configuration for the uid added to knox vpn "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {}, getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1090
    .local v9, "pkgNames":[Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 1091
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_c5
    if-ge v5, v7, :cond_c

    aget-object v8, v2, v5

    .line 1092
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    sget-object v14, mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v14, v6, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_de} :catch_48
    .catchall {:try_start_9b .. :try_end_de} :catchall_96

    .line 1091
    add-int/lit8 v5, v5, 0x1

    goto :goto_c5

    .line 1101
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v11    # "uid":Ljava/lang/Integer;
    :cond_e1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6c
.end method

.method protected setProxyFlagForEmail(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "hasProxy"    # Z

    .prologue
    .line 1058
    if-eqz p2, :cond_1c

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "net.vpn.proxy.email."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :goto_1b
    return-void

    .line 1061
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "net.vpn.proxy.email."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public stopApplicationFromSendingFd(I)V
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 968
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_51

    .line 969
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, p1, v3}, getUIDForPackage(ILjava/lang/String;)I

    move-result v2

    .line 970
    .local v2, "uidOfApplication":I
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_2b

    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopApplicationFromSendingFd: uidOfApplication value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_2b
    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    .line 972
    invoke-virtual {p0, v2}, jniStopApplicationFromSendingFd(I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_34

    .line 968
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 975
    .end local v2    # "uidOfApplication":I
    :catch_34
    move-exception v0

    .line 976
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FW-KnoxVpnHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at stopApplicationFromSendingFd API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    return-void
.end method

.method public stopUidFromSendingFd(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 992
    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    .line 993
    :try_start_3
    invoke-virtual {p0, p1}, jniStopApplicationFromSendingFd(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 998
    :cond_6
    :goto_6
    return-void

    .line 995
    :catch_7
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FW-KnoxVpnHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at stopUidFromSendingFd API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method protected updateProxyList(IZ)Ljava/util/HashMap;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "isUserId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1052
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1053
    .local v0, "uidToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    return-object v0
.end method
