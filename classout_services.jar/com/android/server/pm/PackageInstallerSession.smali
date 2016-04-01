.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# static fields
.field private static final LOGD:Z = true

.field private static final MSG_COMMIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"


# instance fields
.field final createdMillis:J

.field final installerPackageName:Ljava/lang/String;

.field final installerUid:I

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBridges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private mClientProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;

.field private mFinalStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mInheritedFilesBase:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInternalProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIsInstallerDeviceOwner:Z

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionsAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRelinquished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mReportedProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mResolvedBaseFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolvedStageDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSignatures:[Landroid/content/pm/Signature;

.field private mVersionCode:I

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V
    .registers 20
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "sessionId"    # I
    .param p6, "userId"    # I
    .param p7, "installerPackageName"    # Ljava/lang/String;
    .param p8, "installerUid"    # I
    .param p9, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p10, "createdMillis"    # J
    .param p12, "stageDir"    # Ljava/io/File;
    .param p13, "stageCid"    # Ljava/lang/String;
    .param p14, "prepared"    # Z
    .param p15, "sealed"    # Z

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 111
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 113
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mLock:Ljava/lang/Object;

    .line 115
    const/4 v2, 0x0

    iput v2, p0, mClientProgress:F

    .line 117
    const/4 v2, 0x0

    iput v2, p0, mInternalProgress:F

    .line 120
    const/4 v2, 0x0

    iput v2, p0, mProgress:F

    .line 122
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, mReportedProgress:F

    .line 125
    const/4 v2, 0x0

    iput-boolean v2, p0, mPrepared:Z

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, mSealed:Z

    .line 129
    const/4 v2, 0x0

    iput-boolean v2, p0, mPermissionsAccepted:Z

    .line 131
    const/4 v2, 0x0

    iput-boolean v2, p0, mRelinquished:Z

    .line 133
    const/4 v2, 0x0

    iput-boolean v2, p0, mDestroyed:Z

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mBridges:Ljava/util/ArrayList;

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mResolvedStagedFiles:Ljava/util/List;

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mResolvedInheritedFiles:Ljava/util/List;

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mResolvedInstructionSets:Ljava/util/List;

    .line 173
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v2, p0, mHandlerCallback:Landroid/os/Handler$Callback;

    .line 199
    iput-object p1, p0, mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 200
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 201
    iput-object p3, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    .line 202
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, p4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 204
    iput p5, p0, sessionId:I

    .line 205
    iput p6, p0, userId:I

    .line 206
    iput-object p7, p0, installerPackageName:Ljava/lang/String;

    .line 207
    iput p8, p0, installerUid:I

    .line 208
    iput-object p9, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 209
    iput-wide p10, p0, createdMillis:J

    .line 210
    move-object/from16 v0, p12

    iput-object v0, p0, stageDir:Ljava/io/File;

    .line 211
    move-object/from16 v0, p13

    iput-object v0, p0, stageCid:Ljava/lang/String;

    .line 213
    if-nez p12, :cond_84

    const/4 v2, 0x1

    move v3, v2

    :goto_77
    if-nez p13, :cond_87

    const/4 v2, 0x1

    :goto_7a
    if-ne v3, v2, :cond_89

    .line 214
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_84
    const/4 v2, 0x0

    move v3, v2

    goto :goto_77

    :cond_87
    const/4 v2, 0x0

    goto :goto_7a

    .line 218
    :cond_89
    move/from16 v0, p14

    iput-boolean v0, p0, mPrepared:Z

    .line 219
    move/from16 v0, p15

    iput-boolean v0, p0, mSealed:Z

    .line 223
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 225
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_bb

    invoke-virtual {v1, p7}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    const/4 v2, 0x1

    :goto_a5
    iput-boolean v2, p0, mIsInstallerDeviceOwner:Z

    .line 226
    iget-object v2, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v2, v3, p8}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b7

    if-eqz p8, :cond_b7

    iget-boolean v2, p0, mIsInstallerDeviceOwner:Z

    if-eqz v2, :cond_bd

    .line 230
    :cond_b7
    const/4 v2, 0x1

    iput-boolean v2, p0, mPermissionsAccepted:Z

    .line 234
    :goto_ba
    return-void

    .line 225
    :cond_bb
    const/4 v2, 0x0

    goto :goto_a5

    .line 232
    :cond_bd
    const/4 v2, 0x0

    iput-boolean v2, p0, mPermissionsAccepted:Z

    goto :goto_ba
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 85
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # Landroid/content/pm/IPackageInstallObserver2;

    .prologue
    .line 85
    iput-object p1, p0, mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, commitLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 85
    invoke-direct {p0}, destroyInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "apk"    # Landroid/content/pm/PackageParser$ApkLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x2

    .line 739
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 740
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inconsistent with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 743
    :cond_36
    iget v0, p0, mVersionCode:I

    iget v1, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-eq v0, v1, :cond_67

    .line 744
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inconsistent with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 748
    :cond_67
    iget-object v0, p0, mSignatures:[Landroid/content/pm/Signature;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 749
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signatures are inconsistent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 752
    :cond_8a
    return-void
.end method

.method private assertPreparedAndNotSealed(Ljava/lang/String;)V
    .registers 6
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_3
    iget-boolean v0, p0, mPrepared:Z

    if-nez v0, :cond_23

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before prepared"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0

    .line 273
    :cond_23
    :try_start_23
    iget-boolean v0, p0, mSealed:Z

    if-eqz v0, :cond_40

    .line 274
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed after commit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_20

    .line 277
    return-void
.end method

.method private calculateInstalledSize()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 759
    iget-object v3, p0, mResolvedBaseFile:Ljava/io/File;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    :try_start_7
    iget-object v3, p0, mResolvedBaseFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_d
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_7 .. :try_end_d} :catch_35

    move-result-object v2

    .line 768
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v10, "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 770
    .local v7, "file":Ljava/io/File;
    iget-object v3, p0, mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v3, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 771
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 764
    .end local v2    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_35
    move-exception v6

    .line 765
    .local v6, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1

    .line 773
    .end local v6    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v2    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3b
    iget-object v3, p0, mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_41
    :goto_41
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 774
    .restart local v7    # "file":Ljava/io/File;
    iget-object v3, p0, mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v3, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 775
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 780
    .end local v7    # "file":Ljava/io/File;
    :cond_5d
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 782
    .local v0, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v1, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_79

    const/4 v9, 0x1

    .line 786
    .local v9, "isForwardLocked":Z
    :cond_79
    :try_start_79
    iget-object v1, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {v0, v9, v1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_80} :catch_82

    move-result-wide v4

    return-wide v4

    .line 787
    :catch_82
    move-exception v6

    .line 788
    .local v6, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v3, -0x2

    const-string v4, "Failed to calculate install size"

    invoke-direct {v1, v3, v4, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private commitLocked()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-boolean v2, v0, mDestroyed:Z

    if-eqz v2, :cond_10

    .line 466
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x6e

    const-string v4, "Session destroyed"

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 468
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, mSealed:Z

    if-nez v2, :cond_20

    .line 469
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x6e

    const-string v4, "Session not sealed"

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 473
    :cond_20
    :try_start_20
    invoke-direct/range {p0 .. p0}, resolveStageDir()Ljava/io/File;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_6b

    .line 482
    invoke-direct/range {p0 .. p0}, validateInstallLocked()V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, mResolvedBaseFile:Ljava/io/File;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    move-object/from16 v0, p0

    iget-boolean v2, v0, mPermissionsAccepted:Z

    if-nez v2, :cond_76

    .line 491
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.content.pm.action.CONFIRM_PERMISSIONS"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v2, "android.content.pm.extra.SESSION_ID"

    move-object/from16 v0, p0

    iget v3, v0, sessionId:I

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    :try_start_60
    move-object/from16 v0, p0

    iget-object v2, v0, mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-interface {v2, v15}, Landroid/content/pm/IPackageInstallObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_67} :catch_17e

    .line 501
    :goto_67
    invoke-virtual/range {p0 .. p0}, close()V

    .line 580
    .end local v15    # "intent":Landroid/content/Intent;
    :goto_6a
    return-void

    .line 474
    :catch_6b
    move-exception v11

    .line 475
    .local v11, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x12

    const-string v4, "Failed to resolve stage location"

    invoke-direct {v2, v3, v4, v11}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 505
    .end local v11    # "e":Ljava/io/IOException;
    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, stageCid:Ljava/lang/String;

    if-eqz v2, :cond_87

    .line 509
    invoke-direct/range {p0 .. p0}, calculateInstalledSize()J

    move-result-wide v12

    .line 510
    .local v12, "finalSize":J
    move-object/from16 v0, p0

    iget-object v2, v0, stageCid:Ljava/lang/String;

    invoke-static {v2, v12, v13}, resizeContainer(Ljava/lang/String;J)V

    .line 515
    .end local v12    # "finalSize":J
    :cond_87
    move-object/from16 v0, p0

    iget-object v2, v0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10d

    .line 517
    :try_start_90
    move-object/from16 v0, p0

    iget-object v14, v0, mResolvedInheritedFiles:Ljava/util/List;

    .line 518
    .local v14, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p0}, resolveStageDir()Ljava/io/File;

    move-result-object v17

    .line 520
    .local v17, "toDir":Ljava/io/File;
    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inherited files: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d7

    move-object/from16 v0, p0

    iget-object v2, v0, mInheritedFilesBase:Ljava/io/File;

    if-nez v2, :cond_d7

    .line 522
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "mInheritedFilesBase == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_cd} :catch_cd

    .line 536
    .end local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v17    # "toDir":Ljava/io/File;
    :catch_cd
    move-exception v11

    .line 537
    .restart local v11    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/4 v3, -0x4

    const-string v4, "Failed to inherit existing install"

    invoke-direct {v2, v3, v4, v11}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 525
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v17    # "toDir":Ljava/io/File;
    :cond_d7
    :try_start_d7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_102

    .line 527
    new-instance v16, Ljava/io/File;

    const-string/jumbo v2, "oat"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 528
    .local v16, "oatDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, mResolvedInstructionSets:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, createOatDirs(Ljava/util/List;Ljava/io/File;)V

    .line 530
    .end local v16    # "oatDir":Ljava/io/File;
    :cond_102
    move-object/from16 v0, p0

    iget-object v2, v0, mInheritedFilesBase:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1, v2}, linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_10d} :catch_cd

    .line 543
    .end local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v17    # "toDir":Ljava/io/File;
    :cond_10d
    :goto_10d
    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v2, v0, mInternalProgress:F

    .line 544
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, computeProgressLocked(Z)V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, mResolvedStageDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {v2, v3}, extractNativeLibraries(Ljava/io/File;Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, stageCid:Ljava/lang/String;

    if-eqz v2, :cond_135

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, stageCid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, finalizeAndFixContainer(Ljava/lang/String;)V

    .line 556
    :cond_135
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 571
    .local v6, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    move-object/from16 v0, p0

    iget-object v2, v0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_174

    .line 572
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 577
    .local v10, "user":Landroid/os/UserHandle;
    :goto_148
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mRelinquished:Z

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, stageDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, stageCid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    move-object/from16 v0, p0

    iget-object v8, v0, installerPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, installerUid:I

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_6a

    .line 534
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v17    # "toDir":Ljava/io/File;
    :cond_16e
    :try_start_16e
    move-object/from16 v0, v17

    invoke-static {v14, v0}, copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_173} :catch_cd

    goto :goto_10d

    .line 574
    .end local v14    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v17    # "toDir":Ljava/io/File;
    .restart local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :cond_174
    new-instance v10, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v2, v0, userId:I

    invoke-direct {v10, v2}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v10    # "user":Landroid/os/UserHandle;
    goto :goto_148

    .line 496
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v15    # "intent":Landroid/content/Intent;
    :catch_17e
    move-exception v2

    goto/16 :goto_67
