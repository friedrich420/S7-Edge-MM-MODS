.class public Lcom/android/server/enterprise/EnterpriseMigrationManager;
.super Ljava/lang/Object;
.source "EnterpriseMigrationManager.java"


# static fields
.field private static final BROWSER_PROXY_TABLE:Ljava/lang/String; = "BROWSER_PROXY"

.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final CONTAINER_SETTINGS_TABLE:Ljava/lang/String; = "ContainerSettings"

.field private static final DEFAULT_ALL_PACKAGES:Ljava/lang/String; = ".*"

.field private static final EMAIL_POLICY_TABLE:Ljava/lang/String; = "ADMIN_REF"

.field private static final KNOX_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.knoxlauncher"

.field public static final NEW_CONTAINER_ID:J = 0x0L

.field private static NEW_CONTAINER_USER_ID:J = 0x0L

.field private static OLD_CONTAINER_ID:J = 0x0L

.field public static final OLD_CONTAINER_USER_ID:J = 0x0L

.field private static final PREFIX_OF_CONTAINERIZED_APP:Ljava/lang/String; = "sec_container_1."

.field private static final TAG:Ljava/lang/String; = "EnterpriseMigrationManager"

.field private static final WHITE_LIST_INSTALL_APPS_TABLE:Ljava/lang/String; = "WhiteListInstallApps"

.field private static final deleteOldContainerIDRowTableNames:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

.field private static migrationResult:Z

