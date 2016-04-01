.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$MainHandler;
    }
.end annotation


# static fields
.field private static final ATTR_CCM_BEEN_PROVISIONED:Ljava/lang/String; = "hasCCMBeenProvisioned"

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CONFIG_PROFILES_SHARE_CREDENTIAL:Z = true

.field private static final DBG:Z = true

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final IS_FOTA_FILENAME:Ljava/lang/String; = "fota.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final LOG_USERICON_TAG:Ljava/lang/String; = "UserIcon"

.field private static final MAX_MANAGED_PROFILES:I = 0x1

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_FOTA:Ljava/lang/String; = "fota"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x5

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XATTR_SERIAL:Ljava/lang/String; = "user.serial"

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final MAX_RETRY_READ:I

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mContext:Landroid/content/Context;

.field private final mGuestRestrictions:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mIsFotaFile:Ljava/io/File;

.field private mNextSerialNumber:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private final mUserExistsLock:Ljava/lang/Object;

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final sPersonaManager:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, USER_INFO_DIR:Ljava/lang/String;

    .line 175
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "no_record_audio"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "sPersonaManager"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    .line 243
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "baseUserPath"    # Ljava/io/File;
    .param p7, "sPersonaManager"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 250
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 200
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, mUsers:Landroid/util/SparseArray;

    .line 201
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, mUserRestrictions:Landroid/util/SparseArray;

    .line 202
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, mGuestRestrictions:Landroid/os/Bundle;

    .line 203
    const/4 v6, 0x3

    iput v6, p0, MAX_RETRY_READ:I

    .line 209
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 213
    const/4 v6, 0x0

    iput v6, p0, mUserVersion:I

    .line 252
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 253
    iput-object p2, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    .line 255
    move-object/from16 v0, p7

    iput-object v0, p0, sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 257
    move-object/from16 v0, p3

    iput-object v0, p0, mInstallLock:Ljava/lang/Object;

    .line 258
    move-object/from16 v0, p4

    iput-object v0, p0, mPackagesLock:Ljava/lang/Object;

    .line 259
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, mUserExistsLock:Ljava/lang/Object;

    .line 260
    new-instance v6, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v6, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v6, p0, mHandler:Landroid/os/Handler;

    .line 261
    iget-object v7, p0, mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 262
    :try_start_46
    iget-object v8, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_e8

    .line 263
    :try_start_49
    iget-object v9, p0, mUserExistsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_e5

    .line 264
    :try_start_4c
    new-instance v6, Ljava/io/File;

    sget-object v10, USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-direct {v6, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, mUsersDir:Ljava/io/File;

    .line 265
    iget-object v6, p0, mUsersDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 267
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, mUsersDir:Ljava/io/File;

    const-string v10, "0"

    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    .local v5, "userZeroDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 269
    iget-object v6, p0, mUsersDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x1fd

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v6, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 273
    new-instance v6, Ljava/io/File;

    iget-object v10, p0, mUsersDir:Ljava/io/File;

    const-string/jumbo v11, "userlist.xml"

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, mUserListFile:Ljava/io/File;

    .line 274
    new-instance v6, Ljava/io/File;

    iget-object v10, p0, mUsersDir:Ljava/io/File;

    const-string/jumbo v11, "fota.xml"

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, mIsFotaFile:Ljava/io/File;

    .line 275
    invoke-direct {p0}, initDefaultGuestRestrictions()V

    .line 276
    invoke-direct {p0}, readUserListLocked()V

    .line 277
    sput-object p0, sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_95
    .catchall {:try_start_4c .. :try_end_95} :catchall_e2

    .line 279
    :try_start_95
    iget-object v6, p0, mIsFotaFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x124

    invoke-static {v6, v10}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_a0
    .catch Landroid/system/ErrnoException; {:try_start_95 .. :try_end_a0} :catch_d9
    .catchall {:try_start_95 .. :try_end_a0} :catchall_e2

    .line 292
    :goto_a0
    if-eqz p7, :cond_ee

    .line 293
    :try_start_a2
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/PersonaManagerService;->getFotaNewUsers()Landroid/util/SparseArray;

    move-result-object v3

    .line 294
    .local v3, "mFotaNewUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_ee

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_ee

    .line 295
    const-string v6, "UserManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UserManagerService(): Knox FOTA upgrade case : mFotaNewUsers = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_eb

    .line 297
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 298
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v4}, fotaCreateNewKnoxUserLocked(Landroid/content/pm/UserInfo;)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_c7

    .line 280
    .end local v2    # "i":I
    .end local v3    # "mFotaNewUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :catch_d9
    move-exception v1

    .line 281
    .local v1, "e":Landroid/system/ErrnoException;
    const-string v6, "UserManagerService"

    const-string v10, "Error Exception when chmod fota.xml "

    invoke-static {v6, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 308
    .end local v1    # "e":Landroid/system/ErrnoException;
    .end local v5    # "userZeroDir":Ljava/io/File;
    :catchall_e2
    move-exception v6

    monitor-exit v9
    :try_end_e4
    .catchall {:try_start_a2 .. :try_end_e4} :catchall_e2

    :try_start_e4
    throw v6

    .line 309
    :catchall_e5
    move-exception v6

    monitor-exit v8
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw v6

    .line 310
    :catchall_e8
    move-exception v6

    monitor-exit v7
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_e8

    throw v6

    .line 303
    .restart local v2    # "i":I
    .restart local v3    # "mFotaNewUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "userZeroDir":Ljava/io/File;
    :cond_eb
    :try_start_eb
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/PersonaManagerService;->clearFotaNewUsers()V

    .line 308
    .end local v2    # "i":I
    .end local v3    # "mFotaNewUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    :cond_ee
    monitor-exit v9
    :try_end_ef
    .catchall {:try_start_eb .. :try_end_ef} :catchall_e2

    .line 309
    :try_start_ef
    monitor-exit v8
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_e5

    .line 310
    :try_start_f0
    monitor-exit v7
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_e8

    .line 311
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 229
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 111
    iget-object v0, p0, mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 111
    iget-object v0, p0, mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 111
    iget-object v0, p0, mUserExistsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 111
    iget-object v0, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 111
    iget-object v0, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 111
    iget-object v0, p0, mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 111
    invoke-direct {p0, p1}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 839
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2d

    if-eqz v0, :cond_2d

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_2d

    .line 843
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 845
    :cond_2d
    return-void
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 849
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_23

    if-eqz v0, :cond_23

    .line 850
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only system may call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 852
    :cond_23
    return-void
.end method

.method private cleanAppRestrictions(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 1516
    iget-object v8, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1517
    :try_start_3
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 1518
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1519
    .local v3, "files":[Ljava/lang/String;
    if-nez v3, :cond_f

    monitor-exit v8

    .line 1529
    :goto_e
    return-void

    .line 1520
    :cond_f
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_12
    if-ge v4, v5, :cond_30

    aget-object v2, v0, v4

    .line 1521
    .local v2, "fileName":Ljava/lang/String;
    const-string/jumbo v7, "res_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1522
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1523
    .local v6, "resFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1524
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1520
    .end local v6    # "resFile":Ljava/io/File;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1528
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_30
    monitor-exit v8

    goto :goto_e

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_32
    move-exception v7

    monitor-exit v8
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v7
.end method

.method private cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1535
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1536
    :try_start_3
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1537
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1538
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1539
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1541
    :cond_19
    monitor-exit v3

    .line 1542
    return-void

    .line 1541
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "resFile":Ljava/io/File;
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 36
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    .line 1578
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v25

    const-string/jumbo v26, "no_add_user"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_21

    .line 1580
    const-string v25, "UserManagerService"

    const-string v26, "Cannot add user. DISALLOW_ADD_USER is enabled."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    const/16 v22, 0x0

    .line 1669
    :goto_20
    return-object v22

    .line 1583
    :cond_21
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v25

    if-eqz v25, :cond_2a

    .line 1584
    const/16 v22, 0x0

    goto :goto_20

    .line 1586
    :cond_2a
    and-int/lit8 v25, p2, 0x4

    if-eqz v25, :cond_73

    const/4 v12, 0x1

    .line 1587
    .local v12, "isGuest":Z
    :goto_2f
    and-int/lit8 v25, p2, 0x20

    if-eqz v25, :cond_75

    const/4 v13, 0x1

    .line 1588
    .local v13, "isManagedProfile":Z
    :goto_34
    const/high16 v25, 0x10000

    and-int v25, v25, p2

    if-eqz v25, :cond_77

    const/4 v9, 0x1

    .line 1589
    .local v9, "isBMode":Z
    :goto_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1590
    .local v10, "ident":J
    const/16 v21, 0x0

    .line 1593
    .local v21, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_41
    move-object/from16 v0, p0

    iget-object v0, v0, mInstallLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_1fd

    .line 1594
    :try_start_48
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagesLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_1fa

    .line 1595
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v0, v0, mUserExistsLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_1f7

    .line 1596
    const/16 v16, 0x0

    .line 1597
    .local v16, "parent":Landroid/content/pm/UserInfo;
    const/16 v25, -0x2710

    move/from16 v0, p3

    move/from16 v1, v25

    if-eq v0, v1, :cond_79

    .line 1598
    :try_start_60
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    .line 1599
    if-nez v16, :cond_79

    const/16 v22, 0x0

    monitor-exit v28
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_2b1

    :try_start_6d
    monitor-exit v27
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_1f7

    :try_start_6e
    monitor-exit v26
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_1fa

    .line 1667
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 1586
    .end local v9    # "isBMode":Z
    .end local v10    # "ident":J
    .end local v12    # "isGuest":Z
    .end local v13    # "isManagedProfile":Z
    .end local v16    # "parent":Landroid/content/pm/UserInfo;
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_73
    const/4 v12, 0x0

    goto :goto_2f

    .line 1587
    .restart local v12    # "isGuest":Z
    :cond_75
    const/4 v13, 0x0

    goto :goto_34

    .line 1588
    .restart local v13    # "isManagedProfile":Z
    :cond_77
    const/4 v9, 0x0

    goto :goto_3b

    .line 1601
    .restart local v9    # "isBMode":Z
    .restart local v10    # "ident":J
    .restart local v16    # "parent":Landroid/content/pm/UserInfo;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_79
    if-eqz v13, :cond_8a

    :try_start_7b
    invoke-virtual/range {p0 .. p0}, canAddMoreManagedProfiles()Z

    move-result v25

    if-nez v25, :cond_8a

    .line 1602
    const/16 v22, 0x0

    monitor-exit v28
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_2b1

    :try_start_84
    monitor-exit v27
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_1f7

    :try_start_85
    monitor-exit v26
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_1fa

    .line 1667
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 1604
    :cond_8a
    if-nez v12, :cond_9f

    if-nez v13, :cond_9f

    if-nez v9, :cond_9f

    :try_start_90
    invoke-direct/range {p0 .. p0}, isUserLimitReachedLocked()Z

    move-result v25

    if-eqz v25, :cond_9f

    .line 1607
    const/16 v22, 0x0

    monitor-exit v28
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_2b1

    :try_start_99
    monitor-exit v27
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_1f7

    :try_start_9a
    monitor-exit v26
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_1fa

    .line 1667
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 1610
    :cond_9f
    if-eqz v12, :cond_b1

    :try_start_a1
    invoke-direct/range {p0 .. p0}, findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;

    move-result-object v25

    if-eqz v25, :cond_b1

    .line 1611
    const/16 v22, 0x0

    monitor-exit v28
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_2b1

    :try_start_aa
    monitor-exit v27
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_1f7

    :try_start_ab
    monitor-exit v26
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_1fa

    .line 1667
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 1613
    :cond_b1
    if-eqz v9, :cond_c3

    :try_start_b3
    invoke-direct/range {p0 .. p0}, findCurrentBModeUserLocked()Landroid/content/pm/UserInfo;

    move-result-object v25

    if-eqz v25, :cond_c3

    .line 1614
    const/16 v22, 0x0

    monitor-exit v28
    :try_end_bc
    .catchall {:try_start_b3 .. :try_end_bc} :catchall_2b1

    :try_start_bc
    monitor-exit v27
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_1f7

    :try_start_bd
    monitor-exit v26
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_1fa

    .line 1667
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 1616
    :cond_c3
    const/16 v25, 0x0

    const/16 v29, 0x0

    :try_start_c7
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, getNextAvailableIdLocked(ZZ)I

    move-result v20

    .line 1617
    .local v20, "userId":I
    new-instance v22, Landroid/content/pm/UserInfo;

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, v25

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e2
    .catchall {:try_start_c7 .. :try_end_e2} :catchall_2b1

    .line 1618
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .local v22, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_e2
    move-object/from16 v0, p0

    iget v0, v0, mNextSerialNumber:I

    move/from16 v25, v0

    add-int/lit8 v29, v25, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, mNextSerialNumber:I

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1620
    move-object/from16 v0, p0

    iget v0, v0, mNextSerialNumber:I

    move/from16 v25, v0

    const/16 v29, 0x64

    move/from16 v0, v25

    move/from16 v1, v29

    if-lt v0, v1, :cond_11a

    move-object/from16 v0, p0

    iget v0, v0, mNextSerialNumber:I

    move/from16 v25, v0

    const/16 v29, 0xc8

    move/from16 v0, v25

    move/from16 v1, v29

    if-gt v0, v1, :cond_11a

    .line 1621
    const/16 v25, 0xc9

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, mNextSerialNumber:I

    .line 1623
    :cond_11a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1624
    .local v14, "now":J
    const-wide v30, 0xdc46c32800L

    cmp-long v25, v14, v30

    if-lez v25, :cond_202

    .end local v14    # "now":J
    :goto_127
    move-object/from16 v0, v22

    iput-wide v14, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1625
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 1626
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdirs()Z

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, mUsers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1628
    invoke-direct/range {p0 .. p0}, writeUserListLocked()V

    .line 1629
    if-eqz v16, :cond_181

    .line 1630
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v25, v0

    const/16 v29, -0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_175

    .line 1631
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1632
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1634
    :cond_175
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1636
    :cond_181
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-class v29, Landroid/os/storage/StorageManager;

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/StorageManager;

    .line 1637
    .local v18, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_19b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_206

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/storage/VolumeInfo;

    .line 1638
    .local v23, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;
    :try_end_1aa
    .catchall {:try_start_e2 .. :try_end_1aa} :catchall_1f2

    move-result-object v24

    .line 1640
    .local v24, "volumeUuid":Ljava/lang/String;
    :try_start_1ab
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/Environment;->getDataUserDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    .line 1642
    .local v19, "userDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, prepareUserDirectory(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1643
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-static {v0, v1}, enforceSerialNumber(Ljava/io/File;I)V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1cf} :catch_1d0
    .catchall {:try_start_1ab .. :try_end_1cf} :catchall_1f2

    goto :goto_19b

    .line 1644
    .end local v19    # "userDir":Ljava/io/File;
    :catch_1d0
    move-exception v7

    .line 1645
    .local v7, "e":Ljava/io/IOException;
    :try_start_1d1
    const-string v25, "UserManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failed to create user directory on "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f1
    .catchall {:try_start_1d1 .. :try_end_1f1} :catchall_1f2

    goto :goto_19b

    .line 1654
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .end local v23    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v24    # "volumeUuid":Ljava/lang/String;
    :catchall_1f2
    move-exception v25

    move-object/from16 v21, v22

    .end local v20    # "userId":I
    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1f5
    :try_start_1f5
    monitor-exit v28
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_2b1

    :try_start_1f6
    throw v25

    .line 1655
    .end local v16    # "parent":Landroid/content/pm/UserInfo;
    :catchall_1f7
    move-exception v25

    :goto_1f8
    monitor-exit v27
    :try_end_1f9
    .catchall {:try_start_1f6 .. :try_end_1f9} :catchall_1f7

    :try_start_1f9
    throw v25

    .line 1656
    :catchall_1fa
    move-exception v25

    :goto_1fb
    monitor-exit v26
    :try_end_1fc
    .catchall {:try_start_1f9 .. :try_end_1fc} :catchall_1fa

    :try_start_1fc
    throw v25
    :try_end_1fd
    .catchall {:try_start_1fc .. :try_end_1fd} :catchall_1fd

    .line 1667
    :catchall_1fd
    move-exception v25

    :goto_1fe
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25

    .line 1624
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v14    # "now":J
    .restart local v16    # "parent":Landroid/content/pm/UserInfo;
    .restart local v20    # "userId":I
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_202
    const-wide/16 v14, 0x0

    goto/16 :goto_127

    .line 1648
    .end local v14    # "now":J
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v18    # "storage":Landroid/os/storage/StorageManager;
    :cond_206
    :try_start_206
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->createNewUserLILPw(I)V

    .line 1649
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 1650
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1651
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, updateUserIdsLocked(Z)V

    .line 1652
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 1653
    .local v17, "restrictions":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, mUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1654
    monitor-exit v28
    :try_end_240
    .catchall {:try_start_206 .. :try_end_240} :catchall_1f2

    .line 1655
    :try_start_240
    monitor-exit v27
    :try_end_241
    .catchall {:try_start_240 .. :try_end_241} :catchall_2ac

    .line 1656
    :try_start_241
    monitor-exit v26
    :try_end_242
    .catchall {:try_start_241 .. :try_end_242} :catchall_2a7

    .line 1657
    :try_start_242
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->newUserCreated(I)V

    .line 1658
    if-eqz v22, :cond_29d

    .line 1659
    new-instance v6, Landroid/content/Intent;

    const-string v25, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1660
    .local v6, "addedIntent":Landroid/content/Intent;
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1661
    const-string v25, "android.intent.extra.user_handle"

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1662
    const-string v25, "UserManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[DBG_USER] broadcast intent: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    sget-object v26, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v27, "android.permission.MANAGE_USERS"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_29d
    .catchall {:try_start_242 .. :try_end_29d} :catchall_2a2

    .line 1667
    .end local v6    # "addedIntent":Landroid/content/Intent;
    :cond_29d
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    :catchall_2a2
    move-exception v25

    move-object/from16 v21, v22

    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    goto/16 :goto_1fe

    .line 1656
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2a7
    move-exception v25

    move-object/from16 v21, v22

    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    goto/16 :goto_1fb

    .line 1655
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v22    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2ac
    move-exception v25

    move-object/from16 v21, v22

    .end local v22    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    goto/16 :goto_1f8

    .line 1654
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v17    # "restrictions":Landroid/os/Bundle;
    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .end local v20    # "userId":I
    :catchall_2b1
    move-exception v25

    goto/16 :goto_1f5
.end method

.method public static enforceSerialNumber(Ljava/io/File;I)V
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2450
    invoke-static {p0}, getSerialNumber(Ljava/io/File;)I

    move-result v1

    .line 2451
    .local v1, "foundSerial":I
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const/4 v2, -0x1

    if-ne v1, v2, :cond_65

    .line 2454
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serial number missing on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; assuming current is valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :try_start_47
    invoke-static {p0, p1}, setSerialNumber(Ljava/io/File;I)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 2465
    :cond_4a
    :goto_4a
    return-void

    .line 2457
    :catch_4b
    move-exception v0

    .line 2458
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set serial number on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 2461
    .end local v0    # "e":Ljava/io/IOException;
    :cond_65
    if-eq v1, p1, :cond_4a

    .line 2462
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t match expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private fallbackToSingleUserLocked()V
    .registers 16

    .prologue
    .line 1077
    new-instance v7, Landroid/content/pm/UserInfo;

    const/4 v11, 0x0

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040504

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x13

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1081
    .local v7, "primary":Landroid/content/pm/UserInfo;
    const-string/jumbo v11, "sys.knox.exists"

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1082
    .local v10, "value":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "KnoxIds":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    .local v6, "personaUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .line 1086
    .local v1, "Knoxexists":Z
    array-length v11, v0

    const/4 v12, 0x1

    if-le v11, v12, :cond_62

    .line 1088
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_30
    :try_start_30
    array-length v11, v0

    if-ge v3, v11, :cond_5e

    .line 1089
    new-instance v9, Landroid/content/pm/UserInfo;

    aget-object v11, v0, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v12, v0, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v12}, readUserLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v14, 0xa0

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1090
    .local v9, "user":Landroid/content/pm/UserInfo;
    const/4 v11, 0x0

    iput v11, v9, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1091
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1093
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    :cond_5e
    const/4 v11, 0x0

    iput v11, v7, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_61
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_61} :catch_82

    .line 1094
    const/4 v1, 0x1

    .line 1100
    .end local v3    # "i":I
    :cond_62
    :goto_62
    iget-object v11, p0, mUsers:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1102
    if-eqz v1, :cond_85

    .line 1103
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1104
    .local v5, "knoxinfo":Landroid/content/pm/UserInfo;
    iget-object v11, p0, mUsers:Landroid/util/SparseArray;

    iget v12, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6e

    .line 1095
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "knoxinfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "i":I
    :catch_82
    move-exception v2

    .line 1096
    .local v2, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_62

    .line 1108
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "i":I
    :cond_85
    const/16 v11, 0xa

    iput v11, p0, mNextSerialNumber:I

    .line 1109
    const/4 v11, 0x5

    iput v11, p0, mUserVersion:I

    .line 1111
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1112
    .local v8, "restrictions":Landroid/os/Bundle;
    iget-object v11, p0, mUserRestrictions:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1114
    const/4 v11, 0x0

    invoke-direct {p0, v11}, updateUserIdsLocked(Z)V

    .line 1115
    invoke-direct {p0}, initDefaultGuestRestrictions()V

    .line 1117
    invoke-direct {p0}, writeUserListLocked()V

    .line 1118
    invoke-direct {p0, v7}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1120
    if-eqz v1, :cond_ba

    .line 1121
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_aa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ba

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1122
    .restart local v5    # "knoxinfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v5}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    goto :goto_aa

    .line 1126
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "knoxinfo":Landroid/content/pm/UserInfo;
    :cond_ba
    return-void