.end method

.method private computeProgressLocked(Z)V
    .registers 6
    .param p1, "forcePublish"    # Z

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    .line 320
    iget v0, p0, mClientProgress:F

    mul-float/2addr v0, v1

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v1, p0, mInternalProgress:F

    mul-float/2addr v1, v3

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, mProgress:F

    .line 324
    if-nez p1, :cond_2d

    iget v0, p0, mProgress:F

    iget v1, p0, mReportedProgress:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_38

    .line 325
    :cond_2d
    iget v0, p0, mProgress:F

    iput v0, p0, mReportedProgress:F

    .line 326
    iget-object v0, p0, mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget v1, p0, mProgress:F

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 328
    :cond_38
    return-void
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 13
    .param p1, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_6
    if-ge v4, v5, :cond_1c

    aget-object v2, v0, v4

    .line 854
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 855
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 853
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 859
    .end local v2    # "file":Ljava/io/File;
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 860
    .local v3, "fromFile":Ljava/io/File;
    const-string/jumbo v8, "inherit"

    const-string v9, ".tmp"

    invoke-static {v8, v9, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 861
    .local v6, "tmpFile":Ljava/io/File;
    const-string v8, "PackageInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copying "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-static {v3, v6}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_80

    .line 863
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to copy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 866
    :cond_80
    :try_start_80
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a4

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_89
    .catch Landroid/system/ErrnoException; {:try_start_80 .. :try_end_89} :catch_dd

    .line 870
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 871
    .local v7, "toFile":Ljava/io/File;
    const-string v8, "PackageInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Renaming "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 873
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to rename "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 867
    .end local v7    # "toFile":Ljava/io/File;
    :catch_dd
    move-exception v1

    .line 868
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to chmod "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 876
    .end local v1    # "e":Landroid/system/ErrnoException;
    .end local v3    # "fromFile":Ljava/io/File;
    .end local v6    # "tmpFile":Ljava/io/File;
    :cond_f7
    const-string v8, "PackageInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copied "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " files into "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .registers 7
    .param p2, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 829
    .local p1, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    .local v1, "instructionSet":Ljava/lang/String;
    iget-object v2, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 832
    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method private destroyInternal()V
    .registers 5

    .prologue
    .line 1025
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1026
    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, mSealed:Z

    .line 1027
    const/4 v2, 0x1

    iput-boolean v2, p0, mDestroyed:Z

    .line 1030
    iget-object v2, p0, mBridges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileBridge;

    .line 1031
    .local v0, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v0}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_f

    .line 1033
    .end local v0    # "bridge":Landroid/os/FileBridge;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_22
    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 1034
    iget-object v2, p0, stageDir:Ljava/io/File;

    if-eqz v2, :cond_34

    .line 1035
    iget-object v2, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v3, p0, stageDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I

    .line 1037
    :cond_34
    iget-object v2, p0, stageCid:Ljava/lang/String;

    if-eqz v2, :cond_3d

    .line 1038
    iget-object v2, p0, stageCid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 1040
    :cond_3d
    return-void
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 1010
    iput p1, p0, mFinalStatus:I

    .line 1011
    iput-object p2, p0, mFinalMessage:Ljava/lang/String;

    .line 1013
    iget-object v1, p0, mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v1, :cond_10

    .line 1015
    :try_start_9
    iget-object v1, p0, mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_1a

    .line 1020
    :cond_10
    :goto_10
    if-ne p1, v0, :cond_18

    .line 1021
    .local v0, "success":Z
    :goto_12
    iget-object v1, p0, mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 1022
    return-void

    .line 1020
    .end local v0    # "success":Z
    :cond_18
    const/4 v0, 0x0

    goto :goto_12

    .line 1016
    :catch_1a
    move-exception v1

    goto :goto_10
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1052
    const-string/jumbo v0, "userId"

    iget v1, p0, userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1053
    const-string/jumbo v0, "installerPackageName"

    iget-object v1, p0, installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1054
    const-string/jumbo v0, "installerUid"

    iget v1, p0, installerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1055
    const-string/jumbo v0, "createdMillis"

    iget-wide v2, p0, createdMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1056
    const-string/jumbo v0, "stageDir"

    iget-object v1, p0, stageDir:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1057
    const-string/jumbo v0, "stageCid"

    iget-object v1, p0, stageCid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1058
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1060
    iget-object v0, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1062
    const-string/jumbo v0, "mClientProgress"

    iget v1, p0, mClientProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1063
    const-string/jumbo v0, "mProgress"

    iget v1, p0, mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1064
    const-string/jumbo v0, "mSealed"

    iget-boolean v1, p0, mSealed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    const-string/jumbo v0, "mPermissionsAccepted"

    iget-boolean v1, p0, mPermissionsAccepted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1066
    const-string/jumbo v0, "mRelinquished"

    iget-boolean v1, p0, mRelinquished:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1067
    const-string/jumbo v0, "mDestroyed"

    iget-boolean v1, p0, mDestroyed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1068
    const-string/jumbo v0, "mBridges"

    iget-object v1, p0, mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1069
    const-string/jumbo v0, "mFinalStatus"

    iget v1, p0, mFinalStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1070
    const-string/jumbo v0, "mFinalMessage"

    iget-object v1, p0, mFinalMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1071
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1073
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1074
    return-void