.field private static final updateAdminUIDTableNames:[Ljava/lang/String;

.field private static final updateDefaultValuesTableNames:[Ljava/lang/String;

.field private static final updatePackageNameTableNames:[Ljava/lang/String;


# instance fields
.field private mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

.field private mBrowserPolicyService:Landroid/app/enterprise/IBrowserPolicy;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mRCPService:Lcom/sec/enterprise/knox/container/IRCPPolicy;

.field private mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    const-wide/16 v0, 0x1

    sput-wide v0, OLD_CONTAINER_ID:J

    .line 62
    const-wide/16 v0, 0x64

    sput-wide v0, NEW_CONTAINER_USER_ID:J

    .line 70
    sput-boolean v3, migrationResult:Z

    .line 72
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccountBlackWhiteList"

    aput-object v1, v0, v4

    const-string v1, "ADMIN_REF"

    aput-object v1, v0, v3

    const-string v1, "APPLICATION_COMPONENT"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "APPLICATION_GENERAL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "APPLICATION_MISC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "APPLICATION_PERMISSION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "APPLICATION_PERMISSIONCONTROL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "APPLICATION_SIGNATURE2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BROWSER"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EmailSettingsTable"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ExchangeAccountTable"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SmartCardAccessTable"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SmartCardAccessWhitelistTable"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SmartCardBrowserCertAliasTable"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SmartCardBrowserTable"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SmartCardEmailTable"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "WebFilterTable"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WebFilterSettingsTable"

    aput-object v2, v0, v1

    sput-object v0, updateAdminUIDTableNames:[Ljava/lang/String;

    .line 93
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "APPLICATION"

    aput-object v1, v0, v4

    sput-object v0, updatePackageNameTableNames:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "RESTRICTION"

    aput-object v1, v0, v3

    sput-object v0, updateDefaultValuesTableNames:[Ljava/lang/String;

    .line 107
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "CONTAINER"

    aput-object v1, v0, v4

    const-string v1, "ADMIN"

    aput-object v1, v0, v3

    sput-object v0, deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    sput-object v0, mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 135
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    .line 138
    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, mBrowserPolicyService:Landroid/app/enterprise/IBrowserPolicy;

    .line 141
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;

    .line 144
    const-string/jumbo v0, "mum_container_rcp_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/container/IRCPPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/container/IRCPPolicy;

    move-result-object v0

    iput-object v0, p0, mRCPService:Lcom/sec/enterprise/knox/container/IRCPPolicy;

    .line 147
    return-void
.end method

.method private deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 699
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 702
    .local v0, "cv":Landroid/content/ContentValues;
    :try_start_5
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_2e

    .line 705
    const/4 v2, 0x1

    .line 712
    :goto_12
    return v2

    .line 706
    :catch_13
    move-exception v1

    .line 707
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "EnterpriseMigrationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not execute delete() for tablename : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_2c
    const/4 v2, 0x0

    goto :goto_12

    .line 708
    :catch_2e
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseMigrationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not execute delete() for tablename : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .registers 9

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 155
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 156
    .local v3, "pid":I
    const-string v2, ""

    .line 158
    .local v2, "packageName":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_68

    move-result-object v2

    .line 162
    :goto_12
    const-string v5, "EnterpriseMigrationManager"

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

    .line 165
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "caller":Ljava/lang/String;
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_42

    if-eqz v0, :cond_42

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 168
    :cond_42
    const/4 v5, 0x0

    sput-boolean v5, migrationResult:Z

    .line 169
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

    .line 159
    .end local v0    # "caller":Ljava/lang/String;
    :catch_68
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

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

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "caller":Ljava/lang/String;
    :cond_82
    return-void
.end method

.method private getAdminID()J
    .registers 9

    .prologue
    .line 444
    const-wide/16 v4, -0x1

    .line 446
    .local v4, "result":J
    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 447
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "containerID!=?"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    const-string/jumbo v3, "userID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminID"

    invoke-virtual {v3, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 453
    .local v0, "adminIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_38

    .line 454
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_37} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_42

    move-result-wide v4

    .line 462
    .end local v0    # "adminIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_38
    :goto_38
    return-wide v4

    .line 456
    :catch_39
    move-exception v2

    .line 457
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getAdminID()"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 458
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_42
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getAdminID()"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-class v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    if-nez v0, :cond_e

    .line 123
    new-instance v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    .line 125
    :cond_e
    sget-object v0, mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNewConatinerAdminUID()J
    .registers 9

    .prologue
    .line 399
    const-wide/16 v2, -0x1

    .line 402
    .local v2, "result":J
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "containerID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    const-string/jumbo v5, "userID"

    sget-wide v6, NEW_CONTAINER_USER_ID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminUid"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 409
    .local v4, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_39

    .line 410
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_38} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_43

    move-result-wide v2

    .line 418
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_39
    :goto_39
    return-wide v2

    .line 412
    :catch_3a
    move-exception v1

    .line 413
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 414
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_43
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method private getOldConatinerAdminUID()J
    .registers 9

    .prologue
    .line 422
    const-wide/16 v2, -0x1

    .line 424
    .local v2, "result":J
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "containerID!=?"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    const-string/jumbo v5, "userID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 428
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "adminUid"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 431
    .local v4, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    .line 432
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_37} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_42

    move-result-wide v2

    .line 440
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_38
    :goto_38
    return-wide v2

    .line 434
    :catch_39
    move-exception v1

    .line 435
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 436
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_42
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method private getOldContainerID()J
    .registers 9

    .prologue
    .line 466
    const-wide/16 v2, -0x1

    .line 468
    .local v2, "result":J
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "containerID!=?"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    const-string/jumbo v5, "userID"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 472
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const-string v7, "containerID"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 475
    .local v4, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    .line 476
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_37} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_42

    move-result-wide v2

    .line 484
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_38
    :goto_38
    return-wide v2

    .line 478
    :catch_39
    move-exception v1

    .line 479
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 480
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_42
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    const-string v6, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method private updateBrowserProxy(Ljava/lang/String;JJ)Z
    .registers 14
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldAdminUid"    # J
    .param p4, "newAdminUid"    # J

    .prologue
    .line 679
    const/4 v4, 0x1

    .line 680
    .local v4, "ret":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 681
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v5, p4

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 684
    .local v2, "newCxtInfo":Landroid/app/enterprise/ContextInfo;
    :try_start_d
    const-string v5, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 685
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "proxyServer"

    invoke-virtual {v5, p1, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, "proxyServer":Ljava/lang/String;
    iget-object v5, p0, mBrowserPolicyService:Landroid/app/enterprise/IBrowserPolicy;

    invoke-interface {v5, v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->setHttpProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    .line 687
    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update BrowserProxy done with retrun : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3d} :catch_3e

    .line 694
    .end local v3    # "proxyServer":Ljava/lang/String;
    :goto_3d
    return v4

    .line 689
    :catch_3e
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    const-string/jumbo v6, "update BrowserProxy could not be executed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v4, 0x0

    goto :goto_3d
.end method

.method private updateContainerSettingsTable(Ljava/lang/String;JJ)Z
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldAdminUid"    # J
    .param p4, "newAdminUid"    # J

    .prologue
    .line 804
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 806
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x1

    .line 807
    .local v5, "retVal":Z
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v6, p4

    invoke-direct {v2, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 810
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :try_start_c
    const-string v6, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 811
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "allowContactInfoToNonKnox"

    invoke-virtual {v6, p1, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 813
    .local v4, "isAllowed":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "Contacts"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    iget-object v6, p0, mRCPService:Lcom/sec/enterprise/knox/container/IRCPPolicy;

    const-string/jumbo v7, "knox-export-data"

    invoke-interface {v6, v2, v0, v7, v4}, Lcom/sec/enterprise/knox/container/IRCPPolicy;->setAllowChangeDataSyncPolicy(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2f} :catch_31

    move-result v5

    .line 824
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "isAllowed":Z
    :goto_30
    return v5

    .line 819
    :catch_31
    move-exception v3

    .line 820
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured during updateContainerSettingsTable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const/4 v5, 0x0

    goto :goto_30
.end method

.method private updateDefaultContainerApplications(J)Z
    .registers 16
    .param p1, "adminUid"    # J

    .prologue
    .line 738
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v5, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    long-to-int v9, p1

    invoke-direct {v2, v9}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 740
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v7, 0x1

    .line 743
    .local v7, "ret":Z
    :try_start_c
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    move-result-object v9

    sget-wide v10, OLD_CONTAINER_ID:J

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getPackageNames(I)Ljava/util/List;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_2b

    move-result-object v5

    .line 749
    :goto_19
    if-eqz v5, :cond_21

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_36

    .line 750
    :cond_21
    const-string v9, "EnterpriseMigrationManager"

    const-string/jumbo v10, "getPackageNames() for Application Table Update returned empty list"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/4 v9, 0x0

    .line 800
    :goto_2a
    return v9

    .line 744
    :catch_2b
    move-exception v3

    .line 745
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseMigrationManager"

    const-string/jumbo v10, "getPackageNames() for Application Table Update could not be executed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 v7, 0x0

    goto :goto_19

    .line 755
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_36
    const-string v9, "com.sec.android.app.knoxlauncher"

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v9, "com.sec.knox.app.container"

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_41
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_110

    .line 759
    const-string v10, "EnterpriseMigrationManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 762
    .local v6, "pkgName":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 763
    .local v1, "cvWhereValues":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 764
    const-string/jumbo v9, "packageName"

    invoke-virtual {v1, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :try_start_80
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "APPLICATION"

    const-string v11, "controlState"

    invoke-virtual {v9, v10, v11, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 768
    .local v0, "controlState":Landroid/content/ContentValues;
    if-eqz v0, :cond_a1

    .line 769
    const-string v9, "controlState"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 771
    .local v8, "state":Ljava/lang/Integer;
    const/4 v9, 0x1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_80 .. :try_end_96} :catch_da
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_96} :catch_f5

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-ne v9, v10, :cond_a1

    .line 773
    :try_start_9b
    iget-object v9, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v10, 0x0

    invoke-interface {v9, v2, v6, v10}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    :try_end_a1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9b .. :try_end_a1} :catch_a4
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a1} :catch_bf

    .line 758
    .end local v0    # "controlState":Landroid/content/ContentValues;
    .end local v8    # "state":Ljava/lang/Integer;
    :cond_a1
    :goto_a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 782
    .restart local v0    # "controlState":Landroid/content/ContentValues;
    .restart local v8    # "state":Ljava/lang/Integer;
    :catch_a4
    move-exception v3

    .line 783
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_a5
    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v7, 0x0

    .line 788
    goto :goto_a1

    .line 785
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_bf
    move-exception v3

    .line 786
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a5 .. :try_end_d8} :catch_da
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_d8} :catch_f5

    .line 787
    const/4 v7, 0x0

    goto :goto_a1

    .line 791
    .end local v0    # "controlState":Landroid/content/ContentValues;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "state":Ljava/lang/Integer;
    :catch_da
    move-exception v3

    .line 792
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const/4 v7, 0x0

    .line 797
    goto :goto_a1

    .line 794
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_f5
    move-exception v3

    .line 795
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseMigrationManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const/4 v7, 0x0

    goto :goto_a1

    .end local v1    # "cvWhereValues":Landroid/content/ContentValues;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_110
    move v9, v7

    .line 800
    goto/16 :goto_2a
.end method

.method private updateEmailPolicyPkgName(Ljava/lang/String;J)Z
    .registers 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldContainerAdminUid"    # J

    .prologue
    .line 716
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 717
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 718
    .local v1, "cv2":Landroid/content/ContentValues;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 721
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_f
    const-string v5, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 722
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "policyName"

    invoke-virtual {v5, p1, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, "oldEmailPkgName":Ljava/lang/String;
    const-string v5, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string/jumbo v5, "policyName"

    invoke-static {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_39} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_39} :catch_56

    .line 727
    const/4 v5, 0x1

    .line 734
    .end local v4    # "oldEmailPkgName":Ljava/lang/String;
    :goto_3a
    return v5

    .line 728
    :catch_3b
    move-exception v2

    .line 729
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not execute update() for tablename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_54
    const/4 v5, 0x0

    goto :goto_3a

    .line 730
    :catch_56
    move-exception v2

    .line 731
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not execute update() for tablename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method

.method private updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z
    .registers 24
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "updateColumn"    # Ljava/lang/String;
    .param p3, "oldAdminUid"    # J
    .param p5, "newAdminUid"    # J
    .param p7, "oldAdminId"    # J

    .prologue
    .line 540
    const/4 v8, 0x1

    .line 541
    .local v8, "ret":Z
    const/4 v7, 0x1

    .line 544
    .local v7, "result":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v6, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move-wide/from16 v0, p7

    long-to-int v10, v0

    sget-wide v12, OLD_CONTAINER_ID:J

    long-to-int v11, v12

    invoke-direct {v5, v10, v11}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 547
    .local v5, "oldCxtInfo":Landroid/app/enterprise/ContextInfo;
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    move-wide/from16 v0, p5

    long-to-int v10, v0

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 551
    .local v4, "newCxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v8, 0x1

    .line 553
    :try_start_1c
    iget-object v10, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearDataBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    .line 554
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_56

    .line 561
    :goto_3b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_61

    .line 562
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    .line 563
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 561
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 555
    .end local v3    # "i":I
    :catch_56
    move-exception v2

    .line 556
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v8, 0x0

    goto :goto_3b

    .line 567
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    :cond_61
    :try_start_61
    iget-object v10, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearDataBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    .line 568
    .local v9, "tempReturn":Z
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7f} :catch_108

    .line 574
    .end local v9    # "tempReturn":Z
    :goto_7f
    if-eqz v7, :cond_113

    if-eqz v8, :cond_113

    const/4 v7, 0x1

    .line 575
    :goto_84
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 579
    const/4 v8, 0x1

    .line 581
    :try_start_88
    iget-object v10, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    .line 582
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a7} :catch_116

    .line 589
    :goto_a7
    :try_start_a7
    iget-object v10, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearDataWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    .line 590
    .restart local v9    # "tempReturn":Z
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_c5} :catch_121

    .line 596
    .end local v9    # "tempReturn":Z
    :goto_c5
    if-eqz v7, :cond_12b

    if-eqz v8, :cond_12b

    const/4 v7, 0x1

    .line 597
    :goto_ca
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 601
    const/4 v8, 0x1

    .line 603
    :try_start_ce
    iget-object v10, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    .line 604
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_ed} :catch_12d

    .line 610
    :goto_ed
    const/4 v3, 0x0

    :goto_ee
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_138

    .line 611
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_105

    .line 612
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 610
    :cond_105
    add-int/lit8 v3, v3, 0x1

    goto :goto_ee

    .line 569
    :catch_108
    move-exception v2

    .line 570
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/4 v8, 0x0

    goto/16 :goto_7f

    .line 574
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_113
    const/4 v7, 0x0

    goto/16 :goto_84

    .line 583
    :catch_116
    move-exception v2

    .line 584
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v8, 0x0

    goto :goto_a7

    .line 591
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_121
    move-exception v2

    .line 592
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v8, 0x0

    goto :goto_c5

    .line 596
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12b
    const/4 v7, 0x0

    goto :goto_ca

    .line 605
    :catch_12d
    move-exception v2

    .line 606
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v8, 0x0

    goto :goto_ed

    .line 615
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_138
    :try_start_138
    iget-object v10, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearCacheBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    .line 616
    .restart local v9    # "tempReturn":Z
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_156} :catch_1aa

    .line 622
    .end local v9    # "tempReturn":Z
    :goto_156
    if-eqz v7, :cond_1b4

    if-eqz v8, :cond_1b4

    const/4 v7, 0x1

    .line 623
    :goto_15b
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 627
    const/4 v8, 0x1

    .line 629
    :try_start_15f
    iget-object v10, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v5}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v6

    .line 630
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_17e} :catch_1b6

    .line 637
    :goto_17e
    :try_start_17e
    iget-object v10, p0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v9

    .line 638
    .restart local v9    # "tempReturn":Z
    const-string v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addPackagesToClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_19c} :catch_1c1

    .line 644
    .end local v9    # "tempReturn":Z
    :goto_19c
    if-eqz v7, :cond_1cb

    if-eqz v8, :cond_1cb

    const/4 v7, 0x1

    .line 645
    :goto_1a1
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 647
    if-eqz v7, :cond_1cd

    if-eqz v8, :cond_1cd

    const/4 v10, 0x1

    :goto_1a9
    return v10

    .line 617
    :catch_1aa
    move-exception v2

    .line 618
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v8, 0x0

    goto :goto_156

    .line 622
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1b4
    const/4 v7, 0x0

    goto :goto_15b

    .line 631
    :catch_1b6
    move-exception v2

    .line 632
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v8, 0x0

    goto :goto_17e

    .line 639
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1c1
    move-exception v2

    .line 640
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseMigrationManager"

    const-string v11, "addPackagesToClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 v8, 0x0

    goto :goto_19c

    .line 644
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1cb
    const/4 v7, 0x0

    goto :goto_1a1

    .line 647
    :cond_1cd
    const/4 v10, 0x0

    goto :goto_1a9