.end method

.method private findCurrentBModeUserLocked()Landroid/content/pm/UserInfo;
    .registers 6

    .prologue
    .line 1777
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1778
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_25

    .line 1779
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1780
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1784
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :goto_21
    return-object v2

    .line 1778
    .restart local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1784
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_25
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;
    .registers 6

    .prologue
    .line 1766
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1767
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_29

    .line 1768
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1769
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v3, :cond_26

    iget-object v3, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1773
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :goto_25
    return-object v2

    .line 1767
    .restart local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1773
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_29
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private fotaCreateNewKnoxUserLocked(Landroid/content/pm/UserInfo;)V
    .registers 8
    .param p1, "ui"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x0

    .line 350
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fotaCreateNewKnoxUserLocked: ui = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0, v5}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 353
    .local v0, "parent":Landroid/content/pm/UserInfo;
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    invoke-direct {p0}, writeUserListLocked()V

    .line 355
    if-eqz v0, :cond_3a

    .line 356
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_36

    .line 357
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iput v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 358
    invoke-direct {p0, v0}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 360
    :cond_36
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 362
    :cond_3a
    invoke-direct {p0, p1}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 363
    invoke-direct {p0, v5}, updateUserIdsLocked(Z)V

    .line 364
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v1, "restrictions":Landroid/os/Bundle;
    iget-object v2, p0, mUserRestrictions:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 366
    return-void
.end method

.method private getAliveUsersExcludingGuestsCountLocked()I
    .registers 7

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "aliveUserCount":I
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 819
    .local v2, "totalUserCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_37

    .line 820
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 821
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_34

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_34

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-nez v4, :cond_34

    .line 823
    add-int/lit8 v0, v0, 0x1

    .line 819
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 826
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_37
    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .prologue
    .line 220
    const-class v1, Lcom/android/server/pm/UserManagerService;

    monitor-enter v1

    .line 221
    :try_start_3
    sget-object v0, sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v1

    return-object v0

    .line 222
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getNextAvailableIdLocked(ZZ)I
    .registers 6
    .param p1, "isKnox"    # Z
    .param p2, "isBBCContainer"    # Z

    .prologue
    .line 2399
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2400
    const/16 v0, 0xa

    .line 2402
    .local v0, "i":I
    if-eqz p1, :cond_9

    .line 2403
    const/16 v0, 0x64

    .line 2404
    :cond_9
    if-eqz p2, :cond_d

    .line 2405
    const/16 v0, 0xc3

    .line 2407
    :cond_d
    :goto_d
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_2e

    .line 2415
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1e

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_1e

    if-nez p1, :cond_1e

    .line 2416
    const/16 v0, 0xc9

    .line 2418
    :cond_1e
    :try_start_1e
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_30

    iget-object v1, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 2423
    :cond_2e
    monitor-exit v2

    return v0

    .line 2421
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2424
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_33

    throw v1
.end method

.method private getProfileParentLocked(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 451
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 452
    .local v1, "profile":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_8

    .line 459
    :cond_7
    :goto_7
    return-object v2

    .line 455
    :cond_8
    iget v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 456
    .local v0, "parentUserId":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 459
    invoke-direct {p0, v0}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_7
.end method

.method private getProfilesLocked(IZ)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 406
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_12

    .line 424
    :cond_11
    return-object v3

    .line 411
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_11

    .line 412
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 413
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2, v1}, isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 411
    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 416
    :cond_2c
    if-eqz p2, :cond_34

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 419
    :cond_34
    iget-object v4, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_29

    .line 422
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method private static getSerialNumber(Ljava/io/File;)I
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2489
    const/16 v4, 0x100

    :try_start_2
    new-array v0, v4, [B

    .line 2490
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user.serial"

    invoke-static {v4, v5, v0}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v2

    .line 2491
    .local v2, "len":I
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_15} :catch_34

    .line 2493
    .local v3, "serial":Ljava/lang/String;
    :try_start_15
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1a
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_18} :catch_34

    move-result v4

    .line 2499
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v3    # "serial":Ljava/lang/String;
    :goto_19
    return v4

    .line 2494
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    .restart local v3    # "serial":Ljava/lang/String;
    :catch_1a
    move-exception v1

    .line 2495
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_1b
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad serial number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_1b .. :try_end_34} :catch_34

    .line 2497
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "len":I
    .end local v3    # "serial":Ljava/lang/String;
    :catch_34
    move-exception v1

    .line 2498
    .local v1, "e":Landroid/system/ErrnoException;
    iget v4, v1, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ENODATA:I

    if-ne v4, v5, :cond_3d

    .line 2499
    const/4 v4, -0x1

    goto :goto_19

    .line 2501
    :cond_3d
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2125
    .local v0, "ident":J
    :try_start_4
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_16
    .catchall {:try_start_4 .. :try_end_12} :catchall_1c

    .line 2130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_15
    return v3

    .line 2127
    :catch_16
    move-exception v2

    .line 2128
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 2130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_1c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 515
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 517
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_30

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 518
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v0, 0x0

    .line 521
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :cond_30
    return-object v0
.end method