.end method

.method private static extractNativeLibraries(Ljava/io/File;Ljava/lang/String;)V
    .registers 9
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 882
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "lib"

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 883
    .local v2, "libDir":Ljava/io/File;
    invoke-static {v2, v5}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 885
    const/4 v1, 0x0

    .line 887
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_d
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    .line 888
    invoke-static {v1, v2, p1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 890
    .local v3, "res":I
    if-eq v3, v5, :cond_40

    .line 891
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to extract native libraries, res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_30} :catch_30
    .catchall {:try_start_d .. :try_end_30} :catchall_3b

    .line 894
    .end local v3    # "res":I
    :catch_30
    move-exception v0

    .line 895
    .local v0, "e":Ljava/io/IOException;
    :try_start_31
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const/16 v5, -0x6e

    const-string v6, "Failed to extract native libraries"

    invoke-direct {v4, v5, v6, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_3b

    .line 898
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3b
    move-exception v4

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .restart local v3    # "res":I
    :cond_40
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 900
    return-void
.end method

.method private finalizeAndFixContainer(Ljava/lang/String;)V
    .registers 8
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/16 v5, -0x12

    .line 937
    invoke-static {p1}, Lcom/android/internal/content/PackageHelper;->finalizeSdDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 938
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to finalize container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 942
    :cond_21
    iget-object v2, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "com.android.defcontainer"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 944
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 945
    .local v0, "gid":I
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 946
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to fix permissions on container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 949
    :cond_4e
    return-void
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "base"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "baseStr":Ljava/lang/String;
    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 818
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid path (was relative) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 821
    :cond_29
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 822
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 825
    :cond_38
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outside base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .registers 13
    .param p2, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v5, 0x0

    .line 799
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    .line 800
    .local v4, "toStat":Landroid/system/StructStat;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 801
    .local v1, "fromFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 802
    .local v2, "fromStat":Landroid/system/StructStat;
    iget-wide v6, v2, Landroid/system/StructStat;->st_dev:J

    iget-wide v8, v4, Landroid/system/StructStat;->st_dev:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_25} :catch_2a

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d

    .line 810
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "fromStat":Landroid/system/StructStat;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "toStat":Landroid/system/StructStat;
    :goto_29
    return v5

    .line 806
    :catch_2a
    move-exception v0

    .line 807
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to detect if linking possible: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 810
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "toStat":Landroid/system/StructStat;
    :cond_44
    const/4 v5, 0x1

    goto :goto_29
