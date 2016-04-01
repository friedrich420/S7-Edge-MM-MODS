.class public Landroid/sec/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
    }
.end annotation


# static fields
.field private static final EDM_CLASS_NAME:Ljava/lang/String; = "android.app.enterprise.EnterpriseDeviceManager"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_PROXY_SERVICE:Ljava/lang/String; = "edm_proxy"

.field private static final KNOX_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.EnterpriseKnoxManager"

.field public static final KNOX_ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "knox_enterprise_policy"

.field private static mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private static mInstanceCreated:Z


# instance fields
.field private volatile mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private volatile mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

.field private volatile mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

.field private volatile mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private volatile mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private volatile mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

.field private volatile mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

.field private volatile mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

.field private volatile mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

.field private volatile mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private volatile mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

.field private volatile mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

.field private volatile mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

.field private volatile mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

.field private volatile mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

.field private volatile mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field private volatile mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private volatile mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

.field private volatile mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

.field private volatile mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

.field private volatile mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 94
    :try_start_0
    const-string v3, "android.app.enterprise.EnterpriseDeviceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "c":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 96
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v3

    .line 100
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_1c
    return-object v3

    .line 97
    :catch_1d
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public static createKnox(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 105
    :try_start_1
    const-string v3, "com.sec.enterprise.knox.EnterpriseKnoxManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 108
    .local v0, "c":Ljava/lang/Class;
    const-string v3, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 109
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v3

    .line 113
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_18
    return-object v3

    .line 110
    :catch_19
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 113
    goto :goto_18
.end method

.method public static getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;
    .registers 2

    .prologue
    .line 117
    sget-boolean v0, mInstanceCreated:Z

    if-nez v0, :cond_16

    .line 118
    const-class v1, Landroid/sec/enterprise/EnterpriseDeviceManager;

    monitor-enter v1

    .line 119
    :try_start_7
    sget-boolean v0, mInstanceCreated:Z

    if-nez v0, :cond_15

    .line 120
    new-instance v0, Landroid/sec/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0}, <init>()V

    sput-object v0, mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, mInstanceCreated:Z

    .line 123
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 125
    :cond_16
    sget-object v0, mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0

    .line 123
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getService()Landroid/sec/enterprise/IEDMProxy;
    .registers 1

    .prologue
    .line 89
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    .line 169
    .local v0, "result":Landroid/sec/enterprise/ApplicationPolicy;
    if-nez v0, :cond_12

    .line 170
    monitor-enter p0

    .line 171
    :try_start_5
    iget-object v0, p0, mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    .line 172
    if-nez v0, :cond_11

    .line 173
    new-instance v1, Landroid/sec/enterprise/ApplicationPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/ApplicationPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    .local v1, "result":Landroid/sec/enterprise/ApplicationPolicy;
    :try_start_e
    iput-object v1, p0, mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 175
    .end local v1    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 177
    :cond_12
    return-object v0

    .line 175
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    goto :goto_14
.end method

.method public getAuditPolicy()Landroid/sec/enterprise/auditlog/AuditLog;
    .registers 4

    .prologue
    .line 441
    iget-object v0, p0, mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    .line 442
    .local v0, "result":Landroid/sec/enterprise/auditlog/AuditLog;
    if-nez v0, :cond_12

    .line 443
    monitor-enter p0

    .line 444
    :try_start_5
    iget-object v0, p0, mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    .line 445
    if-nez v0, :cond_11

    .line 446
    new-instance v1, Landroid/sec/enterprise/auditlog/AuditLog;

    invoke-direct {v1}, Landroid/sec/enterprise/auditlog/AuditLog;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    .local v1, "result":Landroid/sec/enterprise/auditlog/AuditLog;
    :try_start_e
    iput-object v1, p0, mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 448
    .end local v1    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    .restart local v0    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 450
    :cond_12
    return-object v0

    .line 448
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    .restart local v1    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    .restart local v0    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    goto :goto_14
.end method