.method private initDefaultGuestRestrictions()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 640
    iget-object v0, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 641
    iget-object v0, p0, mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 642
    iget-object v0, p0, mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v1, "no_sms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    :cond_19
    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1502
    iget-object v1, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1505
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_11

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_13

    .line 1506
    :cond_11
    const/4 v1, 0x0

    .line 1508
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 6
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x0

    .line 464
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 465
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v2, :cond_17

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v2, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v1, v2, :cond_5

    :cond_17
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private isUserLimitReachedLocked()Z
    .registers 3

    .prologue
    .line 790
    invoke-direct {p0}, getAliveUsersExcludingGuestsCountLocked()I

    move-result v0

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private numberOfUsersOfTypeLocked(IIZ)I
    .registers 9
    .param p1, "flags"    # I
    .param p2, "butNotFlags"    # I
    .param p3, "excludeDying"    # Z

    .prologue
    .line 1742
    const/4 v0, 0x0

    .line 1743
    .local v0, "count":I
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2e

    .line 1744
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1745
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p3, :cond_1f

    iget-object v3, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1746
    :cond_1f
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_2b

    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v3, p2

    if-nez v3, :cond_2b

    .line 1747
    add-int/lit8 v0, v0, 0x1

    .line 1743
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1751
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2e
    return v0
.end method

.method private numberOfUsersOfTypeLocked(IZ)I
    .registers 4
    .param p1, "flags"    # I
    .param p2, "excludeDying"    # Z

    .prologue
    .line 1756
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, numberOfUsersOfTypeLocked(IIZ)I

    move-result v0

    return v0
.end method

.method private packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prepareUserDirectory(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2436
    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2437
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-static {p1, p2}, Landroid/os/Environment;->getDataUserDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 2438
    .local v1, "userDir":Ljava/io/File;
    invoke-virtual {v0, p2, v1}, Landroid/os/storage/StorageManager;->createNewUserDir(ILjava/io/File;)V

    .line 2439
    return-void
.end method

.method static readApplicationRestrictionsLocked(Landroid/util/XmlMoreAtomicFile;)Landroid/os/Bundle;
    .registers 9
    .param p0, "restrictionsFile"    # Landroid/util/XmlMoreAtomicFile;

    .prologue
    .line 2144
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2145
    .local v3, "restrictions":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2146
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/XmlMoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    .line 2169
    :goto_14
    return-object v3

    .line 2150
    :cond_15
    const/4 v1, 0x0

    .line 2152
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_16
    invoke-virtual {p0}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 2153
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 2154
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2155
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2156
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_51

    .line 2157
    const-string v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read restrictions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/util/XmlMoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4d} :catch_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_4d} :catch_87
    .catchall {:try_start_16 .. :try_end_4d} :catchall_82

    .line 2167
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_14

    .line 2161
    :cond_51
    :goto_51
    :try_start_51
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7e

    .line 2162
    invoke-static {v3, v4, v2}, readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5b} :catch_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_5b} :catch_87
    .catchall {:try_start_51 .. :try_end_5b} :catchall_82

    goto :goto_51

    .line 2164
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5c
    move-exception v5

    move-object v0, v5

    .line 2165
    .local v0, "e":Ljava/lang/Exception;
    :goto_5e
    :try_start_5e
    const-string v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/util/XmlMoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_5e .. :try_end_7a} :catchall_82

    .line 2167
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_14

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_14

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_82
    move-exception v5

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 2164
    :catch_87
    move-exception v5

    move-object v0, v5

    goto :goto_5e
.end method

.method private readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2136
    new-instance v0, Landroid/util/XmlMoreAtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, p1}, packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 2139
    .local v0, "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    invoke-static {v0}, readApplicationRestrictionsLocked(Landroid/util/XmlMoreAtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;

    .prologue
    .line 1467
    const/4 v1, 0x0

    invoke-interface {p1, v1, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 1469
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1471
    :cond_e
    return-void
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2218
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2219
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2220
    .local v1, "outerDepth":I
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2221
    invoke-static {v0, p1, p0}, readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 2223
    :cond_13
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2174
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 2175
    .local v6, "type":I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_68

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "entry"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 2176
    const/4 v10, 0x0

    const-string/jumbo v11, "key"

    invoke-interface {p2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2177
    .local v3, "key":Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "type"

    invoke-interface {p2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2178
    .local v7, "valType":Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "m"

    invoke-interface {p2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2179
    .local v4, "multiple":Ljava/lang/String;
    if-eqz v4, :cond_69

    .line 2180
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2181
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2182
    .local v2, "count":I
    :cond_35
    :goto_35
    if-lez v2, :cond_5c

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_5c

    .line 2183
    const/4 v10, 0x2

    if-ne v6, v10, :cond_35

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 2185
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    .line 2189
    :cond_5c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 2190
    .local v9, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2191
    invoke-virtual {p0, v3, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2214
    .end local v2    # "count":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "multiple":Ljava/lang/String;
    .end local v7    # "valType":Ljava/lang/String;
    .end local v9    # "valueStrings":[Ljava/lang/String;
    :cond_68
    :goto_68
    return-void

    .line 2192
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "multiple":Ljava/lang/String;
    .restart local v7    # "valType":Ljava/lang/String;
    :cond_69
    const-string v10, "B"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 2193
    invoke-static {p2, p1}, readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_68

    .line 2194
    :cond_79
    const-string v10, "BA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a8

    .line 2195
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 2196
    .local v5, "outerDepth":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2197
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_8a
    invoke-static {p2, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v10

    if-eqz v10, :cond_98

    .line 2198
    invoke-static {p2, p1}, readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    .line 2199
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 2201
    .end local v1    # "childBundle":Landroid/os/Bundle;
    :cond_98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_68

    .line 2204
    .end local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v5    # "outerDepth":I
    :cond_a8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 2205
    .local v8, "value":Ljava/lang/String;
    const-string v10, "b"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c0

    .line 2206
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_68

    .line 2207
    :cond_c0
    const-string/jumbo v10, "i"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d1

    .line 2208
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_68

    .line 2210
    :cond_d1
    invoke-virtual {p0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 1482
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 1487
    .end local p3    # "defaultValue":I
    :goto_7
    return p3

    .line 1485
    .restart local p3    # "defaultValue":I
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result p3

    goto :goto_7

    .line 1486
    :catch_d
    move-exception v0

    .line 1487
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 1492
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 1497
    .end local p3    # "defaultValue":J
    :goto_7
    return-wide p3

    .line 1495
    .restart local p3    # "defaultValue":J
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide p3

    goto :goto_7

    .line 1496
    :catch_d
    move-exception v0

    .line 1497
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method private readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1429
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1430
    const-string/jumbo v0, "no_modify_accounts"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1431
    const-string/jumbo v0, "no_install_apps"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1432
    const-string/jumbo v0, "no_uninstall_apps"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1433
    const-string/jumbo v0, "no_share_location"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1434
    const-string/jumbo v0, "no_install_unknown_sources"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1436
    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1437
    const-string/jumbo v0, "no_usb_file_transfer"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1438
    const-string/jumbo v0, "no_config_credentials"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1439
    const-string/jumbo v0, "no_remove_user"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1440
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1441
    const-string/jumbo v0, "no_config_vpn"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1442
    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1443
    const-string/jumbo v0, "no_network_reset"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1444
    const-string/jumbo v0, "no_factory_reset"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1445
    const-string/jumbo v0, "no_add_user"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1446
    const-string/jumbo v0, "ensure_verify_apps"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1447
    const-string/jumbo v0, "no_config_cell_broadcasts"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1448
    const-string/jumbo v0, "no_config_mobile_networks"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1449
    const-string/jumbo v0, "no_control_apps"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1450
    const-string/jumbo v0, "no_physical_media"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1452
    const-string/jumbo v0, "no_unmute_microphone"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1453
    const-string/jumbo v0, "no_adjust_volume"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1454
    const-string/jumbo v0, "no_outgoing_calls"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1455
    const-string/jumbo v0, "no_sms"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1456
    const-string/jumbo v0, "no_fun"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1457
    const-string/jumbo v0, "no_create_windows"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1458
    const-string/jumbo v0, "no_cross_profile_copy_paste"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1459
    const-string/jumbo v0, "no_outgoing_beam"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1460
    const-string/jumbo v0, "no_wallpaper"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1461
    const-string/jumbo v0, "no_safe_boot"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1462
    const-string v0, "allow_parent_profile_app_linking"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method private readUserListLocked()V
    .registers 15

    .prologue
    .line 930
    iget-object v11, p0, mUserListFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_11

    .line 931
    const-string v11, "LL"

    invoke-direct {p0, v11}, writeFotaLocked(Ljava/lang/String;)V

    .line 932
    invoke-direct {p0}, fallbackToSingleUserLocked()V

    .line 1029
    :cond_10
    :goto_10
    return-void

    .line 936
    :cond_11
    iget-object v11, p0, mIsFotaFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1e

    .line 937
    const-string v11, "KK"

    invoke-direct {p0, v11}, writeFotaLocked(Ljava/lang/String;)V

    .line 940
    :cond_1e
    const/4 v0, 0x0

    .line 941
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v9, Landroid/util/XmlMoreAtomicFile;

    iget-object v11, p0, mUserListFile:Ljava/io/File;

    invoke-direct {v9, v11}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 943
    .local v9, "userListFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_26
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 944
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 945
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 948
    :cond_37
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v11, 0x2

    if-eq v7, v11, :cond_41

    const/4 v11, 0x1

    if-ne v7, v11, :cond_37

    .line 952
    :cond_41
    const/4 v11, 0x2

    if-eq v7, v11, :cond_58

    .line 953
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 954
    const/4 v11, 0x6

    const-string v12, "Unable to read user list"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 955
    invoke-direct {p0}, fallbackToSingleUserLocked()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_50} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_50} :catch_119
    .catchall {:try_start_26 .. :try_end_50} :catchall_15d

    .line 1022
    if-eqz v0, :cond_10

    .line 1024
    :try_start_52
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_10

    .line 1025
    :catch_56
    move-exception v11

    goto :goto_10

    .line 959
    :cond_58
    const/4 v11, -0x1

    :try_start_59
    iput v11, p0, mNextSerialNumber:I

    .line 960
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "users"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 961
    const/4 v11, 0x0

    const-string/jumbo v12, "nextSerialNumber"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_78

    .line 963
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, mNextSerialNumber:I

    .line 965
    :cond_78
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 966
    .local v10, "versionNumber":Ljava/lang/String;
    if-eqz v10, :cond_88

    .line 967
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, mUserVersion:I

    .line 971
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v10    # "versionNumber":Ljava/lang/String;
    :cond_88
    :goto_88
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_164

    .line 972
    const/4 v11, 0x2

    if-ne v7, v11, :cond_88

    .line 973
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 974
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v11, "user"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_133

    .line 975
    const/4 v11, 0x0

    const-string/jumbo v12, "id"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11}, readUserLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 978
    .local v8, "user":Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_f9

    .line 979
    iget-object v11, p0, mUsers:Landroid/util/SparseArray;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v11

    if-nez v11, :cond_88

    iget v11, p0, mNextSerialNumber:I

    if-ltz v11, :cond_c8

    iget v11, p0, mNextSerialNumber:I

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    if-gt v11, v12, :cond_88

    .line 981
    :cond_c8
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, mNextSerialNumber:I

    .line 983
    iget v11, p0, mNextSerialNumber:I

    const/16 v12, 0x64

    if-lt v11, v12, :cond_88

    iget v11, p0, mNextSerialNumber:I

    const/16 v12, 0xc8

    if-gt v11, v12, :cond_88

    .line 984
    const/16 v11, 0xc9

    iput v11, p0, mNextSerialNumber:I
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_de} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_de} :catch_119
    .catchall {:try_start_59 .. :try_end_de} :catchall_15d

    goto :goto_88

    .line 1011
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catch_df
    move-exception v2

    .line 1012
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_e0
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1013
    const/4 v11, 0x6

    const-string v12, "IOException during readUserListLocked"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1014
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1015
    invoke-direct {p0}, fallbackToSingleUserLocked()V
    :try_end_ef
    .catchall {:try_start_e0 .. :try_end_ef} :catchall_15d

    .line 1022
    if-eqz v0, :cond_10

    .line 1024
    :try_start_f1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f6

    goto/16 :goto_10

    .line 1025
    :catch_f6
    move-exception v11

    goto/16 :goto_10

    .line 988
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_f9
    const/4 v11, 0x6

    :try_start_fa
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " might be broken"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_117} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fa .. :try_end_117} :catch_119
    .catchall {:try_start_fa .. :try_end_117} :catchall_15d

    goto/16 :goto_88

    .line 1016
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catch_119
    move-exception v6

    .line 1017
    .local v6, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_11a
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1018
    const/4 v11, 0x6

    const-string v12, "XmlPullParserException during readUserListLocked"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1019
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1020
    invoke-direct {p0}, fallbackToSingleUserLocked()V
    :try_end_129
    .catchall {:try_start_11a .. :try_end_129} :catchall_15d

    .line 1022
    if-eqz v0, :cond_10

    .line 1024
    :try_start_12b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_130

    goto/16 :goto_10

    .line 1025
    :catch_130
    move-exception v11

    goto/16 :goto_10

    .line 990
    .end local v6    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_133
    :try_start_133
    const-string/jumbo v11, "guestRestrictions"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 992
    :cond_13c
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_88

    const/4 v11, 0x3

    if-eq v7, v11, :cond_88

    .line 993
    const/4 v11, 0x2

    if-ne v7, v11, :cond_13c

    .line 994
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "restrictions"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 995
    iget-object v11, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {p0, v5, v11}, readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_15b} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_133 .. :try_end_15b} :catch_119
    .catchall {:try_start_133 .. :try_end_15b} :catchall_15d

    goto/16 :goto_88

    .line 1022
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_15d
    move-exception v11

    if-eqz v0, :cond_163

    .line 1024
    :try_start_160
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_18c

    .line 1026
    :cond_163
    :goto_163
    throw v11

    .line 1003
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_164
    :try_start_164
    iget-object v11, p0, mUsers:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_184

    .line 1004
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1005
    const/4 v11, 0x6

    const-string/jumbo v12, "there isn\'t owner user, fallback to single user"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1006
    invoke-direct {p0}, fallbackToSingleUserLocked()V
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_17a} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_164 .. :try_end_17a} :catch_119
    .catchall {:try_start_164 .. :try_end_17a} :catchall_15d

    .line 1022
    :goto_17a
    if-eqz v0, :cond_10

    .line 1024
    :try_start_17c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_17f} :catch_181

    goto/16 :goto_10

    .line 1025
    :catch_181
    move-exception v11

    goto/16 :goto_10

    .line 1008
    :cond_184
    const/4 v11, 0x0

    :try_start_185
    invoke-direct {p0, v11}, updateUserIdsLocked(Z)V

    .line 1009
    invoke-direct {p0}, upgradeIfNecessaryLocked()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_18b} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_185 .. :try_end_18b} :catch_119
    .catchall {:try_start_185 .. :try_end_18b} :catchall_15d

    goto :goto_17a

    .line 1025
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_18c
    move-exception v12

    goto :goto_163