.end method

.method private linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p2, "toDir"    # Ljava/io/File;
    .param p3, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 837
    .local v0, "fromFile":Ljava/io/File;
    invoke-static {v0, p3}, getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 838
    .local v2, "relativePath":Ljava/lang/String;
    iget-object v4, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 841
    .local v3, "ret":I
    if-gez v3, :cond_4

    .line 843
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed linkOrCreateDir("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 848
    .end local v0    # "fromFile":Ljava/io/File;
    .end local v2    # "relativePath":Ljava/lang/String;
    .end local v3    # "ret":I
    :cond_5a
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Linked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " files into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

.method private openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    const-string/jumbo v3, "openRead"

    invoke-direct {p0, v3}, assertPreparedAndNotSealed(Ljava/lang/String;)V

    .line 413
    :try_start_6
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 414
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_25} :catch_25

    .line 421
    :catch_25
    move-exception v0

    .line 422
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 416
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, resolveStageDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 418
    .local v1, "target":Ljava/io/File;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 419
    .local v2, "targetFd":Ljava/io/FileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_46
    .catch Landroid/system/ErrnoException; {:try_start_2b .. :try_end_46} :catch_25

    return-object v3
.end method

.method private openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 356
    :try_start_3
    const-string/jumbo v0, "openWrite"

    invoke-direct {p0, v0}, assertPreparedAndNotSealed(Ljava/lang/String;)V

    .line 358
    new-instance v6, Landroid/os/FileBridge;

    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    .line 359
    .local v6, "bridge":Landroid/os/FileBridge;
    iget-object v0, p0, mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_39

    .line 364
    :try_start_14
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_33} :catch_33

    .line 395
    :catch_33
    move-exception v7

    .line 396
    .local v7, "e":Landroid/system/ErrnoException;
    invoke-virtual {v7}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 360
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .end local v7    # "e":Landroid/system/ErrnoException;
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    .line 367
    .restart local v6    # "bridge":Landroid/os/FileBridge;
    :cond_3c
    :try_start_3c
    new-instance v11, Ljava/io/File;

    invoke-direct {p0}, resolveStageDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v11, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    .local v11, "target":Ljava/io/File;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    sget v4, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v3, v4

    const/16 v4, 0x1a4

    invoke-interface {v0, v2, v3, v4}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 373
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a4

    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 377
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-lez v0, :cond_8b

    .line 378
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v10

    .line 379
    .local v10, "stat":Landroid/system/StructStat;
    iget-wide v2, v10, Landroid/system/StructStat;->st_size:J

    sub-long v8, p4, v2

    .line 381
    .local v8, "deltaBytes":J
    iget-object v0, p0, stageDir:Ljava/io/File;

    if-eqz v0, :cond_82

    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-lez v0, :cond_82

    .line 382
    iget-object v0, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v2, v8, v9}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;J)V

    .line 384
    :cond_82
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-wide/16 v2, 0x0

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    .line 387
    .end local v8    # "deltaBytes":J
    .end local v10    # "stat":Landroid/system/StructStat;
    :cond_8b
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_98

    .line 388
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v0, v1, p2, p3, v2}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 391
    :cond_98
    invoke-virtual {v6, v1}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    .line 392
    invoke-virtual {v6}, Landroid/os/FileBridge;->start()V

    .line 393
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_a7
    .catch Landroid/system/ErrnoException; {:try_start_3c .. :try_end_a7} :catch_33

    return-object v0