.method public getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;
    .registers 4

    .prologue
    .line 294
    iget-object v0, p0, mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    .line 295
    .local v0, "result":Landroid/sec/enterprise/BluetoothPolicy;
    if-nez v0, :cond_12

    .line 296
    monitor-enter p0

    .line 297
    :try_start_5
    iget-object v0, p0, mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    .line 298
    if-nez v0, :cond_11

    .line 299
    new-instance v1, Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BluetoothPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    .local v1, "result":Landroid/sec/enterprise/BluetoothPolicy;
    :try_start_e
    iput-object v1, p0, mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 301
    .end local v1    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 303
    :cond_12
    return-object v0

    .line 301
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    goto :goto_14
.end method

.method public getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;
    .registers 4

    .prologue
    .line 312
    iget-object v0, p0, mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    .line 313
    .local v0, "result":Landroid/sec/enterprise/BrowserPolicy;
    if-nez v0, :cond_12

    .line 314
    monitor-enter p0

    .line 315
    :try_start_5
    iget-object v0, p0, mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    .line 316
    if-nez v0, :cond_11

    .line 317
    new-instance v1, Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BrowserPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/BrowserPolicy;
    .local v1, "result":Landroid/sec/enterprise/BrowserPolicy;
    :try_start_e
    iput-object v1, p0, mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 319
    .end local v1    # "result":Landroid/sec/enterprise/BrowserPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/BrowserPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 321
    :cond_12
    return-object v0

    .line 319
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/BrowserPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/BrowserPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/BrowserPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/BrowserPolicy;
    goto :goto_14
.end method

.method public getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;
    .registers 4

    .prologue
    .line 421
    iget-object v0, p0, mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 422
    .local v0, "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_12

    .line 423
    monitor-enter p0

    .line 424
    :try_start_5
    iget-object v0, p0, mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 425
    if-nez v0, :cond_11

    .line 426
    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .local v1, "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    :try_start_e
    iput-object v1, p0, mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 428
    .end local v1    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 430
    :cond_12
    return-object v0

    .line 428
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    goto :goto_14
.end method

.method public getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;
    .registers 4

    .prologue
    .line 519
    iget-object v0, p0, mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    .line 520
    .local v0, "result":Landroid/sec/enterprise/ClientCertificateManager;
    if-nez v0, :cond_12

    .line 521
    monitor-enter p0

    .line 522
    :try_start_5
    iget-object v0, p0, mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    .line 523
    if-nez v0, :cond_11

    .line 524
    new-instance v1, Landroid/sec/enterprise/ClientCertificateManager;

    invoke-direct {v1}, Landroid/sec/enterprise/ClientCertificateManager;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    .local v1, "result":Landroid/sec/enterprise/ClientCertificateManager;
    :try_start_e
    iput-object v1, p0, mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 526
    .end local v1    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v0    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 528
    :cond_12
    return-object v0

    .line 526
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v1    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v0    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    goto :goto_14
.end method

.method public getDateTimePolicy()Landroid/sec/enterprise/DateTimePolicy;
    .registers 4

    .prologue
    .line 366
    iget-object v0, p0, mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    .line 367
    .local v0, "result":Landroid/sec/enterprise/DateTimePolicy;
    if-nez v0, :cond_12

    .line 368
    monitor-enter p0

    .line 369
    :try_start_5
    iget-object v0, p0, mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    .line 370
    if-nez v0, :cond_11

    .line 371
    new-instance v1, Landroid/sec/enterprise/DateTimePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/DateTimePolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/DateTimePolicy;
    .local v1, "result":Landroid/sec/enterprise/DateTimePolicy;
    :try_start_e
    iput-object v1, p0, mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 373
    .end local v1    # "result":Landroid/sec/enterprise/DateTimePolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/DateTimePolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 375
    :cond_12
    return-object v0

    .line 373
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/DateTimePolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/DateTimePolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/DateTimePolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/DateTimePolicy;
    goto :goto_14
.end method

