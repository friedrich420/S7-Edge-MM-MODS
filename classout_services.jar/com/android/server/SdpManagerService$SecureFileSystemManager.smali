.class Lcom/android/server/SdpManagerService$SecureFileSystemManager;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureFileSystemManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;
    }
.end annotation


# static fields
.field private static final FS_TYPE:I = 0x2

.field private static final SECURE_FS_CURRENT_VERSION:I = 0x1

.field private static final SECURE_FS_VERSION_1:I = 0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_NOT_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SecureFileSystem"


# instance fields
.field defaultApps:[Ljava/lang/String;

.field private mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

.field private mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

.field private mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mStatus:I

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private sContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;

.field timaVersion20:Z


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;)V
    .registers 11
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "timaHelper"    # Lcom/android/server/pm/TimaHelper;
    .param p4, "keyMgnt"    # Lcom/sec/knox/container/util/KeyManagementUtil;
    .param p5, "epm"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3148
    iput-object p1, p0, this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3123
    iput-object v3, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 3124
    iput-object v3, p0, mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 3125
    iput-object v3, p0, mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 3126
    new-instance v2, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    invoke-direct {v2, p0, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;-><init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;Lcom/android/server/SdpManagerService$1;)V

    iput-object v2, p0, mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    .line 3128
    iput-boolean v4, p0, timaVersion20:Z

    .line 3133
    iput v4, p0, mStatus:I

    .line 3301
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.android.bluetooth"

    aput-object v3, v2, v4

    iput-object v2, p0, defaultApps:[Ljava/lang/String;

    .line 3149
    iput-object p2, p0, sContext:Landroid/content/Context;

    .line 3150
    iput-object p3, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 3151
    iput-object p4, p0, mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 3152
    iput-object p5, p0, mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 3155
    :try_start_29
    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 3156
    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, timaVersion20:Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3f} :catch_40
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3f} :catch_4a

    .line 3163
    :cond_3f
    :goto_3f
    return-void

    .line 3157
    :catch_40
    move-exception v1

    .line 3158
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "SecureFileSystem"

    const-string/jumbo v3, "failed to talk with TIMA service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 3159
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_4a
    move-exception v0

    .line 3160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3161
    const-string v2, "SecureFileSystem"

    const-string/jumbo v3, "failed to get TIMA version."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/android/server/SdpManagerService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/server/pm/TimaHelper;
    .param p4, "x3"    # Lcom/sec/knox/container/util/KeyManagementUtil;
    .param p5, "x4"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .param p6, "x5"    # Lcom/android/server/SdpManagerService$1;

    .prologue
    .line 3121
    invoke-direct/range {p0 .. p5}, <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 3121
    invoke-direct {p0, p1, p2}, createPkgDir(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .param p1, "x1"    # I

    .prologue
    .line 3121
    invoke-direct {p0, p1}, setBaseDataUserDir(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .param p1, "x1"    # I

    .prologue
    .line 3121
    invoke-direct {p0, p1}, systemReady(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 3121
    invoke-direct {p0, p1, p2}, removePkgDir(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 3121
    invoke-direct {p0}, mount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 3121
    invoke-direct {p0}, isActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 3121
    invoke-direct {p0}, systemReady()Z

    move-result v0

    return v0
.end method

.method private createPartition()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3174
    iget-boolean v2, p0, timaVersion20:Z

    if-eqz v2, :cond_d

    .line 3175
    const-string v2, "SecureFileSystem"

    const-string v3, "TIMA 2.0 not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :goto_c
    return v1

    .line 3179
    :cond_d
    iget-object v2, p0, mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    const-string/jumbo v3, "test"

    invoke-virtual {v2, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateEcryptfsKey(Ljava/lang/String;)[B

    move-result-object v0

    .line 3180
    .local v0, "eCryptfsKey":[B
    iget-object v2, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, getTimaAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v1

    .line 3182
    .local v1, "ret":Z
    if-eqz v1, :cond_2e

    .line 3183
    iget-object v2, p0, mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    const/4 v3, 0x1

    iget-object v4, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v4}, Lcom/android/server/pm/TimaHelper;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->updateSecureFsXml(ILjava/lang/String;)I
    invoke-static {v2, v3, v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->access$2600(Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;ILjava/lang/String;)I

    .line 3184
    :cond_2e
    const-string v2, "SecureFileSystem"

    const-string/jumbo v3, "createPartition"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private createPkgDir(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3250
    const/4 v0, 0x0

    .line 3251
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3253
    .local v2, "token":J
    iget-object v1, p0, mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->createEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    .line 3254
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3256
    return v0
.end method

.method private getTimaAlias()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3166
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "eCryptfsKeySecFS"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .registers 3

    .prologue
    .line 3142
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 3144
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private isActivated()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3295
    iget v1, p0, mStatus:I

    if-ne v1, v0, :cond_6

    .line 3298
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isCreated()Z
    .registers 4

    .prologue
    .line 3170
    iget-object v0, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const/4 v1, 0x0

    invoke-direct {p0}, getTimaAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private mount()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 3201
    iget-boolean v4, p0, timaVersion20:Z

    if-eqz v4, :cond_10

    .line 3202
    const-string v4, "SecureFileSystem"

    const-string v5, "TIMA 2.0 not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3236
    :goto_f
    return v2

    .line 3208
    :cond_10
    iget-object v4, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, getTimaAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3209
    .local v1, "eCryptfsKey":[B
    if-nez v1, :cond_44

    .line 3210
    invoke-direct {p0}, createPartition()Z

    move-result v2

    .line 3212
    .local v2, "ret":Z
    if-nez v2, :cond_2d

    .line 3213
    const-string v4, "SecureFileSystem"

    const-string v5, "Failed to create partition"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    iput v6, p0, mStatus:I

    move v2, v3

    .line 3215
    goto :goto_f

    .line 3218
    :cond_2d
    iget-object v4, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, getTimaAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3219
    if-nez v1, :cond_44

    .line 3220
    const-string v4, "SecureFileSystem"

    const-string v5, "Failed to get eCryptfsKey"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    iput v6, p0, mStatus:I

    move v2, v3

    .line 3222
    goto :goto_f

    .line 3226
    .end local v2    # "ret":Z
    :cond_44
    invoke-static {v1, v3}, Lcom/sec/knox/container/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 3229
    .local v0, "b64eCryptfsKey":Ljava/lang/String;
    const-string v4, "SecureFileSystem"

    const-string/jumbo v5, "mount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    iget-object v4, p0, mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v0, v7, v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->mount(ILjava/lang/String;ZI)Z

    move-result v2

    .line 3231
    .restart local v2    # "ret":Z
    if-eqz v2, :cond_5c

    .line 3232
    iput v7, p0, mStatus:I

    goto :goto_f

    .line 3234
    :cond_5c
    iput v6, p0, mStatus:I

    goto :goto_f
.end method

.method private removePartition()V
    .registers 4

    .prologue
    .line 3190
    iget-boolean v0, p0, timaVersion20:Z

    if-eqz v0, :cond_b

    .line 3191
    const-string v0, "SecureFileSystem"

    const-string v1, "TIMA 2.0 not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    :cond_b
    iget-object v0, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const/4 v1, 0x0

    invoke-direct {p0}, getTimaAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    .line 3196
    const-string v0, "SecureFileSystem"

    const-string/jumbo v1, "removePartition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    return-void
.end method

.method private removePkgDir(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3260
    const/4 v0, 0x0

    .line 3261
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3263
    .local v2, "token":J
    iget-object v1, p0, mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    .line 3264
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3266
    return v0
.end method

.method private setBaseDataUserDir(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v4, -0x1

    .line 3306
    invoke-direct {p0}, isActivated()Z

    move-result v2

    if-nez v2, :cond_22

    .line 3307
    const-string v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: Error - SecureFileSysstem not activated... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    const/4 v1, 0x0

    .line 3326
    :goto_21
    return v1

    .line 3310
    :cond_22
    const/4 v1, 0x1

    .line 3312
    .local v1, "ret":Z
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/enc_user"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_54

    .line 3314
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 3315
    if-nez v1, :cond_78

    .line 3316
    const-string v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: Error - user dir creation failed... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    const/4 v1, 0x0

    .line 3325
    :cond_54
    :goto_54
    const-string v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 3319
    :cond_78
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_54
.end method

.method private systemReady()Z
    .registers 5

    .prologue
    .line 3364
    iget-object v3, p0, sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 3366
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 3367
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, systemReady(I)Z

    goto :goto_e

    .line 3370
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_20
    const/4 v3, 0x1

    return v3
.end method

.method private systemReady(I)Z
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x1

    .line 3330
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3360
    :cond_7
    :goto_7
    return v5

    .line 3335
    :cond_8
    invoke-direct {p0}, isActivated()Z

    move-result v6

    if-nez v6, :cond_18

    .line 3336
    const-string v5, "SecureFileSystem"

    const-string/jumbo v6, "systemReady error :: SdpFileSystem not activated "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    const/4 v5, 0x0

    goto :goto_7

    .line 3340
    :cond_18
    invoke-direct {p0, p1}, setBaseDataUserDir(I)Z

    move-result v6

    if-nez v6, :cond_37

    .line 3341
    const-string v6, "SecureFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "systemReady :: Error - Failed to set up base directory for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    :cond_37
    iget-object v1, p0, defaultApps:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3b
    if-ge v2, v3, :cond_7

    aget-object v0, v1, v2

    .line 3345
    .local v0, "app":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/sec/enterprise/knox/sdp/SdpFileSystem;->getUserDataDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 3347
    .local v4, "userDataDir":Ljava/io/File;
    if-nez v4, :cond_50

    .line 3348
    const-string v6, "SecureFileSystem"

    const-string/jumbo v7, "systemReady : userDataDir is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 3352
    :cond_50
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_95

    .line 3353
    const-string v6, "SecureFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "systemReady : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " creating"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    invoke-direct {p0, p1, v0}, createPkgDir(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 3355
    const-string v6, "SecureFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "failed to create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 3357
    :cond_95
    const-string v6, "SecureFileSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "systemReady : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method private unmount()V
    .registers 4

    .prologue
    .line 3240
    iget-boolean v0, p0, timaVersion20:Z

    if-eqz v0, :cond_b

    .line 3241
    const-string v0, "SecureFileSystem"

    const-string v1, "TIMA 2.0 not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    :cond_b
    const-string v0, "SecureFileSystem"

    const-string/jumbo v1, "unmount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    iget-object v0, p0, mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->unmount(II)Z

    .line 3247
    return-void
.end method