.end method

.method private readUserLocked(I)Landroid/content/pm/UserInfo;
    .registers 39
    .param p1, "id"    # I

    .prologue
    .line 1308
    const/16 v23, 0x0

    .line 1309
    .local v23, "retry":I
    const/16 v29, 0x0

    .line 1310
    .local v29, "userFile":Landroid/util/XmlMoreAtomicFile;
    const/4 v8, 0x0

    .local v8, "fis":Ljava/io/FileInputStream;
    move-object/from16 v30, v29

    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .local v30, "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v24, v23

    .line 1312
    .end local v23    # "retry":I
    .local v24, "retry":I
    :goto_9
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "retry":I
    .restart local v23    # "retry":I
    const/16 v33, 0x3

    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_2eb

    .line 1313
    const/4 v9, 0x0

    .line 1314
    .local v9, "flags":I
    move/from16 v25, p1

    .line 1315
    .local v25, "serialNumber":I
    const/16 v16, 0x0

    .line 1316
    .local v16, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1317
    .local v12, "iconPath":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 1318
    .local v6, "creationTime":J
    const-wide/16 v14, 0x0

    .line 1319
    .local v14, "lastLoggedInTime":J
    const/16 v21, -0x1

    .line 1320
    .local v21, "profileGroupId":I
    const/16 v19, 0x0

    .line 1321
    .local v19, "partial":Z
    const/4 v10, 0x0

    .line 1323
    .local v10, "guestToRemove":Z
    const/4 v11, 0x0

    .line 1324
    .local v11, "hasCCMBeenProvisioned":Z
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1327
    .local v22, "restrictions":Landroid/os/Bundle;
    :try_start_28
    new-instance v29, Landroid/util/XmlMoreAtomicFile;

    new-instance v33, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mUsersDir:Ljava/io/File;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".xml"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_53} :catch_31e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_53} :catch_2b5
    .catchall {:try_start_28 .. :try_end_53} :catchall_2e2

    .line 1329
    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_53
    invoke-virtual/range {v29 .. v29}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8

    .line 1330
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 1331
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v33, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v33 .. v33}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1334
    :cond_68
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v28

    .local v28, "type":I
    const/16 v33, 0x2

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_7c

    const/16 v33, 0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-ne v0, v1, :cond_68

    .line 1338
    :cond_7c
    const/16 v33, 0x2

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_b5

    .line 1339
    invoke-virtual/range {v29 .. v29}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1340
    const/16 v33, 0x6

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Unable to read user "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_a3} :catch_245
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_a3} :catch_31c
    .catchall {:try_start_53 .. :try_end_a3} :catchall_31a

    .line 1415
    if-eqz v8, :cond_323

    .line 1417
    :try_start_a5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_ae

    move-object/from16 v30, v29

    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v24, v23

    .line 1419
    .end local v23    # "retry":I
    .restart local v24    # "retry":I
    goto/16 :goto_9

    .line 1418
    .end local v24    # "retry":I
    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v23    # "retry":I
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catch_ae
    move-exception v33

    move-object/from16 v30, v29

    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v24, v23

    .line 1419
    .end local v23    # "retry":I
    .restart local v24    # "retry":I
    goto/16 :goto_9

    .line 1344
    .end local v24    # "retry":I
    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v23    # "retry":I
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :cond_b5
    const/16 v33, 0x2

    move/from16 v0, v28

    move/from16 v1, v33

    if-ne v0, v1, :cond_273

    :try_start_bd
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "user"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_273

    .line 1345
    const-string/jumbo v33, "id"

    const/16 v34, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v26

    .line 1346
    .local v26, "storedId":I
    move/from16 v0, v26

    move/from16 v1, p1

    if-eq v0, v1, :cond_120

    .line 1347
    invoke-virtual/range {v29 .. v29}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1348
    const/16 v33, 0x6

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Unable id "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not match the file name "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_10e} :catch_245
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bd .. :try_end_10e} :catch_31c
    .catchall {:try_start_bd .. :try_end_10e} :catchall_31a

    .line 1415
    if-eqz v8, :cond_323

    .line 1417
    :try_start_110
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_119

    move-object/from16 v30, v29

    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v24, v23

    .line 1419
    .end local v23    # "retry":I
    .restart local v24    # "retry":I
    goto/16 :goto_9

    .line 1418
    .end local v24    # "retry":I
    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v23    # "retry":I
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catch_119
    move-exception v33

    move-object/from16 v30, v29

    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v24, v23

    .line 1419
    .end local v23    # "retry":I
    .restart local v24    # "retry":I
    goto/16 :goto_9

    .line 1351
    .end local v24    # "retry":I
    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v23    # "retry":I
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :cond_120
    :try_start_120
    const-string/jumbo v33, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v25

    .line 1352
    const-string/jumbo v33, "flags"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1353
    const/16 v33, 0x0

    const-string/jumbo v34, "icon"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1354
    const-string/jumbo v33, "created"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1355
    const-string/jumbo v33, "lastLoggedIn"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 1356
    const-string/jumbo v33, "profileGroupId"

    const/16 v34, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 1358
    const/16 v33, 0x0

    const-string/jumbo v34, "partial"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1359
    .local v32, "valueString":Ljava/lang/String;
    const-string/jumbo v33, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1a0

    .line 1360
    const/16 v19, 0x1

    .line 1362
    :cond_1a0
    const/16 v33, 0x0

    const-string/jumbo v34, "guestToRemove"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1363
    const-string/jumbo v33, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1bd

    .line 1364
    const/4 v10, 0x1

    .line 1368
    :cond_1bd
    const/16 v33, 0x0

    const-string/jumbo v34, "hasCCMBeenProvisioned"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1369
    const-string/jumbo v33, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1da

    .line 1370
    const/4 v11, 0x1

    .line 1374
    :cond_1da
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .line 1376
    .local v17, "outerDepth":I
    :cond_1de
    :goto_1de
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v28

    const/16 v33, 0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_273

    const/16 v33, 0x3

    move/from16 v0, v28

    move/from16 v1, v33

    if-ne v0, v1, :cond_1fc

    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v33

    move/from16 v0, v33

    move/from16 v1, v17

    if-le v0, v1, :cond_273

    .line 1377
    :cond_1fc
    const/16 v33, 0x3

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_1de

    const/16 v33, 0x4

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_1de

    .line 1380
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    .line 1381
    .local v27, "tag":Ljava/lang/String;
    const-string/jumbo v33, "name"

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_22e

    .line 1382
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v28

    .line 1383
    const/16 v33, 0x4

    move/from16 v0, v28

    move/from16 v1, v33

    if-ne v0, v1, :cond_1de

    .line 1384
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v16

    goto :goto_1de

    .line 1386
    :cond_22e
    const-string/jumbo v33, "restrictions"

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1de

    .line 1387
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_244} :catch_245
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_120 .. :try_end_244} :catch_31c
    .catchall {:try_start_120 .. :try_end_244} :catchall_31a

    goto :goto_1de

    .line 1406
    .end local v17    # "outerDepth":I
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "storedId":I
    .end local v27    # "tag":Ljava/lang/String;
    .end local v28    # "type":I
    .end local v32    # "valueString":Ljava/lang/String;
    :catch_245
    move-exception v13

    .line 1407
    .local v13, "ioe":Ljava/io/IOException;
    :goto_246
    :try_start_246
    invoke-virtual/range {v29 .. v29}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1408
    const/16 v33, 0x6

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "IOException during readUserLocked for id "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1409
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_268
    .catchall {:try_start_246 .. :try_end_268} :catchall_31a

    .line 1415
    if-eqz v8, :cond_26d

    .line 1417
    :try_start_26a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_26d
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_26d} :catch_315

    .end local v13    # "ioe":Ljava/io/IOException;
    :cond_26d
    :goto_26d
    move-object/from16 v30, v29

    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v24, v23

    .line 1422
    .end local v23    # "retry":I
    .restart local v24    # "retry":I
    goto/16 :goto_9

    .line 1392
    .end local v24    # "retry":I
    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "retry":I
    .restart local v28    # "type":I
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :cond_273
    :try_start_273
    new-instance v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v12, v9}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1393
    .local v31, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v0, v25

    move-object/from16 v1, v31

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1394
    move-object/from16 v0, v31

    iput-wide v6, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1395
    move-object/from16 v0, v31

    iput-wide v14, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 1396
    move/from16 v0, v19

    move-object/from16 v1, v31

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 1397
    move-object/from16 v0, v31

    iput-boolean v10, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 1400
    move-object/from16 v0, v31

    iput-boolean v11, v0, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    .line 1402
    move/from16 v0, v21

    move-object/from16 v1, v31

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, mUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_273 .. :try_end_2af} :catch_245
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_273 .. :try_end_2af} :catch_31c
    .catchall {:try_start_273 .. :try_end_2af} :catchall_31a

    .line 1415
    if-eqz v8, :cond_2b4

    .line 1417
    :try_start_2b1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2b4
    .catch Ljava/io/IOException; {:try_start_2b1 .. :try_end_2b4} :catch_313

    .line 1424
    .end local v6    # "creationTime":J
    .end local v9    # "flags":I
    .end local v10    # "guestToRemove":Z
    .end local v11    # "hasCCMBeenProvisioned":Z
    .end local v12    # "iconPath":Ljava/lang/String;
    .end local v14    # "lastLoggedInTime":J
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "partial":Z
    .end local v21    # "profileGroupId":I
    .end local v22    # "restrictions":Landroid/os/Bundle;
    .end local v25    # "serialNumber":I
    .end local v28    # "type":I
    .end local v31    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2b4
    :goto_2b4
    return-object v31

    .line 1410
    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v6    # "creationTime":J
    .restart local v9    # "flags":I
    .restart local v10    # "guestToRemove":Z
    .restart local v11    # "hasCCMBeenProvisioned":Z
    .restart local v12    # "iconPath":Ljava/lang/String;
    .restart local v14    # "lastLoggedInTime":J
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v19    # "partial":Z
    .restart local v21    # "profileGroupId":I
    .restart local v22    # "restrictions":Landroid/os/Bundle;
    .restart local v25    # "serialNumber":I
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catch_2b5
    move-exception v20

    move-object/from16 v29, v30

    .line 1411
    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .local v20, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :goto_2b8
    :try_start_2b8
    invoke-virtual/range {v29 .. v29}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1412
    const/16 v33, 0x6

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "XmlPullParserException during readUserLocked for id "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1413
    invoke-virtual/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2da
    .catchall {:try_start_2b8 .. :try_end_2da} :catchall_31a

    .line 1415
    if-eqz v8, :cond_26d

    .line 1417
    :try_start_2dc
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2df
    .catch Ljava/io/IOException; {:try_start_2dc .. :try_end_2df} :catch_2e0

    goto :goto_26d

    .line 1418
    :catch_2e0
    move-exception v33

    goto :goto_26d

    .line 1415
    .end local v20    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catchall_2e2
    move-exception v33

    move-object/from16 v29, v30

    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :goto_2e5
    if-eqz v8, :cond_2ea

    .line 1417
    :try_start_2e7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2ea
    .catch Ljava/io/IOException; {:try_start_2e7 .. :try_end_2ea} :catch_318

    .line 1419
    :cond_2ea
    :goto_2ea
    throw v33

    .line 1423
    .end local v6    # "creationTime":J
    .end local v9    # "flags":I
    .end local v10    # "guestToRemove":Z
    .end local v11    # "hasCCMBeenProvisioned":Z
    .end local v12    # "iconPath":Ljava/lang/String;
    .end local v14    # "lastLoggedInTime":J
    .end local v16    # "name":Ljava/lang/String;
    .end local v19    # "partial":Z
    .end local v21    # "profileGroupId":I
    .end local v22    # "restrictions":Landroid/os/Bundle;
    .end local v25    # "serialNumber":I
    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :cond_2eb
    const/16 v33, 0x6

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "failed to read user "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", giving up"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1424
    const/16 v31, 0x0

    move-object/from16 v29, v30

    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    goto :goto_2b4

    .line 1418
    .restart local v6    # "creationTime":J
    .restart local v9    # "flags":I
    .restart local v10    # "guestToRemove":Z
    .restart local v11    # "hasCCMBeenProvisioned":Z
    .restart local v12    # "iconPath":Ljava/lang/String;
    .restart local v14    # "lastLoggedInTime":J
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "partial":Z
    .restart local v21    # "profileGroupId":I
    .restart local v22    # "restrictions":Landroid/os/Bundle;
    .restart local v25    # "serialNumber":I
    .restart local v28    # "type":I
    .restart local v31    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_313
    move-exception v33

    goto :goto_2b4

    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "type":I
    .end local v31    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "ioe":Ljava/io/IOException;
    :catch_315
    move-exception v33

    goto/16 :goto_26d

    .end local v13    # "ioe":Ljava/io/IOException;
    :catch_318
    move-exception v34

    goto :goto_2ea

    .line 1415
    :catchall_31a
    move-exception v33

    goto :goto_2e5

    .line 1410
    :catch_31c
    move-exception v20

    goto :goto_2b8

    .line 1406
    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catch_31e
    move-exception v13

    move-object/from16 v29, v30

    .end local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    goto/16 :goto_246

    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28    # "type":I
    :cond_323
    move-object/from16 v30, v29

    .end local v29    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v30    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v24, v23

    .end local v23    # "retry":I
    .restart local v24    # "retry":I
    goto/16 :goto_9
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .registers 9
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 2008
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2009
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 2010
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_d
    if-ge v4, v5, :cond_1c

    aget-object v2, v0, v4

    .line 2011
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2012
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, removeDirectoryRecursive(Ljava/io/File;)V

    .line 2010
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2015
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2016
    return-void