.end method

.method private updateTableAdminUid(Ljava/lang/String;JJ)Z
    .registers 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldContainerAdminUid"    # J
    .param p4, "newContainerAdminUid"    # J

    .prologue
    .line 488
    const-string v3, "ADMIN_REF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 489
    invoke-direct {p0, p1, p2, p3}, updateEmailPolicyPkgName(Ljava/lang/String;J)Z

    .line 491
    :cond_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 492
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 495
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_15
    const-string v3, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v3, "adminUid"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2c} :catch_49

    .line 499
    const/4 v3, 0x1

    .line 506
    :goto_2d
    return v3

    .line 500
    :catch_2e
    move-exception v1

    .line 501
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not execute update() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_47
    const/4 v3, 0x0

    goto :goto_2d

    .line 502
    :catch_49
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not execute update() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method private updateTableDefaultValues(Ljava/lang/String;JJ)Z
    .registers 14
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldContainerAdminUid"    # J
    .param p4, "newContainerAdminUid"    # J

    .prologue
    .line 510
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 511
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 512
    .local v0, "count":I
    const/4 v3, 0x1

    .line 515
    .local v3, "ret":Z
    :try_start_7
    const-string v4, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 517
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_15} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_35

    move-result v0

    .line 526
    :goto_16
    if-gtz v0, :cond_50

    move v4, v3

    .line 531
    :goto_19
    return v4

    .line 518
    :catch_1a
    move-exception v2

    .line 519
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not execute getCount() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v3, 0x0

    .line 524
    goto :goto_16

    .line 521
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_35
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not execute getCount() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v3, 0x0

    goto :goto_16

    .line 529
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_50
    const-string v4, "adminUid"

    invoke-direct {p0, p1, v4, p4, p5}, deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    .line 531
    if-eqz v3, :cond_60

    invoke-direct/range {p0 .. p5}, updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v4

    if-eqz v4, :cond_60

    const/4 v4, 0x1

    goto :goto_19

    :cond_60
    const/4 v4, 0x0

    goto :goto_19
