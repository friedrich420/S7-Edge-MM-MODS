.class public Lcom/sec/enterprise/knox/sdp/SdpFileSystem;
.super Ljava/lang/Object;
.source "SdpFileSystem.java"


# static fields
.field private static final BASE_USER_DATA_DIR:Ljava/lang/String; = "/data/enc_user"

.field private static final BASE_USER_SDCARD_DIR:Ljava/lang/String; = "/storage/enc_emulated"

.field private static final LEGACY_SDCARD_DIR:Ljava/lang/String; = "/storage/emulated"

.field private static final LEGACY_USER_DATA_DIR:Ljava/lang/String; = "/data/user"

.field private static final TAG:Ljava/lang/String; = "SdpFileSystem"


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mCacheDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabasesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mEmulatedDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mEngineId:I

.field private mFilesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 454
    :try_start_0
    const-string/jumbo v0, "sdp_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_6} :catch_7

    .line 458
    :goto_6
    return-void

    .line 455
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, mEngineId:I

    .line 34
    iput v1, p0, mUserId:I

    .line 36
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mSync:Ljava/lang/Object;

    .line 37
    iput-object v2, p0, mDatabasesDir:Ljava/io/File;

    .line 39
    iput-object v2, p0, mFilesDir:Ljava/io/File;

    .line 41
    iput-object v2, p0, mCacheDir:Ljava/io/File;

    .line 43
    iput-object v2, p0, mEmulatedDir:Ljava/io/File;

    .line 56
    invoke-direct {p0}, enforcePermission()V

    .line 57
    iput-object p2, p0, mAlias:Ljava/lang/String;

    .line 58
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 59
    iget-object v1, p0, mAlias:Ljava/lang/String;

    invoke-direct {p0, v1}, getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 60
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2d

    .line 64
    new-instance v1, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v1

    .line 66
    :cond_2d
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    iput v1, p0, mEngineId:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, p0, mUserId:I

    .line 68
    const-string v1, "SdpFileSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SdpFileSystem created engine:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mEngineId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method private static native Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
.end method

.method private static native Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I
.end method