.end method

.method private static resizeContainer(Ljava/lang/String;J)V
    .registers 10
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "targetSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x12

    .line 904
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_21

    .line 906
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find mounted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 910
    :cond_21
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 911
    .local v0, "currentSize":J
    cmp-long v3, v0, p1

    if-lez v3, :cond_57

    .line 912
    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is larger than target size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; skipping resize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_56
    return-void

    .line 917
    :cond_57
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 918
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " before resize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 922
    :cond_7c
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, p0, v3}, Lcom/android/internal/content/PackageHelper;->resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 924
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 928
    :cond_af
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 930
    if-nez v2, :cond_56

    .line 931
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after resize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private resolveStageDir()Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 286
    :try_start_3
    iget-object v1, p0, mResolvedStageDir:Ljava/io/File;

    if-nez v1, :cond_f

    .line 287
    iget-object v1, p0, stageDir:Ljava/io/File;

    if-eqz v1, :cond_13

    .line 288
    iget-object v1, p0, stageDir:Ljava/io/File;

    iput-object v1, p0, mResolvedStageDir:Ljava/io/File;

    .line 298
    :cond_f
    :goto_f
    iget-object v1, p0, mResolvedStageDir:Ljava/io/File;

    monitor-exit v2

    return-object v1

    .line 290
    :cond_13
    iget-object v1, p0, stageCid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 292
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mResolvedStageDir:Ljava/io/File;

    goto :goto_f

    .line 299
    .end local v0    # "path":Ljava/lang/String;
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1

    .line 294
    .restart local v0    # "path":Ljava/lang/String;
    :cond_26
    :try_start_26
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve path to container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, stageCid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_23
.end method