.end method

.method private removeRestrictionsForUser(IZ)V
    .registers 5
    .param p1, "userHandle"    # I
    .param p2, "unhideApps"    # Z

    .prologue
    .line 2088
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2090
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p1}, setUserRestrictions(Landroid/os/Bundle;I)V

    .line 2092
    invoke-direct {p0, p1}, cleanAppRestrictions(I)V

    .line 2093
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 2094
    if-eqz p2, :cond_14

    .line 2095
    invoke-direct {p0, p1}, unhideAllInstalledAppsForUser(I)V

    .line 2097
    :cond_14
    return-void

    .line 2093
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private removeUserStateLocked(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 1975
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->deleteUserKey(I)V

    .line 1979
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1980
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1981
    iget-object v2, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(Lcom/android/server/pm/UserManagerService;I)V

    .line 1984
    :cond_22
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1989
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1999
    new-instance v1, Landroid/util/XmlMoreAtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 2000
    .local v1, "userFile":Landroid/util/XmlMoreAtomicFile;
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->delete()V

    .line 2002
    invoke-direct {p0}, writeUserListLocked()V

    .line 2003
    const/4 v2, 0x1

    invoke-direct {p0, v2}, updateUserIdsLocked(Z)V

    .line 2004
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, removeDirectoryRecursive(Ljava/io/File;)V

    .line 2005
    return-void
.end method

.method private scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V
    .registers 6
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v2, 0x1

    .line 1129
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1130
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1131
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1133
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .registers 7
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .prologue
    .line 2019
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2020
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2022
    const-string v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2023
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2024
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, "changedIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 585
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 588
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG_USER] broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method private static setSerialNumber(Ljava/io/File;I)V
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2475
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2476
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user.serial"

    sget v4, Landroid/system/OsConstants;->XATTR_CREATE:I

    invoke-static {v2, v3, v0, v4}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_16} :catch_17

    .line 2480
    return-void

    .line 2477
    .end local v0    # "buf":[B
    :catch_17
    move-exception v1

    .line 2478
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 772
    iget-object v4, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 773
    .local v1, "userRestrictions":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 774
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 777
    .local v2, "token":J
    :try_start_12
    iget-object v4, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v4, v1, p2}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_26
    .catchall {:try_start_12 .. :try_end_17} :catchall_32

    .line 781
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    :goto_1a
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v4}, scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 784
    return-void

    .line 778
    :catch_26
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v4, "UserManagerService"

    const-string v5, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_32

    .line 781
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1a

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private unhideAllInstalledAppsForUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 2100
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2121
    return-void
.end method

.method private updateUserIdsLocked(Z)V
    .registers 8
    .param p1, "excludePartial"    # Z

    .prologue
    .line 2349
    const/4 v4, 0x0

    .line 2350
    .local v4, "num":I
    if-eqz p1, :cond_25

    .line 2351
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2359
    :cond_9
    new-array v3, v4, [I

    .line 2360
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    .line 2361
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_57

    .line 2362
    if-eqz p1, :cond_3f

    .line 2363
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .line 2361
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2353
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v3    # "newUsers":[I
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 2354
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_3c

    .line 2355
    add-int/lit8 v4, v4, 0x1

    .line 2353
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 2365
    .restart local v1    # "n":I
    .restart local v3    # "newUsers":[I
    :cond_3f
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_22

    .line 2366
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .restart local v2    # "n":I
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_22

    .line 2370
    :cond_57
    iput-object v3, p0, mUserIds:[I

    .line 2371
    return-void
.end method

.method private upgradeIfNecessaryLocked()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 1035
    iget v1, p0, mUserVersion:I

    .line 1036
    .local v1, "userVersion":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_2c

    .line 1038
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1039
    .local v0, "user":Landroid/content/pm/UserInfo;
    const-string v2, "Primary"

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1040
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040504

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1041
    invoke-direct {p0, v0}, scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1043
    :cond_2b
    const/4 v1, 0x1

    .line 1046
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_2c
    const/4 v2, 0x2

    if-ge v1, v2, :cond_47

    .line 1048
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1049
    .restart local v0    # "user":Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_46

    .line 1050
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 1051
    invoke-direct {p0, v0}, scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1053
    :cond_46
    const/4 v1, 0x2

    .line 1057
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_47
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4b

    .line 1058
    const/4 v1, 0x4

    .line 1061
    :cond_4b
    if-ge v1, v5, :cond_51

    .line 1062
    invoke-direct {p0}, initDefaultGuestRestrictions()V

    .line 1063
    const/4 v1, 0x5

    .line 1066
    :cond_51
    if-ge v1, v5, :cond_78

    .line 1067
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :goto_77
    return-void

    .line 1070
    :cond_78
    iput v1, p0, mUserVersion:I

    .line 1071
    invoke-direct {p0}, writeUserListLocked()V

    goto :goto_77
.end method

.method static writeApplicationRestrictionsLocked(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;

    .prologue
    .line 2237
    const/4 v2, 0x0

    .line 2239
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2240
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2242
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2243
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2244
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2245
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2247
    const/4 v4, 0x0

    const-string/jumbo v5, "restrictions"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2248
    invoke-static {p0, v3}, writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2249
    const/4 v4, 0x0

    const-string/jumbo v5, "restrictions"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2251
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2252
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_40

    .line 2257
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_3f
    return-void

    .line 2253
    :catch_40
    move-exception v1

    .line 2254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2255
    const-string v4, "UserManagerService"

    const-string v5, "Error writing application restrictions list"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method private writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 2228
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, p1}, packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2231
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p2, v0}, writeApplicationRestrictionsLocked(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 2232
    return-void
.end method

.method private writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 856
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, mUsersDir:Ljava/io/File;

    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 857
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "photo.png"

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 858
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "photo.png.tmp"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 859
    .local v4, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_31

    .line 860
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 861
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 867
    :cond_31
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 869
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4c} :catch_53

    .line 872
    :cond_4c
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_4f} :catch_53

    .line 876
    :goto_4f
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_52} :catch_53

    .line 880
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "tmp":Ljava/io/File;
    :goto_52
    return-void

    .line 877
    :catch_53
    move-exception v1

    .line 878
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "UserManagerService"

    const-string v6, "Error setting photo for user "

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 873
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "tmp":Ljava/io/File;
    :catch_5c
    move-exception v5

    goto :goto_4f
.end method