.method public getDeviceAccountPolicy()Landroid/sec/enterprise/DeviceAccountPolicy;
    .registers 4

    .prologue
    .line 456
    iget-object v0, p0, mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    .line 457
    .local v0, "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    if-nez v0, :cond_12

    .line 458
    monitor-enter p0

    .line 459
    :try_start_5
    iget-object v0, p0, mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    .line 460
    if-nez v0, :cond_11

    .line 461
    new-instance v1, Landroid/sec/enterprise/DeviceAccountPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceAccountPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    .local v1, "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    :try_start_e
    iput-object v1, p0, mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 463
    .end local v1    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 465
    :cond_12
    return-object v0

    .line 463
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    goto :goto_14
.end method

.method public getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;
    .registers 4

    .prologue
    .line 258
    iget-object v0, p0, mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    .line 259
    .local v0, "result":Landroid/sec/enterprise/DeviceInventory;
    if-nez v0, :cond_12

    .line 260
    monitor-enter p0

    .line 261
    :try_start_5
    iget-object v0, p0, mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    .line 262
    if-nez v0, :cond_11

    .line 263
    new-instance v1, Landroid/sec/enterprise/DeviceInventory;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceInventory;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/DeviceInventory;
    .local v1, "result":Landroid/sec/enterprise/DeviceInventory;
    :try_start_e
    iput-object v1, p0, mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 265
    .end local v1    # "result":Landroid/sec/enterprise/DeviceInventory;
    .restart local v0    # "result":Landroid/sec/enterprise/DeviceInventory;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 267
    :cond_12
    return-object v0

    .line 265
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/DeviceInventory;
    .restart local v1    # "result":Landroid/sec/enterprise/DeviceInventory;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/DeviceInventory;
    .restart local v0    # "result":Landroid/sec/enterprise/DeviceInventory;
    goto :goto_14
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    :try_start_0
    invoke-static {}, getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 508
    :goto_8
    return-object v1

    .line 507
    :catch_9
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;
    .registers 4

    .prologue
    .line 386
    iget-object v0, p0, mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .line 387
    .local v0, "result":Landroid/sec/enterprise/FirewallPolicy;
    if-nez v0, :cond_12

    .line 388
    monitor-enter p0

    .line 389
    :try_start_5
    iget-object v0, p0, mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .line 390
    if-nez v0, :cond_11

    .line 391
    new-instance v1, Landroid/sec/enterprise/FirewallPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/FirewallPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/FirewallPolicy;
    .local v1, "result":Landroid/sec/enterprise/FirewallPolicy;
    :try_start_e
    iput-object v1, p0, mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 393
    .end local v1    # "result":Landroid/sec/enterprise/FirewallPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/FirewallPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 395
    :cond_12
    return-object v0

    .line 393
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/FirewallPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/FirewallPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/FirewallPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/FirewallPolicy;
    goto :goto_14
.end method

.method public getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;
    .registers 4

    .prologue
    .line 401
    iget-object v0, p0, mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    .line 402
    .local v0, "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    if-nez v0, :cond_12

    .line 403
    monitor-enter p0

    .line 404
    :try_start_5
    iget-object v0, p0, mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    .line 405
    if-nez v0, :cond_11

    .line 406
    new-instance v1, Landroid/sec/enterprise/kioskmode/KioskMode;

    invoke-direct {v1}, Landroid/sec/enterprise/kioskmode/KioskMode;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    .local v1, "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    :try_start_e
    iput-object v1, p0, mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 408
    .end local v1    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    .restart local v0    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 410
    :cond_12
    return-object v0

    .line 408
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    .restart local v1    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    .restart local v0    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    goto :goto_14
.end method

.method public getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .registers 4

    .prologue
    .line 471
    iget-object v0, p0, mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    .line 472
    .local v0, "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-nez v0, :cond_12

    .line 473
    monitor-enter p0

    .line 474
    :try_start_5
    iget-object v0, p0, mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    .line 475
    if-nez v0, :cond_11

    .line 476
    new-instance v1, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    invoke-direct {v1}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .local v1, "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :try_start_e
    iput-object v1, p0, mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 478
    .end local v1    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .restart local v0    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 480
    :cond_12
    return-object v0

    .line 478
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .restart local v1    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .restart local v0    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    goto :goto_14
.end method