.method private validateInstallLocked()V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 595
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mPackageName:Ljava/lang/String;

    .line 596
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, mVersionCode:I

    .line 597
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mSignatures:[Landroid/content/pm/Signature;

    .line 599
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mResolvedBaseFile:Ljava/io/File;

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedStagedFiles:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedInheritedFiles:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedStageDir:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 604
    .local v12, "files":[Ljava/io/File;
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4c

    .line 605
    new-instance v25, Lcom/android/server/pm/PackageManagerException;

    const/16 v26, -0x2

    const-string v27, "No packages staged"

    invoke-direct/range {v25 .. v27}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 609
    :cond_4c
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 610
    .local v22, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v7, v12

    .local v7, "arr$":[Ljava/io/File;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_56
    move/from16 v0, v16

    if-ge v14, v0, :cond_164

    aget-object v11, v7, v14

    .line 614
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_65

    .line 610
    :goto_62
    add-int/lit8 v14, v14, 0x1

    goto :goto_56

    .line 618
    :cond_65
    const/16 v25, 0x100

    :try_start_67
    move/from16 v0, v25

    invoke-static {v11, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_6c
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_67 .. :try_end_6c} :catch_a0

    move-result-object v3

    .line 623
    .local v3, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v0, v3, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a6

    .line 624
    new-instance v25, Lcom/android/server/pm/PackageManagerException;

    const/16 v26, -0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Split "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v3, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " was defined multiple times"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 619
    .end local v3    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_a0
    move-exception v8

    .line 620
    .local v8, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v25

    throw v25

    .line 629
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v3    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_c2

    .line 630
    iget-object v0, v3, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mPackageName:Ljava/lang/String;

    .line 631
    iget v0, v3, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, mVersionCode:I

    .line 633
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    if-nez v25, :cond_d4

    .line 634
    iget-object v0, v3, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mSignatures:[Landroid/content/pm/Signature;

    .line 637
    :cond_d4
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 641
    iget-object v0, v3, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_10c

    .line 642
    const-string v24, "base.apk"

    .line 646
    .local v24, "targetName":Ljava/lang/String;
    :goto_e7
    invoke-static/range {v24 .. v24}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_12b

    .line 647
    new-instance v25, Lcom/android/server/pm/PackageManagerException;

    const/16 v26, -0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Invalid filename: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 644
    .end local v24    # "targetName":Ljava/lang/String;
    :cond_10c
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "split_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v3, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".apk"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "targetName":Ljava/lang/String;
    goto :goto_e7

    .line 651
    :cond_12b
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedStageDir:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 652
    .local v23, "targetFile":Ljava/io/File;
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_149

    .line 653
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 657
    :cond_149
    iget-object v0, v3, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-nez v25, :cond_155

    .line 658
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mResolvedBaseFile:Ljava/io/File;

    .line 661
    :cond_155
    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedStagedFiles:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_62

    .line 664
    .end local v3    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v11    # "file":Ljava/io/File;
    .end local v23    # "targetFile":Ljava/io/File;
    .end local v24    # "targetName":Ljava/lang/String;
    :cond_164
    move-object/from16 v0, p0

    iget-object v0, v0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18e

    .line 666
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2dc

    .line 667
    new-instance v25, Lcom/android/server/pm/PackageManagerException;

    const/16 v26, -0x2

    const-string v27, "Full install must include a base package"

    invoke-direct/range {v25 .. v27}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 673
    :cond_18e
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, userId:I

    move/from16 v28, v0

    invoke-virtual/range {v25 .. v28}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 674
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_1c9

    .line 675
    new-instance v25, Lcom/android/server/pm/PackageManagerException;

    const/16 v26, -0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Missing existing base package for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 682
    :cond_1c9
    :try_start_1c9
    new-instance v25, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v9

    .line 683
    .local v9, "existing":Landroid/content/pm/PackageParser$PackageLite;
    new-instance v25, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v26, 0x100

    invoke-static/range {v25 .. v26}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_1e6
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1c9 .. :try_end_1e6} :catch_25d

    move-result-object v10

    .line 689
    .local v10, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    const-string v25, "Existing base"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10}, assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedBaseFile:Ljava/io/File;

    move-object/from16 v25, v0

    if-nez v25, :cond_216

    .line 693
    new-instance v25, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mResolvedBaseFile:Ljava/io/File;

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedInheritedFiles:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedBaseFile:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_216
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_263

    .line 699
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_221
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_263

    .line 700
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v21, v25, v13

    .line 701
    .local v21, "splitName":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v20, "splitFile":Ljava/io/File;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_25a

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedInheritedFiles:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_25a
    add-int/lit8 v13, v13, 0x1

    goto :goto_221

    .line 685
    .end local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v13    # "i":I
    .end local v20    # "splitFile":Ljava/io/File;
    .end local v21    # "splitName":Ljava/lang/String;
    :catch_25d
    move-exception v8

    .line 686
    .restart local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v25

    throw v25

    .line 710
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    :cond_263
    new-instance v25, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    .line 711
    .local v19, "packageInstallDir":Ljava/io/File;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mInheritedFilesBase:Ljava/io/File;

    .line 712
    new-instance v17, Ljava/io/File;

    const-string/jumbo v25, "oat"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 713
    .local v17, "oatDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2dc

    .line 714
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 719
    .local v6, "archSubdirs":[Ljava/io/File;
    if-eqz v6, :cond_2dc

    array-length v0, v6

    move/from16 v25, v0

    if-lez v25, :cond_2dc

    .line 720
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v15

    .line 721
    .local v15, "instructionSets":[Ljava/lang/String;
    move-object v7, v6

    array-length v0, v7

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_29e
    move/from16 v0, v16

    if-ge v14, v0, :cond_2dc

    aget-object v5, v7, v14

    .line 723
    .local v5, "archSubDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2b3

    .line 721
    :cond_2b0
    :goto_2b0
    add-int/lit8 v14, v14, 0x1

    goto :goto_29e

    .line 727
    :cond_2b3
    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedInstructionSets:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    .line 729
    .local v18, "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_2b0

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, mResolvedInheritedFiles:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2b0

    .line 736
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "archSubDir":Ljava/io/File;
    .end local v6    # "archSubdirs":[Ljava/io/File;
    .end local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v15    # "instructionSets":[Ljava/lang/String;
    .end local v17    # "oatDir":Ljava/io/File;
    .end local v18    # "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "packageInstallDir":Ljava/io/File;
    :cond_2dc
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 4

    .prologue
    .line 1001
    iget-boolean v0, p0, mRelinquished:Z

    if-eqz v0, :cond_c

    .line 1002
    const-string v0, "PackageInstaller"

    const-string v1, "Ignoring abandon after commit relinquished control"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :goto_b
    return-void

    .line 1005
    :cond_c
    invoke-direct {p0}, destroyInternal()V

    .line 1006
    const/16 v0, -0x73

    const-string v1, "Session was abandoned"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_b
.end method

.method public addClientProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .prologue
    .line 314
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_3
    iget v0, p0, mClientProgress:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, setClientProgress(F)V

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public close()V
    .registers 3

    .prologue
    .line 994
    iget-object v0, p0, mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_e

    .line 995
    iget-object v0, p0, mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 997
    :cond_e
    return-void
.end method

.method public commit(Landroid/content/IntentSender;)V
    .registers 11
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    .prologue
    .line 428
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 432
    :try_start_6
    iget-boolean v8, p0, mSealed:Z

    .line 433
    .local v8, "wasSealed":Z
    iget-boolean v1, p0, mSealed:Z

    if-nez v1, :cond_32

    .line 435
    iget-object v1, p0, mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/FileBridge;

    .line 436
    .local v6, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v6}, Landroid/os/FileBridge;->isClosed()Z

    move-result v1

    if-nez v1, :cond_12

    .line 437
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Files still open"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "wasSealed":Z
    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw v1

    .line 440
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "wasSealed":Z
    :cond_2f
    const/4 v1, 0x1

    :try_start_30
    iput-boolean v1, p0, mSealed:Z

    .line 444
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_32
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, mClientProgress:F

    .line 445
    const/4 v1, 0x1

    invoke-direct {p0, v1}, computeProgressLocked(Z)V

    .line 446
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_2c

    .line 448
    if-nez v8, :cond_42

    .line 452
    iget-object v1, p0, mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 457
    :cond_42
    iget-object v1, p0, mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 459
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v3, p0, sessionId:I

    iget-boolean v4, p0, mIsInstallerDeviceOwner:Z

    iget v5, p0, userId:I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V

    .line 461
    .local v0, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 462
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1043
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1044
    :try_start_3
    invoke-direct {p0, p1}, dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1045
    monitor-exit v1

    .line 1046
    return-void

    .line 1045
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 7

    .prologue
    .line 237
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 238
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 239
    :try_start_8
    iget v1, p0, sessionId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 240
    iget-object v1, p0, installerPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 241
    iget-object v1, p0, mResolvedBaseFile:Ljava/io/File;

    if-eqz v1, :cond_4f

    iget-object v1, p0, mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 243
    iget v1, p0, mProgress:F

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 244
    iget-boolean v1, p0, mSealed:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 245
    iget-object v1, p0, mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_51

    const/4 v1, 0x1

    :goto_2d
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 247
    iget-object v1, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 248
    iget-object v1, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 249
    iget-object v1, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 250
    iget-object v1, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 251
    iget-object v1, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 252
    monitor-exit v2

    .line 253
    return-object v0

    .line 241
    :cond_4f
    const/4 v1, 0x0

    goto :goto_1a

    .line 245
    :cond_51
    const/4 v1, 0x0

    goto :goto_2d

    .line 252
    :catchall_53
    move-exception v1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_8 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 332
    const-string/jumbo v1, "getNames"

    invoke-direct {p0, v1}, assertPreparedAndNotSealed(Ljava/lang/String;)V

    .line 334
    :try_start_6
    invoke-direct {p0}, resolveStageDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 335
    :catch_f
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPrepared()Z
    .registers 3

    .prologue
    .line 257
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_3
    iget-boolean v0, p0, mPrepared:Z

    monitor-exit v1

    return v0

    .line 259
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isSealed()Z
    .registers 3

    .prologue
    .line 263
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_3
    iget-boolean v0, p0, mSealed:Z

    monitor-exit v1

    return v0

    .line 265
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public open()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 967
    iget-object v0, p0, mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_e

    .line 968
    iget-object v0, p0, mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 971
    :cond_e
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 972
    :try_start_11
    iget-boolean v0, p0, mPrepared:Z

    if-nez v0, :cond_26

    .line 973
    iget-object v0, p0, stageDir:Ljava/io/File;

    if-eqz v0, :cond_28

    .line 974
    iget-object v0, p0, stageDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    .line 986
    :goto_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, mPrepared:Z

    .line 987
    iget-object v0, p0, mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 989
    :cond_26
    monitor-exit v1

    .line 990
    return-void

    .line 975
    :cond_28
    iget-object v0, p0, stageCid:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 976
    iget-object v0, p0, stageCid:Ljava/lang/String;

    iget-object v2, p0, params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PackageInstallerService;->prepareExternalStageCid(Ljava/lang/String;J)V

    .line 979
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, mInternalProgress:F

    .line 980
    const/4 v0, 0x1

    invoke-direct {p0, v0}, computeProgressLocked(Z)V

    goto :goto_1e

    .line 989
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_11 .. :try_end_40} :catchall_3e

    throw v0

    .line 982
    :cond_41
    :try_start_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3e
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 403
    :try_start_0
    invoke-direct {p0, p1}, openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 404
    :catch_5
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J

    .prologue
    .line 343
    :try_start_0
    invoke-direct/range {p0 .. p5}, openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 344
    :catch_5
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setClientProgress(F)V
    .registers 6
    .param p1, "progress"    # F

    .prologue
    .line 304
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 306
    :try_start_3
    iget v1, p0, mClientProgress:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_12

    const/4 v0, 0x1

    .line 307
    .local v0, "forcePublish":Z
    :goto_b
    iput p1, p0, mClientProgress:F

    .line 308
    invoke-direct {p0, v0}, computeProgressLocked(Z)V

    .line 309
    monitor-exit v2

    .line 310
    return-void

    .line 306
    .end local v0    # "forcePublish":Z
    :cond_12
    const/4 v0, 0x0

    goto :goto_b

    .line 309
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method setPermissionsResult(Z)V
    .registers 5
    .param p1, "accepted"    # Z

    .prologue
    .line 952
    iget-boolean v0, p0, mSealed:Z

    if-nez v0, :cond_c

    .line 953
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be sealed to accept permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_c
    if-eqz p1, :cond_1c

    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, mPermissionsAccepted:Z

    .line 959
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 964
    :goto_1b
    return-void

    .line 961
    :cond_1c
    invoke-direct {p0}, destroyInternal()V

    .line 962
    const/16 v0, -0x73

    const-string v1, "User rejected permissions"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1b
.end method