.method private writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1475
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1476
    const/4 v0, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1479
    :cond_12
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 15
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 2261
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2262
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2263
    .local v8, "value":Ljava/lang/Object;
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2264
    const-string/jumbo v10, "key"

    invoke-interface {p1, v12, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2266
    instance-of v10, v8, Ljava/lang/Boolean;

    if-eqz v10, :cond_3f

    .line 2267
    const-string/jumbo v10, "type"

    const-string v11, "b"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2268
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2300
    .end local v8    # "value":Ljava/lang/Object;
    :cond_38
    :goto_38
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .line 2269
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_3f
    instance-of v10, v8, Ljava/lang/Integer;

    if-eqz v10, :cond_54

    .line 2270
    const-string/jumbo v10, "type"

    const-string/jumbo v11, "i"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2271
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_38

    .line 2272
    :cond_54
    if-eqz v8, :cond_5a

    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_6e

    .line 2273
    :cond_5a
    const-string/jumbo v10, "type"

    const-string/jumbo v11, "s"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2274
    if-eqz v8, :cond_6b

    check-cast v8, Ljava/lang/String;

    .end local v8    # "value":Ljava/lang/Object;
    :goto_67
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_38

    .restart local v8    # "value":Ljava/lang/Object;
    :cond_6b
    const-string v8, ""

    goto :goto_67

    .line 2275
    :cond_6e
    instance-of v10, v8, Landroid/os/Bundle;

    if-eqz v10, :cond_80

    .line 2276
    const-string/jumbo v10, "type"

    const-string v11, "B"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2277
    check-cast v8, Landroid/os/Bundle;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-static {v8, p1}, writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_38

    .line 2278
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_80
    instance-of v10, v8, [Landroid/os/Parcelable;

    if-eqz v10, :cond_c0

    .line 2279
    const-string/jumbo v10, "type"

    const-string v11, "BA"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2280
    check-cast v8, [Landroid/os/Parcelable;

    .end local v8    # "value":Ljava/lang/Object;
    move-object v1, v8

    check-cast v1, [Landroid/os/Parcelable;

    .line 2281
    .local v1, "array":[Landroid/os/Parcelable;
    move-object v0, v1

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_94
    if-ge v4, v6, :cond_38

    aget-object v7, v0, v4

    .line 2282
    .local v7, "parcelable":Landroid/os/Parcelable;
    instance-of v10, v7, Landroid/os/Bundle;

    if-nez v10, :cond_a4

    .line 2283
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "bundle-array can only hold Bundles"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2285
    :cond_a4
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2286
    const-string/jumbo v10, "type"

    const-string v11, "B"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2287
    check-cast v7, Landroid/os/Bundle;

    .end local v7    # "parcelable":Landroid/os/Parcelable;
    invoke-static {v7, p1}, writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2288
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2281
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    .line 2291
    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v1    # "array":[Landroid/os/Parcelable;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_c0
    const-string/jumbo v10, "type"

    const-string/jumbo v11, "sa"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2292
    check-cast v8, [Ljava/lang/String;

    .end local v8    # "value":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, [Ljava/lang/String;

    .line 2293
    .local v9, "values":[Ljava/lang/String;
    const-string/jumbo v10, "m"

    array-length v11, v9

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2294
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_dc
    if-ge v4, v6, :cond_38

    aget-object v2, v0, v4

    .line 2295
    .local v2, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2296
    if-eqz v2, :cond_f4

    .end local v2    # "choice":Ljava/lang/String;
    :goto_e8
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2297
    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2294
    add-int/lit8 v4, v4, 0x1

    goto :goto_dc

    .line 2296
    .restart local v2    # "choice":Ljava/lang/String;
    :cond_f4
    const-string v2, ""

    goto :goto_e8

    .line 2302
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "choice":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v9    # "values":[Ljava/lang/String;
    :cond_f7
    return-void
.end method

.method private writeFotaLocked(Ljava/lang/String;)V
    .registers 9
    .param p1, "mFotaVersion"    # Ljava/lang/String;

    .prologue
    .line 1199
    const/4 v2, 0x0

    .line 1200
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Landroid/util/XmlMoreAtomicFile;

    iget-object v5, p0, mIsFotaFile:Ljava/io/File;

    invoke-direct {v3, v5}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 1201
    .local v3, "fotaFile":Landroid/util/XmlMoreAtomicFile;
    const-string/jumbo v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zero"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1202
    const-string v5, "UserManagerService"

    const-string/jumbo v6, "zero goes to L MUM Images!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string p1, "LL"

    .line 1206
    :cond_22
    :try_start_22
    invoke-virtual {v3}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1207
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1208
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1209
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1210
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1211
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1213
    const/4 v5, 0x0

    const-string/jumbo v6, "fota"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1214
    const/4 v5, 0x0

    const-string/jumbo v6, "version"

    invoke-interface {v4, v5, v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1215
    const/4 v5, 0x0

    const-string/jumbo v6, "fota"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1217
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5e} :catch_5f

    .line 1222
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_5e
    return-void

    .line 1218
    :catch_5f
    move-exception v1

    .line 1219
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v3, v2}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1220
    const-string v5, "UserManagerService"

    const-string v6, "Error writing fota file"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e
.end method

.method private writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1270
    const-string/jumbo v0, "restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1271
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1272
    const-string/jumbo v0, "no_modify_accounts"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1273
    const-string/jumbo v0, "no_install_apps"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1274
    const-string/jumbo v0, "no_uninstall_apps"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1275
    const-string/jumbo v0, "no_share_location"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1276
    const-string/jumbo v0, "no_install_unknown_sources"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1278
    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1279
    const-string/jumbo v0, "no_usb_file_transfer"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1280
    const-string/jumbo v0, "no_config_credentials"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1281
    const-string/jumbo v0, "no_remove_user"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1282
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1283
    const-string/jumbo v0, "no_config_vpn"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1284
    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1285
    const-string/jumbo v0, "no_network_reset"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1286
    const-string/jumbo v0, "no_factory_reset"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1287
    const-string/jumbo v0, "no_add_user"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1288
    const-string/jumbo v0, "ensure_verify_apps"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1289
    const-string/jumbo v0, "no_config_cell_broadcasts"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1290
    const-string/jumbo v0, "no_config_mobile_networks"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1291
    const-string/jumbo v0, "no_control_apps"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1292
    const-string/jumbo v0, "no_physical_media"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v0, "no_unmute_microphone"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v0, "no_adjust_volume"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1295
    const-string/jumbo v0, "no_outgoing_calls"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1296
    const-string/jumbo v0, "no_sms"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1297
    const-string/jumbo v0, "no_fun"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1298
    const-string/jumbo v0, "no_create_windows"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1299
    const-string/jumbo v0, "no_cross_profile_copy_paste"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1300
    const-string/jumbo v0, "no_outgoing_beam"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1301
    const-string/jumbo v0, "no_wallpaper"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1302
    const-string/jumbo v0, "no_safe_boot"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1303
    const-string v0, "allow_parent_profile_app_linking"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1304
    const-string/jumbo v0, "restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1305
    return-void
.end method

.method private writeUserListLocked()V
    .registers 11

    .prologue
    .line 1232
    const/4 v2, 0x0

    .line 1233
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Landroid/util/XmlMoreAtomicFile;

    iget-object v7, p0, mUserListFile:Ljava/io/File;

    invoke-direct {v6, v7}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 1235
    .local v6, "userListFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_8
    invoke-virtual {v6}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1236
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1239
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1240
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1241
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1242
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1244
    const/4 v7, 0x0

    const-string/jumbo v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1245
    const/4 v7, 0x0

    const-string/jumbo v8, "nextSerialNumber"

    iget v9, p0, mNextSerialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1246
    const/4 v7, 0x0

    const-string/jumbo v8, "version"

    iget v9, p0, mUserVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1248
    const/4 v7, 0x0

    const-string/jumbo v8, "guestRestrictions"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1249
    iget-object v7, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {p0, v4, v7}, writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 1250
    const/4 v7, 0x0

    const-string/jumbo v8, "guestRestrictions"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1251
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_64
    iget-object v7, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_92

    .line 1252
    iget-object v7, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1253
    .local v5, "user":Landroid/content/pm/UserInfo;
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1254
    const/4 v7, 0x0

    const-string/jumbo v8, "id"

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1251
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 1258
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_92
    const/4 v7, 0x0

    const-string/jumbo v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1261
    invoke-virtual {v6, v2}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9f} :catch_a0

    .line 1266
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_9f
    return-void

    .line 1262
    :catch_a0
    move-exception v1

    .line 1263
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v6, v2}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1264
    const-string v7, "UserManagerService"

    const-string v8, "Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f
.end method

.method private writeUserLocked(Landroid/content/pm/UserInfo;)V
    .registers 12
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 1143
    const/4 v1, 0x0

    .line 1144
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Landroid/util/XmlMoreAtomicFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, mUsersDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 1146
    .local v5, "userFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_22
    invoke-virtual {v5}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1147
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1150
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1151
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1152
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1153
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1155
    const/4 v6, 0x0

    const-string/jumbo v7, "user"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1156
    const/4 v6, 0x0

    const-string/jumbo v7, "id"

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    const/4 v6, 0x0

    const-string/jumbo v7, "serialNumber"

    iget v8, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1158
    const/4 v6, 0x0

    const-string/jumbo v7, "flags"

    iget v8, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1159
    const/4 v6, 0x0

    const-string/jumbo v7, "created"

    iget-wide v8, p1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1160
    const/4 v6, 0x0

    const-string/jumbo v7, "lastLoggedIn"

    iget-wide v8, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1162
    iget-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v6, :cond_9e

    .line 1163
    const/4 v6, 0x0

    const-string/jumbo v7, "icon"

    iget-object v8, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    :cond_9e
    iget-boolean v6, p1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v6, :cond_ac

    .line 1166
    const/4 v6, 0x0

    const-string/jumbo v7, "partial"

    const-string/jumbo v8, "true"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1168
    :cond_ac
    iget-boolean v6, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v6, :cond_ba

    .line 1169
    const/4 v6, 0x0

    const-string/jumbo v7, "guestToRemove"

    const-string/jumbo v8, "true"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1172
    :cond_ba
    iget-boolean v6, p1, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    if-eqz v6, :cond_c8

    .line 1173
    const/4 v6, 0x0

    const-string/jumbo v7, "hasCCMBeenProvisioned"

    const-string/jumbo v8, "true"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1175
    :cond_c8
    iget v6, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_da

    .line 1176
    const/4 v6, 0x0

    const-string/jumbo v7, "profileGroupId"

    iget v8, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1180
    :cond_da
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1181
    iget-object v6, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1182
    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1183
    iget-object v6, p0, mUserRestrictions:Landroid/util/SparseArray;

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1184
    .local v3, "restrictions":Landroid/os/Bundle;
    if-eqz v3, :cond_fc

    .line 1185
    invoke-direct {p0, v4, v3}, writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 1187
    :cond_fc
    const/4 v6, 0x0

    const-string/jumbo v7, "user"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1189
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1190
    invoke-virtual {v5, v1}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_109} :catch_10a

    .line 1195
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "restrictions":Landroid/os/Bundle;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_109
    return-void

    .line 1191
    :catch_10a
    move-exception v2

    .line 1192
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing user info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {v5, v1}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_109
.end method


# virtual methods
.method public canAddMoreManagedProfiles()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 795
    const-string v3, "check if more managed profiles can be added."

    invoke-static {v3}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 796
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 811
    :cond_d
    :goto_d
    return v1

    .line 799
    :cond_e
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.managed_users"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 803
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 805
    const/16 v4, 0x20

    const/16 v5, 0x80

    const/4 v6, 0x1

    :try_start_24
    invoke-direct {p0, v4, v5, v6}, numberOfUsersOfTypeLocked(IIZ)I

    move-result v4

    if-lt v4, v2, :cond_2f

    .line 807
    monitor-exit v3

    goto :goto_d

    .line 812
    :catchall_2c
    move-exception v1

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    throw v1

    .line 809
    :cond_2f
    :try_start_2f
    invoke-direct {p0}, getAliveUsersExcludingGuestsCountLocked()I

    move-result v0

    .line 811
    .local v0, "usersCount":I
    if-eq v0, v2, :cond_3b

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    if-ge v0, v4, :cond_3c

    :cond_3b
    move v1, v2

    :cond_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_2c

    goto :goto_d
.end method

.method public createKnoxContainer(Ljava/lang/String;IZ)Landroid/content/pm/UserInfo;
    .registers 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentId"    # I
    .param p3, "isBBCContainer"    # Z

    .prologue
    .line 1673
    const-string v13, "Only the system can create users"

    invoke-static {v13}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1674
    if-eqz p2, :cond_10

    .line 1675
    const-string v13, "UserManagerService"

    const-string v14, "Only user owner can have profiles"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/4 v12, 0x0

    .line 1738
    :goto_f
    return-object v12

    .line 1678
    :cond_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "no_add_user"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 1680
    const-string v13, "UserManagerService"

    const-string v14, "Cannot add user. DISALLOW_ADD_USER is enabled."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const/4 v12, 0x0

    goto :goto_f

    .line 1683
    :cond_2d
    const/16 v3, 0xe0

    .line 1684
    .local v3, "flags":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1685
    .local v4, "ident":J
    const/4 v11, 0x0

    .line 1688
    .local v11, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_34
    move-object/from16 v0, p0

    iget-object v14, v0, mInstallLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_10e

    .line 1689
    :try_start_39
    move-object/from16 v0, p0

    iget-object v15, v0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_10b

    .line 1690
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v0, v0, mUserExistsLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_108

    .line 1691
    const/4 v8, 0x0

    .line 1692
    .local v8, "parent":Landroid/content/pm/UserInfo;
    const/16 v13, -0x2710

    move/from16 v0, p2

    if-eq v0, v13, :cond_67

    .line 1693
    :try_start_4c
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 1694
    if-nez v8, :cond_67

    .line 1695
    const-string v13, "UserManagerService"

    const-string v17, "UserInfo for parent is null, hence exiting container creation!"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/4 v12, 0x0

    monitor-exit v16
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_105

    :try_start_61
    monitor-exit v15
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_108

    :try_start_62
    monitor-exit v14
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_10b

    .line 1736
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    .line 1699
    :cond_67
    const/4 v13, 0x1

    :try_start_68
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v13, v1}, getNextAvailableIdLocked(ZZ)I

    move-result v10

    .line 1700
    .local v10, "userId":I
    new-instance v12, Landroid/content/pm/UserInfo;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-direct {v12, v10, v0, v13, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_105

    .line 1702
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_78
    iput v10, v12, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1704
    .local v6, "now":J
    const-wide v18, 0xdc46c32800L

    cmp-long v13, v6, v18

    if-lez v13, :cond_102

    .end local v6    # "now":J
    :goto_87
    iput-wide v6, v12, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1705
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/content/pm/UserInfo;->partial:Z

    .line 1706
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 1707
    move-object/from16 v0, p0

    iget-object v13, v0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v13, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1708
    invoke-direct/range {p0 .. p0}, writeUserListLocked()V

    .line 1709
    if-eqz v8, :cond_b6

    .line 1710
    iget v13, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_b2

    .line 1711
    iget v13, v8, Landroid/content/pm/UserInfo;->id:I

    iput v13, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1712
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1714
    :cond_b2
    iget v13, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v13, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1716
    :cond_b6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1717
    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/content/pm/UserInfo;->partial:Z

    .line 1718
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1719
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, updateUserIdsLocked(Z)V

    .line 1722
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1723
    .local v2, "emptyBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v13, v10, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1725
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1727
    .local v9, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v13, "no_outgoing_beam"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v13, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1728
    const-string/jumbo v13, "no_add_user"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v13, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1729
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, setKnoxRestrictions(Landroid/os/Bundle;I)V

    .line 1731
    monitor-exit v16
    :try_end_f4
    .catchall {:try_start_78 .. :try_end_f4} :catchall_11c

    .line 1732
    :try_start_f4
    monitor-exit v15
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_119

    .line 1733
    :try_start_f5
    monitor-exit v14
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_116

    .line 1734
    :try_start_f6
    move-object/from16 v0, p0

    iget-object v13, v0, mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13, v10}, Lcom/android/server/pm/PackageManagerService;->newUserCreated(I)V
    :try_end_fd
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_113

    .line 1736
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_f

    .line 1704
    .end local v2    # "emptyBundle":Landroid/os/Bundle;
    .end local v9    # "restrictions":Landroid/os/Bundle;
    .restart local v6    # "now":J
    :cond_102
    const-wide/16 v6, 0x0

    goto :goto_87

    .line 1731
    .end local v6    # "now":J
    .end local v10    # "userId":I
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_105
    move-exception v13

    :goto_106
    :try_start_106
    monitor-exit v16
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    :try_start_107
    throw v13

    .line 1732
    .end local v8    # "parent":Landroid/content/pm/UserInfo;
    :catchall_108
    move-exception v13

    :goto_109
    monitor-exit v15
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_108

    :try_start_10a
    throw v13

    .line 1733
    :catchall_10b
    move-exception v13

    :goto_10c
    monitor-exit v14
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10b

    :try_start_10d
    throw v13
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10e

    .line 1736
    :catchall_10e
    move-exception v13

    :goto_10f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v2    # "emptyBundle":Landroid/os/Bundle;
    .restart local v8    # "parent":Landroid/content/pm/UserInfo;
    .restart local v9    # "restrictions":Landroid/os/Bundle;
    .restart local v10    # "userId":I
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_113
    move-exception v13

    move-object v11, v12

    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_10f

    .line 1733
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_116
    move-exception v13

    move-object v11, v12

    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_10c

    .line 1732
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_119
    move-exception v13

    move-object v11, v12

    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_109

    .line 1731
    .end local v2    # "emptyBundle":Landroid/os/Bundle;
    .end local v9    # "restrictions":Landroid/os/Bundle;
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_11c
    move-exception v13

    move-object v11, v12

    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_106
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1546
    const-string v0, "Only the system can create users"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1547
    if-eqz p3, :cond_10

    .line 1548
    const-string v0, "UserManagerService"

    const-string v1, "Only user owner can have profiles"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/4 v0, 0x0

    .line 1551
    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0, p1, p2, p3}, createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_f
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1556
    const-string v4, "Only the system can create users"

    invoke-static {v4}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1557
    const/high16 v4, 0x10000

    and-int/2addr v4, p2

    if-eqz v4, :cond_24

    move v0, v2

    .line 1558
    .local v0, "isBMode":Z
    :goto_e
    if-eqz v0, :cond_3d

    .line 1559
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1560
    const-string v2, "UserManagerService"

    const-string v3, "Cannot add BMode user. SUPPORTTWOPHONESERVICE is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_23
    :goto_23
    return-object v1

    .end local v0    # "isBMode":Z
    :cond_24
    move v0, v3

    .line 1557
    goto :goto_e

    .line 1563
    .restart local v0    # "isBMode":Z
    :cond_26
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1564
    const-string/jumbo v3, "persist.sys.show_multiuserui"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string/jumbo v3, "persist.sys.max_users"

    const-string v4, "2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_3d
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1574
    const/16 v1, -0x2710

    invoke-direct {p0, p1, p2, v1}, createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v1

    goto :goto_23
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 2508
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_41

    .line 2510
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump UserManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2549
    :goto_40
    return-void

    .line 2518
    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2519
    .local v2, "now":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2520
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2521
    :try_start_4d
    const-string v5, "Users:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2522
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_53
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_e5

    .line 2523
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2524
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_68

    .line 2522
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 2525
    :cond_68
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " serialNo="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2526
    iget-object v5, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    const-string v5, " <removing> "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2527
    :cond_8d
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_96

    const-string v5, " <partial>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2528
    :cond_96
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2529
    const-string v5, "    Created: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2530
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_bd

    .line 2531
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    :goto_a9
    const-string v5, "    Last logged in: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_d1

    .line 2540
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_65

    .line 2548
    .end local v0    # "i":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_ba
    move-exception v5

    monitor-exit v6
    :try_end_bc
    .catchall {:try_start_4d .. :try_end_bc} :catchall_ba

    throw v5

    .line 2533
    .restart local v0    # "i":I
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_bd
    const/4 v5, 0x0

    :try_start_be
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2534
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v8, v2, v8

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2535
    const-string v5, " ago"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a9

    .line 2542
    :cond_d1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2543
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v8, v2, v8

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2544
    const-string v5, " ago"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_65

    .line 2548
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_e5
    monitor-exit v6
    :try_end_e6
    .catchall {:try_start_be .. :try_end_e6} :catchall_ba

    goto/16 :goto_40
.end method

.method public exists(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 526
    iget-object v1, p0, mUserExistsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_3
    iget-object v0, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 528
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "does not exists!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v0, 0x0

    monitor-exit v1

    .line 531
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_2c

    .line 532
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0
.end method

.method finishRemoveUser(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    .line 1934
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finishRemoveUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1939
    .local v10, "ident":J
    :try_start_1d
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1940
    .local v1, "addedIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1941
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1942
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG_USER] broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    new-instance v4, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_58
    .catchall {:try_start_1d .. :try_end_58} :catchall_5c

    .line 1970
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1972
    return-void

    .line 1970
    .end local v1    # "addedIntent":Landroid/content/Intent;
    :catchall_5c
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2028
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2033
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-ne v1, p2, :cond_14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p1}, getUidForPackage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2035
    :cond_14
    const-string v1, "Only system can get restrictions for other users/apps"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 2037
    :cond_19
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2039
    :try_start_1c
    invoke-direct {p0, p2}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2040
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2041
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v2

    .line 2045
    :goto_2b
    return-object v1

    :cond_2c
    invoke-direct {p0, p1, p2}, readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v2

    goto :goto_2b

    .line 2046
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 429
    const-string/jumbo v1, "get the credential owner"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 432
    :try_start_9
    invoke-direct {p0, p1}, getProfileParentLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 433
    .local v0, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_13

    .line 434
    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    .end local p1    # "userHandle":I
    monitor-exit v2

    .line 439
    :goto_12
    return p1

    .line 436
    .restart local p1    # "userHandle":I
    :cond_13
    monitor-exit v2

    goto :goto_12

    .end local v0    # "profileParent":Landroid/content/pm/UserInfo;
    .end local p1    # "userHandle":I
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 648
    const-string/jumbo v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_9
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v1

    return-object v0

    .line 651
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 444
    const-string/jumbo v0, "get the profile parent"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_9
    invoke-direct {p0, p1}, getProfileParentLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 447
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p1, v2, :cond_1d

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getting profiles related to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 393
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 395
    .local v0, "ident":J
    :try_start_21
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_30

    .line 396
    :try_start_24
    invoke-direct {p0, p1, p2}, getProfilesLocked(IZ)Ljava/util/List;

    move-result-object v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2d

    .line 399
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 397
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 399
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getUserCreationTime(I)J
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 2326
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2327
    .local v0, "callingUserId":I
    const/4 v2, 0x0

    .line 2328
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2329
    if-ne v0, p1, :cond_1a

    .line 2330
    :try_start_a
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2337
    :cond_e
    :goto_e
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_29

    .line 2338
    if-nez v2, :cond_2c

    .line 2339
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2332
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1}, getProfileParentLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2333
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_e

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v0, :cond_e

    .line 2334
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_e

    .line 2337
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_29

    throw v3

    .line 2342
    :cond_2c
    iget-wide v4, v2, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v4