.end method

.method private updateWhitelistInstallApp(Ljava/lang/String;JJ)Z
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "oldAdminUid"    # J
    .param p4, "newAdminUid"    # J

    .prologue
    .line 651
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 652
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x1

    .line 655
    .local v6, "ret":Z
    :try_start_6
    const-string v7, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 656
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "packageName"

    invoke-virtual {v7, p1, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 658
    .local v4, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 659
    .local v5, "pm":Landroid/os/PersonaManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_79

    .line 660
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_70

    move-result-object v3

    .line 663
    .local v3, "packageName":Ljava/lang/String;
    :try_start_34
    sget-wide v8, NEW_CONTAINER_USER_ID:J

    long-to-int v7, v8

    invoke-virtual {v5, v3, v7}, Landroid/os/PersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    .line 664
    const-string v7, "EnterpriseMigrationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackageToInstallWhiteList() for Persona Manager Policy Update for package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_52} :catch_55

    .line 659
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 665
    :catch_55
    move-exception v1

    .line 666
    .local v1, "e":Ljava/lang/Exception;
    :try_start_56
    const-string v7, "EnterpriseMigrationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackageToInstallWhiteList() for Application Policy Update could not be executed for package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6e} :catch_70

    .line 667
    const/4 v6, 0x0

    goto :goto_52

    .line 670
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pm":Landroid/os/PersonaManager;
    :catch_70
    move-exception v1

    .line 671
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseMigrationManager"

    const-string v8, "addPackageToInstallWhiteList() for Application Policy Update could not be executed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const/4 v6, 0x0

    .line 675
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_79
    return v6
.end method


# virtual methods
.method public blockAdminToReceivePolicy(Z)Z
    .registers 9
    .param p1, "blockAdminConnection"    # Z

    .prologue
    .line 371
    invoke-direct {p0}, enforceMigrationAgentSecurityCheck()V

    .line 373
    const/4 v1, 0x1

    .line 375
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 377
    .local v2, "token":J
    if-eqz p1, :cond_35

    .line 379
    :try_start_a
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "migrationState"

    const-string/jumbo v6, "nok"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_1a

    move-result v1

    .line 393
    :goto_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    return v1

    .line 380
    :catch_1a
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured during set migration STATE_NOK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x0

    .line 383
    goto :goto_16

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
    :try_start_35
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "migrationState"

    const-string/jumbo v6, "ok"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_40} :catch_42

    move-result v1

    goto :goto_16

    .line 387
    :catch_42
    move-exception v0

    .line 388
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured during set migration STATE_OK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getEnterpriseMigrationResult()Z
    .registers 2

    .prologue
    .line 367
    sget-boolean v0, migrationResult:Z

    return v0
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .registers 28
    .param p1, "newContainerUsedId"    # I

    .prologue
    .line 174
    invoke-direct/range {p0 .. p0}, enforceMigrationAgentSecurityCheck()V

    .line 175
    const/16 v18, 0x1

    .line 176
    .local v18, "ret":Z
    const/16 v21, 0x1

    .line 178
    .local v21, "tempReturn":Z
    invoke-direct/range {p0 .. p0}, getOldContainerID()J

    move-result-wide v22

    sput-wide v22, OLD_CONTAINER_ID:J

    .line 179
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sput-wide v22, NEW_CONTAINER_USER_ID:J

    .line 181
    invoke-direct/range {p0 .. p0}, getOldConatinerAdminUID()J

    move-result-wide v14

    .line 182
    .local v14, "oldAdminUid":J
    invoke-direct/range {p0 .. p0}, getNewConatinerAdminUID()J

    move-result-wide v12

    .line 183
    .local v12, "newAdminUid":J
    const-string v20, "APPLICATION"

    .line 185
    .local v20, "tableName":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v16, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Landroid/app/enterprise/ContextInfo;

    long-to-int v0, v12

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 192
    .local v9, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :try_start_31
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v22, "adminUid"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string/jumbo v23, "packageName"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_55} :catch_11e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_55} :catch_12a

    move-result-object v16

    .line 205
    .end local v8    # "cv":Landroid/content/ContentValues;
    :goto_56
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_57
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_1b4

    .line 206
    const-string v23, "EnterpriseMigrationManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "check application disabled : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 209
    .local v17, "pkgName":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v6, "cValue":Landroid/content/ContentValues;
    const-string v22, "adminUid"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const-string/jumbo v22, "packageName"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :try_start_af
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "controlState"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    .line 215
    .local v7, "controlState":Landroid/content/ContentValues;
    if-eqz v7, :cond_11a

    .line 216
    const-string v22, "controlState"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 218
    .local v19, "state":Ljava/lang/Integer;
    const/16 v22, 0x2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I
    :try_end_d0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_af .. :try_end_d0} :catch_157
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d0} :catch_185

    move-result v23

    and-int/lit8 v23, v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11a

    .line 220
    :try_start_d9
    move-object/from16 v0, p0

    iget-object v0, v0, mApplicationPolicyService:Landroid/app/enterprise/IApplicationPolicy;

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v9, v1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v21

    .line 221
    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "setApplicationState(false) for Application Policy Update package name : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " returned : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_11a} :catch_136
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d9 .. :try_end_11a} :catch_157

    .line 205
    .end local v7    # "controlState":Landroid/content/ContentValues;
    .end local v19    # "state":Ljava/lang/Integer;
    :cond_11a
    :goto_11a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_57

    .line 197
    .end local v6    # "cValue":Landroid/content/ContentValues;
    .end local v11    # "i":I
    .end local v17    # "pkgName":Ljava/lang/String;
    :catch_11e
    move-exception v10

    .line 198
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    const-string v22, "EnterpriseMigrationManager"

    const-string v23, "could not execute getStringList() in Disable Application Policy"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v18, 0x0

    .line 203
    goto/16 :goto_56

    .line 200
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_12a
    move-exception v10

    .line 201
    .local v10, "e":Ljava/lang/Exception;
    const-string v22, "EnterpriseMigrationManager"

    const-string v23, "could not execute getStringList() in Disable Application Policy"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/16 v18, 0x0

    goto/16 :goto_56

    .line 222
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "cValue":Landroid/content/ContentValues;
    .restart local v7    # "controlState":Landroid/content/ContentValues;
    .restart local v11    # "i":I
    .restart local v17    # "pkgName":Ljava/lang/String;
    .restart local v19    # "state":Ljava/lang/Integer;
    :catch_136
    move-exception v10

    .line 223
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_137
    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "setApplicationState(false) for Application Policy Update could not be executed for package name : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_154
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_137 .. :try_end_154} :catch_157
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_154} :catch_185

    .line 224
    const/16 v18, 0x0

    goto :goto_11a

    .line 228
    .end local v7    # "controlState":Landroid/content/ContentValues;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v19    # "state":Ljava/lang/Integer;
    :catch_157
    move-exception v10

    .line 229
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "could not execute getValue() for tablename : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " package name : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/16 v18, 0x0

    .line 234
    goto :goto_11a

    .line 231
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_185
    move-exception v10

    .line 232
    .local v10, "e":Ljava/lang/Exception;
    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "could not execute getValue() for tablename : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " package name : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/16 v18, 0x0

    goto/16 :goto_11a

    .line 239
    .end local v6    # "cValue":Landroid/content/ContentValues;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v17    # "pkgName":Ljava/lang/String;
    :cond_1b4
    const/4 v11, 0x0

    :goto_1b5
    sget-object v22, deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_20b

    .line 240
    sget-object v22, deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v22, v22, v11

    const-string v23, "containerID"

    sget-wide v24, OLD_CONTAINER_ID:J

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v21

    .line 241
    const-string v22, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "deleteTableRow() for TableName : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v24, v24, v11

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " returned : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz v18, :cond_208

    if-eqz v21, :cond_208

    const/16 v18, 0x1

    .line 239
    :goto_205
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b5

    .line 242
    :cond_208
    const/16 v18, 0x0

    goto :goto_205

    .line 245
    :cond_20b
    return v18