.method public getLocationPolicy()Landroid/sec/enterprise/LocationPolicy;
    .registers 4

    .prologue
    .line 276
    iget-object v0, p0, mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    .line 277
    .local v0, "result":Landroid/sec/enterprise/LocationPolicy;
    if-nez v0, :cond_12

    .line 278
    monitor-enter p0

    .line 279
    :try_start_5
    iget-object v0, p0, mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    .line 280
    if-nez v0, :cond_11

    .line 281
    new-instance v1, Landroid/sec/enterprise/LocationPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/LocationPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/LocationPolicy;
    .local v1, "result":Landroid/sec/enterprise/LocationPolicy;
    :try_start_e
    iput-object v1, p0, mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 283
    .end local v1    # "result":Landroid/sec/enterprise/LocationPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/LocationPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 285
    :cond_12
    return-object v0

    .line 283
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/LocationPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/LocationPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/LocationPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/LocationPolicy;
    goto :goto_14
.end method

.method public getMiscPolicy()Landroid/sec/enterprise/general/MiscPolicy;
    .registers 4

    .prologue
    .line 186
    iget-object v0, p0, mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    .line 187
    .local v0, "result":Landroid/sec/enterprise/general/MiscPolicy;
    if-nez v0, :cond_12

    .line 188
    monitor-enter p0

    .line 189
    :try_start_5
    iget-object v0, p0, mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    .line 190
    if-nez v0, :cond_11

    .line 191
    new-instance v1, Landroid/sec/enterprise/general/MiscPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/general/MiscPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    .local v1, "result":Landroid/sec/enterprise/general/MiscPolicy;
    :try_start_e
    iput-object v1, p0, mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 193
    .end local v1    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 195
    :cond_12
    return-object v0

    .line 193
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    goto :goto_14
.end method

.method public getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;
    .registers 4

    .prologue
    .line 240
    iget-object v0, p0, mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    .line 241
    .local v0, "result":Landroid/sec/enterprise/PasswordPolicy;
    if-nez v0, :cond_12

    .line 242
    monitor-enter p0

    .line 243
    :try_start_5
    iget-object v0, p0, mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    .line 244
    if-nez v0, :cond_11

    .line 245
    new-instance v1, Landroid/sec/enterprise/PasswordPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PasswordPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/PasswordPolicy;
    .local v1, "result":Landroid/sec/enterprise/PasswordPolicy;
    :try_start_e
    iput-object v1, p0, mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 247
    .end local v1    # "result":Landroid/sec/enterprise/PasswordPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/PasswordPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 249
    :cond_12
    return-object v0

    .line 247
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/PasswordPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/PasswordPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/PasswordPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/PasswordPolicy;
    goto :goto_14
.end method

.method public getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .registers 4

    .prologue
    .line 330
    iget-object v0, p0, mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 331
    .local v0, "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-nez v0, :cond_12

    .line 332
    monitor-enter p0

    .line 333
    :try_start_5
    iget-object v0, p0, mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 334
    if-nez v0, :cond_11

    .line 335
    new-instance v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .local v1, "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :try_start_e
    iput-object v1, p0, mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 337
    .end local v1    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 339
    :cond_12
    return-object v0

    .line 337
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    goto :goto_14
.end method

.method public getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 223
    .local v0, "result":Landroid/sec/enterprise/RestrictionPolicy;
    if-nez v0, :cond_12

    .line 224
    monitor-enter p0

    .line 225
    :try_start_5
    iget-object v0, p0, mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 226
    if-nez v0, :cond_11

    .line 227
    new-instance v1, Landroid/sec/enterprise/RestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RestrictionPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    .local v1, "result":Landroid/sec/enterprise/RestrictionPolicy;
    :try_start_e
    iput-object v1, p0, mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 229
    .end local v1    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 231
    :cond_12
    return-object v0

    .line 229
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    goto :goto_14
.end method