.method private static createDirLocked(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_32

    .line 160
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    :cond_13
    :goto_13
    return-object p0

    .line 164
    :cond_14
    const-string v0, "SdpFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create files subdir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 p0, 0x0

    goto :goto_13

    .line 167
    :cond_32
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_13
.end method

.method private enforcePermission()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 461
    const/16 v1, -0x63

    .line 462
    .local v1, "res":I
    const-string/jumbo v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .line 464
    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_24

    .line 466
    const/4 v3, 0x0

    :try_start_10
    invoke-interface {v2, v3}, Lcom/sec/sdp/ISdpManagerService;->isLicensed(Ljava/lang/String;)I

    move-result v1

    .line 467
    if-eqz v1, :cond_24

    .line 468
    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;-><init>()V

    throw v3
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1c

    .line 469
    :catch_1c
    move-exception v0

    .line 470
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "SdpFileSystem"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_24
    return-void
.end method

.method private getDatabasesDir()Ljava/io/File;
    .registers 6

    .prologue
    .line 327
    iget-object v2, p0, mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 328
    :try_start_3
    iget-object v1, p0, mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_40

    .line 329
    invoke-direct {p0}, getEncDataDirFile()Ljava/io/File;

    move-result-object v0

    .line 330
    .local v0, "f":Ljava/io/File;
    if-nez v0, :cond_36

    .line 331
    const-string v1, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get enc-package dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x0

    monitor-exit v2

    .line 338
    .end local v0    # "f":Ljava/io/File;
    :goto_35
    return-object v1

    .line 335
    .restart local v0    # "f":Ljava/io/File;
    :cond_36
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "databases"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, mDatabasesDir:Ljava/io/File;

    .line 338
    .end local v0    # "f":Ljava/io/File;
    :cond_40
    iget-object v1, p0, mDatabasesDir:Ljava/io/File;

    monitor-exit v2

    goto :goto_35

    .line 339
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method private getEncDataDirFile()Ljava/io/File;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 124
    iget-object v6, p0, mContext:Landroid/content/Context;

    if-eqz v6, :cond_9

    iget v6, p0, mUserId:I

    if-gez v6, :cond_13

    .line 125
    :cond_9
    const-string v6, "SdpFileSystem"

    const-string/jumbo v7, "getEncPackageDir :: invalid object"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 154
    :cond_12
    :goto_12
    return-object v0

    .line 129
    :cond_13
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "pkgName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/enc_user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "encPkgDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_12

    .line 136
    :try_start_43
    const-string/jumbo v6, "sdp"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v4

    .line 138
    .local v4, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v4, :cond_a4

    .line 139
    const-string v6, "SdpFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFilesDir callihng createEncPkgDir "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v6, p0, mUserId:I

    invoke-interface {v4, v6, v1}, Lcom/sec/sdp/ISdpManagerService;->createEncPkgDir(ILjava/lang/String;)I

    move-result v3

    .line 142
    .local v3, "result":I
    const-string v6, "SdpFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFilesDir done createEncPkgDir result "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_94} :catch_99

    .line 143
    if-eqz v3, :cond_a4

    move-object v0, v5

    .line 144
    goto/16 :goto_12

    .line 147
    .end local v3    # "result":I
    .end local v4    # "service":Lcom/sec/sdp/ISdpManagerService;
    :catch_99
    move-exception v2

    .line 148
    .local v2, "re":Landroid/os/RemoteException;
    const-string v6, "SdpFileSystem"

    const-string v7, "RemoteException from call unregisterListener"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    .line 149
    goto/16 :goto_12

    .line 152
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v4    # "service":Lcom/sec/sdp/ISdpManagerService;
    :cond_a4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_12

    move-object v0, v5

    .line 154
    goto/16 :goto_12
.end method