.end method

.method public getUserHandle(I)I
    .registers 9
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 2314
    iget-object v6, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2315
    :try_start_3
    iget-object v0, p0, mUserIds:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v3, :cond_1a

    aget v4, v0, v1

    .line 2316
    .local v4, "userId":I
    invoke-direct {p0, v4}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2317
    .local v2, "info":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_17

    iget v5, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v5, p1, :cond_17

    monitor-exit v6

    .line 2320
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    :goto_16
    return v4

    .line 2315
    .restart local v2    # "info":Landroid/content/pm/UserInfo;
    .restart local v4    # "userId":I
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2320
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    :cond_1a
    const/4 v4, -0x1

    monitor-exit v6

    goto :goto_16

    .line 2321
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_1d
    move-exception v5

    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v5
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 594
    iget-object v6, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 595
    :try_start_4
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 596
    .local v3, "info":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_12

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_2e

    .line 597
    :cond_12
    const-string v4, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getUserIcon: unknown user #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    monitor-exit v6

    move-object v4, v5

    .line 617
    :goto_2d
    return-object v4

    .line 600
    :cond_2e
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v0, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 601
    .local v0, "callingGroupId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_43

    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, v4, :cond_49

    .line 603
    :cond_43
    const-string/jumbo v4, "get the icon of a user who is not related"

    invoke-static {v4}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 605
    :cond_49
    iget-object v4, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v4, :cond_50

    .line 606
    monitor-exit v6

    move-object v4, v5

    goto :goto_2d

    .line 608
    :cond_50
    iget-object v2, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 609
    .local v2, "iconPath":Ljava/lang/String;
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_5f

    .line 612
    :try_start_53
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-static {v4, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_5d} :catch_62

    move-result-object v4

    goto :goto_2d

    .line 609
    .end local v0    # "callingGroupId":I
    .end local v2    # "iconPath":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :catchall_5f
    move-exception v4

    :try_start_60
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v4

    .line 614
    .restart local v0    # "callingGroupId":I
    .restart local v2    # "iconPath":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/UserInfo;
    :catch_62
    move-exception v1

    .line 615
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "UserManagerService"

    const-string v6, "Couldn\'t find icon file"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 617
    goto :goto_2d
.end method

.method public getUserIconForBitmap(I)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2585
    iget-object v6, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2586
    :try_start_4
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2587
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_12

    iget-boolean v4, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_2e

    .line 2588
    :cond_12
    const-string v4, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getUserIcon: unknown user #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    monitor-exit v6

    move-object v4, v5

    .line 2619
    :goto_2d
    return-object v4

    .line 2591
    :cond_2e
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v0, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2592
    .local v0, "callingGroupId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_43

    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, v4, :cond_49

    .line 2594
    :cond_43
    const-string/jumbo v4, "get the icon of a user who is not related"

    invoke-static {v4}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 2596
    :cond_49
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 2597
    .local v3, "totalUserCount":I
    const/4 v2, 0x0

    .line 2598
    .local v2, "isBModeUserExist":Z
    invoke-direct {p0}, findCurrentBModeUserLocked()Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 2599
    const/4 v2, 0x1

    .line 2601
    :cond_57
    iget-object v4, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v4, :cond_102

    .line 2602
    if-eqz v2, :cond_d2

    if-eqz v1, :cond_d2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-nez v4, :cond_6b

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 2603
    :cond_6b
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 2604
    const-string v4, "UserIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user Id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "primary user in BMode"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconForBMode(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    monitor-exit v6

    goto :goto_2d

    .line 2618
    .end local v0    # "callingGroupId":I
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    .end local v2    # "isBModeUserExist":Z
    .end local v3    # "totalUserCount":I
    :catchall_9d
    move-exception v4

    monitor-exit v6
    :try_end_9f
    .catchall {:try_start_4 .. :try_end_9f} :catchall_9d

    throw v4

    .line 2606
    .restart local v0    # "callingGroupId":I
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    .restart local v2    # "isBModeUserExist":Z
    .restart local v3    # "totalUserCount":I
    :cond_a0
    :try_start_a0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 2607
    const-string v4, "UserIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user Id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "BMode user in BMode"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconForBMode(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    monitor-exit v6

    goto/16 :goto_2d

    .line 2612
    :cond_d2
    const-string v4, "UserIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user Id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "load Default User Icon"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    monitor-exit v6

    goto/16 :goto_2d

    .line 2616
    :cond_fe
    monitor-exit v6

    move-object v4, v5

    goto/16 :goto_2d

    .line 2618
    :cond_102
    monitor-exit v6
    :try_end_103
    .catchall {:try_start_a0 .. :try_end_103} :catchall_9d

    move-object v4, v5

    .line 2619
    goto/16 :goto_2d
.end method