.end method

.method public migrateEnterpriseDB(IZ)J
    .registers 29
    .param p1, "newContainerUsedId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct/range {p0 .. p0}, enforceMigrationAgentSecurityCheck()V

    .line 253
    const/16 v21, 0x0

    .line 254
    .local v21, "i":I
    const/16 v23, 0x1

    .local v23, "ret":Z
    const/16 v22, 0x1

    .line 256
    .local v22, "restrictionRet":Z
    invoke-direct/range {p0 .. p0}, getOldContainerID()J

    move-result-wide v4

    sput-wide v4, OLD_CONTAINER_ID:J

    .line 257
    move/from16 v0, p1

    int-to-long v4, v0

    sput-wide v4, NEW_CONTAINER_USER_ID:J

    .line 259
    invoke-direct/range {p0 .. p0}, getOldConatinerAdminUID()J

    move-result-wide v6

    .line 260
    .local v6, "oldContainerAdminUid":J
    invoke-direct/range {p0 .. p0}, getNewConatinerAdminUID()J

    move-result-wide v8

    .line 261
    .local v8, "newContainerAdminUid":J
    invoke-direct/range {p0 .. p0}, getAdminID()J

    move-result-wide v18

    .line 263
    .local v18, "adminId":J
    new-instance v10, Landroid/app/enterprise/ContextInfo;

    long-to-int v4, v8

    const/4 v5, 0x0

    invoke-direct {v10, v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 265
    .local v10, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 267
    .local v24, "token":J
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v4, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v4, :cond_4d

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_4d

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_4d

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_4d

    sget-wide v4, OLD_CONTAINER_ID:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_4d

    if-nez v10, :cond_a8

    .line 269
    :cond_4d
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in Enterprise Container migration "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v12, OLD_CONTAINER_ID:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v4, 0x0

    sput-boolean v4, migrationResult:Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_a2} :catch_168
    .catchall {:try_start_2b .. :try_end_a2} :catchall_327

    .line 273
    const-wide/16 v8, -0x1

    .line 350
    .end local v8    # "newContainerAdminUid":J
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    :cond_a7
    :goto_a7
    return-wide v8

    .line 275
    .restart local v8    # "newContainerAdminUid":J
    :cond_a8
    const/4 v4, 0x1

    :try_start_a9
    sput-boolean v4, migrationResult:Z

    .line 277
    if-eqz p2, :cond_2bf

    .line 279
    const/16 v21, 0x0

    :goto_af
    sget-object v4, updateDefaultValuesTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_f7

    .line 280
    sget-object v4, updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v5, v4, v21

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, updateTableDefaultValues(Ljava/lang/String;JJ)Z

    move-result v23

    .line 281
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTableDefaultValues() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-eqz v23, :cond_f5

    sget-boolean v4, migrationResult:Z

    if-eqz v4, :cond_f5

    const/4 v4, 0x1

    :goto_f0
    sput-boolean v4, migrationResult:Z
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_f2} :catch_168
    .catchall {:try_start_a9 .. :try_end_f2} :catchall_327

    .line 279
    add-int/lit8 v21, v21, 0x1

    goto :goto_af

    .line 282
    :cond_f5
    const/4 v4, 0x0

    goto :goto_f0

    .line 284
    :cond_f7
    if-eqz v23, :cond_1c0

    .line 286
    :try_start_f9
    move-object/from16 v0, p0

    iget-object v4, v0, mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v5, 0x0

    invoke-interface {v4, v10, v5}, Landroid/app/enterprise/IRestrictionPolicy;->setScreenCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_101} :catch_149
    .catchall {:try_start_f9 .. :try_end_101} :catchall_327

    .line 296
    :goto_101
    const/16 v21, 0x0

    :goto_103
    :try_start_103
    sget-object v4, updateAdminUIDTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_1c7

    .line 297
    sget-object v4, updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v5, v4, v21

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v23

    .line 298
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTableAdminUid() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-eqz v23, :cond_1c4

    sget-boolean v4, migrationResult:Z

    if-eqz v4, :cond_1c4

    const/4 v4, 0x1

    :goto_144
    sput-boolean v4, migrationResult:Z

    .line 296
    add-int/lit8 v21, v21, 0x1

    goto :goto_103

    .line 287
    :catch_149
    move-exception v20

    .line 288
    .local v20, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Some unknown exception occured in Restriction Policy setScreenCapture() call!!! "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v4, 0x0

    sput-boolean v4, migrationResult:Z
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_167} :catch_168
    .catchall {:try_start_103 .. :try_end_167} :catchall_327

    goto :goto_101

    .line 346
    .end local v20    # "e":Ljava/lang/Exception;
    :catch_168
    move-exception v20

    .line 347
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_169
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Some unknown exception occured in enterprise DB migration!!! "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v4, 0x0

    sput-boolean v4, migrationResult:Z
    :try_end_186
    .catchall {:try_start_169 .. :try_end_186} :catchall_327

    .line 350
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    .end local v20    # "e":Ljava/lang/Exception;
    :goto_189
    if-eqz p2, :cond_a7

    if-eqz v22, :cond_a7

    .line 355
    :try_start_18d
    move-object/from16 v0, p0

    iget-object v4, v0, mRestrictionPolicyService:Landroid/app/enterprise/IRestrictionPolicy;

    sget-wide v12, NEW_CONTAINER_USER_ID:J

    long-to-int v5, v12

    invoke-interface {v4, v5}, Landroid/app/enterprise/IRestrictionPolicy;->onUserMigrated(I)V

    .line 356
    const-string v4, "EnterpriseMigrationManager"

    const-string v5, "Restriction Policy onUserMigrated() called for TableName : RESTRICTION"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_19e} :catch_1a0

    goto/16 :goto_a7

    .line 357
    :catch_1a0
    move-exception v20

    .line 358
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Some unknown exception occured in Restriction Policy onUserMigrated() call!!! "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v4, 0x0

    sput-boolean v4, migrationResult:Z

    goto/16 :goto_a7

    .line 292
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_1c0
    const/16 v22, 0x0

    goto/16 :goto_101

    .line 299
    :cond_1c4
    const/4 v4, 0x0

    goto/16 :goto_144

    .line 306
    :cond_1c7
    const/16 v21, 0x0

    :goto_1c9
    :try_start_1c9
    sget-object v4, updatePackageNameTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_20c

    .line 307
    sget-object v4, updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v12, v4, v21

    const-string/jumbo v13, "packageName"

    move-object/from16 v11, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z

    move-result v23

    .line 308
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updatePkgNameInApplicationTable() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    add-int/lit8 v21, v21, 0x1

    goto :goto_1c9

    .line 312
    :cond_20c
    const-string v5, "WhiteListInstallApps"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, updateWhitelistInstallApp(Ljava/lang/String;JJ)Z

    move-result v23

    .line 313
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateWhitelistInstallApp() for TableName : WhiteListInstallApps returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    if-eqz v23, :cond_2b8

    sget-boolean v4, migrationResult:Z

    if-eqz v4, :cond_2b8

    const/4 v4, 0x1

    :goto_236
    sput-boolean v4, migrationResult:Z

    .line 317
    const-string v5, "BROWSER_PROXY"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, updateBrowserProxy(Ljava/lang/String;JJ)Z

    move-result v23

    .line 318
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateBrowserProxy() for TableName : BROWSER_PROXY returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    if-eqz v23, :cond_2bb

    sget-boolean v4, migrationResult:Z

    if-eqz v4, :cond_2bb

    const/4 v4, 0x1

    :goto_262
    sput-boolean v4, migrationResult:Z

    .line 322
    const-string v5, "ContainerSettings"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, updateContainerSettingsTable(Ljava/lang/String;JJ)Z

    move-result v23

    .line 323
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateContainerSettingsTable() for TableName : ContainerSettings returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    if-eqz v23, :cond_2bd

    sget-boolean v4, migrationResult:Z

    if-eqz v4, :cond_2bd

    const/4 v4, 0x1

    :goto_28e
    sput-boolean v4, migrationResult:Z

    .line 327
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, updateDefaultContainerApplications(J)Z

    move-result v23

    .line 328
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_2b3} :catch_168
    .catchall {:try_start_1c9 .. :try_end_2b3} :catchall_327

    .line 350
    :cond_2b3
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_189

    .line 314
    :cond_2b8
    const/4 v4, 0x0

    goto/16 :goto_236

    .line 319
    :cond_2bb
    const/4 v4, 0x0

    goto :goto_262

    .line 324
    :cond_2bd
    const/4 v4, 0x0

    goto :goto_28e

    .line 333
    :cond_2bf
    :try_start_2bf
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, updateDefaultContainerApplications(J)Z

    move-result v23

    .line 334
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/16 v21, 0x0

    :goto_2e4
    sget-object v4, deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_2b3

    .line 339
    sget-object v4, deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v4, v4, v21

    const-string v5, "containerID"

    sget-wide v12, OLD_CONTAINER_ID:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v12, v13}, deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    sput-boolean v4, migrationResult:Z

    .line 340
    const-string v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "deleteTableRow() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v11, migrationResult:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_324
    .catch Ljava/lang/Exception; {:try_start_2bf .. :try_end_324} :catch_168
    .catchall {:try_start_2bf .. :try_end_324} :catchall_327

    .line 338
    add-int/lit8 v21, v21, 0x1

    goto :goto_2e4

    .line 350
    :catchall_327
    move-exception v4

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method removePrefixPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 536
    const-string/jumbo v0, "sec_container_1."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
