.class public Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.super Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;
.source "TimaKeystoreService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "defaultpackage"

.field private static final FIPS_TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/fips_tima_keystore/"

.field private static final KNOX_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/tima_keystore/"


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Landroid/os/PersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DBG:Z

    .line 90
    const-string v0, "TimaKeystoreService"

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;-><init>()V

    .line 88
    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 94
    iput-object v2, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 96
    iput-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 106
    const-string/jumbo v1, "tima"

    iput-object v1, p0, TIMA_SERVICE:Ljava/lang/String;

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsTimaVersion30:Z

    .line 112
    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;)V

    iput-object v1, p0, mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    .line 376
    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_2b

    .line 116
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "TimaKeystoreService Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2b
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 118
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, mPersonaMgr:Landroid/os/PersonaManager;

    .line 120
    iget-object v1, p0, mPersonaMgr:Landroid/os/PersonaManager;

    iget-object v2, p0, mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 121
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 122
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    iput-object v1, p0, mTimaService:Landroid/service/tima/ITimaService;

    .line 124
    invoke-direct {p0}, setupIntentFilters()V

    .line 127
    iget-object v1, p0, mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_7a

    .line 129
    :try_start_5e
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_69

    .line 130
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Called TIMA service getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_69
    iget-object v1, p0, mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsTimaVersion30:Z
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_7a} :catch_7b

    .line 138
    :cond_7a
    :goto_7a
    return-void

    .line 134
    :catch_7b
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 82
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 82
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 82
    invoke-direct {p0, p1}, removeUserKeyDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .prologue
    .line 82
    invoke-direct {p0}, enforcePermission()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, deletePackageRecord(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private deletePackageRecord(ILjava/lang/String;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 486
    const/4 v5, 0x2

    :try_start_2
    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "pkgName"

    aput-object v6, v1, v5

    .line 488
    .local v1, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "sUid":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    .line 490
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "TimaKeystorePolicy"

    invoke-virtual {v5, v6, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_26

    move-result v4

    .line 497
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sUid":Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :goto_25
    return v4

    .line 493
    :catch_26
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deletePackageRecord() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private deletePackageRecord(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 502
    const/4 v4, 0x1

    :try_start_2
    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "pkgName"

    aput-object v5, v1, v4

    .line 503
    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 504
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "TimaKeystorePolicy"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_19

    move-result v3

    .line 511
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :goto_18
    return v3

    .line 507
    :catch_19
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deletePackageRecord() failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private enforcePermission()V
    .registers 4

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 146
    :goto_8
    return-void

    .line 145
    :cond_9
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 464
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 465
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string/jumbo v3, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 469
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v2, "whereValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "TimaKeystorePolicy"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3d

    move-result v3

    .line 481
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "whereValues":Landroid/content/ContentValues;
    :goto_3c
    return v3

    .line 476
    :catch_3d
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertOrUpdatePackageRecord() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v3, 0x0

    goto :goto_3c
.end method

.method private removeUserKeyDirectory(Ljava/io/File;)Z
    .registers 8
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 448
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 449
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_d
    if-ge v3, v4, :cond_21

    aget-object v1, v0, v3

    .line 450
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 451
    invoke-direct {p0, v1}, removeUserKeyDirectory(Ljava/io/File;)Z

    .line 449
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 453
    :cond_1d
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1a

    .line 456
    .end local v1    # "file":Ljava/io/File;
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 458
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_25
    return v5

    :cond_26
    const/4 v5, 0x1

    goto :goto_25
.end method

.method private setupIntentFilters()V
    .registers 6

    .prologue
    .line 360
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_c

    .line 361
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "in setupIntentFilters"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_c
    new-instance v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .line 363
    .local v2, "receiver":Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v0, "addRemoveUserFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v3, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    return-void
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method


# virtual methods
.method public enableTimaKeystore(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 152
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_d

    .line 153
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in enableTimaKeystore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_d
    invoke-direct {p0}, enforcePermission()V

    .line 157
    iget-boolean v4, p0, mIsTimaVersion30:Z

    if-nez v4, :cond_21

    .line 158
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_20

    .line 159
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableTimaKeystore - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_20
    :goto_20
    return v3

    .line 163
    :cond_21
    if-eqz p1, :cond_20

    .line 166
    :try_start_23
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 169
    .local v2, "userId":I
    const-string/jumbo v4, "defaultpackage"

    invoke-direct {p0, v4}, deletePackageRecord(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 170
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableTimaKeystore: deletePackageRecord failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_38
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "caller":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4, v0, p2}, insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4d} :catch_4f

    move-result v3

    goto :goto_20

    .line 178
    .end local v0    # "caller":Ljava/lang/String;
    .end local v2    # "userId":I
    :catch_4f
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableTimaKeystore() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public isTimaKeyStoreDefaultForContainer(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, "ret":Z
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_f

    .line 191
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in isTimaKeyStoreDefaultForContainer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_f
    iget-boolean v4, p0, mIsTimaVersion30:Z

    if-nez v4, :cond_21

    .line 194
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1f

    .line 195
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "isTimaKeyStoreDefaultForContainer - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move v2, v3

    .line 214
    .end local v2    # "ret":Z
    :cond_20
    :goto_20
    return v2

    .line 200
    .restart local v2    # "ret":Z
    :cond_21
    :try_start_21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const v5, 0x186a0

    div-int/2addr v4, v5

    if-le v4, v1, :cond_32

    .line 202
    .local v1, "isUserContainer":Z
    :goto_2b
    if-eqz v1, :cond_52

    .line 203
    invoke-virtual {p0, p1}, isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_30} :catch_34

    move-result v2

    goto :goto_20

    .end local v1    # "isUserContainer":Z
    :cond_32
    move v1, v3

    .line 200
    goto :goto_2b

    .line 205
    :catch_34
    move-exception v0

    .line 206
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTimaKeyStoreDefaultForContainer() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_52
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_20

    .line 212
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTimaKeyStoreDefaultForContainer returning - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public isTimaKeystoreEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x1

    .line 269
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_d

    .line 270
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "in isTimaKeystoreEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_d
    iget-boolean v1, p0, mIsTimaVersion30:Z

    if-nez v1, :cond_1f

    .line 273
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1d

    .line 274
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "isTimaKeystoreEnabled - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1d
    const/4 v0, 0x0

    .line 293
    :cond_1e
    :goto_1e
    return v0

    .line 278
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1e

    .line 283
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binder.getCallingPid() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Binder.getCallingUid()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 285
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 287
    :cond_5a
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v4, "knox_timakeystore_policy"

    const-string/jumbo v5, "isTimaKeystoreEnabled"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1e

    .line 293
    invoke-virtual {p0, p1}, isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    goto :goto_1e
.end method

.method public isTimaKeystoreEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 302
    const/4 v8, 0x0

    .line 303
    .local v8, "ret":Z
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_e

    .line 304
    sget-object v11, TAG:Ljava/lang/String;

    const-string/jumbo v12, "in isTimaKeystoreEnabledForPackage"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_e
    iget-boolean v11, p0, mIsTimaVersion30:Z

    if-nez v11, :cond_1f

    .line 307
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_1e

    .line 308
    sget-object v11, TAG:Ljava/lang/String;

    const-string/jumbo v12, "isTimaKeystoreEnabledForPackage - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1e
    :goto_1e
    return v10

    .line 314
    :cond_1f
    :try_start_1f
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 317
    .local v9, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 319
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    const/16 v10, 0x80

    invoke-interface {v6, p2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 321
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "enabled"

    aput-object v11, v1, v10

    .line 323
    .local v1, "columns":[Ljava/lang/String;
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "TimaKeystorePolicy"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v1, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 326
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_67

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_67

    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 329
    .local v4, "isEnabled":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 331
    .local v5, "it":Ljava/util/Iterator;
    :cond_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_67

    .line 332
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 333
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "enabled"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 336
    if-eqz v4, :cond_4d

    .line 337
    const/4 v8, 0x1

    .line 343
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "isEnabled":Z
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_67
    if-nez v8, :cond_72

    if-eqz v0, :cond_72

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_6d} :catch_91

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_72

    .line 345
    const/4 v8, 0x1

    .line 353
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9    # "userId":I
    :cond_72
    :goto_72
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_8f

    .line 354
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isTimaKeystoreEnabledForPackage returning - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    move v10, v8

    .line 356
    goto :goto_1e

    .line 347
    :catch_91
    move-exception v3

    .line 348
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isTimaKeystoreEnabledForPackage() failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method public isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 221
    const/4 v6, 0x0

    .line 222
    .local v6, "ret":Z
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_e

    .line 223
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "in isTimaKeystoreEnabledInDB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_e
    iget-boolean v8, p0, mIsTimaVersion30:Z

    if-nez v8, :cond_1f

    .line 226
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_1e

    .line 227
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "isTimaKeystoreEnabledInDB - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1e
    :goto_1e
    return v7

    .line 232
    :cond_1f
    const/4 v7, 0x1

    :try_start_20
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "enabled"

    aput-object v8, v0, v7

    .line 234
    .local v0, "columns":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "TimaKeystorePolicy"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 237
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_59

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_59

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 240
    .local v3, "isEnabled":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 242
    .local v4, "it":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 243
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 244
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "enabled"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_55} :catch_78

    move-result v3

    .line 247
    if-eqz v3, :cond_3f

    .line 248
    const/4 v6, 0x1

    .line 259
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "isEnabled":Z
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_59
    :goto_59
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_76

    .line 260
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isTimaKeystoreEnabledInDB returning - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    move v7, v6

    .line 262
    goto :goto_1e

    .line 253
    :catch_78
    move-exception v2

    .line 254
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isTimaKeystoreEnabledInDB() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 554
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 566
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 560
    return-void
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 548
    return-void
.end method