.method public getUserIds()[I
    .registers 3

    .prologue
    .line 888
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 889
    :try_start_3
    iget-object v0, p0, mUserIds:[I

    monitor-exit v1

    return-object v0

    .line 890
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getUserIds(Z)[I
    .registers 15
    .param p1, "excludeDying"    # Z

    .prologue
    .line 896
    if-nez p1, :cond_7

    .line 897
    invoke-virtual {p0}, getUserIds()[I

    move-result-object v8

    .line 920
    :cond_6
    return-object v8

    .line 899
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v0, "finalUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v10, p0, sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v10, :cond_32

    .line 901
    iget-object v10, p0, sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v7

    .line 902
    .local v7, "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    .line 903
    .local v6, "pInfo":Landroid/content/pm/PersonaInfo;
    new-instance v10, Ljava/lang/Integer;

    iget v11, v6, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 906
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_32
    iget-object v11, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 907
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    :try_start_36
    iget-object v10, p0, mUserIds:[I

    array-length v10, v10

    if-ge v1, v10, :cond_5a

    .line 908
    iget-object v10, p0, mUserIds:[I

    aget v9, v10, v1

    .line 910
    .local v9, "userId":I
    const/16 v10, 0x64

    if-lt v9, v10, :cond_4a

    const/16 v10, 0xc8

    if-gt v9, v10, :cond_4a

    .line 907
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 912
    :cond_4a
    new-instance v10, Ljava/lang/Integer;

    iget-object v12, p0, mUserIds:[I

    aget v12, v12, v1

    invoke-direct {v10, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 914
    .end local v9    # "userId":I
    :catchall_57
    move-exception v10

    monitor-exit v11
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_57

    throw v10

    :cond_5a
    :try_start_5a
    monitor-exit v11
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    .line 915
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v8, v10, [I

    .line 916
    .local v8, "uIds":[I
    const/4 v4, 0x0

    .line 917
    .local v4, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 918
    .local v3, "id":Ljava/lang/Integer;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v4

    move v4, v5

    .line 919
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_66
.end method

.method getUserIdsLPr()[I
    .registers 2

    .prologue
    .line 926
    iget-object v0, p0, mUserIds:[I

    return-object v0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 498
    const-string/jumbo v0, "query user"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, mUserExistsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 500
    :try_start_9
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 501
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 676
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 677
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 678
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 683
    :goto_e
    return-object v2

    .line 681
    :cond_f
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 682
    :try_start_12
    iget-object v2, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 683
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_26

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_21
    monitor-exit v3

    goto :goto_e

    .line 684
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw v2

    .line 683
    .restart local v0    # "restrictions":Landroid/os/Bundle;
    :cond_26
    :try_start_26
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    goto :goto_21
.end method

.method public getUserSerialNumber(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 2306
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2307
    :try_start_3
    invoke-virtual {p0, p1}, exists(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, -0x1

    monitor-exit v1

    .line 2308
    :goto_b
    return v0

    :cond_c
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    monitor-exit v1

    goto :goto_b

    .line 2309
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 8
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    const-string/jumbo v3, "query users"

    invoke-static {v3}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 374
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3f

    .line 376
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 377
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_2c

    .line 375
    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 380
    :cond_2c
    if-eqz p1, :cond_38

    iget-object v3, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 381
    :cond_38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 385
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_3c
    move-exception v3

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw v3

    .line 384
    .restart local v0    # "i":I
    .restart local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_3f
    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    return-object v2
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 666
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 667
    :try_start_3
    iget-object v1, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 668
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_14
    monitor-exit v2

    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_14

    .line 669
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method isGuest(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2579
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 2580
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    return v1
.end method

.method isInitialized(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2574
    invoke-virtual {p0, p1}, getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isRestricted()Z
    .registers 3

    .prologue
    .line 506
    iget-object v1, p0, mUserExistsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 508
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public makeInitialized(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 621
    const-string/jumbo v1, "makeInitialized"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 623
    :try_start_9
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 624
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_17

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_32

    .line 625
    :cond_17
    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    monitor-exit v2

    .line 633
    :goto_31
    return-void

    .line 628
    :cond_32
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_41

    .line 629
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 630
    invoke-direct {p0, v0}, scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 632
    :cond_41
    monitor-exit v2

    goto :goto_31

    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_43
    move-exception v1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public markGuestForDeletion(I)Z
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1794
    const-string v5, "Only the system can remove users"

    invoke-static {v5}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1795
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {p0, v5}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "no_remove_user"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1797
    const-string v4, "UserManagerService"

    const-string v5, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :goto_1f
    return v3

    .line 1801
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1804
    .local v0, "ident":J
    :try_start_24
    iget-object v5, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_60

    .line 1805
    :try_start_27
    iget-object v6, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1806
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_3b

    if-eqz v2, :cond_3b

    iget-object v6, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1807
    :cond_3b
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_5d

    .line 1824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 1809
    :cond_40
    :try_start_40
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 1810
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_5d

    .line 1824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 1817
    :cond_4b
    const/4 v3, 0x1

    :try_start_4c
    iput-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 1820
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1821
    invoke-direct {p0, v2}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1822
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_5d

    .line 1824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    .line 1826
    goto :goto_1f

    .line 1822
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 1824
    :catchall_60
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public onUserForeground(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 2378
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2379
    :try_start_3
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2380
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2381
    .local v0, "now":J
    if-eqz v2, :cond_15

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_30

    .line 2382
    :cond_15
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userForeground: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    monitor-exit v4

    .line 2390
    :goto_2f
    return-void

    .line 2385
    :cond_30
    const-wide v6, 0xdc46c32800L

    cmp-long v3, v0, v6

    if-lez v3, :cond_3e

    .line 2386
    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2387
    invoke-direct {p0, v2}, scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 2389
    :cond_3e
    monitor-exit v4

    goto :goto_2f

    .end local v0    # "now":J
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_40
    move-exception v3

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v3
.end method

.method public removeRestrictions()V
    .registers 3

    .prologue
    .line 2082
    const-string v1, "Only system can remove restrictions"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 2083
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2084
    .local v0, "userHandle":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, removeRestrictionsForUser(IZ)V

    .line 2085
    return-void
.end method

.method public removeUser(I)Z
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1835
    const-string v9, "Only the system can remove users"

    invoke-static {v9}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1836
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-virtual {p0, v9}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "no_remove_user"

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 1838
    const-string v7, "UserManagerService"

    const-string v9, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :goto_1f
    return v8

    .line 1842
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1845
    .local v4, "ident":J
    :try_start_24
    iget-object v9, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_e9

    .line 1846
    :try_start_27
    iget-object v10, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1847
    .local v6, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_3b

    if-eqz v6, :cond_3b

    iget-object v10, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 1848
    :cond_3b
    monitor-exit v9
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_e6

    .line 1929
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 1853
    :cond_40
    :try_start_40
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-nez v10, :cond_65

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v10

    if-eqz v10, :cond_60

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v10

    if-nez v10, :cond_65

    .line 1856
    :cond_60
    monitor-exit v9
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_e6

    .line 1929
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 1862
    :cond_65
    :try_start_65
    iget-object v10, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_e6

    .line 1865
    :try_start_6b
    iget-object v10, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v10, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_70} :catch_dd
    .catchall {:try_start_6b .. :try_end_70} :catchall_e6

    .line 1872
    :goto_70
    const/4 v10, 0x1

    :try_start_71
    iput-boolean v10, v6, Landroid/content/pm/UserInfo;->partial:Z

    .line 1875
    iget v10, v6, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 1876
    invoke-direct {p0, v6}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1877
    monitor-exit v9
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_e6

    .line 1879
    :try_start_7d
    iget v9, v6, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8f

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 1883
    iget v9, v6, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v10, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9, v10}, sendProfileRemovedBroadcast(II)V

    .line 1886
    :cond_8f
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v9

    if-eqz v9, :cond_c9

    .line 1887
    invoke-direct {p0}, getAliveUsersExcludingGuestsCountLocked()I

    move-result v9

    if-ne v9, v7, :cond_c9

    .line 1888
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0085

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1890
    .local v1, "config_MaxUsers":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1120078

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1892
    .local v0, "config_EnableUI":Z
    const-string/jumbo v9, "persist.sys.show_multiuserui"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const-string/jumbo v9, "persist.sys.max_users"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    .end local v0    # "config_EnableUI":Z
    .end local v1    # "config_MaxUsers":I
    :cond_c9
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 1897
    new-instance v8, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService$1;->start()V
    :try_end_d7
    .catchall {:try_start_7d .. :try_end_d7} :catchall_e9

    .line 1929
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v7

    goto/16 :goto_1f

    .line 1866
    :catch_dd
    move-exception v2

    .line 1867
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_de
    const-string v10, "UserManagerService"

    const-string v11, "Unable to notify AppOpsService of removing user"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 1877
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :catchall_e6
    move-exception v7

    monitor-exit v9
    :try_end_e8
    .catchall {:try_start_de .. :try_end_e8} :catchall_e6

    :try_start_e8
    throw v7
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e9

    .line 1929
    :catchall_e9
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 1911
    .restart local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_ee
    :try_start_ee
    const-string v9, "UserManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stopping user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catchall {:try_start_ee .. :try_end_106} :catchall_e9

    .line 1914
    :try_start_106
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    new-instance v10, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v10, p0}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v9, p1, v10}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_112} :catch_11b
    .catchall {:try_start_106 .. :try_end_112} :catchall_e9

    move-result v3

    .line 1927
    .local v3, "res":I
    if-nez v3, :cond_121

    .line 1929
    :goto_115
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v7

    goto/16 :goto_1f

    .line 1924
    .end local v3    # "res":I
    :catch_11b
    move-exception v2

    .line 1929
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1f

    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "res":I
    :cond_121
    move v7, v8

    .line 1927
    goto :goto_115
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 2052
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v2, p3, :cond_14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p1}, getUidForPackage(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_19

    .line 2054
    :cond_14
    const-string v2, "Only system can set restrictions for other users/apps"

    invoke-static {v2}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 2056
    :cond_19
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2057
    if-eqz p2, :cond_24

    :try_start_1e
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2058
    :cond_24
    invoke-direct {p0, p1, p3}, cleanAppRestrictionsForPackage(Ljava/lang/String;I)V

    .line 2069
    :goto_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_56

    .line 2071
    invoke-direct {p0, p1, p3}, isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2073
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2074
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2075
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2076
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2078
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :cond_47
    :goto_47
    return-void

    .line 2061
    :cond_48
    :try_start_48
    invoke-direct {p0, p3}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2062
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 2063
    monitor-exit v3

    goto :goto_47

    .line 2069
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :catchall_56
    move-exception v2

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_56

    throw v2

    .line 2067
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_59
    :try_start_59
    invoke-direct {p0, p1, p2, p3}, writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_56

    goto :goto_27
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 656
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_9
    iget-object v0, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 659
    iget-object v0, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 660
    invoke-direct {p0}, writeUserListLocked()V

    .line 661
    monitor-exit v1

    .line 662
    return-void

    .line 661
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setKnoxRestrictions(Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 752
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " set knox restrictions for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    if-nez p1, :cond_23

    .line 755
    const-string v3, "UserManagerService"

    const-string/jumbo v4, "null restrictions for setKnoxRestrictions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :goto_22
    return-void

    .line 758
    :cond_23
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 759
    :try_start_26
    iget-object v3, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 761
    .local v2, "oldUserRestrictions":Landroid/os/Bundle;
    sget-object v3, SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 762
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 764
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_34

    .line 768
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "oldUserRestrictions":Landroid/os/Bundle;
    :catchall_51
    move-exception v3

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_26 .. :try_end_53} :catchall_51

    throw v3

    .line 767
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "oldUserRestrictions":Landroid/os/Bundle;
    :cond_54
    :try_start_54
    invoke-direct {p0, p1, p2}, setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V

    .line 768
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_51

    goto :goto_22
.end method

.method public setSystemControlledUserRestriction(Ljava/lang/String;ZI)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 708
    const-string/jumbo v2, "setSystemControlledUserRestriction"

    invoke-static {v2}, checkSystemOrRoot(Ljava/lang/String;)V

    .line 710
    invoke-direct {p0, p3}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 711
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 721
    :goto_12
    return-void

    .line 716
    :cond_13
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 717
    :try_start_16
    invoke-virtual {p0, p3}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 718
    .local v0, "restrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 719
    invoke-direct {p0, v0, p3}, setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V

    .line 720
    monitor-exit v3

    goto :goto_12

    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public setUserCCMProvisioned(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 473
    const-string v1, "ccm provisioned"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 475
    :try_start_8
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 476
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_14

    .line 477
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    .line 478
    invoke-direct {p0, v0}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 480
    :cond_14
    monitor-exit v2

    .line 481
    return-void

    .line 480
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setUserEnabled(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 486
    const-string/jumbo v1, "enable user"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 488
    :try_start_9
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 489
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 490
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 491
    invoke-direct {p0, v0}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 493
    :cond_1e
    monitor-exit v2

    .line 494
    return-void

    .line 493
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 562
    const-string/jumbo v4, "update users"

    invoke-static {v4}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 563
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 564
    .local v3, "uid":I
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserIcon for user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 567
    .local v0, "ident":J
    :try_start_31
    iget-object v5, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_71

    .line 568
    :try_start_34
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 569
    .local v2, "info":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_42

    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_60

    .line 570
    :cond_42
    const-string v4, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setUserIcon: unknown user #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_34 .. :try_end_5c} :catchall_6e

    .line 578
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    :goto_5f
    return-void

    .line 573
    :cond_60
    :try_start_60
    invoke-direct {p0, v2, p2}, writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 574
    invoke-direct {p0, v2}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 575
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_6e

    .line 576
    :try_start_67
    invoke-direct {p0, p1}, sendUserInfoChangedBroadcast(I)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_71

    .line 578
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5f

    .line 575
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_6e
    move-exception v4

    :try_start_6f
    monitor-exit v5
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw v4
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    .line 578
    :catchall_71
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 537
    const/16 v2, 0x64

    if-lt p1, v2, :cond_21

    const/16 v2, 0xc8

    if-gt p1, v2, :cond_21

    .line 538
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not change username for this user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_20
    :goto_20
    return-void

    .line 541
    :cond_21
    const-string/jumbo v2, "rename users"

    invoke-static {v2}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "changed":Z
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 544
    :try_start_2b
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 545
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_39

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_57

    .line 546
    :cond_39
    const-string v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    monitor-exit v3

    goto :goto_20

    .line 554
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_54

    throw v2

    .line 549
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_57
    if-eqz p2, :cond_67

    :try_start_59
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 550
    iput-object p2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 551
    invoke-direct {p0, v1}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 552
    const/4 v0, 0x1

    .line 554
    :cond_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_54

    .line 555
    if-eqz v0, :cond_20

    .line 556
    invoke-direct {p0, p1}, sendUserInfoChangedBroadcast(I)V

    goto :goto_20
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 689
    const-string/jumbo v2, "setUserRestriction"

    invoke-static {v2}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 691
    invoke-direct {p0, p3}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 692
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 704
    :goto_12
    return-void

    .line 697
    :cond_13
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 698
    :try_start_16
    sget-object v2, SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 699
    invoke-virtual {p0, p3}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 700
    .local v0, "restrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 701
    invoke-direct {p0, v0, p3}, setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V

    .line 703
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :cond_28
    monitor-exit v3

    goto :goto_12

    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 725
    const-string/jumbo v4, "setUserRestrictions"

    invoke-static {v4}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 726
    if-nez p1, :cond_9

    .line 744
    :cond_8
    :goto_8
    return-void

    .line 728
    :cond_9
    invoke-direct {p0, p2}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 729
    .local v3, "ui":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_8

    .line 733
    :cond_15
    iget-object v5, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 734
    :try_start_18
    iget-object v4, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 736
    .local v2, "oldUserRestrictions":Landroid/os/Bundle;
    sget-object v4, SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 737
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 739
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_26

    .line 743
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "oldUserRestrictions":Landroid/os/Bundle;
    :catchall_43
    move-exception v4

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_18 .. :try_end_45} :catchall_43

    throw v4

    .line 742
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "oldUserRestrictions":Landroid/os/Bundle;
    :cond_46
    :try_start_46
    invoke-direct {p0, p1, p2}, setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V

    .line 743
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_43

    goto :goto_8
.end method

.method systemReady()V
    .registers 11

    .prologue
    .line 314
    iget-object v5, p0, mInstallLock:Ljava/lang/Object;

    monitor-enter v5

    .line 315
    :try_start_3
    iget-object v6, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a7

    .line 316
    :try_start_6
    iget-object v7, p0, mUserExistsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a4

    .line 318
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v2, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 320
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 321
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_27

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v4, :cond_2c

    :cond_27
    if-eqz v1, :cond_2c

    .line 322
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 325
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_2f
    const/4 v1, 0x0

    :goto_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_70

    .line 326
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 327
    .restart local v3    # "ui":Landroid/content/pm/UserInfo;
    const-string v4, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing partially created user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, removeUserStateLocked(I)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 331
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_70
    monitor-exit v7
    :try_end_71
    .catchall {:try_start_9 .. :try_end_71} :catchall_a1

    .line 332
    :try_start_71
    monitor-exit v6
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_a4

    .line 333
    :try_start_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_a7

    .line 334
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, onUserForeground(I)V

    .line 335
    const-string v4, "appops"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v4

    iput-object v4, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 337
    const/4 v1, 0x0

    :goto_84
    iget-object v4, p0, mUserIds:[I

    array-length v4, v4

    if-ge v1, v4, :cond_b3

    .line 339
    :try_start_89
    iget-object v5, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v4, p0, mUserRestrictions:Landroid/util/SparseArray;

    iget-object v6, p0, mUserIds:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iget-object v6, p0, mUserIds:[I

    aget v6, v6, v1

    invoke-interface {v5, v4, v6}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_9e} :catch_aa

    .line 337
    :goto_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 331
    .end local v1    # "i":I
    .end local v2    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_a1
    move-exception v4

    :try_start_a2
    monitor-exit v7
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v4

    .line 332
    :catchall_a4
    move-exception v4

    monitor-exit v6
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a4

    :try_start_a6
    throw v4

    .line 333
    :catchall_a7
    move-exception v4

    monitor-exit v5
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_a7

    throw v4

    .line 340
    .restart local v1    # "i":I
    .restart local v2    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catch_aa
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "UserManagerService"

    const-string v5, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 344
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b3
    return-void
.end method