.method public getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    .line 205
    .local v0, "result":Landroid/sec/enterprise/RoamingPolicy;
    if-nez v0, :cond_12

    .line 206
    monitor-enter p0

    .line 207
    :try_start_5
    iget-object v0, p0, mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    .line 208
    if-nez v0, :cond_11

    .line 209
    new-instance v1, Landroid/sec/enterprise/RoamingPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RoamingPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/RoamingPolicy;
    .local v1, "result":Landroid/sec/enterprise/RoamingPolicy;
    :try_start_e
    iput-object v1, p0, mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 211
    .end local v1    # "result":Landroid/sec/enterprise/RoamingPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/RoamingPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 213
    :cond_12
    return-object v0

    .line 211
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/RoamingPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/RoamingPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/RoamingPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/RoamingPolicy;
    goto :goto_14
.end method

.method public getSmartCardAccessPolicy()Landroid/sec/enterprise/SmartCardAccessPolicy;
    .registers 4

    .prologue
    .line 492
    iget-object v0, p0, mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    .line 493
    .local v0, "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    if-nez v0, :cond_12

    .line 494
    monitor-enter p0

    .line 495
    :try_start_5
    iget-object v0, p0, mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    .line 496
    if-nez v0, :cond_11

    .line 497
    new-instance v1, Landroid/sec/enterprise/SmartCardAccessPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/SmartCardAccessPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    .local v1, "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    :try_start_e
    iput-object v1, p0, mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 499
    .end local v1    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 501
    :cond_12
    return-object v0

    .line 499
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    goto :goto_14
.end method

.method public getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;
    .registers 4

    .prologue
    .line 538
    iget-object v0, p0, mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    .line 539
    .local v0, "result":Landroid/sec/enterprise/TimaKeystore;
    if-nez v0, :cond_12

    .line 540
    monitor-enter p0

    .line 541
    :try_start_5
    iget-object v0, p0, mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    .line 542
    if-nez v0, :cond_11

    .line 543
    new-instance v1, Landroid/sec/enterprise/TimaKeystore;

    invoke-direct {v1}, Landroid/sec/enterprise/TimaKeystore;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/TimaKeystore;
    .local v1, "result":Landroid/sec/enterprise/TimaKeystore;
    :try_start_e
    iput-object v1, p0, mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 545
    .end local v1    # "result":Landroid/sec/enterprise/TimaKeystore;
    .restart local v0    # "result":Landroid/sec/enterprise/TimaKeystore;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 547
    :cond_12
    return-object v0

    .line 545
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/TimaKeystore;
    .restart local v1    # "result":Landroid/sec/enterprise/TimaKeystore;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/TimaKeystore;
    .restart local v0    # "result":Landroid/sec/enterprise/TimaKeystore;
    goto :goto_14
.end method

.method public getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;
    .registers 4

    .prologue
    .line 348
    iget-object v0, p0, mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 349
    .local v0, "result":Landroid/sec/enterprise/WifiPolicy;
    if-nez v0, :cond_12

    .line 350
    monitor-enter p0

    .line 351
    :try_start_5
    iget-object v0, p0, mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 352
    if-nez v0, :cond_11

    .line 353
    new-instance v1, Landroid/sec/enterprise/WifiPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/WifiPolicy;-><init>()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .end local v0    # "result":Landroid/sec/enterprise/WifiPolicy;
    .local v1, "result":Landroid/sec/enterprise/WifiPolicy;
    :try_start_e
    iput-object v1, p0, mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_16

    move-object v0, v1

    .line 355
    .end local v1    # "result":Landroid/sec/enterprise/WifiPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/WifiPolicy;
    :cond_11
    :try_start_11
    monitor-exit p0

    .line 357
    :cond_12
    return-object v0

    .line 355
    :catchall_13
    move-exception v2

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/WifiPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/WifiPolicy;
    :catchall_16
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/WifiPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/WifiPolicy;
    goto :goto_14
.end method