.method private getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :try_start_1
    const-string/jumbo v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .line 480
    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_12

    .line 481
    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    .line 485
    .end local v2    # "service":Lcom/sec/sdp/ISdpManagerService;
    :cond_12
    :goto_12
    return-object v0

    .line 482
    :catch_13
    move-exception v1

    .line 483
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "SdpFileSystem"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public static getExternalStorageDirectory(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .prologue
    .line 300
    invoke-static {p0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 301
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    :goto_22
    return-object v0

    :cond_23
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/enc_emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private getManagedProfileKnoxDir(I)Ljava/io/File;
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 240
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 241
    const-string v3, "SdpFileSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getManagedProfileKnoxDir :: Not applicable to user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x0

    .line 255
    :goto_22
    return-object v1

    .line 245
    :cond_23
    const/4 v0, 0x0

    .line 246
    .local v0, "file":Ljava/io/File;
    iget-object v4, p0, mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 247
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/storage/emulated/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/Knox"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "knoxPath":Ljava/lang/String;
    const-string v3, "SdpFileSystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getManagedProfileKnoxDir :: Protected knox path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_27 .. :try_end_62} :catchall_92

    .line 250
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_78

    :try_start_64
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 251
    const-string v3, "SdpFileSystem"

    const-string/jumbo v5, "getManagedProfileKnoxDir :: The knox path exists"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_72
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_64 .. :try_end_73} :catchall_74

    goto :goto_22

    :catchall_74
    move-exception v3

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "knoxPath":Ljava/lang/String;
    .restart local v0    # "file":Ljava/io/File;
    :goto_76
    :try_start_76
    monitor-exit v4
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_92

    throw v3

    .line 253
    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "knoxPath":Ljava/lang/String;
    :cond_78
    :try_start_78
    const-string v3, "SdpFileSystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getManagedProfileKnoxDir :: The knox path does not exist for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_78 .. :try_end_91} :catchall_74

    goto :goto_72

    .line 254
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "knoxPath":Ljava/lang/String;
    .restart local v0    # "file":Ljava/io/File;
    :catchall_92
    move-exception v3

    goto :goto_76
.end method

.method public static getUserDataDir(ILjava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 185
    :cond_8
    const/4 v0, 0x0

    .line 189
    :goto_9
    return-object v0

    .line 186
    :cond_a
    invoke-static {p0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 187
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 189
    :cond_2d
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/enc_user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 343
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 344
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 346
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "extraPermissions"    # I

    .prologue
    const/4 v2, -0x1

    .line 353
    or-int/lit16 v0, p2, 0x1b0

    .line 356
    .local v0, "perms":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_9

    .line 357
    or-int/lit8 v0, v0, 0x4

    .line 359
    :cond_9
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_f

    .line 360
    or-int/lit8 v0, v0, 0x2

    .line 363
    :cond_f
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 364
    return-void
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "createDirectory"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "dir":Ljava/io/File;
    const/4 v2, 0x0

    .line 370
    .local v2, "f":Ljava/io/File;
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_43

    .line 371
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .restart local v0    # "dir":Ljava/io/File;
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 374
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    .end local v1    # "dirPath":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :goto_2a
    if-eqz p2, :cond_41

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 383
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_41
    move-object v3, v2

    .line 388
    :goto_42
    return-object v3

    .line 376
    :cond_43
    invoke-direct {p0}, getDatabasesDir()Ljava/io/File;

    move-result-object v0

    .line 377
    if-nez v0, :cond_4b

    .line 378
    const/4 v3, 0x0

    goto :goto_42

    .line 379
    :cond_4b
    invoke-direct {p0, v0, p1}, makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_2a
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .registers 6

    .prologue
    .line 272
    iget v1, p0, mUserId:I

    invoke-static {v1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 274
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 288
    :goto_e
    return-object v1

    .line 277
    :cond_f
    iget-object v2, p0, mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 278
    :try_start_12
    iget-object v1, p0, mCacheDir:Ljava/io/File;

    if-nez v1, :cond_51

    .line 279
    invoke-direct {p0}, getEncDataDirFile()Ljava/io/File;

    move-result-object v0

    .line 280
    .local v0, "f":Ljava/io/File;
    if-nez v0, :cond_48

    .line 281
    const-string v1, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get enc-package dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_e

    .line 289
    .end local v0    # "f":Ljava/io/File;
    :catchall_45
    move-exception v1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_45

    throw v1

    .line 285
    .restart local v0    # "f":Ljava/io/File;
    :cond_48
    :try_start_48
    new-instance v1, Ljava/io/File;

    const-string v3, "cache"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, mCacheDir:Ljava/io/File;

    .line 288
    .end local v0    # "f":Ljava/io/File;
    :cond_51
    iget-object v1, p0, mCacheDir:Ljava/io/File;

    invoke-static {v1}, createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_45

    goto :goto_e
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    iget v0, p0, mUserId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 400
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 403
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_e
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .registers 5

    .prologue
    .line 313
    iget-object v1, p0, mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_3
    iget v0, p0, mUserId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 315
    iget-object v0, p0, mEmulatedDir:Ljava/io/File;

    if-nez v0, :cond_15

    .line 316
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, mEmulatedDir:Ljava/io/File;

    .line 322
    :cond_15
    :goto_15
    iget-object v0, p0, mEmulatedDir:Ljava/io/File;

    invoke-static {v0}, createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 318
    :cond_1d
    iget-object v0, p0, mEmulatedDir:Ljava/io/File;

    if-nez v0, :cond_15

    .line 319
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/storage/enc_emulated/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mEmulatedDir:Ljava/io/File;

    goto :goto_15

    .line 323
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public getFilesDir()Ljava/io/File;
    .registers 6

    .prologue
    .line 219
    iget v1, p0, mUserId:I

    invoke-static {v1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 221
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 235
    :goto_e
    return-object v1

    .line 224
    :cond_f
    iget-object v2, p0, mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    :try_start_12
    iget-object v1, p0, mFilesDir:Ljava/io/File;

    if-nez v1, :cond_52

    .line 226
    invoke-direct {p0}, getEncDataDirFile()Ljava/io/File;

    move-result-object v0

    .line 227
    .local v0, "f":Ljava/io/File;
    if-nez v0, :cond_48

    .line 228
    const-string v1, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get enc-package dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_e

    .line 236
    .end local v0    # "f":Ljava/io/File;
    :catchall_45
    move-exception v1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_45

    throw v1

    .line 232
    .restart local v0    # "f":Ljava/io/File;
    :cond_48
    :try_start_48
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "files"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, mFilesDir:Ljava/io/File;

    .line 235
    .end local v0    # "f":Ljava/io/File;
    :cond_52
    iget-object v1, p0, mFilesDir:Ljava/io/File;

    invoke-static {v1}, createDirLocked(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_48 .. :try_end_59} :catchall_45

    goto :goto_e
.end method

.method public getManagedProfileKnoxDir()Ljava/io/File;
    .registers 4

    .prologue
    .line 263
    const-string v0, "SdpFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getManagedProfileKnoxDir calling for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget v0, p0, mUserId:I

    invoke-direct {p0, v0}, getManagedProfileKnoxDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUserDataDir()Ljava/io/File;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 193
    iget v3, p0, mUserId:I

    invoke-static {v3}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 195
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 196
    .local v0, "dataDir":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 197
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .end local v0    # "dataDir":Ljava/lang/String;
    :goto_18
    return-object v1

    .restart local v0    # "dataDir":Ljava/lang/String;
    :cond_19
    move-object v1, v2

    .line 199
    goto :goto_18

    .line 202
    .end local v0    # "dataDir":Ljava/lang/String;
    :cond_1b
    iget-object v3, p0, mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 203
    :try_start_1e
    invoke-direct {p0}, getEncDataDirFile()Ljava/io/File;

    move-result-object v1

    .line 204
    .local v1, "f":Ljava/io/File;
    if-nez v1, :cond_4d

    .line 205
    const-string v4, "SdpFileSystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get enc-package dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v3

    move-object v1, v2

    goto :goto_18

    .line 209
    :cond_4d
    monitor-exit v3

    goto :goto_18

    .line 210
    .end local v1    # "f":Ljava/io/File;
    :catchall_4f
    move-exception v2

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_1e .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public isSensitive(Ljava/io/File;)Z
    .registers 6
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, "res":Z
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_e

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 111
    const/4 v1, 0x1

    .line 115
    :cond_d
    :goto_d
    return v1

    .line 112
    :catch_e
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SdpFileSystem"

    const-string v3, "Error- Exception in setting Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 432
    iget v3, p0, mUserId:I

    invoke-static {v3}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 434
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 447
    :cond_e
    :goto_e
    return-object v0

    .line 437
    :cond_f
    const/4 v0, 0x0

    .line 438
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 439
    .local v1, "f":Ljava/io/File;
    const/high16 v2, 0x10000000

    .line 440
    .local v2, "flags":I
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_1e

    .line 441
    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    .line 443
    :cond_1e
    if-eqz v1, :cond_e

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 445
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, setFilePermissionsFromMode(Ljava/lang/String;II)V

    goto :goto_e
.end method

.method public setSensitive(Ljava/io/File;)Z
    .registers 7
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 88
    .local v1, "res":Z
    :try_start_1
    iget v2, p0, mEngineId:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2a

    .line 89
    const-string v2, "SdpFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error to handle SDP_SetSensitiveFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2c

    .line 97
    :goto_29
    return v1

    .line 91
    :cond_2a
    const/4 v1, 0x1

    goto :goto_29

    .line 93
    :catch_2c
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SdpFileSystem"

    const-string v3, "Error- Exception in setting Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
